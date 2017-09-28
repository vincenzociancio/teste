unit U_salminimos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, ExtCtrls, DBCtrls, Grids, DBGrids, DBTables, Mask;

type
  TF_salminimos = class(TForm)
    t_Salarios: TTable;
    dsSalarios: TDataSource;
    dbgSalarios: TDBGrid;
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
    me1: TMaskEdit;
    me2: TMaskEdit;
    t_SalariosData_Vigencia: TDateTimeField;
    t_SalariosValor: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure t_SalariosAfterPost(DataSet: TDataSet);
    procedure t_SalariosBeforeDelete(DataSet: TDataSet);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure t_SalariosAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_salminimos: TF_salminimos;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure TF_salminimos.FormClose(Sender: TObject; var Action: TCloseAction);
var
  I : Integer;
begin
  for I := 0 to pred(ComponentCount) do
   begin
     if Components[I] is TQuery
      then TQuery(Components[I]).Close
      else if Components[I] is TTable
            then TTable(Components[I]).Close;
   end;

  Action := caFree;
  f_salminimos := nil;
  f_mscomex.SalriosMnimos1.Enabled := True;
end;

procedure TF_salminimos.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

     Left := 1;
     Top  := 1;


  {   h := Height;
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
     width := w;  }
end;

procedure TF_salminimos.FormCreate(Sender: TObject);
begin
     t_salarios.Open;
end;

procedure TF_salminimos.t_SalariosAfterPost(DataSet: TDataSet);
begin
//     AtuNet('Armazem',[t_salariosCodigo.AsString],'P');
end;

procedure TF_salminimos.t_SalariosBeforeDelete(DataSet: TDataSet);
begin
//     AtuNet('Armazem',[t_salariosCodigo.AsString],'D');
end;

procedure TF_salminimos.btnNovoClick(Sender: TObject);
begin
  ///t_Salarios.Append;

  btnNovo.Enabled := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnGravar.Tag := 1;
  me1.text := '';
  me2.text := '0';
  dbgSalarios.Enabled := False;
//  dbedtCod.Enabled  := True;
//  dbedtDesc.Enabled := True;
//  dbedtCod.SetFocus;
  me1.Enabled := true;
  me2.Enabled := true;
  me1.SetFocus;

end;

procedure TF_salminimos.btnAlterarClick(Sender: TObject);
begin
  btnNovo.Enabled     := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnGravar.Tag := 2;

  me1.text := t_salariosdata_vigencia.asstring;
  me2.text := t_salariosvalor.asstring;


  dbgSalarios.Enabled := False;
  //dbedtDesc.Enabled := True;
  me1.Enabled := true;
  me2.Enabled := true;
  me2.SetFocus;
//  t_salarios.Edit;
//  dbedtDesc.SetFocus;
end;

procedure TF_salminimos.btnExcluirClick(Sender: TObject);
begin
     if MessageDlg('Confirma exclusão deste Salário Mínimo?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then
         begin
           t_salarios.Delete;
           ShowMessage('Salário Mínimo excluído!');
         end;
     
     btnNovo.SetFocus;
end;

procedure TF_salminimos.btnCancelarClick(Sender: TObject);
begin
  btnNovo.Enabled := True;
  btnAlterar.Enabled  := True;
  btnExcluir.Enabled  := True;
  btnGravar.Enabled   := False;
  btnCancelar.Enabled := False;
  btnGravar.Tag := 0;

  dbgSalarios.Enabled := True;
  dbedtCod.Enabled  := False;
  dbedtDesc.Enabled := False;

  t_salarios.Cancel;
  btnNovo.SetFocus;
end;

procedure TF_salminimos.btnGravarClick(Sender: TObject);

begin
     if me1.text = '' then begin
        MessageDlg('Digite a Data de Vigência do Salário Mínimo!', mtInformation,[mbOk], 0);
        dbedtCod.SetFocus;
     end
     else begin
        if me2.Text = '' then begin
           MessageDlg('Digite o Valor do Salário Mínimo!', mtInformation,[mbOk], 0);
           dbedtDesc.SetFocus;
        end
        else begin
           if btnGravar.Tag=1 then begin
              if t_salarios.findkey([me1.text]) then begin
                 MessageDlg('Já existe Salário Mínimo com esta Data!', mtInformation,[mbOk], 0);
                 me1.SetFocus;
              end
              else begin
                 t_Salarios.Append;
                 t_salariosdata_vigencia.asstring := me1.text;
                 t_salariosvalor.asstring := me2.text;
                 t_salarios.Post;
              end;
           end
           else begin
              t_salarios.edit;
              t_salariosdata_vigencia.asstring := me1.text;
              t_salariosvalor.asstring := me2.text;
              t_salarios.Post;
           end;
        end;

              btnNovo.Enabled := True;
              btnAlterar.Enabled := True;
              btnExcluir.Enabled := True;
              btnGravar.Enabled := False;
              btnCancelar.Enabled := False;
              btnGravar.Tag := 0;

              dbgSalarios.Enabled  := True;
              me1.Enabled := False;
              me2.Enabled := False;

              btnNovo.SetFocus;

     end;

end;

procedure TF_salminimos.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure TF_salminimos.t_SalariosAfterScroll(DataSet: TDataSet);
begin
     if t_salarios.RecordCount = 0 then begin
        btnAlterar.Enabled := False;
        btnExcluir.Enabled := False;
     end
     else begin
        btnAlterar.Enabled := True;
        btnExcluir.Enabled := True;
     end
end;

end.
