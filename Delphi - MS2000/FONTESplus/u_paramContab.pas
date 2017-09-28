unit u_paramContab;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids, ExtCtrls;

type
  Tf_ParamContab = class(TForm)
    pnlPrincipal: TPanel;
    dbGrdParamContab: TDBGrid;
    pnlCampos: TPanel;
    Label3: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    dbLcbCliente: TDBLookupComboBox;
    dbLcbDescNum: TDBLookupComboBox;
    dbEdtCod: TDBEdit;
    dbEdtCodNum: TDBEdit;
    pnlBotoes: TPanel;
    btnFechar: TBitBtn;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    qrParam: TQuery;
    qrParamContab: TQuery;
    dsQrParamContab: TDataSource;
    tbParamContab: TTable;
    dsTbParamContab: TDataSource;
    Label4: TLabel;
    Label5: TLabel;
    dbLcbDescCred: TDBLookupComboBox;
    dbEdtCodCred: TDBEdit;
    qrImport: TQuery;
    dsImport: TDataSource;
    qrTiposNum: TQuery;
    dsTiposNum: TDataSource;
    qrTiposCred: TQuery;
    dsTiposCred: TDataSource;
    qrParamContabEmpresa: TStringField;
    qrParamContabFilial: TStringField;
    qrParamContabImportador: TStringField;
    qrParamContabRazao_Social: TStringField;
    qrParamContabNumerario: TStringField;
    qrParamContabDescNum: TStringField;
    qrParamContabCredito: TStringField;
    qrParamContabDescCred: TStringField;
    qrParamEmpresa: TStringField;
    qrParamFilial: TStringField;
    tbParamContabEmpresa: TStringField;
    tbParamContabFilial: TStringField;
    tbParamContabImportador: TStringField;
    tbParamContabNumerario: TStringField;
    tbParamContabCredito: TStringField;
    qrImportCodigo: TStringField;
    qrImportRazao_Social: TStringField;
    qrTiposNumCodigo: TStringField;
    qrTiposNumDescricao: TStringField;
    qrTiposCredCodigo: TStringField;
    qrTiposCredDescricao: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnFecharClick(Sender: TObject);
    procedure tbParamContabBeforeInsert(DataSet: TDataSet);
    procedure tbParamContabAfterPost(DataSet: TDataSet);
    procedure tbParamContabBeforeDelete(DataSet: TDataSet);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure qrParamContabAfterScroll(DataSet: TDataSet);
    procedure btnCancelarClick(Sender: TObject);
    procedure qrParamContabAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_ParamContab: Tf_ParamContab;
  vEmp, vFil: String;

implementation

uses
  U_MSCOMEX;

{$R *.DFM}

procedure Tf_ParamContab.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

     Left := 1;
     Top  := 1;


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
     width := w; }
end;

procedure Tf_ParamContab.FormCreate(Sender: TObject);
begin
     qrParam.Open;
     vEmp := qrParamEmpresa.AsString;
     vFil := qrParamFilial.AsString;
     qrParam.Close;
     tbParamContab.Open;
     With qrParamContab Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Open;
     End;
     With qrImport Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Open;
     End;
     With qrTiposNum Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Open;
     End;
     With qrTiposCred Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Open;
     End;
end;

