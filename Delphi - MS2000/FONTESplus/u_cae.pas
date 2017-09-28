unit u_cae;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, Grids, DBGrids, Db, DBTables, StdCtrls, Mask, Buttons;

type
  Tf_CAE = class(TForm)
    t_CAE: TTable;
    dsStatus: TDataSource;
    q_Cae: TQuery;
    q_Teste: TQuery;
    qrLocCAE: TQuery;
    dsLocCAE: TDataSource;
    pnlLocCAE: TPanel;
    Panel3: TPanel;
    Label17: TLabel;
    meLocCAE: TMaskEdit;
    dbGrdUniMed: TDBGrid;
    btnLocUniMedOk: TBitBtn;
    btnLocUniMedCanc: TBitBtn;
    pnlPrincipal: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dbgCAE: TDBGrid;
    dbedtDesc: TDBEdit;
    dbedtCod: TDBEdit;
    pnlMenu: TPanel;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnImprimir: TBitBtn;
    btnLocalizar: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    Bevel4: TBevel;
    Bevel3: TBevel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    t_CAEcodigo: TStringField;
    t_CAEdescricao: TStringField;
    q_TesteCODIGO: TStringField;
    q_CaeCAE: TStringField;
    qrLocCAECODIGO: TStringField;
    qrLocCAEDESCRICAO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure t_CAEAfterPost(DataSet: TDataSet);
    procedure t_CAEBeforeDelete(DataSet: TDataSet);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure t_CAEAfterScroll(DataSet: TDataSet);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnLocalizarClick(Sender: TObject);
    procedure meLocCAEChange(Sender: TObject);
    procedure btnLocUniMedCancClick(Sender: TObject);
    procedure btnLocUniMedOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_CAE: Tf_CAE;

implementation

uses U_MSCOMEX, u_qrCAE;

{$R *.DFM}

procedure Tf_CAE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     t_cae.Open;

     Action := caFree;
     f_cae := nil;
     f_mscomex.CAE1.Enabled := True;
end;

procedure Tf_CAE.FormActivate(Sender: TObject);
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
     width := w; }

end;

procedure Tf_CAE.FormCreate(Sender: TObject);
begin
     t_cae.Open;
end;

procedure Tf_CAE.t_CAEAfterPost(DataSet: TDataSet);
begin
 //    AtuNet('Tipos_status_processos',[t_caeCodigo.asstring],'P');
end;

procedure Tf_CAE.t_CAEBeforeDelete(DataSet: TDataSet);
begin
  //   AtuNet('Tipos_status_processos',[t_caeCodigo.asstring],'D');
end;

procedure Tf_CAE.btnNovoClick(Sender: TObject);
begin
  t_cae.Append;

  btnNovo.Enabled := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnGravar.Tag := 1;
  btnLocalizar.Enabled := False;
  btnImprimir.Enabled := False;

  dbgCAE.Enabled := False;
  dbedtCod.Enabled  := True;
  dbedtDesc.Enabled := True;

  dbedtCod.SetFocus;
end;

procedure Tf_CAE.btnAlterarClick(Sender: TObject);
begin
  btnNovo.Enabled := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnGravar.Tag := 2;
  btnLocalizar.Enabled := False;
  btnImprimir.Enabled := False;

  dbgCAE.Enabled := False;
  dbedtDesc.Enabled := True;

  t_cae.Edit;
  dbedtDesc.SetFocus;
end;

