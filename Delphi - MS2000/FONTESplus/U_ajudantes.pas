unit U_ajudantes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons,
  QuickRpt,QRCtrls;

type
  TF_ajudantes = class(TForm)
    dsParam: TDataSource;
    dsPais: TDataSource;
    dsUF: TDataSource;
    T_exporsis: TTable;
    dsExporSis: TDataSource;
    T_exporsisNM_FORN_ESTR: TStringField;
    T_exporsisCD_PAIS_AQUIS_MERC: TStringField;
    T_exporsisED_LOGR_FORN_ESTR: TStringField;
    T_exporsisED_NR_FORN_ESTR: TStringField;
    T_exporsisED_COMPL_FORN_ESTR: TStringField;
    T_exporsisED_CIDADE_FORN_ESTR: TStringField;
    T_exporsisED_ESTAD_FORN_ESTR: TStringField;
    dsAjudantes: TDataSource;
    t_Ajudantes: TTable;
    t_AjudantesEmpresa: TStringField;
    t_AjudantesFilial: TStringField;
    t_AjudantesCodigo: TStringField;
    t_AjudantesRazoSocial: TStringField;
    t_AjudantesPas: TStringField;
    t_AjudantesCGCCPF: TStringField;
    t_AjudantesEndereo: TStringField;
    t_AjudantesNmero: TStringField;
    t_AjudantesComplemento: TStringField;
    t_AjudantesBairro: TStringField;
    t_AjudantesCidade: TStringField;
    t_AjudantesCEP: TStringField;
    t_AjudantesUF: TStringField;
    t_AjudantesEstado: TStringField;
    t_AjudantesInscrioEstadual: TStringField;
    pnlPrincipal: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Bevel1: TBevel;
    edtRazao: TDBEdit;
    edtCnpj: TDBEdit;
    edtEnder: TDBEdit;
    edtCidade: TDBEdit;
    edtCep: TDBEdit;
    edtInsc: TDBEdit;
    edtComple: TDBEdit;
    edtEstado: TDBEdit;
    cmbPais: TDBLookupComboBox;
    cmbUF: TDBLookupComboBox;
    btnNovo: TBitBtn;
    btnExcluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    edtNum: TDBEdit;
    edtBairro: TDBEdit;
    btnLocalizar: TBitBtn;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    dsAjud: TDataSource;
    dsLocalizar: TDataSource;
    pnlLocalizar: TPanel;
    Label26: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    btnOK: TBitBtn;
    edtLocalizar: TEdit;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    q_Param: TQuery;
    q_ParamEmpresa: TStringField;
    q_ParamFilial: TStringField;
    q_Localizar: TQuery;
    q_LocalizarCodigo: TStringField;
    q_LocalizarRazoSocial: TStringField;
    q_LocalizarCGCCPF: TStringField;
    q_Pais: TQuery;
    q_PaisCODIGO: TStringField;
    q_PaisDESCRICAO: TStringField;
    q_UF: TQuery;
    q_UFCodigo: TStringField;
    q_UFDescricao: TStringField;
    q_Ajud: TQuery;
    q_AjudCod: TFloatField;
    edtCod: TDBEdit;
    Label1: TLabel;
    edtregistro: TDBEdit;
    t_AjudantesRegistro: TStringField;
    dbcbExibe: TDBCheckBox;
    t_Ajudantesexibe_complementares: TBooleanField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure t_AjudantesBeforeDelete(DataSet: TDataSet);
    procedure t_AjudantesAfterPost(DataSet: TDataSet);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure edtLocalizarChange(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ajudantes: TF_ajudantes;
  novo: string;
  op: integer;

implementation

uses U_MSCOMEX,U_relajud;

{$R *.DFM}

procedure TF_ajudantes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     q_UF.Close;
     q_Pais.Close;
     t_Ajudantes.Close;
     q_Param.Close;

     Action := caFree;
     f_ajudantes := nil;
     f_mscomex.AjudantesdeDespachante1.Enabled := True;

     logusu('A','Finalizou acesso ao Cadastro de Ajudantes de Despachante');
end;

procedure TF_ajudantes.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

//     Left := 0;
//     Top  := 0;

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

procedure TF_ajudantes.t_AjudantesBeforeDelete(DataSet: TDataSet);
begin
     logusu('E','Excluiu ajudante: '+t_AjudantesRazoSocial.AsString);
end;

procedure TF_ajudantes.t_AjudantesAfterPost(DataSet: TDataSet);
begin
     logusu('P','Alterou ajudante: '+t_AjudantesRazoSocial.AsString);
end;

procedure TF_ajudantes.btnNovoClick(Sender: TObject);
begin
     t_Ajudantes.Append;

     btnNovo.Enabled      := False;
     btnExcluir.Enabled   := False;
     btnAlterar.Enabled   := False;
     btnLocalizar.Enabled := False;
     btnImprimir.Enabled  := False;
     btnCancelar.Enabled  := True;
     btnGravar.Enabled    := True;

     edtRazao.Enabled  := True;
     edtCnpj.Enabled   := True;
     edtEnder.Enabled  := True;
     edtNum.Enabled    := True;
     edtComple.Enabled := True;
     edtBairro.Enabled := True;
     edtCidade.Enabled := True;
     edtCep.Enabled    := True;
     cmbUF.Enabled     := True;
     edtEstado.Enabled := True;
     cmbPais.Enabled   := True;
     edtInsc.Enabled   := True;
     edtregistro.Enabled   := True;     
     dbcbExibe.Enabled := True;
     edtRazao.SetFocus;
     op:=1;
end;

procedure TF_ajudantes.btnAlterarClick(Sender: TObject);
begin
     btnNovo.Enabled      := False;
     btnExcluir.Enabled   := False;
     btnAlterar.Enabled   := False;
     btnLocalizar.Enabled := False;
     btnImprimir.Enabled  := False;
     btnCancelar.Enabled  := True;
     btnGravar.Enabled    := True;

     edtRazao.Enabled  := True;
     edtCnpj.Enabled   := True;
     edtEnder.Enabled  := True;
     edtNum.Enabled    := True;
     edtComple.Enabled := True;
     edtBairro.Enabled := True;
     edtCidade.Enabled := True;
     edtCep.Enabled    := True;
     cmbUF.Enabled     := True;
     edtEstado.Enabled := True;
     cmbPais.Enabled   := True;
     edtInsc.Enabled   := True;
     edtregistro.Enabled   := True;
     dbcbExibe.Enabled := True;

     t_Ajudantes.Edit;
     edtRazao.SetFocus;
     op:=2;
end;

procedure TF_ajudantes.btnCancelarClick(Sender: TObject);
begin
     t_Ajudantes.Cancel;

     btnNovo.Enabled      := True;
     btnExcluir.Enabled   := True;
     btnAlterar.Enabled   := True;
     btnLocalizar.Enabled := True;
     btnImprimir.Enabled  := True;
     btnCancelar.Enabled  := False;
     btnGravar.Enabled    := False;

     edtRazao.Enabled  := False;
     edtCnpj.Enabled   := False;
     edtEnder.Enabled  := False;
     edtNum.Enabled    := False;
     edtComple.Enabled := False;
     edtBairro.Enabled := False;
     edtCidade.Enabled := False;
     edtCep.Enabled    := False;
     cmbUF.Enabled     := False;
     edtEstado.Enabled := False;
     cmbPais.Enabled   := False;
     edtInsc.Enabled   := False;
     edtregistro.Enabled   := False;
     dbcbExibe.Enabled := False;

     btnNovo.SetFocus;
end;

procedure TF_ajudantes.btnImprimirClick(Sender: TObject);
begin
     if not Assigned(QR_ajudantes) then Application.CreateForm(TQR_ajudantes, QR_ajudantes);
     QR_ajudantes.q_Ajud.Open;
     QR_ajudantes.Preview;
end;

procedure TF_ajudantes.btnFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TF_ajudantes.btnGravarClick(Sender: TObject);
begin
  if edtRazao.Text = '' Then begin
     MessageDlg('Digite o Nome Completo do Ajudante de Despachante!', mtInformation,[mbOk], 0);
     edtRazao.SetFocus;
  end
  else begin
     if op = 1 Then
       begin
         novo := '1';
         q_Ajud.Open;
         if q_Ajud.RecordCount <> 0 Then
            novo := IntToStr(StrToInt(q_AjudCod.AsString) + 1);
         q_Ajud.Close;

         t_AjudantesCodigo.AsString := novo;
         t_Ajudantes.Post;
         MessageDlg('Ajudante de Despachante incluido com sucesso!', mtInformation,[mbOk], 0);
       end
     else
       begin
         t_Ajudantes.Post;
         MessageDlg('Alteração do Ajudante de Despachante feita com sucesso!', mtInformation,[mbOk], 0);
       end;
     edtRazao.Enabled  := False;
     edtCnpj.Enabled   := False;
     edtEnder.Enabled  := False;
     edtNum.Enabled    := False;
     edtComple.Enabled := False;
     edtBairro.Enabled := False;
     edtCidade.Enabled := False;
     edtCep.Enabled    := False;
     cmbUF.Enabled     := False;
     edtEstado.Enabled := False;
     cmbPais.Enabled   := False;
     edtInsc.Enabled   := False;
     edtregistro.Enabled   := False;
     dbcbExibe.Enabled := False;

     btnNovo.Enabled      := True;
     btnExcluir.Enabled   := True;
     btnAlterar.Enabled   := True;
     btnLocalizar.Enabled := True;
     btnImprimir.Enabled  := True;
     btnCancelar.Enabled  := False;
     btnGravar.Enabled    := False;

     btnNovo.SetFocus;
  end;
end;

procedure TF_ajudantes.btnLocalizarClick(Sender: TObject);
begin
     pnlLocalizar.Top  := 4;
     pnlLocalizar.Left := 96;
     pnlLocalizar.Visible := True;
     pnlPrincipal.Enabled := False;
     q_Localizar.Open;
     edtLocalizar.SetFocus;
end;

procedure TF_ajudantes.btnOKClick(Sender: TObject);
begin
     pnlLocalizar.Visible := False;
     pnlPrincipal.Enabled := True;
     edtLocalizar.Text := '';
     q_Localizar.Close;
     btnNovo.SetFocus;
end;

procedure TF_ajudantes.edtLocalizarChange(Sender: TObject);
begin
     q_Localizar.Filter := '[Razão Social] = '''+ edtLocalizar.Text +'*''';
     if edtLocalizar.Text = '' then
        q_Localizar.Filtered := False
     else
        q_Localizar.Filtered := True;
end;

procedure TF_ajudantes.btnExcluirClick(Sender: TObject);
begin
     if MessageDlg('Confirma exclusão deste Ajudante de Despachante?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
        t_Ajudantes.Delete;
        MessageDlg('Ajudante de Despachante excluído!', mtInformation,[mbOk], 0);
     end;
end;

procedure TF_ajudantes.FormCreate(Sender: TObject);
begin
     q_Param.Open;
     t_Ajudantes.Open;
     q_Pais.Open;
     q_UF.Open;
end;

end.
