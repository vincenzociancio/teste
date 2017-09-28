unit u_tratICMS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, Grids, DBGrids, Db, DBTables, StdCtrls, Mask, Buttons;

type
  Tf_tratICMS = class(TForm)
    tbICMS: TTable;
    dsICMS: TDataSource;
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
    qrExc: TQuery;
    qrGravar: TQuery;
    tbICMScodigo: TStringField;
    tbICMSdescricao: TStringField;
    qrExccodigo: TStringField;
    qrExcdescricao: TStringField;
    qrGravarCODIGO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbICMSBeforeDelete(DataSet: TDataSet);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure tbICMSAfterScroll(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_tratICMS: Tf_tratICMS;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_tratICMS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     tbICMS.Open;

     Action := caFree;
     f_tratICMS := nil;
     f_mscomex.TratamentoTributrioICMS1.Enabled := True;
end;

procedure Tf_tratICMS.FormActivate(Sender: TObject);
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

procedure Tf_tratICMS.FormCreate(Sender: TObject);
begin
     tbICMS.Open;
end;

procedure Tf_tratICMS.tbICMSBeforeDelete(DataSet: TDataSet);
begin
  //   AtuNet('Tipos_status_processos',[T_StatusCodigo.asstring],'D');
end;

procedure Tf_tratICMS.btnNovoClick(Sender: TObject);
begin
  tbICMS.Append;

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

procedure Tf_tratICMS.btnAlterarClick(Sender: TObject);
begin
  btnNovo.Enabled := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnGravar.Tag := 2;

  dbgStatus.Enabled := False;
  dbedtDesc.Enabled := True;

  tbICMS.Edit;
  dbedtDesc.SetFocus;
end;

procedure Tf_tratICMS.btnExcluirClick(Sender: TObject);
begin
     qrExc.Params[0].AsString := tbICMSCodigo.AsString;
     qrExc.Open;
     if qrExc.RecordCount <> 0 then
        MessageDlg('Existem Processos com este Código de Tratamento Tributário ICMS. Não pode ser excluído!', mtError,[mbOk], 0)
     else
       if MessageDlg('Confirma exclusão deste Código de Tratamento Tributário ICMS?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then
         begin
           tbICMS.Delete;
           ShowMessage('Código de Tratamento Tributário ICMS excluído!');
         end;
     qrExc.Close;
     btnNovo.SetFocus;
end;

procedure Tf_tratICMS.btnCancelarClick(Sender: TObject);
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

  tbICMS.Cancel;
  btnNovo.SetFocus;
end;

procedure Tf_tratICMS.btnGravarClick(Sender: TObject);
var cont: integer;
begin
     if dbedtCod.Text = '' then begin
        MessageDlg('Digite o código do Tratamento Tributário ICMS!', mtInformation,[mbOk], 0);
        dbedtCod.SetFocus;
     end
     else
        if dbedtDesc.Text = '' then begin
           MessageDlg('Digite a descrição do Tratamento Tributário ICMS!', mtInformation,[mbOk], 0);
           dbedtDesc.SetFocus;
        end
        else begin
           cont := 0;
           if btnGravar.Tag = 1 then begin
              qrGravar.Params[0].AsString := tbICMSCodigo.AsString;
              qrGravar.Open;
              cont := qrGravar.RecordCount;
           end;
           if cont <> 0 then begin
              MessageDlg('Já existe Tratamento Tributário ICMS com este código!', mtInformation,[mbOk], 0);
              dbedtCod.SetFocus;
           end
           else begin
              tbICMS.Post;
              if btnGravar.Tag = 1 then
                 ShowMessage('Tratamento Tributário ICMS incluído com sucesso!')
              else
                 ShowMessage('Tratamento Tributário ICMS alterado com sucesso!');

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
           qrGravar.Close
        end;
end;

procedure Tf_tratICMS.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure Tf_tratICMS.tbICMSAfterScroll(DataSet: TDataSet);
begin
     If tbICMS.State In [dsInsert, dsEdit] Then
        Exit;

     if tbICMS.RecordCount = 0 then begin
        btnAlterar.Enabled := False;
        btnExcluir.Enabled := False;
     end
     else begin
        btnAlterar.Enabled := True;
        btnExcluir.Enabled := True;
     end
end;

procedure Tf_tratICMS.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     If tbICMS.State In [dsInsert, dsEdit] Then Begin
        MessageDlg('O Registro está em edição!', mtWarning, [mbOk], 0);
        CanClose := False;
     End
     Else
        CanClose := True;

end;

end.
