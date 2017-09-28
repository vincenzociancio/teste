unit U_eventosgrupos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Buttons, Mask;

type
  TF_eventosgrupos = class(TForm)
    t_eventosgrupos: TTable;
    dseventosgrupos: TDataSource;
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
    q_Teste: TQuery;
    Label3: TLabel;
    dbedtDesci: TDBEdit;
    t_eventosgruposCodigo: TStringField;
    t_eventosgruposDescricao: TStringField;
    t_eventosgruposDescricao_Ing: TStringField;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_eventosgrupos: TF_eventosgrupos;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure TF_eventosgrupos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     t_eventosgrupos.Close;

     Action := caFree;
     f_eventosgrupos := nil;
 //    f_mscomex.GruposdeEventosdeFollowUp1.Enabled := True;
end;

procedure TF_eventosgrupos.FormActivate(Sender: TObject);
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

procedure TF_eventosgrupos.FormCreate(Sender: TObject);
begin
     t_eventosgrupos.Open;
end;

procedure TF_eventosgrupos.btnNovoClick(Sender: TObject);
begin
  t_eventosgrupos.Append;
//  t_eventosgruposempresa.AsString := v_empresa;
//  t_eventosgruposfilial.asstring := v_filial;

  btnNovo.Enabled := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnGravar.Tag := 1;

  dbgCargas.Enabled := False;
  dbedtCod.Enabled  := True;
  dbedtDesc.Enabled := True;
  dbedtDesci.Enabled := True;

  dbedtCod.SetFocus;
end;

procedure TF_eventosgrupos.btnAlterarClick(Sender: TObject);
begin
  btnNovo.Enabled := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnGravar.Tag := 2;

  dbgCargas.Enabled := False;
  dbedtDesc.Enabled := True;
  dbedtDesci.Enabled := True;

  t_eventosgrupos.Edit;
  dbedtDesc.SetFocus;
end;

procedure TF_eventosgrupos.btnExcluirClick(Sender: TObject);
begin
       if MessageDlg('Confirma exclusão deste Grupo de Eventos?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then
         begin
           t_eventosgrupos.Delete;
           ShowMessage('Grupo de Evento excluído!');
         end;

     btnNovo.SetFocus;
end;

procedure TF_eventosgrupos.btnCancelarClick(Sender: TObject);
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
  dbedtDesci.Enabled := False;

  t_eventosgrupos.Cancel;
  btnNovo.SetFocus;
end;

procedure TF_eventosgrupos.btnGravarClick(Sender: TObject);
var cont: integer;
begin
     if dbedtCod.Text = '' then begin
        MessageDlg('Digite o código do Grupo de Eventos!', mtInformation,[mbOk], 0);
        dbedtCod.SetFocus;
     end
     else
        if dbedtDesc.Text = '' then begin
           MessageDlg('Digite a descrição do Grupo de Eventos!', mtInformation,[mbOk], 0);
           dbedtDesc.SetFocus;
        end
        else begin
           cont := 0;
           if btnGravar.Tag = 1 then begin
              q_Teste.Params[0].AsString := t_eventosgruposCodigo.AsString;
              q_Teste.Open;
              cont := q_Teste.RecordCount;
           end;
           if cont <> 0 then begin
              MessageDlg('Já existe Grupo de Eventos com este código!', mtInformation,[mbOk], 0);
              dbgCargas.SetFocus;
           end
           else begin
              t_eventosgrupos.Post;
              if btnGravar.Tag = 1 then
                 ShowMessage('Grupo de Eventos incluído com sucesso!')
              else
                 ShowMessage('Grupo de Eventos alterado com sucesso!');

              btnNovo.Enabled := True;
              btnAlterar.Enabled := True;
              btnExcluir.Enabled := True;
              btnGravar.Enabled := False;
              btnCancelar.Enabled := False;
              btnGravar.Tag := 0;

              dbgCargas.Enabled  := True;
              dbedtCod.Enabled := False;
              dbedtDesc.Enabled := False;
              dbedtDesci.Enabled := False;

              dbgCargas.SetFocus;
           end;
           q_Teste.Close
        end;
end;

procedure TF_eventosgrupos.btnSairClick(Sender: TObject);
begin
     Close;
end;

end.
