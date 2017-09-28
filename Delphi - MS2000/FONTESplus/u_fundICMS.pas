unit u_fundICMS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, Grids, DBGrids, Db, DBTables, StdCtrls, Mask, Buttons;

type
  Tf_fundICMS = class(TForm)
    tbTratamento: TTable;
    dsTratamento: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    dbgStatus: TDBGrid;
    Panel3: TPanel;
    dbedtDesc: TDBEdit;
    dbedtCod: TDBEdit;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    dbcbTratICMS: TDBLookupComboBox;
    qrTribut: TQuery;
    dsFundamento: TDataSource;
    tbFundamento: TTable;
    Panel4: TPanel;
    Bevel3: TBevel;
    Bevel1: TBevel;
    btnSair: TBitBtn;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    tbTratamentocodigo: TStringField;
    tbTratamentodescricao: TStringField;
    tbFundamentoTratamento_Tributario: TStringField;
    tbFundamentocodigo: TStringField;
    tbFundamentodescricao: TStringField;
    qrTributTratamento_Tributario: TStringField;
    qrTributFundamento_Legal: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure tbFundamentoAfterScroll(DataSet: TDataSet);
    procedure tbFundamentoAfterPost(DataSet: TDataSet);
    procedure tbFundamentoBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_fundICMS: Tf_fundICMS;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_fundICMS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
     f_fundICMS := nil;
     f_mscomex.FundamentoLegalICMS1.Enabled := True;
end;

procedure Tf_fundICMS.FormActivate(Sender: TObject);
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

procedure Tf_fundICMS.FormCreate(Sender: TObject);
begin
     tbFundamento.Open;
     tbTratamento.Open;
end;

procedure Tf_fundICMS.btnNovoClick(Sender: TObject);
begin
  tbFundamento.Append;

  btnNovo.Enabled := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;

  dbgStatus.Enabled := False;
  dbedtCod.Enabled  := True;
  dbedtDesc.Enabled := True;

  dbedtCod.SetFocus;
end;

procedure Tf_fundICMS.btnAlterarClick(Sender: TObject);
begin
  btnNovo.Enabled := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;

  dbgStatus.Enabled := False;
  dbedtDesc.Enabled := True;

  tbFundamento.Edit;
  dbedtDesc.SetFocus;
end;

procedure Tf_fundICMS.btnExcluirClick(Sender: TObject);
begin
     qrTribut.Params[0].AsString := tbFundamentoTratamento_Tributario.AsString;
     qrTribut.Params[1].AsString := tbFundamentoCODIGO.AsString;
     qrTribut.Open;
     If qrTribut.RecordCount <> 0 Then Begin
        MessageDlg('Existe Tributação com este Fundamento Legal ICMS. Não pode ser excluído!', mtError,[mbOk], 0);
        setFocus;
        qrTribut.Close;
        Exit;
     End;
     If MessageDlg('Confirma exclusão deste Fundamento Legal ICMS?', mtConfirmation,[mbYes, mbNo], 0) = mrYes Then Begin
        tbFundamento.Delete;
        ShowMessage('Código de Fundamento Legal ICMS excluído!');
     End;
     qrTribut.Close;
     btnNovo.SetFocus;
end;
              
procedure Tf_fundICMS.btnCancelarClick(Sender: TObject);
begin
  btnNovo.Enabled := True;
  btnAlterar.Enabled  := True;
  btnExcluir.Enabled  := True;
  btnGravar.Enabled   := False;
  btnCancelar.Enabled := False;

  dbgStatus.Enabled := True;
  dbedtCod.Enabled  := False;
  dbedtDesc.Enabled := False;

  tbFundamento.Cancel;
  btnNovo.SetFocus;
end;

procedure Tf_fundICMS.btnGravarClick(Sender: TObject);
begin
     if dbedtCod.Text = '' then begin
        MessageDlg('Digite o código do Fundamento Legal ICMS!', mtInformation,[mbOk], 0);
        dbedtCod.SetFocus;
        Exit;
     End;
     if dbedtDesc.Text = '' then begin
        MessageDlg('Digite a descrição do Fundamento Legal ICMS!', mtInformation,[mbOk], 0);
        dbedtDesc.SetFocus;
        Exit;
     End;

     Try
        tbFundamento.Post;
     Except
        MessageDlg('Já existe Fundamento Legal ICMS com este código!', mtError, [mbOk], 0);
        dbedtCod.SetFocus;
        Exit;
     End;

     btnNovo.Enabled := True;
     btnAlterar.Enabled := True;
     btnExcluir.Enabled := True;
     btnGravar.Enabled := False;
     btnCancelar.Enabled := False;

     dbgStatus.Enabled  := True;
     dbedtCod.Enabled := False;
     dbedtDesc.Enabled := False;

     dbgStatus.SetFocus;
end;

procedure Tf_fundICMS.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure Tf_fundICMS.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     If tbFundamento.State In [dsInsert, dsEdit] Then Begin
        MessageDlg('O Registro está em edição!', mtWarning, [mbOk], 0);
        CanClose := False;
     End
     Else
        CanClose := True;

end;

procedure Tf_fundICMS.tbFundamentoAfterScroll(DataSet: TDataSet);
begin
     If tbFundamento.State In [dsInsert, dsEdit] Then
        Exit;

     if tbFundamento.RecordCount = 0 then begin
        btnAlterar.Enabled := False;
        btnExcluir.Enabled := False;
     end
     else begin
        btnAlterar.Enabled := True;
        btnExcluir.Enabled := True;
     end
end;

procedure Tf_fundICMS.tbFundamentoAfterPost(DataSet: TDataSet);
begin
 //    AtuNet('Tipos_status_processos',[T_StatusCodigo.asstring],'P');
end;

procedure Tf_fundICMS.tbFundamentoBeforeDelete(DataSet: TDataSet);
begin
  //   AtuNet('Tipos_status_processos',[T_StatusCodigo.asstring],'D');
end;

end.
