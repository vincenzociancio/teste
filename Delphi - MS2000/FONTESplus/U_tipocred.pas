unit U_tipocred;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask;

type
  Tf_tipocred = class(TForm)
    tbCreditos: TTable;
    dsCreditos: TDataSource;
    dbGrdCreditos: TDBGrid;
    qrCreditos: TQuery;
    dsQCreditos: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dbEdtCod: TDBEdit;
    dbEdtDesc: TDBEdit;
    dbLcbPlano: TDBLookupComboBox;
    qrPlano: TQuery;
    dsPlano: TDataSource;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    Bevel2: TBevel;
    Bevel3: TBevel;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    Bevel1: TBevel;
    qrTeste: TQuery;
    qrCreditosEmpresa: TStringField;
    qrCreditosFilial: TStringField;
    qrCreditosCodigo: TStringField;
    qrCreditosDescricao: TStringField;
    qrCreditosPlano: TStringField;
    tbCreditosEmpresa: TStringField;
    tbCreditosFilial: TStringField;
    tbCreditosCodigo: TStringField;
    tbCreditosDescricao: TStringField;
    tbCreditosPlano_contas: TStringField;
    qrPlanoCodigo: TStringField;
    qrPlanoDescricao: TStringField;
    qrTesteCodigo: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure qrCreditosAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_tipocred: Tf_tipocred;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_tipocred.FormClose(Sender: TObject; var Action: TCloseAction);
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

  Action := cafree;
  f_tipocred := nil;
  f_mscomex.TiposdeCrditos1.Enabled := True;
end;

procedure Tf_tipocred.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

     Left := 1;
     Top  := 1;


   {  h := Height;
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

procedure Tf_tipocred.FormCreate(Sender: TObject);
begin
     qrCreditos.Open;
     qrPlano.Open;
     tbCreditos.Open;
end;

procedure Tf_tipocred.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure Tf_tipocred.btnIncluirClick(Sender: TObject);
begin
     btnIncluir.Enabled := False;
     btnAlterar.Enabled := False;
     btnExcluir.Enabled := False;
     btnGravar.Enabled := True;
     btnCancelar.Enabled := True;
     btnSair.Enabled := False;

     dbGrdCreditos.Enabled := False;
     dbEdtCod.Enabled := True;
     dbEdtDesc.Enabled := True;
     dbLcbPlano.Enabled := True;

     tbCreditos.Insert;
     tbCreditosCodigo.AsString := '';
     btnGravar.Tag := 1;
     dbEdtCod.SetFocus;
end;

procedure Tf_tipocred.btnAlterarClick(Sender: TObject);
begin
     btnIncluir.Enabled := False;
     btnAlterar.Enabled := False;
     btnExcluir.Enabled := False;
     btnGravar.Enabled := True;
     btnCancelar.Enabled := True;
     btnSair.Enabled := False;

     dbGrdCreditos.Enabled := False;
     dbEdtCod.Enabled := False;
     dbEdtDesc.Enabled := True;
     dbLcbPlano.Enabled := True;

     tbCreditos.Edit;
     btnGravar.Tag := 2;
     dbEdtDesc.SetFocus;
end;

procedure Tf_tipocred.btnExcluirClick(Sender: TObject);
begin
     If MessageDlg('Confirma exclusão deste Tipo de Crédito?', mtConfirmation,[mbYes, mbNo], 0) = mrYes Then Begin
        tbCreditos.Delete;
        ShowMessage('Tipo de Crédito excluído!');
        qrCreditos.Close;
        qrCreditos.Open;
     End;
     dbGrdCreditos.SetFocus;
end;

procedure Tf_tipocred.btnCancelarClick(Sender: TObject);
begin
     tbCreditos.Cancel;

     btnIncluir.Enabled := True;
     btnAlterar.Enabled := True;
     btnExcluir.Enabled := True;
     btnGravar.Enabled := False;
     btnCancelar.Enabled := False;
     btnSair.Enabled := True;

     dbGrdCreditos.Enabled := True;
     dbEdtCod.Enabled := False;
     dbEdtDesc.Enabled := False;
     dbLcbPlano.Enabled := False;

     btnGravar.Tag := 0;
     dbGrdCreditos.SetFocus;
end;

procedure Tf_tipocred.btnGravarClick(Sender: TObject);
var
   cont: Integer;
   cod: String;

begin
     if dbEdtCod.Text = '' then begin
        MessageDlg('Digite o código do Tipo de Crédito!', mtInformation,[mbOk], 0);
        dbEdtCod.SetFocus;
        Exit;
     end;
     if dbEdtDesc.Text = '' then begin
        MessageDlg('Digite a descrição do Tipo de Crédito!', mtInformation,[mbOk], 0);
        dbEdtDesc.SetFocus;
        Exit;
     end;
     if tbCreditosPlano_contas.IsNull then begin
        MessageDlg('Selecione um Plano de Conta!', mtInformation,[mbOk], 0);
        dbLcbPlano.SetFocus;
        Exit;
     end;
     cod := dbEdtCod.Text;
     cont := 0;
     if btnGravar.Tag = 1 then begin
        qrTeste.Params[0].AsString := tbCreditosCodigo.AsString;
        qrTeste.Open;
        cont := qrTeste.RecordCount;
     end;
     qrTeste.Close;
     if cont <> 0 then begin
        MessageDlg('Já existe Tipo de Crédito com este código!', mtInformation,[mbOk], 0);
        dbEdtCod.SetFocus;
        Exit;
     end;
     tbCreditos.Post;
     
     if btnGravar.Tag = 1 then
        ShowMessage('Tipo de Crédito incluído com sucesso!')
     else
        ShowMessage('Tipo de Crédito alterado com sucesso!');

     qrCreditos.Close;
     qrCreditos.Open;
     qrCreditos.Locate('Codigo',cod,[]);

     btnIncluir.Enabled := True;
     btnAlterar.Enabled := True;
     btnExcluir.Enabled := True;
     btnGravar.Enabled := False;
     btnCancelar.Enabled := False;
     btnSair.Enabled := True;
     btnGravar.Tag := 0;

     dbGrdCreditos.Enabled := True;
     dbedtCod.Enabled   := False;
     dbedtDesc.Enabled  := False;
     dbLcbPlano.Enabled := False;

     dbGrdCreditos.SetFocus;
end;

procedure Tf_tipocred.qrCreditosAfterScroll(DataSet: TDataSet);
begin
     If qrCreditos.RecordCount = 0 Then Begin
        btnAlterar.Enabled := False;
        btnExcluir.Enabled := False;
     End
     Else Begin
        btnAlterar.Enabled := True;
        btnExcluir.Enabled := True;
     End;
end;

end.
