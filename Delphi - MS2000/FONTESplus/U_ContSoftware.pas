unit U_ContSoftware;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Grids, DBGrids, Buttons, ExtCtrls, DBCtrls, Mask;

type
  TF_ContSoftware = class(TForm)
    dsPatrimonio: TDataSource;
    QPatrimonio: TQuery;
    pnlPrinc: TPanel;
    dbgrPatrimonio: TDBGrid;
    QSoftwares: TQuery;
    dsTContSoftware: TDataSource;
    dsSoftware: TDataSource;
    TContSoftware: TTable;
    QExec: TQuery;
    pnlIncluir: TPanel;
    Label4: TLabel;
    btnOkInc: TBitBtn;
    dblcbDesc: TDBLookupComboBox;
    btnCancInc: TBitBtn;
    Label8: TLabel;
    edtLicenca: TEdit;
    Label17: TLabel;
    pnlAlterar: TPanel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    btnOkAlt: TBitBtn;
    dblcbDescAlt: TDBLookupComboBox;
    btnCancAlt: TBitBtn;
    pnlMenu: TPanel;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnRelatorio: TBitBtn;
    btnSair: TBitBtn;
    TPatrimonio: TTable;
    dsTPatrimonio: TDataSource;
    dbedtLicenca: TDBEdit;
    dbgrSoftware: TDBGrid;
    btnEditar: TBitBtn;
    QContSoftware: TQuery;
    dsContSoftware: TDataSource;
    pnlEditar: TPanel;
    Label19: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label39: TLabel;
    Label34: TLabel;
    btnOkEdit: TBitBtn;
    btnCancEdit: TBitBtn;
    dbedtPlaqueta: TDBEdit;
    dbedtDesc: TDBEdit;
    dbedtPRede: TDBEdit;
    dbedtIP: TDBEdit;
    QSetor: TQuery;
    dsSetor: TDataSource;
    pnlRel: TPanel;
    Label2: TLabel;
    btnOkRel: TBitBtn;
    btnCancRel: TBitBtn;
    rgRel: TRadioGroup;
    Panel1: TPanel;
    Panel2: TPanel;
    Bevel1: TBevel;
    QPatrimonioEmpresa: TStringField;
    QPatrimonioFilial: TStringField;
    QPatrimonioSetor: TStringField;
    QPatrimonioDescI: TStringField;
    QPatrimonioUsuario: TStringField;
    QPatrimonioNome_Completo: TStringField;
    QPatrimonioPlaqueta: TStringField;
    QPatrimonioDescricao: TStringField;
    QPatrimonioIP: TStringField;
    QPatrimonioPREDE: TStringField;
    QPatrimoniodetalhe: TStringField;
    TPatrimonioEmpresa: TStringField;
    TPatrimonioFilial: TStringField;
    TPatrimonioPlaqueta: TStringField;
    TPatrimonioDescricao: TStringField;
    TPatrimonioTipo_Patrimonio: TStringField;
    TPatrimonioSub_Tipo_Patrimonio: TStringField;
    TPatrimonioSetor: TStringField;
    TPatrimonioUsuario: TStringField;
    TPatrimonioNserie: TStringField;
    TPatrimonioValor: TFloatField;
    TPatrimonioFornecedor: TStringField;
    TPatrimonioNfiscal_entrada: TStringField;
    TPatrimonioIP: TStringField;
    TPatrimonioPREDE: TStringField;
    TPatrimonioStatus_Patrimonio: TStringField;
    TPatrimonioOBS: TMemoField;
    TPatrimonioDetalhe: TStringField;
    TPatrimonioPlaqueta2: TStringField;
    TContSoftwareEmpresa: TStringField;
    TContSoftwareFilial: TStringField;
    TContSoftwarePlaqueta: TStringField;
    TContSoftwareSoftware: TStringField;
    TContSoftwareLicenca: TStringField;
    QSetorcodigo: TStringField;
    QSetordescricao: TStringField;
    QContSoftwareEmpresa: TStringField;
    QContSoftwareFilial: TStringField;
    QContSoftwarePlaqueta: TStringField;
    QContSoftwareSoftware: TStringField;
    QContSoftwaredescricao: TStringField;
    QContSoftwareLicenca: TStringField;
    QSoftwarescodigo: TStringField;
    QSoftwaresdescricao: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnCancIncClick(Sender: TObject);
    procedure btnOkIncClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancAltClick(Sender: TObject);
    procedure btnOkAltClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure btnOkEditClick(Sender: TObject);
    procedure btnCancEditClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure QPatrimonioAfterScroll(DataSet: TDataSet);
    procedure btnCancRelClick(Sender: TObject);
    procedure btnOkRelClick(Sender: TObject);
    procedure QSetorAfterScroll(DataSet: TDataSet);
    procedure QContSoftwareAfterScroll(DataSet: TDataSet);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    ViewRel: Boolean;
    { Public declarations }
  end;