procedure Tf_ParamContab.FormClose(Sender: TObject;
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

  F_MSCOMEX.ParmetrosContabilizao1.Enabled := True;
  f_ParamContab := nil;
  Action := caFree;
end;

procedure Tf_ParamContab.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     If tbParamContab.State In [dsInsert, dsEdit] Then Begin
        MessageDlg('O Parâmetro de Contabilização está em edição!', mtInformation, [mbOk], 0);
        CanClose := False;
     End
     Else
        CanClose := True;
end;

procedure Tf_ParamContab.btnFecharClick(Sender: TObject);
begin
     Close;
end;

procedure Tf_ParamContab.tbParamContabBeforeInsert(DataSet: TDataSet);
begin
     pnlPrincipal.Enabled := False;
     pnlCampos.Enabled := True;

     btnIncluir.Enabled := False;
     btnAlterar.Enabled := False;
     btnExcluir.Enabled := False;
     btnSalvar.Enabled := True;
     btnCancelar.Enabled := True;
     btnIncluir.Enabled := False;
     btnFechar.Enabled := False;
     dbLcbCliente.SetFocus;
end;

procedure Tf_ParamContab.tbParamContabAfterPost(DataSet: TDataSet);
begin
     logusu('P','Alterou o Parâmetro de Contabilização, Numerário: '+ tbParamContabNumerario.AsString +', do Cliente: '+ tbParamContabImportador.AsString);
end;

procedure Tf_ParamContab.tbParamContabBeforeDelete(DataSet: TDataSet);
begin
     logusu('E','Excluiu o Parâmetro de Contabilização, Numerário: '+ tbParamContabNumerario.AsString +', do Cliente: '+ tbParamContabImportador.AsString);
end;

procedure Tf_ParamContab.btnIncluirClick(Sender: TObject);
begin
     tbParamContab.Insert;
     tbParamContabEmpresa.AsString := vEmp;
     tbParamContabFilial.AsString := vFil;
end;

procedure Tf_ParamContab.btnAlterarClick(Sender: TObject);
begin
     tbParamContab.Edit;
end;

procedure Tf_ParamContab.btnExcluirClick(Sender: TObject);
begin
     If MessageDlg('Confirma exclusão do Parâmetro de Contabilização?', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
        Exit;

     Screen.Cursor := crHourGlass;
     tbParamContab.Delete;

     With qrParamContab Do Begin
         Close;  Open;
     End;
     Screen.Cursor := crDefault;

     dbGrdParamContab.SetFocus;
end;

procedure Tf_ParamContab.btnSalvarClick(Sender: TObject);
var vImp, vNum: String;

begin
     If tbParamContabImportador.AsString = '' Then Begin
        MessageDlg('Selecione um Cliente!', mtWarning, [mbOk], 0);
        dbLcbCliente.SetFocus;
        Exit;
     End;
     If tbParamContabNumerario.AsString = '' Then Begin
        MessageDlg('Selecione um Tipo de Numerário!', mtWarning, [mbOk], 0);
        dbLcbDescNum.SetFocus;
        Exit;
     End;
     If tbParamContabCredito.AsString = '' Then Begin
        MessageDlg('Selecione um Tipo de Crédito!', mtWarning, [mbOk], 0);
        dbLcbDescCred.SetFocus;
        Exit;
     End;

     vImp := tbParamContabImportador.AsString;
     vNum := tbParamContabNumerario.AsString;

     Screen.Cursor := crHourGlass;
     Try
        tbParamContab.Post;
     Except
        MessageDlg('Erro na gravação do Parâmetro de Contabilização! Não pode haver Numerários iguais para o mesmo Cliente.', mtWarning, [mbOk], 0);
        dbLcbDescNum.SetFocus;
        Screen.Cursor := crDefault;
        Exit;
     End;

     With qrParamContab Do Begin
         Close;  Open;
         Locate('Importador;Numerario',VarArrayOf([vImp, vNum]),[]);
     End;
     Screen.Cursor := crDefault;
end;

procedure Tf_ParamContab.qrParamContabAfterScroll(DataSet: TDataSet);
begin
     tbParamContab.FindKey([vEmp,vFil,qrParamContabImportador.AsString,qrParamContabNumerario.AsString])
end;

procedure Tf_ParamContab.btnCancelarClick(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     tbParamContab.Cancel;
     Screen.Cursor := crDefault;

     dbGrdParamContab.SetFocus;
end;

procedure Tf_ParamContab.qrParamContabAfterOpen(DataSet: TDataSet);
begin
     pnlPrincipal.Enabled := True;
     pnlCampos.Enabled := False;

     btnIncluir.Enabled := True;
     If qrParamContab.RecordCount <> 0 Then Begin
        btnAlterar.Enabled := True;
        btnExcluir.Enabled := True;
     End;
     btnSalvar.Enabled := False;
     btnCancelar.Enabled := False;
     btnIncluir.Enabled := True;
     btnFechar.Enabled := True;
end;

end.
