unit U_procuradores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons,
  QuickRpt,QRCtrls;

type
  TF_procuradores = class(TForm)
    dsPais: TDataSource;
    dsUF: TDataSource;
    t_ExporSis: TTable;
    dsExporSis: TDataSource;
    dsProcuradores: TDataSource;
    t_Procuradores: TTable;
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
    q_Proc: TQuery;
    dsProc: TDataSource;
    dsLocalizar: TDataSource;
    pnlLocalizar: TPanel;
    Label26: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    btnOK: TBitBtn;
    edtLocalizar: TEdit;
    DBGrid1: TDBGrid;
    q_Procu: TQuery;
    dsProcu: TDataSource;
    q_Pais: TQuery;
    q_UF: TQuery;
    edtCod: TDBEdit;
    q_Localizar: TQuery;
    Panel1: TPanel;
    edtregistro: TDBEdit;
    Label1: TLabel;
    edtTel: TDBEdit;
    Label2: TLabel;
    dbcbExibe: TDBCheckBox;
    q_PaisCODIGO: TStringField;
    q_PaisDESCRICAO: TStringField;
    q_UFCodigo: TStringField;
    q_UFDescricao: TStringField;
    t_ExporSisNM_FORN_ESTR: TStringField;
    t_ExporSisCD_PAIS_AQUIS_MERC: TStringField;
    t_ExporSisED_LOGR_FORN_ESTR: TStringField;
    t_ExporSisED_NR_FORN_ESTR: TStringField;
    t_ExporSisED_COMPL_FORN_ESTR: TStringField;
    t_ExporSisED_CIDADE_FORN_ESTR: TStringField;
    t_ExporSisED_ESTAD_FORN_ESTR: TStringField;
    q_ProcuCod: TIntegerField;
    t_ProcuradoresEmpresa: TStringField;
    t_ProcuradoresFilial: TStringField;
    t_ProcuradoresCodigo: TStringField;
    t_ProcuradoresRazao_Social: TStringField;
    t_ProcuradoresPais: TStringField;
    t_ProcuradoresCGC_CPF: TStringField;
    t_ProcuradoresEndereco: TStringField;
    t_ProcuradoresNumero: TStringField;
    t_ProcuradoresComplemento: TStringField;
    t_ProcuradoresBairro: TStringField;
    t_ProcuradoresCidade: TStringField;
    t_ProcuradoresCEP: TStringField;
    t_ProcuradoresUF: TStringField;
    t_ProcuradoresEstado: TStringField;
    t_ProcuradoresInscricao_Estadual: TStringField;
    t_ProcuradoresRegistro: TStringField;
    t_ProcuradoresTelefone: TStringField;
    t_Procuradoresexibe_complementares: TSmallintField;
    q_Localizarempresa: TStringField;
    q_LocalizarFILIAL: TStringField;
    q_LocalizarCodigo: TStringField;
    q_LocalizarRazao_Social: TStringField;
    q_LocalizarCGC_CPF: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure t_ProcuradoresBeforeDelete(DataSet: TDataSet);
    procedure t_ProcuradoresAfterPost(DataSet: TDataSet);
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
    procedure t_ProcuradoresAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure edtCnpjKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_procuradores: TF_procuradores;
  novo: string;
  op: integer;

implementation

uses U_MSCOMEX, U_relprocu;

{$R *.DFM}

procedure TF_procuradores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     q_UF.Close;
     q_Pais.Close;
     t_Procuradores.Close;          
//     q_Param.Close;

     Action := caFree;
     f_procuradores := nil;
     f_mscomex.Procuradores1.Enabled := True;
     logusu('A','Finalizou acesso ao Cadastro de Procuradores');
end;

procedure TF_procuradores.FormActivate(Sender: TObject);
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

procedure TF_procuradores.t_ProcuradoresBeforeDelete(DataSet: TDataSet);
begin
     logusu('E','Excluiu procurador: '+t_procuradoresrazao_social.asstring);
end;

procedure TF_procuradores.t_ProcuradoresAfterPost(DataSet: TDataSet);
begin
     logusu('P','Alterou procurador: '+t_procuradoresrazao_social.asstring);
end;

procedure TF_procuradores.btnNovoClick(Sender: TObject);
begin
     t_Procuradores.Append;

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
     edtTel.Enabled := True;
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

procedure TF_procuradores.btnAlterarClick(Sender: TObject);
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
     edtTel.Enabled := True;
     edtBairro.Enabled := True;
     edtCidade.Enabled := True;
     edtCep.Enabled    := True;
     cmbUF.Enabled     := True;
     edtEstado.Enabled := True;
     cmbPais.Enabled   := True;
     edtInsc.Enabled   := True;
     edtregistro.Enabled   := True;
     dbcbExibe.Enabled := True;

     t_Procuradores.Edit;
     edtRazao.SetFocus;
     op:=2;