var
  F_ContSoftware: TF_ContSoftware;

implementation

uses U_MSCOMEX, U_RelSoftware;

var
   empresa,filial: String;
{$R *.DFM}

procedure TF_ContSoftware.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

     Left := 1;
     Top  := 1;


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

procedure TF_ContSoftware.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QPatrimonio.Close;
  Action := CaFree;
  F_ContSoftware := nil;
  f_mscomex.controledeSoftwares1.Enabled := True;
end;

procedure TF_ContSoftware.FormCreate(Sender: TObject);
begin
  dbgrPatrimonio.Width := Width-24;
  pnlMenu.Left := Trunc((Width-pnlMenu.Width)/2);
  empresa := F_MSComex.t_parametrosEmpresa.AsString;
  filial  := F_MSComex.t_parametrosFilial.AsString;
  QPatrimonio.Active := True;
end;

procedure TF_ContSoftware.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Confirma exclusão do Software?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
     TContSoftware.Open;
     TContSoftware.Delete;
     TContSoftware.Close;
     ShowMessage('Software excluído com sucesso.');
     QContSoftware.Close;
     QContSoftware.Open;
  end;
end;

procedure TF_ContSoftware.btnIncluirClick(Sender: TObject);
begin
  pnlPrinc.Enabled := False;
  pnlIncluir.Visible := True;
  dblcbDesc.SetFocus;
  pnlIncluir.Top := Trunc((F_ContSoftware.Height-pnlIncluir.Height)/2);
  pnlIncluir.Left := Trunc((F_ContSoftware.Width-pnlIncluir.Width)/2);

  edtLicenca.Clear;
  QSoftwares.Close;
  QSoftwares.Params[0].AsString := QContSoftwarePlaqueta.AsString;
  QSoftwares.Params[1].AsString := '';
  QSoftwares.Open;
end;

procedure TF_ContSoftware.btnCancIncClick(Sender: TObject);
begin
  QSoftwares.Close;

  pnlIncluir.Visible := False;
  pnlPrinc.Enabled := True;
  dbgrSoftware.SetFocus;
end;

procedure TF_ContSoftware.btnOkIncClick(Sender: TObject);
var soft: String;
begin
  if dblcbDesc.Text = '' then
    ShowMessage('Selecione um Software!')
  else
    if QContSoftware.Locate('Empresa;Filial;Plaqueta;Software',VarArrayOf([empresa, filial, QPatrimonioPlaqueta.AsString, QSoftwaresCodigo.AsString]),[]) then
      ShowMessage('Software já existente!')
    else begin
      QExec.Close;
      QExec.SQL.Clear;
      QExec.SQL.Add('INSERT INTO Controle_Softwares (Empresa, Filial, Plaqueta, Software, Licenca) ');
      QExec.SQL.Add('SELECT "'+empresa+'"');
      QExec.SQL.Add(', "'+filial+'"');
      QExec.SQL.Add(', "'+QPatrimonioPlaqueta.AsString+'"');
      QExec.SQL.Add(', "'+QSoftwaresCodigo.AsString+'"');
      QExec.SQL.Add(', "'+Trim(edtLicenca.Text)+'"');
      QExec.ExecSQL;
      ShowMessage('Software incluído com sucesso.');

      soft := QSoftwaresCodigo.AsString;
      QContSoftware.Close;
      QContSoftware.Open;

      QContSoftware.Locate('Empresa;Filial;Plaqueta;Software',VarArrayOf([empresa, filial,QPatrimonioPlaqueta.AsString, soft]),[]);
      QSoftwares.Close;
      pnlIncluir.Visible := False;
      pnlPrinc.Enabled := True;
      dbgrSoftware.SetFocus;
    end;
end;

procedure TF_ContSoftware.btnAlterarClick(Sender: TObject);
begin
  pnlPrinc.Enabled := False;
  pnlAlterar.Visible := True;
  dblcbDescAlt.SetFocus;
  pnlAlterar.Top := Trunc((F_ContSoftware.Height-pnlAlterar.Height)/2);
  pnlAlterar.Left := Trunc((F_ContSoftware.Width-pnlAlterar.Width)/2);

  QSoftwares.Close;
  QSoftwares.Params[0].AsString := QContSoftwarePlaqueta.AsString;
  QSoftwares.Params[1].AsString := QContSoftwareSoftware.AsString;
  QSoftwares.Open;
  TContSoftware.Open;
  TContSoftware.Edit;
end;

procedure TF_ContSoftware.btnCancAltClick(Sender: TObject);
begin
  QSoftwares.Close;
  TContSoftware.Cancel;
  TContSoftware.Close;

  pnlAlterar.Visible := False;
  pnlPrinc.Enabled := True;
  dbgrSoftware.SetFocus;
