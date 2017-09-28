unit U_locaisinv;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DBCtrls, Grids, DBGrids, Db, DBTables, Mask;

type
  Tf_locaisinv = class(TForm)
    tbLocais: TTable;
    dsLocais: TDataSource;
    dbgLocais: TDBGrid;
    btnSair: TBitBtn;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    Bevel3: TBevel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    dbedtCod: TDBEdit;
    dbedtDesc: TDBEdit;
    Bevel2: TBevel;
    q_Loc: TQuery;
    q_Teste: TQuery;
    qrLocais: TQuery;
    dsQLocais: TDataSource;
    qrLocaisCodigo: TStringField;
    qrLocaisDescricao: TStringField;
    tbLocaisCodigo: TStringField;
    tbLocaisDescricao: TStringField;
    q_LocTipo_local: TStringField;
    q_TesteCodigo: TStringField;
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure qrLocaisAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_locaisinv: Tf_locaisinv;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_locaisinv.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure Tf_locaisinv.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     tbLocais.Close;

     Action := caFree;
     f_locaisinv := nil;
     f_mscomex.TiposLocaisdeInventrio1.Enabled := True;
end;

procedure Tf_locaisinv.FormActivate(Sender: TObject);
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
     width := w;  }


end;

procedure Tf_locaisinv.FormCreate(Sender: TObject);
begin
     tbLocais.Open;
     qrLocais.Open;

end;

procedure Tf_locaisinv.btnNovoClick(Sender: TObject);
begin
  btnNovo.Enabled := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnSair.Enabled := False;
  btnGravar.Tag := 1;

  dbgLocais.Enabled := False;
  dbedtCod.Enabled  := True;
  dbedtDesc.Enabled := True;

  tbLocais.Insert;
  dbedtCod.SetFocus;
end;

procedure Tf_locaisinv.btnAlterarClick(Sender: TObject);
begin
  btnNovo.Enabled := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnSair.Enabled := False;
  btnGravar.Tag := 2;

  dbgLocais.Enabled := False;
  dbedtDesc.Enabled := True;

  tbLocais.Edit;
  dbedtDesc.SetFocus;
end;

procedure Tf_locaisinv.btnExcluirClick(Sender: TObject);
begin
     q_Loc.Params[0].AsString := tbLocaisCodigo.AsString;
     q_Loc.Open;
     if q_Loc.RecordCount <> 0 then
        MessageDlg('Existem Locais de Inventário com este Tipo de Local de Inventário. Não pode ser excluído!', mtInformation,[mbOk], 0)
     else
       if MessageDlg('Confirma exclusão deste Tipo de Local de Inventário?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then
         begin
           tbLocais.Delete;
           ShowMessage('Tipo de Local de Inventário excluído!');
           qrLocais.Close;
           qrLocais.Open;
         end;
     q_Loc.Close;
     dbgLocais.SetFocus;
end;

procedure Tf_locaisinv.btnCancelarClick(Sender: TObject);
begin
  btnNovo.Enabled := True;
  btnAlterar.Enabled  := True;
  btnExcluir.Enabled  := True;
  btnGravar.Enabled   := False;
  btnCancelar.Enabled := False;
  btnSair.Enabled := True;
  btnGravar.Tag := 0;

  dbgLocais.Enabled := True;
  dbedtCod.Enabled  := False;
  dbedtDesc.Enabled := False;

  tbLocais.Cancel;
  btnNovo.SetFocus;
end;

procedure Tf_locaisinv.btnGravarClick(Sender: TObject);
var
   cont: Integer;
   cod: String;

begin
     if dbedtCod.Text = '' then begin
        MessageDlg('Digite o código do Tipo de Local de Inventário!', mtInformation,[mbOk], 0);
        dbedtCod.SetFocus;
        Exit;
     end;
     if dbedtDesc.Text = '' then begin
        MessageDlg('Digite a descrição do Tipo de Local de Inventário!', mtInformation,[mbOk], 0);
        dbedtDesc.SetFocus;
        Exit
     end;
     cont := 0;
     if btnGravar.Tag = 1 then begin
        q_Teste.Params[0].AsString := tbLocaisCodigo.AsString;
        q_Teste.Open;
        cont := q_Teste.RecordCount;
     end;
     q_Teste.Close;
     if cont <> 0 then begin
        MessageDlg('Já existe Tipo de Local de Inventário com este código!', mtInformation,[mbOk], 0);
        dbedtCod.SetFocus;
        Exit;
     end;
     cod := dbedtDesc.Text;
     tbLocais.Post;
     if btnGravar.Tag = 1 then
        ShowMessage('Tipo de Local de Inventário incluído com sucesso!')
     else
        ShowMessage('Tipo de Local de Inventário alterado com sucesso!');

     qrLocais.Close;
     qrLocais.Open;
     //qrLocais.Locate('Codigo',cod,[]);
     //qrLocais.Refresh;

     btnNovo.Enabled := True;
     btnAlterar.Enabled := True;
     btnExcluir.Enabled := True;
     btnGravar.Enabled := False;
     btnCancelar.Enabled := False;
     btnSair.Enabled := True;
     btnGravar.Tag := 0;

     dbgLocais.Enabled  := True;
     dbedtCod.Enabled := False;
     dbedtDesc.Enabled := False;

     dbgLocais.SetFocus;
end;

procedure Tf_locaisinv.qrLocaisAfterScroll(DataSet: TDataSet);
begin
     if tbLocais.RecordCount = 0 then begin
        btnAlterar.Enabled := False;
        btnExcluir.Enabled := False;
     end
     else begin
        btnAlterar.Enabled := True;
        btnExcluir.Enabled := True;
     end
end;

end.
