unit u_AutorizacaoRegContas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls;

type
  Tf_AutorizacaoRegContas = class(TForm)
    pnlPrincipal: TPanel;
    Bevel1: TBevel;
    btnFechar: TBitBtn;
    btnCancelar: TBitBtn;
    btnGravar: TBitBtn;
    btnExcluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnNovo: TBitBtn;
    dbGridDestinatario: TDBGrid;
    qrAutRegCont: TQuery;
    dsAutRegCont: TDataSource;
    tbAutRegCont: TTable;
    dbeBanco: TDBEdit;
    dbeAgencia: TDBEdit;
    dbeConta: TDBEdit;
    dsTBAutRegCont: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    QCC: TQuery;
    Label4: TLabel;
    DSQCC: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    qrAutRegContBanco: TStringField;
    qrAutRegContAgencia: TStringField;
    qrAutRegContConta: TStringField;
    qrAutRegContCodigo: TAutoIncField;
    qrAutRegContQNOME: TStringField;
    tbAutRegContBanco: TStringField;
    tbAutRegContAgencia: TStringField;
    tbAutRegContConta: TStringField;
    tbAutRegContCONTAC: TIntegerField;
    QCCCodigo: TAutoIncField;
    QCCQNOME: TStringField;
    QCCASCAA: TIntegerField;
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure tbAutRegContAfterPost(DataSet: TDataSet);
    procedure tbAutRegContBeforeDelete(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_AutorizacaoRegContas: Tf_AutorizacaoRegContas;

implementation

uses U_MSCOMEX, u_solRegistros;

{$R *.DFM}

procedure Tf_AutorizacaoRegContas.btnNovoClick(Sender: TObject);
begin
qrAutRegCont.Close;
     tbAutRegCont.Append;

     dbeBanco.Enabled := True;
     dbeAgencia.Enabled := True;
     dbeConta.Enabled := True;
     dbeBanco.SetFocus;

//     dbeBanco.Text := '';
  //   dbeAgencia.Text := '';
    // dbeConta.Text := '';

     btnNovo.Enabled := False;
     btnAlterar.Enabled := False;
     btnExcluir.Enabled := False;
     btnGravar.Enabled := True;
     btnCancelar.Enabled := True;
     btnFechar.Enabled := False;
end;

procedure Tf_AutorizacaoRegContas.btnGravarClick(Sender: TObject);
begin
     tbAutRegCont.Post;

     dbeBanco.Enabled := False;
     dbeAgencia.Enabled := False;
     dbeConta.Enabled := False;

     btnNovo.Enabled := True;
     btnAlterar.Enabled := True;
     btnExcluir.Enabled := True;
     btnGravar.Enabled := False;
     btnCancelar.Enabled := False;
     btnFechar.Enabled := True;

     qrAutRegCont.Close;
     qrAutRegCont.Open;
     If assigned (f_solregistros)Then Begin
       f_solregistros.qrConta.Close;
       f_solregistros.qrConta.Open;
     End;
end;

procedure Tf_AutorizacaoRegContas.btnCancelarClick(Sender: TObject);
begin
     tbAutRegCont.Cancel;

     dbeBanco.Enabled := False;
     dbeAgencia.Enabled := False;
     dbeConta.Enabled := False;

     btnNovo.Enabled := True;
     btnAlterar.Enabled := True;
     btnExcluir.Enabled := True;
     btnGravar.Enabled := False;
     btnCancelar.Enabled := False;
     btnFechar.Enabled := True;
     qrAutRegCont.Close;
     qrAutRegCont.Open;

end;

procedure Tf_AutorizacaoRegContas.FormCreate(Sender: TObject);
begin
     Top := 0;
     Left := 0;
     tbAutRegCont.Open;
     qrAutRegCont.Open;
     QCC.OPEN;
end;

procedure Tf_AutorizacaoRegContas.btnAlterarClick(Sender: TObject);
begin
     If tbAutRegCont.RecordCount < 1 Then Begin
       MessageDlg('Não há contas para Alterar!',mtInformation, [mbOk], 0);
       Exit;
     End;
      If Not tbAutRegCont.Locate('Banco;Agencia;Conta',VarArrayOf([qrAutRegContBanco.AsString,qrAutRegContAgencia.AsString,qrAutRegContConta.AsString]),[]) Then
        Showmessage('Erro na tabela');
     tbAutRegCont.Edit;

     dbeBanco.Enabled := True;
     dbeAgencia.Enabled := True;
     dbeConta.Enabled := True;
     dbeBanco.SetFocus;

     btnNovo.Enabled := False;
     btnAlterar.Enabled := False;
     btnExcluir.Enabled := False;
     btnGravar.Enabled := True;
     btnCancelar.Enabled := True;
     btnFechar.Enabled := False;

end;

procedure Tf_AutorizacaoRegContas.btnExcluirClick(Sender: TObject);
begin
     If tbAutRegCont.RecordCount < 1 Then Begin
       MessageDlg('Não há contas para Excluir!',mtInformation, [mbOk], 0);
       Exit;
     End;
      If Not tbAutRegCont.Locate('Banco;Agencia;Conta',VarArrayOf([qrAutRegContBanco.AsString,qrAutRegContAgencia.AsString,qrAutRegContConta.AsString]),[]) Then
        Showmessage('Erro na tabela');

     If MessageDlg('Deseja Excluir essa Conta?',mtConfirmation, [mbYes, mbNo], 0) = mrNo Then Begin
       Exit;
     End;
     tbAutRegCont.Delete;
     qrAutRegCont.Close;
     qrAutRegCont.Open;

end;

procedure Tf_AutorizacaoRegContas.FormClose(Sender: TObject;
  var Action: TCloseAction);
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
  f_AutorizacaoRegContas := nil;
  f_mscomex.CadastrodeContas1.Enabled := True;
end;

procedure Tf_AutorizacaoRegContas.btnFecharClick(Sender: TObject);
begin
     Close;
end;

procedure Tf_AutorizacaoRegContas.tbAutRegContAfterPost(DataSet: TDataSet);
begin
     logusu('P','Alterou dados da conta (AutorizacaoRegContas): bc'+tbAutRegContBanco.asstring+' cc'+tbAutRegContConta.asstring+' ag'+tbAutRegContAgencia.asstring);

end;

procedure Tf_AutorizacaoRegContas.tbAutRegContBeforeDelete(
  DataSet: TDataSet);
begin
     logusu('E','Excluiu conta (AutorizacaoRegContas): bc'+tbAutRegContBanco.asstring+' cc'+tbAutRegContConta.asstring+' ag'+tbAutRegContAgencia.asstring);

end;

procedure Tf_AutorizacaoRegContas.FormActivate(Sender: TObject);
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

end.
