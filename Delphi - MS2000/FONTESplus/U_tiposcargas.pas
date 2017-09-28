unit U_tiposcargas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Buttons, Mask;

type
  TF_tipocargas = class(TForm)
    t_TiposCargas: TTable;
    dsTiposCargas: TDataSource;
    dbgCargas: TDBGrid;
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
    t_TiposCargasCodigo: TStringField;
    t_TiposCargasDescricao: TStringField;
    q_CargasTipo_Carga: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  F_tipocargas: TF_tipocargas;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure TF_tipocargas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     t_TiposCargas.Close;

     Action := caFree;
     f_tipocargas := nil;
     f_mscomex.TiposdeCargas1.Enabled := True;
end;

procedure TF_tipocargas.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

//     Left := 0;
//     Top  := 0;

 {    h := Height;
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

procedure TF_tipocargas.FormCreate(Sender: TObject);
begin
     t_TiposCargas.Open;
end;

procedure TF_tipocargas.btnNovoClick(Sender: TObject);
begin
  t_TiposCargas.Append;

  btnNovo.Enabled := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnGravar.Tag := 1;

  dbgCargas.Enabled := False;
  dbedtCod.Enabled  := True;
  dbedtDesc.Enabled := True;

  dbedtCod.SetFocus;
end;

procedure TF_tipocargas.btnAlterarClick(Sender: TObject);
begin
  btnNovo.Enabled := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnGravar.Tag := 2;

  dbgCargas.Enabled := False;
  dbedtDesc.Enabled := True;

  t_TiposCargas.Edit;
  dbedtDesc.SetFocus;
end;

procedure TF_tipocargas.btnExcluirClick(Sender: TObject);
begin
     q_Cargas.Params[0].AsString := t_TiposCargasCodigo.AsString;
     q_Cargas.Open;
     if q_Cargas.RecordCount <> 0 then
        MessageDlg('Existem Cargas com este Tipo. Não pode ser excluído!', mtInformation,[mbOk], 0)
     else
       if MessageDlg('Confirma exclusão deste Tipo de Cargas?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then
         begin
           t_TiposCargas.Delete;
           ShowMessage('Tipo de Cargas excluído!');
         end;
     q_Cargas.Close;
     btnNovo.SetFocus;
end;

procedure TF_tipocargas.btnCancelarClick(Sender: TObject);
begin
  btnNovo.Enabled := True;
  btnAlterar.Enabled  := True;
  btnExcluir.Enabled  := True;
  btnGravar.Enabled   := False;
  btnCancelar.Enabled := False;
  btnGravar.Tag := 0;

  dbgCargas.Enabled := True;
  dbedtCod.Enabled  := False;
  dbedtDesc.Enabled := False;

  t_TiposCargas.Cancel;
  btnNovo.SetFocus;
end;

procedure TF_tipocargas.btnGravarClick(Sender: TObject);
var cont: integer;
begin
     if dbedtCod.Text = '' then begin
        MessageDlg('Digite o código do Tipo de Cargas!', mtInformation,[mbOk], 0);
        dbedtCod.SetFocus;
     end
     else
        if dbedtDesc.Text = '' then begin
           MessageDlg('Digite a descrição do Tipo de Cargas!', mtInformation,[mbOk], 0);
           dbedtDesc.SetFocus;
        end
        else begin
           cont := 0;
           if btnGravar.Tag = 1 then begin
              q_Teste.Params[0].AsString := t_TiposCargasCodigo.AsString;
              q_Teste.Open;
              cont := q_Teste.RecordCount;
           end;
           if cont <> 0 then begin
              MessageDlg('Já existe Tipo de Cargas com este código!', mtInformation,[mbOk], 0);
              dbedtCod.SetFocus;
           end
           else begin
              t_TiposCargas.Post;
              if btnGravar.Tag = 1 then
                 ShowMessage('Tipo de Cargas incluído com sucesso!')
              else
                 ShowMessage('Tipo de Cargas alterado com sucesso!');

              btnNovo.Enabled := True;
              btnAlterar.Enabled := True;
              btnExcluir.Enabled := True;
              btnGravar.Enabled := False;
              btnCancelar.Enabled := False;
              btnGravar.Tag := 0;

              dbgCargas.Enabled  := True;
              dbedtCod.Enabled := False;
              dbedtDesc.Enabled := False;

              dbgCargas.SetFocus;
           end;
           q_Teste.Close
        end;
end;

procedure TF_tipocargas.btnSairClick(Sender: TObject);
begin
     Close;
end;

end.