end;

procedure TF_procuradores.btnCancelarClick(Sender: TObject);
begin
     t_Procuradores.Cancel;

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
     edtTel.Enabled := False;
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

procedure TF_procuradores.btnImprimirClick(Sender: TObject);
begin
     if not Assigned(QR_Procuradores) then Application.CreateForm(TQR_Procuradores, QR_Procuradores);
     QR_Procuradores.q_Procu.Open;
     QR_Procuradores.Preview;
end;

procedure TF_procuradores.btnFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TF_procuradores.btnGravarClick(Sender: TObject);
begin
  if edtRazao.Text = '' Then begin
     MessageDlg('Digite a Razao_Social do Procurador!', mtInformation,[mbOk], 0);
     edtRazao.SetFocus;
  end
  else if edtCnpj.Text = '' Then begin
     MessageDlg('Digite o CNPJ/CPF do Procurador!', mtInformation,[mbOk], 0);
     edtCnpj.SetFocus;
  end
  else begin
     if op = 1 Then
       begin
         novo := '1';
         if TipoBanco = 1 then begin
                q_Procu.SQL.Clear;
                q_Procu.SQL.Add('SELECT Max(Cast(Codigo as integer)) AS Cod ');
                q_Procu.SQL.Add('FROM Parametros AS PA INNER JOIN Procuradores AS PR ON PA.Empresa = PR.Empresa AND PA.Filial = PR.Filial ');
         end
         else begin
                q_Procu.SQL.Clear;
                q_Procu.SQL.Add('SELECT Max(Val(Codigo)) AS Cod ');
                q_Procu.SQL.Add('FROM Parametros AS PA INNER JOIN Procuradores AS PR ON PA.Empresa = PR.Empresa AND PA.Filial = PR.Filial ');
         end;
         q_Procu.Open;
         if q_Procu.RecordCount <> 0 Then
            novo := IntToStr(StrToInt(q_ProcuCod.AsString) + 1);
         q_Procu.Close;
         t_ProcuradoresEmpresa.AsString := v_empresa;
         t_ProcuradoresFilial.AsString := v_filial;
         t_ProcuradoresCodigo.AsString := novo;
         t_Procuradores.Post;
         MessageDlg('Procurador incluido com sucesso!', mtInformation,[mbOk], 0);
       end
     else
       begin
         t_Procuradores.Post;
         MessageDlg('Alteração do Procurador feita com sucesso!', mtInformation,[mbOk], 0);
       end;
     edtRazao.Enabled  := False;
     edtCnpj.Enabled   := False;
     edtEnder.Enabled  := False;
     edtNum.Enabled    := False;
     edtComple.Enabled := False;
     edtBairro.Enabled := False;
     edtTel.Enabled := False;
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

procedure TF_procuradores.btnLocalizarClick(Sender: TObject);
begin
     pnlLocalizar.Top  := 4;
     pnlLocalizar.Left := 96;
     pnlLocalizar.Visible := True;
     pnlPrincipal.Enabled := False;
     q_Localizar.Open;
     edtLocalizar.SetFocus;
end;

procedure TF_procuradores.btnOKClick(Sender: TObject);
begin
     pnlLocalizar.Visible := False;
     pnlPrincipal.Enabled := True;
     q_Localizar.Close;
     edtLocalizar.Text := '';
     btnNovo.SetFocus;
end;

procedure TF_procuradores.edtLocalizarChange(Sender: TObject);
begin
     q_Localizar.Filter := 'Razao_Social = '''+ uppercase(edtLocalizar.Text) +'*''';
     if edtLocalizar.Text = '' then
        q_Localizar.Filtered := False
     else
        q_Localizar.Filtered := True;
end;

procedure TF_procuradores.btnExcluirClick(Sender: TObject);
begin
     q_Proc.Params[0].AsString := t_ProcuradoresCodigo.AsString;
     q_Proc.Open;
     if q_Proc.RecordCount <> 0 then
        MessageDlg('Existem Processos com este Procurador. Não pode ser excluído!', mtInformation,[mbOk], 0)
     else
        if MessageDlg('Confirma exclusão deste Procurador?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
           t_Procuradores.Delete;
           MessageDlg('Procurador excluído!', mtInformation,[mbOk], 0);
        end;
     q_Proc.Close;
     btnNovo.SetFocus;
end;

procedure TF_procuradores.t_ProcuradoresAfterScroll(DataSet: TDataSet);
begin
     If not t_Procuradores.Eof Then begin
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

procedure TF_procuradores.FormCreate(Sender: TObject);
begin
//     q_Param.Open;
     t_Procuradores.Open;
     q_Pais.Open;
     q_UF.Open;
end;

procedure TF_procuradores.edtCnpjKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in['0'..'9',Chr(8)]) then Key:= #0;
end;

end.
