unit u_plano;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, Mask, StdCtrls, DBCtrls, Buttons, ExtCtrls;

type
  Tf_plano = class(TForm)
    tbPlano: TTable;
    dsPlano: TDataSource;
    qrNum: TQuery;
    dsNum: TDataSource;
    dsParam: TDataSource;
    qrParam: TQuery;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dbGrdPlano: TDBGrid;
    dbGrdNum: TDBGrid;
    dbEdtCod: TDBEdit;
    dbEdtDesc: TDBEdit;
    Panel2: TPanel;
    btnSalvar: TBitBtn;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    btnImprimir: TBitBtn;
    btnExcluir: TBitBtn;
    qrParamEmpresa: TStringField;
    qrParamFilial: TStringField;
    tbPlanoEmpresa: TStringField;
    tbPlanoFilial: TStringField;
    tbPlanoCodigo: TStringField;
    tbPlanoDescricao: TStringField;
    qrNumCodigo: TStringField;
    qrNumDescricao: TStringField;
    qrNumPlano_contas: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbPlanoAfterScroll(DataSet: TDataSet);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnImprimirClick(Sender: TObject);
    procedure qrNumAfterOpen(DataSet: TDataSet);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_plano: Tf_plano;
  vEmp, vFil: String;

implementation

uses U_MSCOMEX, u_relPlano;

{$R *.DFM}

procedure Tf_plano.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;
begin

     Left := 1;
     Top  := 1;

   {  h := Height;
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

procedure Tf_plano.FormClose(Sender: TObject; var Action: TCloseAction);
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

  f_mscomex.PlanodeContas1.Enabled := True;
  Action := caFree;
  f_plano := nil;
end;

procedure Tf_plano.tbPlanoAfterScroll(DataSet: TDataSet);
begin
     With qrNum Do Begin
         Close;
         Params[2].AsString := tbPlanoCodigo.AsString;
         Open;
     End;
end;

procedure Tf_plano.btnSalvarClick(Sender: TObject);
begin
     dbEdtCod.Text := Trim(dbEdtCod.Text);
     If dbEdtCod.Text = '' Then Begin
        MessageDlg('O Campo ''Código'' não pode estar vazio!', mtWarning, [mbOK], 0);
        dbEdtCod.SetFocus;
        Exit;
     End;
     dbEdtDesc.Text := Trim(dbEdtDesc.Text);
     If dbEdtDesc.Text = '' Then Begin
        MessageDlg('O Campo ''Descrição'' não pode estar vazio!', mtWarning, [mbOK], 0);
        dbEdtDesc.SetFocus;
        Exit;
     End;

     Try
        tbPlano.Post;
     Except
        On E: Exception Do Begin
          MessageDlg('Erro na gravação do Plano de Contas'+#13#10#13#10+e.Message, mtWarning, [mbOK], 0);
          dbEdtCod.SetFocus;
          Exit;
        End;
     End;

     dbEdtCod.Enabled := False;
     dbEdtDesc.Enabled := False;
     btnSalvar.Enabled := False;
     btnCancelar.Enabled := False;
     btnIncluir.Enabled := True;
     btnAlterar.Enabled := True;
     btnSair.Enabled := True;
     dbGrdPlano.Enabled := True;
     dbGrdNum.Enabled := True;

     dbGrdPlano.SetFocus;
end;

procedure Tf_plano.FormCreate(Sender: TObject);
begin
     qrParam.Open;
     vEmp := qrParamEmpresa.AsString;
     vFil := qrParamFilial.AsString;

     With qrNum Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
     End;
     tbPlano.Open;
end;

procedure Tf_plano.btnAlterarClick(Sender: TObject);
begin
     tbPlano.Edit;

     dbEdtCod.Enabled := False;
     dbEdtDesc.Enabled := True;
     btnSalvar.Enabled := True;
     btnCancelar.Enabled := True;
     btnIncluir.Enabled := False;
     btnAlterar.Enabled := False;
     btnSair.Enabled := False;
     dbGrdPlano.Enabled := False;
     dbGrdNum.Enabled := False;

     dbEdtDesc.SetFocus;
end;

procedure Tf_plano.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure Tf_plano.btnCancelarClick(Sender: TObject);
begin
     dbEdtCod.Enabled := False;
     dbEdtDesc.Enabled := False;
     btnSalvar.Enabled := False;
     btnCancelar.Enabled := False;
     btnIncluir.Enabled := True;
     btnAlterar.Enabled := True;
     btnSair.Enabled := True;
     dbGrdPlano.Enabled := True;
     dbGrdNum.Enabled := True;

     dbGrdPlano.SetFocus;

     tbPlano.Cancel;
end;

procedure Tf_plano.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
     If tbPlano.State In [dsInsert, dsEdit] Then Begin
        MessageDlg('O Plano de Contas está em edição!', mtInformation, [mbOk], 0);
        CanClose := False;
     End
     Else
        CanClose := True;
end;

procedure Tf_plano.btnImprimirClick(Sender: TObject);
begin
     tbPlano.Filter := 'Codigo = '''+ tbPlanoCodigo.AsString +''' ';

     If MessageDlg('Deseja imprimir a relação das Despesas (Numerários) Vinculadas somente deste Plano de Contas?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
        tbPlano.Filtered := True
     Else
        tbPlano.Filtered := False;

     If Not Assigned(QR_Plano) Then Application.CreateForm(TQR_Plano, QR_Plano);
     QR_Plano.Preview;
     tbPlano.Filtered := False;
end;

procedure Tf_plano.qrNumAfterOpen(DataSet: TDataSet);
begin
     //btnExcluir.Enabled := (qrNum.RecordCount = 0);
end;

procedure Tf_plano.btnIncluirClick(Sender: TObject);
begin
     dbEdtCod.Enabled := True;
     dbEdtDesc.Enabled := True;
     btnSalvar.Enabled := True;
     btnCancelar.Enabled := True;
     btnIncluir.Enabled := False;
     btnAlterar.Enabled := False;
     btnSair.Enabled := False;
     dbGrdPlano.Enabled := False;
     dbGrdNum.Enabled := False;

     tbPlano.Append;

     dbEdtCod.SetFocus;
end;

procedure Tf_plano.btnExcluirClick(Sender: TObject);
begin
     If MessageDlg('Confirma a exclusão do Plano de Contas?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
        tbPlano.Delete;
end;

end.
