unit U_fornec;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons,
  QuickRpt,QRCtrls;

type
  TF_fornecedores = class(TForm)
    dsPais: TDataSource;
    dsUF: TDataSource;
    t_Fornecedores: TTable;
    dsFornecedores: TDataSource;
    t_TipoImport: TTable;
    dsTipoImport: TDataSource;
    pnlLocalizar: TPanel;
    Label14: TLabel;
    dblcbLoc: TDBLookupComboBox;
    btnOK: TBitBtn;
    edtLocalizar: TEdit;
    DBGrid1: TDBGrid;
    pnlPrincipal: TPanel;
    Label13: TLabel;
    cmbTipoImport: TDBLookupComboBox;
    Label15: TLabel;
    Label16: TLabel;
    edtRazao: TDBEdit;
    Label17: TLabel;
    edtCnpj: TDBEdit;
    Label18: TLabel;
    edtEnder: TDBEdit;
    Label19: TLabel;
    edtNum: TDBEdit;
    Label20: TLabel;
    edtComple: TDBEdit;
    Label21: TLabel;
    edtBairro: TDBEdit;
    Label22: TLabel;
    edtCidade: TDBEdit;
    Label23: TLabel;
    edtCep: TDBEdit;
    Label24: TLabel;
    cmbUF: TDBLookupComboBox;
    Label25: TLabel;
    edtEstado: TDBEdit;
    Label26: TLabel;
    cmbPais: TDBLookupComboBox;
    Label27: TLabel;
    edtInsc: TDBEdit;
    Bevel1: TBevel;
    btnNovo: TBitBtn;
    btnExcluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnLocalizar: TBitBtn;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    dsFornec: TDataSource;
    dsLocalizar: TDataSource;
    q_Pais: TQuery;
    q_UF: TQuery;
    q_Fornec: TQuery;
    q_Localizar: TQuery;
    edtCod: TDBEdit;
    Panel1: TPanel;
    edtTel: TDBEdit;
    Label4: TLabel;
    qr_VerificaCnpj: TQuery;
    qr_VerificaCnpjCNPJ_CPF_COMPLETO: TStringField;
    q_PaisCODIGO: TStringField;
    q_PaisDESCRICAO: TStringField;
    q_UFCodigo: TStringField;
    q_UFDescricao: TStringField;
    t_TipoImportCODIGO: TStringField;
    t_TipoImportDESCRICAO: TStringField;
    q_FornecCod: TFloatField;
    t_FornecedoresEmpresa: TStringField;
    t_FornecedoresFilial: TStringField;
    t_FornecedoresCodigo: TStringField;
    t_FornecedoresRazao_Social: TStringField;
    t_FornecedoresPais: TStringField;
    t_FornecedoresCNPJ_CPF_COMPLETO: TStringField;
    t_FornecedoresCGC_CPF: TStringField;
    t_FornecedoresTipo_Importador: TStringField;
    t_FornecedoresEndereco: TStringField;
    t_FornecedoresNumero: TStringField;
    t_FornecedoresComplemento: TStringField;
    t_FornecedoresBairro: TStringField;
    t_FornecedoresCidade: TStringField;
    t_FornecedoresCEP: TStringField;
    t_FornecedoresUF: TStringField;
    t_FornecedoresEstado: TStringField;
    t_FornecedoresInscricao_Estadual: TStringField;
    t_FornecedoresBanco: TStringField;
    t_FornecedoresAgencia: TStringField;
    t_FornecedoresConta_Corrente: TStringField;
    t_FornecedoresConta_Corrente_Registro: TIntegerField;
    t_FornecedoresConta_Corrente_Deposito: TIntegerField;
    t_FornecedoresTelefone: TStringField;
    q_LocalizarEmpresa: TStringField;
    q_LocalizarFilial: TStringField;
    q_LocalizarCodigo: TStringField;
    q_LocalizarRazao_Social: TStringField;
    q_LocalizarCGC_CPF: TStringField;
    Label1: TLabel;
    edtContato: TDBEdit;
    Label2: TLabel;
    edtEmail: TDBEdit;
    t_FornecedoresContato: TStringField;
    t_FornecedoresEmail: TStringField;
    cbAtivo: TDBCheckBox;
    cbAtivoBusca: TCheckBox;
    t_FornecedoresAtivo: TBooleanField;
    q_LocalizarAtivo: TBooleanField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure edtLocalizarChange(Sender: TObject);
    procedure t_FornecedoresAfterScroll(DataSet: TDataSet);
    procedure t_FornecedoresAfterPost(DataSet: TDataSet);
    procedure t_FornecedoresBeforeDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure t_FornecedoresAfterInsert(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure q_Fornec_MudarSql();
    procedure cbAtivoBuscaClick(Sender: TObject);
  private
    { Private declarations }
    procedure FiltroLocalizar;
  public
    { Public declarations }
  end;

var
  F_fornecedores : TF_fornecedores;
  novo  : string;
  op    : integer;
  vCNPJ : String;

implementation

uses U_MSCOMEX,U_relfornec;

{$R *.DFM}

procedure TF_fornecedores.FormClose(Sender: TObject; var Action: TCloseAction);
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
  f_fornecedores := nil;
  f_mscomex.Fornecedores1.Enabled := True;
end;

procedure TF_fornecedores.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure TF_fornecedores.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TF_fornecedores.btnImprimirClick(Sender: TObject);
begin
  if not Assigned(QR_Fornecedores)
   then Application.CreateForm(TQR_Fornecedores, QR_Fornecedores);
   
  QR_Fornecedores.q_Fornec.Open;
  QR_Fornecedores.Preview;
end;

procedure TF_fornecedores.btnNovoClick(Sender: TObject);
begin
  t_Fornecedores.Append;

  btnNovo.Enabled      := False;
  btnExcluir.Enabled   := False;
  btnAlterar.Enabled   := False;
  btnLocalizar.Enabled := False;
  btnImprimir.Enabled  := False;
  btnCancelar.Enabled  := True;
  btnGravar.Enabled    := True;

  edtRazao.Enabled      := True;
  edtCnpj.Enabled       := True;
  edtEnder.Enabled      := True;
  edtNum.Enabled        := True;
  edtComple.Enabled     := True;
  edtBairro.Enabled     := True;
  edtTel.Enabled        := True;
  edtCidade.Enabled     := True;
  edtCep.Enabled        := True;
  cmbUF.Enabled         := True;
  edtEstado.Enabled     := True;
  cmbPais.Enabled       := True;
  edtInsc.Enabled       := True;
  cmbTipoImport.Enabled := True;
  edtContato.Enabled    := True;
  edtEmail.Enabled      := True;
  cbAtivo.Enabled       := True;

  edtRazao.SetFocus;
  op := 1;
end;

procedure TF_fornecedores.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Confirma exclusão deste Fornecedor?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
   then begin
     t_Fornecedores.Delete;
     MessageDlg('Fornecedor excluído!', mtInformation,[mbOk], 0);
   end;

  btnNovo.SetFocus;
end;

procedure TF_fornecedores.btnAlterarClick(Sender: TObject);
begin
  btnNovo.Enabled      := False;
  btnExcluir.Enabled   := False;
  btnAlterar.Enabled   := False;
  btnLocalizar.Enabled := False;
  btnImprimir.Enabled  := False;
  btnCancelar.Enabled  := True;
  btnGravar.Enabled    := True;

  edtRazao.Enabled      := True;
  edtCnpj.Enabled       := True;
  edtEnder.Enabled      := True;
  edtNum.Enabled        := True;
  edtComple.Enabled     := True;
  edtBairro.Enabled     := True;
  edtTel.Enabled        := True;
  edtCidade.Enabled     := True;
  edtCep.Enabled        := True;
  cmbUF.Enabled         := True;
  edtEstado.Enabled     := True;
  cmbPais.Enabled       := True;
  edtInsc.Enabled       := True;
  cmbTipoImport.Enabled := True;
  edtContato.Enabled    := True;
  edtEmail.Enabled      := True;
  cbAtivo.Enabled       := True;  

  t_Fornecedores.Edit;
  edtRazao.SetFocus;
  op := 2;
end;

procedure TF_fornecedores.btnGravarClick(Sender: TObject);
begin
  if (edtRazao.Text = '')
   then begin
     MessageDlg('Digite a Razão Social do Fornecedor!', mtWarning,[mbOk], 0);
     edtRazao.SetFocus;
     Exit;
   end;

  if (edtCnpj.Text = '')
   then begin
     MessageDlg('Digite o CNPJ do Fornecedor!', mtWarning,[mbOk], 0);
     edtCnpj.SetFocus;
     Exit;
   end;

  qr_VerificaCnpj.Params[0].AsString := edtCnpj.Text;
  qr_VerificaCnpj.Open;
  
  if qr_VerificaCnpj.RecordCount <> 0
   then Begin
     if vCNPJ <> edtCnpj.Text
      then Begin
        MessageDlg('Fornecedor já Cadastrado!', mtWarning,[mbOk], 0);
        edtCnpj.SetFocus;
        qr_VerificaCnpj.Close;
        Exit;
      end;
   end;

  qr_VerificaCnpj.Close;

  if op = 1
   then begin
     novo := '1';
     q_Fornec_MudarSql();
     q_Fornec.Open;

     if q_Fornec.RecordCount <> 0
      then novo := IntToStr(StrToInt(q_FornecCod.AsString) + 1);

     q_Fornec.Close;

     t_FornecedoresCodigo.AsString  := novo;
     t_FornecedoresEmpresa.AsString := '1';
     t_FornecedoresFilial.AsString  := 'RJO';
     t_Fornecedores.Post;

     MessageDlg('Fornecedor incluido com sucesso!', mtInformation,[mbOk], 0);
   end
   else begin
     t_Fornecedores.Post;
     MessageDlg('Alteração do Fornecedor feita com sucesso!', mtInformation,[mbOk], 0);
   end;
   
  edtRazao.Enabled      := False;
  edtCnpj.Enabled       := False;
  edtEnder.Enabled      := False;
  edtNum.Enabled        := False;
  edtComple.Enabled     := False;
  edtBairro.Enabled     := False;
  edtTel.Enabled        := False;
  edtCidade.Enabled     := False;
  edtCep.Enabled        := False;
  cmbUF.Enabled         := False;
  edtEstado.Enabled     := False;
  cmbPais.Enabled       := False;
  edtInsc.Enabled       := False;
  cmbTipoImport.Enabled := False;
  edtContato.Enabled    := False;
  edtEmail.Enabled      := False;
  cbAtivo.Enabled       := False;

  btnNovo.Enabled      := True;
  btnExcluir.Enabled   := True;
  btnAlterar.Enabled   := True;
  btnLocalizar.Enabled := True;
  btnImprimir.Enabled  := True;
  btnCancelar.Enabled  := False;
  btnGravar.Enabled    := False;

  btnNovo.SetFocus;
end;

procedure TF_fornecedores.btnCancelarClick(Sender: TObject);
begin
  t_Fornecedores.Cancel;

  btnNovo.Enabled      := True;
  btnExcluir.Enabled   := True;
  btnAlterar.Enabled   := True;
  btnLocalizar.Enabled := True;
  btnImprimir.Enabled  := True;
  btnCancelar.Enabled  := False;
  btnGravar.Enabled    := False;

  edtRazao.Enabled      := False;
  edtCnpj.Enabled       := False;
  edtEnder.Enabled      := False;
  edtNum.Enabled        := False;
  edtComple.Enabled     := False;
  edtBairro.Enabled     := False;
  edtTel.Enabled        := False;
  edtCidade.Enabled     := False;
  edtCep.Enabled        := False;
  cmbUF.Enabled         := False;
  edtEstado.Enabled     := False;
  cmbPais.Enabled       := False;
  edtInsc.Enabled       := False;
  cmbTipoImport.Enabled := False;
  edtContato.Enabled    := False;
  edtEmail.Enabled      := False;
  cbAtivo.Enabled       := False;

  btnNovo.SetFocus;
end;
  
procedure TF_fornecedores.btnLocalizarClick(Sender: TObject);
begin
  pnlLocalizar.Top  := 4;
  pnlLocalizar.Left := 96;
  
  pnlLocalizar.Visible := True;
  pnlPrincipal.Enabled := False;
  dblcbLoc.DataSource  := dsLocalizar;

  q_Localizar.Open;
  cbAtivoBusca.Checked := True;
  
  edtLocalizar.SetFocus;
end;

procedure TF_fornecedores.btnOKClick(Sender: TObject);
begin
  pnlLocalizar.Visible := False;
  pnlPrincipal.Enabled := True;
  dblcbLoc.DataSource  := nil;
  q_Localizar.Close;
  edtLocalizar.Text := '';
  btnNovo.SetFocus;
end;

procedure TF_fornecedores.edtLocalizarChange(Sender: TObject);
begin
  FiltroLocalizar;
end;

procedure TF_fornecedores.t_FornecedoresAfterScroll(DataSet: TDataSet);
begin
  if not t_Fornecedores.Eof
   then begin
     btnAlterar.Enabled   := True;
     btnExcluir.Enabled   := True;
     btnLocalizar.Enabled := True;
     btnImprimir.Enabled  := True;
   end
   else begin
     btnAlterar.Enabled   := False;
     btnExcluir.Enabled   := False;
     btnLocalizar.Enabled := True;
     btnImprimir.Enabled  := False;
   end;
end;

procedure TF_fornecedores.t_FornecedoresAfterPost(DataSet: TDataSet);
begin
  logusu('P','Alterou dados do Fornecedor: '+T_FornecedoresRazao_Social.asstring);
end;

procedure TF_fornecedores.t_FornecedoresBeforeDelete(DataSet: TDataSet);
begin
  logusu('E','Excluiu o Importador: '+T_FornecedoresRazao_Social.asstring);
end;

procedure TF_fornecedores.FormCreate(Sender: TObject);
begin
  t_Fornecedores.Open;
  q_Pais.Open;
  q_UF.Open;
end;

procedure TF_fornecedores.t_FornecedoresAfterInsert(DataSet: TDataSet);
begin
  vCNPJ := t_FornecedoresCNPJ_CPF_COMPLETO.AsString;
end;

procedure TF_fornecedores.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if t_Fornecedores.State In [dsInsert, dsEdit]
   then begin
     MessageDlg('O Fornecedor está em edição!', mtWarning, [mbOk], 0);
     CanClose := False;
   end
   else CanClose := True;
end;

procedure TF_fornecedores.q_Fornec_MudarSql();
begin
  if tipoBanco = 1
   then begin
     q_Fornec.SQL.clear;
     q_Fornec.sql.add('SELECT Max(cast(Codigo as real)) AS Cod ');
     q_Fornec.sql.add('FROM Parametros AS PA INNER JOIN Fornecedores AS PR ON PA.Empresa = PR.Empresa AND PA.Filial = PR.Filial ');
   end;
end;

procedure TF_fornecedores.cbAtivoBuscaClick(Sender: TObject);
begin
  FiltroLocalizar;
end;

procedure TF_fornecedores.FiltroLocalizar;
begin
  if (edtLocalizar.Text = '')
   then begin
     q_Localizar.Filter   := '';
     q_Localizar.Filtered := False;

     if cbAtivoBusca.Checked
      then begin
        q_Localizar.Filter   := 'ATIVO = 1';
        q_Localizar.Filtered := True;
      end;
   end
   else begin
     q_Localizar.Filter   := 'Razao_Social = '''+ uppercase(edtLocalizar.Text) +'*''';

     if cbAtivoBusca.Checked
      then q_Localizar.Filter := q_Localizar.Filter + ' AND ATIVO = 1';

     q_Localizar.Filtered := True;
   end;
end;

end.


