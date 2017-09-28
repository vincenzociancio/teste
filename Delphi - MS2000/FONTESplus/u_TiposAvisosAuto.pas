unit u_TiposAvisosAuto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Mask, Db, DBTables, Grids, DBGrids, ExtCtrls, Buttons;

type
  Tf_TiposAvisosAuto = class(TForm)
    Panel1: TPanel;
    pnlBotoes: TPanel;
    pnlPrincipal: TPanel;
    pnlCampos: TPanel;
    dbGrdTipo: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    dbEdtObs: TDBEdit;
    Label3: TLabel;
    dbedtCod: TDBEdit;
    dbedtDesc: TDBEdit;
    dbcbParam: TDBCheckBox;
    tbTipo: TTable;
    dsTipo: TDataSource;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    btnFechar: TBitBtn;
    qrAvisos: TQuery;
    qrParam: TQuery;
    dbcbHTML: TDBCheckBox;
    tbTipocodigo: TStringField;
    tbTipodescricao: TStringField;
    tbTipoTem_parametro: TSmallintField;
    tbTipoobs_parametro: TStringField;
    tbTipoSomente_HTML: TSmallintField;
    qrParamEmpresa: TStringField;
    qrParamFilial: TStringField;
    qrAvisosTipo: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure tbTipoAfterPost(DataSet: TDataSet);
    procedure tbTipoBeforeEdit(DataSet: TDataSet);
    procedure dbcbParamClick(Sender: TObject);
    procedure tbTipoAfterScroll(DataSet: TDataSet);
    procedure dbedtCodChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_TiposAvisosAuto: Tf_TiposAvisosAuto;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_TiposAvisosAuto.FormActivate(Sender: TObject);
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

procedure Tf_TiposAvisosAuto.FormCreate(Sender: TObject);
begin
     tbTipo.Open;
end;

procedure Tf_TiposAvisosAuto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := caFree;
     f_TiposAvisosAuto := nil;
     f_mscomex.TiposdeAvisos1.Enabled := True;
end;

procedure Tf_TiposAvisosAuto.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     If tbTipo.State In [dsInsert, dsEdit] Then Begin
        MessageDlg('O Registro está em edição!', mtWarning, [mbOk], 0);
        CanClose := False;
     End;
end;

procedure Tf_TiposAvisosAuto.btnNovoClick(Sender: TObject);
begin
     tbTipo.Append;
     dbEdtCod.SetFocus;
     //dbcbParam.Checked := True;
end;

procedure Tf_TiposAvisosAuto.btnAlterarClick(Sender: TObject);
begin
     tbTipo.Edit;
     dbEdtDesc.SetFocus;
end;

procedure Tf_TiposAvisosAuto.btnExcluirClick(Sender: TObject);
begin
     With qrAvisos Do Begin
         Params[0].AsString := tbTipocodigo.AsString;
         Open;
         If RecordCount <> 0 Then Begin
            MessageDlg('Registro não pode ser excluído, pois tem Avisos com este tipo!', mtWarning, [mbOk], 0);
            dbGrdTipo.SetFocus;
            Close;
            Exit;
         End;
         Close;
     End;

     If MessageDlg('Você tem certeza que deseja excluir este registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
        Exit;

     tbTipo.Delete;
end;

procedure Tf_TiposAvisosAuto.btnSalvarClick(Sender: TObject);
begin
     dbEdtCod.Text := Trim(dbEdtCod.Text);
     If tbTipocodigo.AsString = '' Then Begin
        MessageDlg('Código do Tipoo não pode estar em branco!', mtWarning, [mbOk], 0);
        dbEdtCod.SetFocus;
        Exit;
     End;
     dbEdtDesc.Text := Trim(dbEdtDesc.Text);
     If tbTipodescricao.AsString = '' Then Begin
        MessageDlg('Descrição do Tipo não pode estar em branco!', mtWarning, [mbOk], 0);
        dbEdtDesc.SetFocus;
        Exit;
     End;
     If tbTipoTem_parametro.Asinteger = 0 Then Begin
        dbEdtObs.Text := Trim(dbEdtObs.Text);
        If tbTipoobs_parametro.AsString = '' Then Begin
           MessageDlg('Observação do Parâmetro não pode estar em branco!', mtWarning, [mbOk], 0);
           dbEdtObs.SetFocus;
           Exit;
        End;
     End
     Else
        dbEdtObs.Clear;

     Try
        tbTipo.Post;
     Except
        MessageDlg('Erro na gravação do Registro!', mtError, [mbOk], 0);
        Exit;
     End;

     tbTipo.Close;
     tbTipo.Open;

     dbGrdTipo.SetFocus;
end;

procedure Tf_TiposAvisosAuto.btnCancelarClick(Sender: TObject);
begin
     tbTipo.Cancel;
     dbGrdTipo.SetFocus;
end;

procedure Tf_TiposAvisosAuto.btnFecharClick(Sender: TObject);
begin
     Close;
end;

procedure Tf_TiposAvisosAuto.tbTipoAfterPost(DataSet: TDataSet);
begin
     pnlPrincipal.Enabled := True;
     pnlCampos.Enabled := False;

     If tbTipo.RecordCount <> 0 Then Begin
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

procedure Tf_TiposAvisosAuto.tbTipoBeforeEdit(DataSet: TDataSet);
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

procedure Tf_TiposAvisosAuto.dbcbParamClick(Sender: TObject);
begin
     If dbCbParam.Checked Then
        dbEdtObs.Enabled := true
     Else
        dbEdtObs.Enabled := false;
end;

procedure Tf_TiposAvisosAuto.tbTipoAfterScroll(DataSet: TDataSet);
begin
     If dbCbParam.Checked Then
        dbEdtObs.Enabled := true
     Else
        dbEdtObs.Enabled := false;
end;

procedure Tf_TiposAvisosAuto.dbedtCodChange(Sender: TObject);
begin
     If tbTipo.State In [dsInsert, dsEdit] Then
        If Length(dbEdtCod.Text) = 4 Then
           dbEdtDesc.SetFocus;
end;

end.