procedure Tf_CAE.btnExcluirClick(Sender: TObject);
begin
     q_cae.Params[0].AsString := t_caeCodigo.AsString;
     q_cae.Open;
     if q_cae.RecordCount <> 0 then
        MessageDlg('Existem Importadores com este CAE. Não pode ser excluído!', mtInformation,[mbOk], 0)
     else
       if MessageDlg('Confirma exclusão deste CAE?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then
         begin
           t_cae.Delete;
           ShowMessage('CAE excluído!');
         end;
     q_cae.Close;
     btnNovo.SetFocus;
end;

procedure Tf_CAE.btnCancelarClick(Sender: TObject);
begin
  btnNovo.Enabled := True;
  btnAlterar.Enabled  := True;
  btnExcluir.Enabled  := True;
  btnGravar.Enabled   := False;
  btnCancelar.Enabled := False;
  btnGravar.Tag := 0;
  btnLocalizar.Enabled := True;
  btnImprimir.Enabled := True;

  dbgCAE.Enabled := True;
  dbedtCod.Enabled  := False;
  dbedtDesc.Enabled := False;

  t_cae.Cancel;
  btnNovo.SetFocus;
end;

procedure Tf_CAE.btnGravarClick(Sender: TObject);
var cont: integer;
begin
     if dbedtCod.Text = '' then begin
        MessageDlg('Digite o código do CAE!', mtInformation,[mbOk], 0);
        dbedtCod.SetFocus;
     end
     else
        if dbedtDesc.Text = '' then begin
           MessageDlg('Digite a descrição do CAE!', mtInformation,[mbOk], 0);
           dbedtDesc.SetFocus;
        end
        else begin
           cont := 0;
           if btnGravar.Tag = 1 then begin
              q_Teste.Params[0].AsString := t_caeCodigo.AsString;
              q_Teste.Open;
              cont := q_Teste.RecordCount;
           end;
           if cont <> 0 then begin
              MessageDlg('Já existe Status de CAE!', mtInformation,[mbOk], 0);
              dbedtCod.SetFocus;
           end
           else begin
              t_cae.Post;
              if btnGravar.Tag = 1 then
                 ShowMessage('CAE incluído com sucesso!')
              else
                 ShowMessage('CAE alterado com sucesso!');

              btnNovo.Enabled := True;
              btnAlterar.Enabled := True;
              btnExcluir.Enabled := True;
              btnGravar.Enabled := False;
              btnCancelar.Enabled := False;
              btnGravar.Tag := 0;
              btnLocalizar.Enabled := True;
              btnImprimir.Enabled := True;

              dbgCAE.Enabled  := True;
              dbedtCod.Enabled := False;
              dbedtDesc.Enabled := False;

              dbgCAE.SetFocus;
           end;
           q_Teste.Close
        end;
end;

procedure Tf_CAE.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure Tf_CAE.t_CAEAfterScroll(DataSet: TDataSet);
begin
     if t_cae.RecordCount = 0 then begin
        btnAlterar.Enabled := False;
        btnExcluir.Enabled := False;
     end
     else begin
        btnAlterar.Enabled := True;
        btnExcluir.Enabled := True;
     end
end;

procedure Tf_CAE.btnImprimirClick(Sender: TObject);
begin

     if not Assigned(qrepCAE) then Application.CreateForm(TqrepCAE, qrepCAE);
       With qrepCAE Do Begin
         With qrel_cae Do Begin
             Close;
             Open;
         End;
         Preview;

         end;
end;
procedure Tf_CAE.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
     If t_CAE.State In [dsInsert, dsEdit] Then Begin
        MessageDlg('O CAE está em edição!', mtWarning, [mbOk], 0);
        CanClose := False;
     End
     Else
        CanClose := True;

end;

procedure Tf_CAE.btnLocalizarClick(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     With pnlLocCAE Do Begin
         Top  := 67;
         Left := 31;
         Height := 255;
         Visible := True;
     End;
     pnlMenu.Enabled := False;
     pnlPrincipal.Enabled := False;
     With qrLocCAE Do Begin
         Close;
         Open;
     End;
     meLocCAE.SetFocus;
     meLocCAE.Text :='';
     Screen.Cursor := crDefault;

end;

procedure Tf_CAE.meLocCAEChange(Sender: TObject);
begin
     With qrLocCAE Do Begin
         Close;
         if TipoBanco = 1 then begin
           Params[0].AsString := '%'+ meLocCAE.Text +'%';
           Params[1].AsString := '%'+ meLocCAE.Text +'%';
         end
         else begin
           Params[0].AsString := '*'+ meLocCAE.Text +'*';
           Params[1].AsString := '*'+ meLocCAE.Text +'*';
         end;

         Open;
     End;
end;

procedure Tf_CAE.btnLocUniMedCancClick(Sender: TObject);
begin
     pnlLocCAE.Visible := False;
     pnlPrincipal.Enabled := True;
     pnlMenu.Enabled := True;
     dbgCAE.SetFocus;
end;

procedure Tf_CAE.btnLocUniMedOkClick(Sender: TObject);
begin
       pnlLocCAE.Visible := False;
       pnlPrincipal.Enabled := True;
       pnlMenu.Enabled := True;
       t_CAE.FindKey([qrLocCAECODIGO.AsString]);
       btnAlterar.SetFocus;

end;

end.