end;

procedure TF_ContSoftware.btnOkAltClick(Sender: TObject);
var soft: String;
begin
  TContSoftware.Post;
  ShowMessage('Software alterado com sucesso.');

  soft := QSoftwaresCodigo.AsString;
  TContSoftware.Close;
  QContSoftware.Close;
  QContSoftware.Open;

  QContSoftware.Locate('Empresa;Filial;Plaqueta;Software',VarArrayOf([empresa, filial,QPatrimonioPlaqueta.AsString, soft]),[]);
  QSoftwares.Close;
  pnlAlterar.Visible := False;
  pnlPrinc.Enabled := True;
  dbgrSoftware.SetFocus;
end;

procedure TF_ContSoftware.btnRelatorioClick(Sender: TObject);
begin
 if not Assigned(F_RelSoftware) then Application.CreateForm(TF_RelSoftware, F_RelSoftware);
  QSetor.Open;
  ViewRel := True;
  F_RelSoftware.qrSoftware.Preview;
  btnCancRel.Click;

{  pnlPrinc.Enabled := False;
  pnlRel.Visible := True;
  rgRel.SetFocus;
  pnlRel.Top := Trunc((F_ContSoftware.Height-pnlRel.Height)/2);
  pnlRel.Left := Trunc((F_ContSoftware.Width-pnlRel.Width)/2);
  }
end;

procedure TF_ContSoftware.btnOkEditClick(Sender: TObject);
begin
  TPatrimonio.Post;
  ShowMessage('Patrimônio alterado com sucesso.');

  TPatrimonio.Close;
  QPatrimonio.Close;
  QPatrimonio.Open;

  pnlEditar.Visible := False;
  pnlPrinc.Enabled := True;
  dbgrPatrimonio.SetFocus;
end;

procedure TF_ContSoftware.btnCancEditClick(Sender: TObject);
begin
  TPatrimonio.Close;
  pnlEditar.Visible := False;
  pnlPrinc.Enabled := True;
  dbgrPatrimonio.SetFocus;
end;

procedure TF_ContSoftware.btnEditarClick(Sender: TObject);
begin
  pnlPrinc.Enabled := False;
  pnlEditar.Visible := True;
  dbedtIP.SetFocus;
  pnlEditar.Top := Trunc((F_ContSoftware.Height-pnlEditar.Height)/2);
  pnlEditar.Left := Trunc((F_ContSoftware.Width-pnlEditar.Width)/2);

  TPatrimonio.Open;
  TPatrimonio.Edit;
end;

procedure TF_ContSoftware.QPatrimonioAfterScroll(DataSet: TDataSet);
begin
  QContSoftware.Close;
  QContSoftware.Params[0].AsString := QPatrimonioPlaqueta.AsString;
  QContSoftware.Open;
  if QContSoftware.RecordCount = 0 then begin
     btnAlterar.Enabled := False;
     btnExcluir.Enabled := False;
  end
  else begin
     btnAlterar.Enabled := True;
     btnExcluir.Enabled := True;
  end;
end;

procedure TF_ContSoftware.btnCancRelClick(Sender: TObject);
begin
  pnlRel.Visible := False;
  pnlPrinc.Enabled := True;
  dbgrPatrimonio.SetFocus;
end;

procedure TF_ContSoftware.btnOkRelClick(Sender: TObject);
begin
  if not Assigned(F_RelSoftware) then Application.CreateForm(TF_RelSoftware, F_RelSoftware);
  QSetor.Open;
  ViewRel := True;
  F_RelSoftware.qrSoftware.Preview;
  btnCancRel.Click;
end;

procedure TF_ContSoftware.QSetorAfterScroll(DataSet: TDataSet);
begin
  QPatrimonio.Close;
  if QPatrimonio.SQL.Count >= 4 then begin
     QPatrimonio.SQL.Delete(3);
     //QPatrimonio.SQL.Delete(4);
  end;
  QPatrimonio.SQL.Add(' AND P.Setor = "'+QSetorCodigo.AsString+'" ');
//  WHERE P.Tipo_Patrimonio="INFO" AND P.Sub_Tipo_Patrimonio="COM" AND P.Status_Patrimonio="0"
 // QPatrimonio.SQL.Add(' ORDER BY P.Setor, P.Usuario ')  ;
  QPatrimonio.Open;
end;

procedure TF_ContSoftware.QContSoftwareAfterScroll(DataSet: TDataSet);
begin
  if ViewRel then begin
     QSoftwares.Close;
     QSoftwares.Params[0].AsString := QPatrimonioPlaqueta.AsString;
     QSoftwares.Params[1].AsString := '';
     QSoftwares.Open;
  end;
end;

procedure TF_ContSoftware.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
