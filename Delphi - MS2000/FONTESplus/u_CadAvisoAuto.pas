unit u_CadAvisoAuto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls;

type
  Tf_CadAvisoAuto = class(TForm)
    tbAvisos: TTable;
    qrParam: TQuery;
    dsParam: TDataSource;
    dsAvisos: TDataSource;
    qrImport: TQuery;
    dsImport: TDataSource;
    qrTipo: TQuery;
    dsTipo: TDataSource;
    Panel1: TPanel;
    pnlBotoes: TPanel;
    pnlPrincipal: TPanel;
    dbGrdAvisos: TDBGrid;
    pnlCampos: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dbLcbCli: TDBLookupComboBox;
    dbEdtCli: TDBEdit;
    dbEdtNome: TDBEdit;
    dbEdtEmail: TDBEdit;
    dbLcbTipo: TDBLookupComboBox;
    dbEdtParam: TDBEdit;
    dbEdtTipo: TDBEdit;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    btnFechar: TBitBtn;
    Label6: TLabel;
    dbEdtObs: TDBEdit;
    dbcbHTML: TDBCheckBox;
    qrParamEmpresa: TStringField;
    qrParamFilial: TStringField;
    qrImportCodigo: TStringField;
    qrImportRazao_Social: TStringField;
    qrTipocodigo: TStringField;
    qrTipodescricao: TStringField;
    qrTipoTem_parametro: TIntegerField;
    qrTipoobs_parametro: TStringField;
    qrTipoSomente_HTML: TIntegerField;
    tbAvisosEmpresa: TStringField;
    tbAvisosFilial: TStringField;
    tbAvisosImportador: TStringField;
    tbAvisosTipo: TStringField;
    tbAvisosEmail: TStringField;
    tbAvisosNome_completo: TStringField;
    tbAvisosParametros: TStringField;
    tbAvisosHTML: TIntegerField;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure tbAvisosBeforeInsert(DataSet: TDataSet);
    procedure tbAvisosAfterPost(DataSet: TDataSet);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure qrTipoAfterScroll(DataSet: TDataSet);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_CadAvisoAuto: Tf_CadAvisoAuto;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_CadAvisoAuto.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

     Left := 1;
     Top  := 1;


     h := Height;
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
     width := w;
end;

procedure Tf_CadAvisoAuto.FormCreate(Sender: TObject);
begin
     qrParam.Open;
     qrTipo.Open;
     With qrImport Do Begin
         Params[0].AsString := qrParamEmpresa.AsString;
         Params[1].AsString := qrParamFilial.AsString;
         Open;
     End;
     tbAvisos.Open;
end;

procedure Tf_CadAvisoAuto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := caFree;
     f_CadAvisoAuto := nil;
     f_mscomex.Avisos1.Enabled := True;
end;

procedure Tf_CadAvisoAuto.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     If tbAvisos.State In [dsInsert, dsEdit] Then Begin
        MessageDlg('O Registro está em edição!', mtWarning, [mbOk], 0);
        CanClose := False;
     End;
end;

procedure Tf_CadAvisoAuto.btnNovoClick(Sender: TObject);
begin
     tbAvisos.Append;
     dbLcbCli.SetFocus;
end;

procedure Tf_CadAvisoAuto.btnAlterarClick(Sender: TObject);
begin
     tbAvisos.Edit;
     dbLcbCli.SetFocus;
end;

procedure Tf_CadAvisoAuto.tbAvisosBeforeInsert(DataSet: TDataSet);
begin
     pnlPrincipal.Enabled := False;
     pnlCampos.Enabled := True;

     btnNovo.Enabled := False;
     btnAlterar.Enabled := False;
     btnExcluir.Enabled := False;

     btnSalvar.Enabled := True;
     btnCancelar.Enabled := True;

     btnFechar.Enabled := False;
end;

procedure Tf_CadAvisoAuto.tbAvisosAfterPost(DataSet: TDataSet);
begin
     pnlPrincipal.Enabled := True;
     pnlCampos.Enabled := False;

     If tbAvisos.RecordCount <> 0 Then Begin
        btnNovo.Enabled := True;
        btnAlterar.Enabled := True;
     End
     Else Begin
        btnNovo.Enabled := False;
        btnAlterar.Enabled := False;
     End;
     btnExcluir.Enabled := True;

     btnSalvar.Enabled := False;
     btnCancelar.Enabled := False;

     btnFechar.Enabled := True;
end;

procedure Tf_CadAvisoAuto.btnSalvarClick(Sender: TObject);
begin
     If tbAvisosImportador.AsString = '' Then Begin
        MessageDlg('Cliente não pode estar em branco!', mtWarning, [mbOk], 0);
        dbLcbCli.SetFocus;
        Exit;
     End;
     If dbLcbCli.Text = '' Then Begin
        MessageDlg('Código do Cliente inválido!', mtWarning, [mbOk], 0);
        dbLcbCli.SetFocus;
        Exit;
     End;
     If tbAvisosNome_completo.AsString = '' Then Begin
        MessageDlg('Nome não pode estar em branco!', mtWarning, [mbOk], 0);
        dbEdtNome.SetFocus;
        Exit;
     End;
     If tbAvisosEmail.AsString = '' Then Begin
        MessageDlg('E-mail não pode estar em branco!', mtWarning, [mbOk], 0);
        dbEdtEmail.SetFocus;
        Exit;
     End;
     If tbAvisosTipo.AsString = '' Then Begin
        MessageDlg('Tipo do Aviso não pode estar em branco!', mtWarning, [mbOk], 0);
        dbLcbTipo.SetFocus;
        Exit;
     End;
     If dbLcbTipo.Text = '' Then Begin
        MessageDlg('Código do Tipo do Aviso inválido!', mtWarning, [mbOk], 0);
        dbLcbTipo.SetFocus;
        Exit;
     End;
     If qrTipoTem_parametro.AsVariant Then
        If tbAvisosParametros.AsString = '' Then Begin
           MessageDlg('Parâmetro não pode estar em branco!', mtWarning, [mbOk], 0);
           dbEdtParam.SetFocus;
           Exit;
        End;

     Try
        tbAvisos.Post;
     Except
        MessageDlg('Erro na gravação do Registro!', mtError, [mbOk], 0);
        Exit;
     End;
end;

procedure Tf_CadAvisoAuto.btnCancelarClick(Sender: TObject);
begin
     tbAvisos.Cancel;
     dbGrdAvisos.SetFocus;
end;

procedure Tf_CadAvisoAuto.btnFecharClick(Sender: TObject);
begin
     Close;
end;

procedure Tf_CadAvisoAuto.qrTipoAfterScroll(DataSet: TDataSet);
begin
     dbEdtParam.Enabled := qrTipoTem_parametro.AsVariant;
     dbcbHTML.Enabled := Not qrTipoSomente_HTML.AsVariant;
     If tbAvisos.State In [dsInsert, dsEdit] Then
        If Not qrTipoSomente_HTML.AsVariant Then
           tbAvisosHTML.AsVariant := -1;
end;

procedure Tf_CadAvisoAuto.btnExcluirClick(Sender: TObject);
begin
     If MessageDlg('Você tem certeza que deseja excluir este registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
        Exit;

     tbAvisos.Delete;
end;

end.
