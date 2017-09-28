unit u_contasp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Grids, DBGrids, Buttons, Db, DBTables, DBCtrls, Mask,
  ActnList;

type
  Tf_contasp = class(TForm)
    pnlPrincipal: TPanel;
    pnlBotoes: TPanel;
    dbGrdContas: TDBGrid;
    btnIncluir: TBitBtn;
    btnExcluir: TBitBtn;
    btnAlterar: TBitBtn;
    tbContasPag: TTable;
    dsContas: TDataSource;
    pnlPagamento: TPanel;
    Panel8: TPanel;
    dbGrdPagamento: TDBGrid;
    qrContasPag: TQuery;
    dsContasPag: TDataSource;
    pnlCampos: TPanel;
    Label3: TLabel;
    dbLcbFornec: TDBLookupComboBox;
    Label6: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    qrFornec: TQuery;
    qrParam: TQuery;
    dsFornec: TDataSource;
    Label2: TLabel;
    dbLcbPlano: TDBLookupComboBox;
    dbEdtCod: TDBEdit;
    dbEdtHist: TDBEdit;
    qrPlano: TQuery;
    dsPlano: TDataSource;
    dbEdtEmissao: TDBEdit;
    dbEdtVenc: TDBEdit;
    dbEdtValor: TDBEdit;
    dbEdtSaldo: TDBEdit;
    pnlOpcoes: TPanel;
    btnLocalizar: TBitBtn;
    btnFiltrar: TBitBtn;
    btnImprimir: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    alContas: TActionList;
    acCalculaSaldo: TAction;
    qrLocCorrecoes: TQuery;
    qrLocPagamentos: TQuery;
    pnlCorrecao: TPanel;
    dbGrdCorrecoes: TDBGrid;
    Panel7: TPanel;
    tbCorrecoes: TTable;
    dsCorrecoes: TDataSource;
    dbLcbTipo: TDBLookupComboBox;
    dbEdtData: TDBEdit;
    dbEdtVal: TDBEdit;
    dbEdtObs: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    qrTipo: TQuery;
    dsTipo: TDataSource;
    btnIncluirCorre: TBitBtn;
    btnAlterarCorre: TBitBtn;
    btnExcluirCorre: TBitBtn;
    btnSalvarCorre: TBitBtn;
    btnCancelarCorre: TBitBtn;
    btnFecharCorre: TBitBtn;
    btnOkPag: TBitBtn;
    qrPagamentos: TQuery;
    dsPagamentos: TDataSource;
    pnlLocalizar: TPanel;
    Panel1: TPanel;
    edtLocCod: TEdit;
    Label13: TLabel;
    meLocEmissao: TMaskEdit;
    meLocVenc: TMaskEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    meLocValor: TMaskEdit;
    btnLocLocalizar: TBitBtn;
    dbGrdLoc: TDBGrid;
    Label17: TLabel;
    btnOkLoc: TBitBtn;
    qrLocContas: TQuery;
    btnCancelarLoc: TBitBtn;
    dsLocContas: TDataSource;
    pnlFiltrar: TPanel;
    Panel2: TPanel;
    cbFiltFornec: TCheckBox;
    dbLcbFiltFornec: TDBLookupComboBox;
    Label18: TLabel;
    Label19: TLabel;
    rgFiltVenc: TRadioGroup;
    rgFiltPag: TRadioGroup;
    Label20: TLabel;
    meFiltEmissao: TMaskEdit;
    meFiltVenc: TMaskEdit;
    edtFiltDias: TEdit;
    btnCancelarFilt: TBitBtn;
    btnOkFilt: TBitBtn;
    qrFiltFornec: TQuery;
    dsFiltFornec: TDataSource;
    pnlRelatorio: TPanel;
    Panel3: TPanel;
    cbRelFornec: TCheckBox;
    dbLcbRelFornec: TDBLookupComboBox;
    rgRelPag: TRadioGroup;
    rgRelVenc: TRadioGroup;
    gbRelEmissao: TGroupBox;
    meRelEmissaoDe: TMaskEdit;
    meRelEmissaoAte: TMaskEdit;
    Label21: TLabel;
    gbRelVenc: TGroupBox;
    Label22: TLabel;
    meRelVencDe: TMaskEdit;
    meRelVencAte: TMaskEdit;
    gbDesmembra: TGroupBox;
    cbRelPag: TCheckBox;
    cbRelCorre: TCheckBox;
    btnImprimirRel: TBitBtn;
    btnCancelarRel: TBitBtn;
    btnPagamentos: TBitBtn;
    btnCorrecoes: TBitBtn;
    btnFechar: TBitBtn;
    cbRelPlano: TCheckBox;
    dbLcbRelPlano: TDBLookupComboBox;
    qrRelPlano: TQuery;
    dsRelPlano: TDataSource;
    cbOrdenaPlano: TCheckBox;
    qrVerificaConta: TQuery;
    qrParamEmpresa: TStringField;
    qrParamFilial: TStringField;
    tbContasPagEmpresa: TStringField;
    tbContasPagFilial: TStringField;
    tbContasPagFornecedor: TStringField;
    tbContasPagCodigo: TStringField;
    tbContasPagData_Emissao: TDateTimeField;
    tbContasPagData_Vencimento: TDateTimeField;
    tbContasPagHistorico: TStringField;
    tbContasPagPlano_contas: TStringField;
    tbContasPagSaldo: TFloatField;
    tbContasPagValor: TFloatField;
    qrPlanoEmpresa: TStringField;
    qrPlanoFilial: TStringField;
    qrPlanoCodigo: TStringField;
    qrPlanoDescricao: TStringField;
    qrLocCorrecoesValorTot: TFloatField;
    qrLocCorrecoespositivo: TSmallintField;
    qrLocPagamentosValorTot: TFloatField;
    tbCorrecoesEmpresa: TStringField;
    tbCorrecoesFilial: TStringField;
    tbCorrecoesFornecedor: TStringField;
    tbCorrecoesCodigo: TStringField;
    tbCorrecoesregistro: TAutoIncField;
    tbCorrecoesTipo_Correcao: TStringField;
    tbCorrecoesData: TDateTimeField;
    tbCorrecoesValor: TFloatField;
    tbCorrecoesobs: TStringField;
    qrTipoCodigo: TStringField;
    qrTipoDescricao: TStringField;
    qrTipopositivo: TSmallintField;
    qrPagamentosDetalhe: TStringField;
    qrPagamentosData_Registro: TDateTimeField;
    qrPagamentosValor_Contabilizado: TFloatField;
    qrLocContasEmpresa: TStringField;
    qrLocContasFilial: TStringField;
    qrLocContasCodigo: TStringField;
    qrLocContasFornecedor: TStringField;
    qrLocContasData_Emissao: TDateTimeField;
    qrLocContasData_Vencimento: TDateTimeField;
    qrLocContasHistorico: TStringField;
    qrLocContasSaldo: TFloatField;
    qrLocContasValor: TFloatField;
    qrLocContasPlano_contas: TStringField;
    qrRelPlanoEmpresa: TStringField;
    qrRelPlanoFilial: TStringField;
    qrRelPlanoCodigo: TStringField;
    qrRelPlanoDescricao: TStringField;
    qrVerificaContaCodigo: TStringField;
    qrVerificaContaFornecedor: TStringField;
    qrFiltFornecEmpresa: TStringField;
    qrFiltFornecFilial: TStringField;
    qrFiltFornecCodigo: TStringField;
    qrFiltFornecRazao_Social: TStringField;
    qrFiltFornecPais: TStringField;
    qrFiltFornecCNPJ_CPF_COMPLETO: TStringField;
    qrFiltFornecCGC_CPF: TStringField;
    qrFiltFornecTipo_Importador: TStringField;
    qrFiltFornecEndereco: TStringField;
    qrFiltFornecNumero: TStringField;
    qrFiltFornecComplemento: TStringField;
    qrFiltFornecBairro: TStringField;
    qrFiltFornecCidade: TStringField;
    qrFiltFornecCEP: TStringField;
    qrFiltFornecUF: TStringField;
    qrFiltFornecEstado: TStringField;
    qrFiltFornecInscricao_Estadual: TStringField;
    qrFiltFornecBanco: TStringField;
    qrFiltFornecAgencia: TStringField;
    qrFiltFornecConta_Corrente: TStringField;
    qrFiltFornecConta_Corrente_Registro: TIntegerField;
    qrFiltFornecConta_Corrente_Deposito: TIntegerField;
    qrFiltFornecTelefone: TStringField;
    qrContasPagEmpresa: TStringField;
    qrContasPagFilial: TStringField;
    qrContasPagCodigo: TStringField;
    qrContasPagFornecedor: TStringField;
    qrContasPagData_Emissao: TDateTimeField;
    qrContasPagData_Vencimento: TDateTimeField;
    qrContasPagHistorico: TStringField;
    qrContasPagSaldo: TFloatField;
    qrContasPagValor: TFloatField;
    qrContasPagqDias: TIntegerField;
    qrContasPagStatusVenc: TStringField;
    qrContasPagStatusPag: TStringField;
    qrContasPagPlano_contas: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure tbContasPagAfterInsert(DataSet: TDataSet);
    procedure tbContasPagAfterPost(DataSet: TDataSet);
    procedure btnFecharClick(Sender: TObject);
    procedure tbContasPagAfterScroll(DataSet: TDataSet);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure acCalculaSaldoExecute(Sender: TObject);
    procedure dbEdtEmissaoChange(Sender: TObject);
    procedure dbEdtVencChange(Sender: TObject);
    procedure tbContasPagBeforeDelete(DataSet: TDataSet);
    procedure btnCorrecoesClick(Sender: TObject);
    procedure btnIncluirCorreClick(Sender: TObject);
    procedure btnAlterarCorreClick(Sender: TObject);
    procedure btnExcluirCorreClick(Sender: TObject);
    procedure btnSalvarCorreClick(Sender: TObject);
    procedure btnCancelarCorreClick(Sender: TObject);
    procedure btnFecharCorreClick(Sender: TObject);
    procedure tbCorrecoesAfterInsert(DataSet: TDataSet);
    procedure tbCorrecoesBeforePost(DataSet: TDataSet);
    procedure tbCorrecoesAfterScroll(DataSet: TDataSet);
    procedure btnPagamentosClick(Sender: TObject);
    procedure btnOkPagClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnOkLocClick(Sender: TObject);
    procedure btnCancelarLocClick(Sender: TObject);
    procedure qrLocContasAfterScroll(DataSet: TDataSet);
    procedure btnLocLocalizarClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure btnOkFiltClick(Sender: TObject);
    procedure btnCancelarFiltClick(Sender: TObject);
    procedure edtFiltDiasKeyPress(Sender: TObject; var Key: Char);
    procedure cbFiltFornecClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnImprimirRelClick(Sender: TObject);
    procedure btnCancelarRelClick(Sender: TObject);
    procedure cbRelFornecClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cbRelPlanoClick(Sender: TObject);
    procedure dbEdtCodKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_contasp: Tf_contasp;
  vEmp, vFil: String;
  vAlterou: Boolean;

implementation

uses U_MSCOMEX, u_qrRelContasP;

{$R *.DFM}

procedure Tf_contasp.FormCreate(Sender: TObject);
begin
     qrParam.Open;
     vEmp := qrParamEmpresa.AsString;
     vFil := qrParamFilial.AsString;

     With qrContasPag Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Open;
     End;
     With qrFornec Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Open;
     End;
     With qrPlano Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Open;
     End;
     With qrPagamentos Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
     End;
     With qrLocCorrecoes Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
     End;
     With qrLocPagamentos Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
     End;
     {With qrLocContas Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
     End;}
     With qrFiltFornec Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
     End;
     With qrRelPlano Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
     End;
     With qrVerificaConta Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
     End;

     tbContasPag.Open;
     qrParam.Close;

     With pnlCorrecao Do Begin
         Width := 521;
         Height := 254;
     End;
     pnlCorrecao.Top := Trunc((Height-pnlCorrecao.Height)/2);
     pnlCorrecao.Left := Trunc((Width-pnlCorrecao.Width)/2);
     With pnlPagamento Do Begin
         Width := 521;
         Height := 265;
     End;
     pnlPagamento.Top := Trunc((Height-pnlPagamento.Height)/2);
     pnlPagamento.Left := Trunc((Width-pnlPagamento.Width)/2);
     With pnlLocalizar Do Begin
         Width := 521;
         Height := 265;
     End;
     pnlLocalizar.Top := Trunc((Height-pnlLocalizar.Height)/2);
     pnlLocalizar.Left := Trunc((Width-pnlLocalizar.Width)/2);
     With pnlFiltrar Do Begin
         Width := 521;
         Height := 249;
     End;
     pnlFiltrar.Top := Trunc((Height-pnlFiltrar.Height)/2);
     pnlFiltrar.Left := Trunc((Width-pnlFiltrar.Width)/2);
     With pnlRelatorio Do Begin
         Width := 521;
         Height := 297;
     End;
     pnlRelatorio.Top := Trunc((Height-pnlRelatorio.Height)/2);
     pnlRelatorio.Left := Trunc((Width-pnlRelatorio.Width)/2);

end;

procedure Tf_contasp.btnIncluirClick(Sender: TObject);
begin
     btnsalvar.tag := 0;
     tbContasPag.Insert;
     tbContasPagEmpresa.AsString := vEmp;
     tbContasPagFilial.AsString := vFil;
     tbContasPagFornecedor.AsString := '';
     tbContasPagCodigo.AsString := '';

     tbContasPagData_Emissao.AsString := DateToStr(Date());
     dbEdtCod.SetFocus;
end;

procedure Tf_contasp.btnExcluirClick(Sender: TObject);
begin
     With qrLocCorrecoes Do Begin
         Params[2].AsString := tbContasPagFornecedor.AsString;
         Params[3].AsString := tbContasPagCodigo.AsString;
         Open;
         If RecordCount <> 0 Then Begin
            MessageDlg('Existe Correção nesta Conta!', mtWarning, [mbOk], 0);
            Close;
            Exit;
         End;
         Close;
     End;

     With qrLocPagamentos Do Begin
         Params[2].AsString := tbContasPagFornecedor.AsString;
         Params[3].AsString := tbContasPagCodigo.AsString;
         Open;
         If RecordCount <> 0 Then Begin
            MessageDlg('Existe Pagamento nesta Conta!', mtWarning, [mbOk], 0);
            Close;
            Exit;
         End;
         Close;
     End;

     If MessageDlg('Confirma exclusão desta Conta?', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
        Exit;

     tbContasPag.Delete;

     With qrContasPag Do Begin
         Close;  Open;
     End;
     dbGrdContas.SetFocus;
end;

procedure Tf_contasp.btnAlterarClick(Sender: TObject);
begin
     btnsalvar.tag := 1;
     dbEdtCod.Enabled := False;
     dbLcbFornec.Enabled := False;
     tbContasPag.Edit;

     dbEdtHist.SetFocus;
end;

procedure Tf_contasp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     //f_mscomex.ContasaPagar1.Enabled := True;
     F_contasp := Nil;
     Action := caFree;
end;

procedure Tf_contasp.FormActivate(Sender: TObject);
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
     width := w; }
end;

procedure Tf_contasp.tbContasPagAfterInsert(DataSet: TDataSet);
begin
     pnlPrincipal.Enabled := False;
     pnlCampos.Enabled := True;
     pnlOpcoes.Enabled := False;

     btnIncluir.Enabled := False;
     btnAlterar.Enabled := False;
     btnExcluir.Enabled := False;
     btnPagamentos.Enabled := False;
     btnCorrecoes.Enabled := False;

     btnSalvar.Enabled := True;
     btnCancelar.Enabled := True;
end;

procedure Tf_contasp.tbContasPagAfterPost(DataSet: TDataSet);
begin
     logusu('P','Alterou a Conta a Pagar: '+tbContasPagCodigo.AsString+', do Fornecedor: '+tbContasPagFornecedor.AsString);

     pnlPrincipal.Enabled := True;
     pnlCampos.Enabled := False;
     pnlOpcoes.Enabled := True;

     btnIncluir.Enabled := True;
     btnAlterar.Enabled := True;
     btnExcluir.Enabled := True;
     btnPagamentos.Enabled := True;
     btnCorrecoes.Enabled := True;

     btnSalvar.Enabled := False;
     btnCancelar.Enabled := False;

     dbEdtCod.Enabled := True;
     dbLcbFornec.Enabled := True;
end;

procedure Tf_contasp.btnFecharClick(Sender: TObject);
begin
     Close;
end;

procedure Tf_contasp.tbContasPagAfterScroll(DataSet: TDataSet);
begin
     If tbContasPag.State In [dsInsert, dsEdit] Then
        Exit;

     If qrContasPag.RecordCount <> 0 Then Begin
        btnPagamentos.Enabled := True;
        btnCorrecoes.Enabled := True;
        btnLocalizar.Enabled := True;
        btnImprimir.Enabled := True;

        btnAlterar.Enabled := True;
        btnExcluir.Enabled := True;
     End
     Else Begin
        btnPagamentos.Enabled := False;
        btnCorrecoes.Enabled := False;
        btnLocalizar.Enabled := False;
        btnImprimir.Enabled := False;

        btnAlterar.Enabled := False;
        btnExcluir.Enabled := False;
     End;
end;

procedure Tf_contasp.btnSalvarClick(Sender: TObject);
var vFor, vCod: String;

begin
     dbEdtCod.Text := Trim(dbEdtCod.Text);
     If dbEdtCod.Text = '' Then Begin
        MessageDlg('Código da Conta não pode estar em branco!', mtWarning, [mbOk], 0);
        dbEdtCod.SetFocus;
        Exit;
     End;
     If tbContasPagFornecedor.AsString = '' Then Begin
        MessageDlg('Fornecedor não pode estar em branco!', mtWarning, [mbOk], 0);
        dbLcbFornec.SetFocus;
        Exit;
     End;
     dbEdtHist.Text := Trim(dbEdtHist.Text);
     If dbEdtHist.Text = '' Then Begin
        MessageDlg('Histórico da Conta não pode estar em branco!', mtWarning, [mbOk], 0);
        dbEdtHist.SetFocus;
        Exit;
     End;
     If tbContasPagPlano_contas.AsString = '' Then Begin
        MessageDlg('Plano de Conta não pode estar em branco!', mtWarning, [mbOk], 0);
        dbLcbPlano.SetFocus;
        Exit;
     End;
     If dbEdtEmissao.Text = '  /  /    ' Then Begin
        MessageDlg('A Data de Emissão da Conta não pode estar em branco!', mtWarning, [mbOk], 0);
        dbEdtEmissao.SetFocus;
        Exit;
     End;
     If dbEdtVenc.Text = '  /  /    ' Then Begin
        MessageDlg('A Data de Vencimento da Conta não pode estar em branco!', mtWarning, [mbOk], 0);
        dbEdtvenc.SetFocus;
        Exit;
     End;
     If tbContasPagData_Vencimento.AsDateTime < tbContasPagData_Emissao.AsDateTime Then Begin
        MessageDlg('A Data de Vencimento não pode ser menor que a Data de Emissão da Conta!', mtWarning, [mbOk], 0);
        dbEdtvenc.SetFocus;
        Exit;
     End;
     If dbEdtValor.Text = '' Then Begin
        MessageDlg('Valor da Conta não pode estar em branco!', mtWarning, [mbOk], 0);
        dbEdtValor.SetFocus;
        Exit;
     End;
     If tbContasPagValor.AsFloat <= 0 Then Begin
        MessageDlg('Valor da Conta não pode ser menor ou igual a zero!', mtWarning, [mbOk], 0);
        dbEdtValor.SetFocus;
        Exit;
     End;

     Screen.Cursor := crHourGlass;
     acCalculaSaldo.Execute;

     vFor := tbContasPagFornecedor.AsString;
     vCod := tbContasPagCodigo.AsString;

     if (btnsalvar.tag = 0) then begin
     With qrVerificaConta Do Begin
         Params[2].AsString := vFor;
         Params[3].AsString := vCod;
         Open;
         If RecordCount <> 0 Then Begin
            MessageDlg('Código da Conta já existe para esse Fornecedor!', mtWarning, [mbOk], 0);
            dbEdtCod.SetFocus;
            Screen.Cursor := crDefault;
            Close;
            Exit;
         End;
         Close;
     End;
     end;

     Try
        tbContasPag.Post;
     Except
        On E: Exception Do Begin
           MessageDlg('Erro na gravação do registro! '+#13#10+'MSG: '+E.message, mtError, [mbOk], 0);
           Screen.Cursor := crDefault;
           Exit;
        End;
     End;

     With qrContasPag Do Begin
         Close;
         Open;
         Locate('Fornecedor;Codigo',VarArrayOf([vFor, vCod]),[]);
     End;

     Screen.Cursor := crDefault;
     dbGrdContas.SetFocus;
end;

procedure Tf_contasp.btnCancelarClick(Sender: TObject);
begin
     tbContasPag.Cancel;
end;

procedure Tf_contasp.acCalculaSaldoExecute(Sender: TObject);
var vSaldo: Real;

begin
     { SALDO = VALOR - PAGAMENTO + CORREÇÃO }
     { OBS: CORREÇÃO POSITIVA EM RELAÇÃO AO SALDO }

     vSaldo := tbContasPagValor.AsFloat;
     With qrLocCorrecoes Do Begin
         Params[2].AsString := tbContasPagFornecedor.AsString;
         Params[3].AsString := tbContasPagCodigo.AsString;
         Open;
         If RecordCount <> 0 Then
            While Not Eof Do Begin
                 If qrLocCorrecoesPositivo.Asinteger = 0 Then
                    vSaldo := vSaldo + qrLocCorrecoesValorTot.AsFloat
                 Else
                    vSaldo := vSaldo - qrLocCorrecoesValorTot.AsFloat;
                 Next;
            End;
         Close;
     End;
     With qrLocPagamentos Do Begin
         Params[2].AsString := tbContasPagFornecedor.AsString;
         Params[3].AsString := tbContasPagCodigo.AsString;
         Open;
         If RecordCount <> 0 Then
            vSaldo := vSaldo - qrLocPagamentosValorTot.AsFloat;
         Close;
     End;
     tbContasPagSaldo.AsFloat := StrToFloat(FormatFloat('0.00',vSaldo));
end;

procedure Tf_contasp.dbEdtEmissaoChange(Sender: TObject);
begin
     If tbContasPag.State In [dsInsert, dsEdit] Then
        If dbEdtEmissao.Text = '  /  /    ' Then
           tbContasPagData_Emissao.AsString := '';
end;

procedure Tf_contasp.dbEdtVencChange(Sender: TObject);
begin
     If tbContasPag.State In [dsInsert, dsEdit] Then
        If dbEdtVenc.Text = '  /  /    ' Then
           tbContasPagData_Vencimento.AsString := '';
end;

procedure Tf_contasp.tbContasPagBeforeDelete(DataSet: TDataSet);
begin
     logusu('E','Excluir a Conta a Pagear: '+tbContasPagCodigo.AsString+', do Fornecedor: '+tbContasPagFornecedor.AsString);
end;

procedure Tf_contasp.btnCorrecoesClick(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     qrTipo.Open;
     tbCorrecoes.Open;

     pnlPrincipal.Enabled := False;
     pnlOpcoes.Enabled := False;
     pnlBotoes.Enabled := False;

     pnlCorrecao.Visible := True;
     Screen.Cursor := crDefault;
     dbGrdCorrecoes.SetFocus;
end;

procedure Tf_contasp.btnIncluirCorreClick(Sender: TObject);
begin
     //tbCorrecoes.Insert;
     tbCorrecoes.Append;
     
     tbCorrecoesData.AsString := DateToStr(Date());
     dbLcbTipo.SetFocus;
end;

procedure Tf_contasp.btnAlterarCorreClick(Sender: TObject);
begin
     tbCorrecoes.Edit;

     dbLcbTipo.SetFocus;
end;

procedure Tf_contasp.btnExcluirCorreClick(Sender: TObject);
begin
     If MessageDlg('Confirma exclusão desta Correção?', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
        Exit;

     tbCorrecoes.Delete;

     vAlterou := True;
end;

procedure Tf_contasp.btnSalvarCorreClick(Sender: TObject);
begin
     If tbCorrecoesTipo_Correcao.AsString = '' Then Begin
        MessageDlg('Tipo de Correção não pode estar em branco!', mtWarning, [mbOk], 0);
        dbLcbTipo.SetFocus;
        Exit;
     End;
     If dbEdtData.Text = '  /  /    ' Then Begin
        MessageDlg('A Data da Correção não pode estar em branco!', mtWarning, [mbOk], 0);
        dbEdtData.SetFocus;
        Exit;
     End;
     If dbEdtVal.Text = '' Then Begin
        MessageDlg('Valor da Correção não pode estar em branco!', mtWarning, [mbOk], 0);
        dbEdtVal.SetFocus;
        Exit;
     End;
     If tbCorrecoesValor.AsFloat <= 0 Then Begin
        MessageDlg('Valor da Correção não pode ser menor ou igual a zero!', mtWarning, [mbOk], 0);
        dbEdtVal.SetFocus;
        Exit;
     End;
     dbEdtObs.Text := Trim(dbEdtObs.Text);
     If dbEdtObs.Text = '' Then Begin
        MessageDlg('Observação da Correção não pode estar em branco!', mtWarning, [mbOk], 0);
        dbEdtObs.SetFocus;
        Exit;
     End;

     Screen.Cursor := crHourGlass;

     Try
        tbCorrecoes.Post;
        vAlterou := True;
     Except
        ON E: Exception Do Begin
           MessageDlg('Erro na gravação do registro! '+E.message, mtError, [mbOk], 0);
           Screen.Cursor := crDefault;
           Exit;
        End;
     End;

     Screen.Cursor := crDefault;
     dbGrdCorrecoes.SetFocus;
end;

procedure Tf_contasp.btnCancelarCorreClick(Sender: TObject);
begin
     tbCorrecoes.Cancel;
end;

procedure Tf_contasp.btnFecharCorreClick(Sender: TObject);
var vFor, vCod: String;

begin
     pnlPrincipal.Enabled := True;
     pnlOpcoes.Enabled := True;
     pnlBotoes.Enabled := True;

     pnlCorrecao.Visible := False;
     tbCorrecoes.Close;
     qrTipo.Close;

     If vAlterou Then Begin
        tbContasPag.Edit;
        acCalculaSaldo.Execute;
        tbContasPag.Post;

        vFor := tbContasPagFornecedor.AsString;
        vCod := tbContasPagCodigo.AsString;
        With qrContasPag Do Begin
            Close;
            Open;
            Locate('Fornecedor;Codigo',VarArrayOf([vFor, vCod]),[]);
        End;
     End;

     vAlterou := False;
     dbGrdContas.SetFocus;
end;

procedure Tf_contasp.tbCorrecoesAfterInsert(DataSet: TDataSet);
begin
     dbGrdCorrecoes.Enabled := False;
     dbLcbTipo.Enabled := True;
     dbEdtData.Enabled := True;
     dbEdtVal.Enabled := True;
     dbEdtObs.Enabled := True;

     btnIncluirCorre.Enabled := False;
     btnAlterarCorre.Enabled := False;
     btnExcluirCorre.Enabled := False;
     btnFecharCorre.Enabled := False;

     btnSalvarCorre.Enabled := True;
     btnCancelarCorre.Enabled := True;
end;

procedure Tf_contasp.tbCorrecoesBeforePost(DataSet: TDataSet);
begin
     dbGrdCorrecoes.Enabled := True;
     dbLcbTipo.Enabled := False;
     dbEdtData.Enabled := False;
     dbEdtVal.Enabled := False;
     dbEdtObs.Enabled := False;

     btnIncluirCorre.Enabled := True;
     btnAlterarCorre.Enabled := True;
     btnExcluirCorre.Enabled := True;
     btnFecharCorre.Enabled := True;

     btnSalvarCorre.Enabled := False;
     btnCancelarCorre.Enabled := False;

     dbGrdCorrecoes.SetFocus;
end;

procedure Tf_contasp.tbCorrecoesAfterScroll(DataSet: TDataSet);
begin
     If tbCorrecoes.State In [dsInsert, dsEdit] Then
        Exit;

     If tbCorrecoes.RecordCount <> 0 Then Begin
        btnAlterarCorre.Enabled := True;
        btnExcluirCorre.Enabled := True;
     End
     Else Begin
        btnAlterarCorre.Enabled := False;
        btnExcluirCorre.Enabled := False;
     End;
end;

procedure Tf_contasp.btnPagamentosClick(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;

     With qrPagamentos Do Begin
         Params[2].AsString := qrContasPagFornecedor.AsString;
         Params[3].AsString := qrContasPagCodigo.AsString;
         Open;
     End;

     pnlPrincipal.Enabled := False;
     pnlOpcoes.Enabled := False;
     pnlBotoes.Enabled := False;

     pnlPagamento.Visible := True;
     Screen.Cursor := crDefault;
     dbGrdPagamento.SetFocus;
end;

procedure Tf_contasp.btnOkPagClick(Sender: TObject);
begin
     pnlPrincipal.Enabled := True;
     pnlOpcoes.Enabled := True;
     pnlBotoes.Enabled := True;

     pnlPagamento.Visible := False;
     qrPagamentos.Close;

     dbGrdContas.SetFocus;
end;

procedure Tf_contasp.btnLocalizarClick(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     {With qrLocContas Do Begin
         SQL.Strings[3] := qrContasPag.SQL.Strings[3];
         //Open;
     End;}

     pnlPrincipal.Enabled := False;
     pnlOpcoes.Enabled := False;
     pnlBotoes.Enabled := False;

     pnlLocalizar.Visible := True;
     Screen.Cursor := crDefault;
     edtLocCod.SetFocus;
end;

procedure Tf_contasp.btnOkLocClick(Sender: TObject);
begin
     qrContasPag.Locate('Fornecedor;Codigo',VarArrayOf([qrLocContasFornecedor.AsString, qrLocContasCodigo.AsString]),[]);

     pnlPrincipal.Enabled := True;
     pnlOpcoes.Enabled := True;
     pnlBotoes.Enabled := True;

     pnlLocalizar.Visible := False;
     qrLocContas.Close;

     dbGrdContas.SetFocus;
end;

procedure Tf_contasp.btnCancelarLocClick(Sender: TObject);
begin
     pnlPrincipal.Enabled := True;
     pnlOpcoes.Enabled := True;
     pnlBotoes.Enabled := True;

     pnlLocalizar.Visible := False;
     qrLocContas.Close;

     dbGrdContas.SetFocus;
end;

procedure Tf_contasp.qrLocContasAfterScroll(DataSet: TDataSet);
begin
     btnOkLoc.Enabled := (qrLocContas.RecordCount <> 0);
end;

procedure Tf_contasp.btnLocLocalizarClick(Sender: TObject);
begin
     {With qrLocContas Do Begin
         close;
         If edtLocCod.Text <> '' Then
            Params[0].AsString := edtLocCod.Text
         Else
            Params[0].AsString := '';

         If meLocEmissao.Text <> '  /  /    ' Then
            Params[1].AsString := meLocEmissao.Text
         Else
            Params[1].AsString := '';

         If meLocVenc.Text <> '  /  /    ' Then
            Params[2].AsString := meLocVenc.Text
         Else
            Params[2].AsString := '';

         If meLocValor.Text <> '' Then
            Params[3].AsString := meLocValor.Text
         Else
            Params[3].AsString := '';
         Open;
     End; }
     qrLocContas.close;
     qrLocContas.sql.clear;
     qrLocContas.sql.Add('SELECT Empresa, Filial, Codigo, Fornecedor, Data_Emissao, ');
     qrLocContas.sql.Add('Data_Vencimento, Historico, Saldo, Valor, Plano_contas FROM Contas_Pagar ');
     qrLocContas.sql.Add('WHERE Empresa = "1" AND Filial = "RJO" ');
     If edtLocCod.Text <> '' Then
       qrLocContas.sql.Add(' AND Codigo Like "'+ edtLocCod.Text +'%" ');
     If meLocEmissao.Text <> '  /  /    ' Then
       qrLocContas.sql.Add(' AND Data_Emissao >= '+ meLocEmissao.Text +' ');
     If meLocVenc.Text <> '  /  /    ' Then
       qrLocContas.sql.Add(' AND Data_Vencimento >= '+ meLocVenc.Text +' ');
     If meLocValor.Text <> '' Then
       qrLocContas.sql.Add(' AND Valor = '+ meLocValor.Text +' ');
     qrLocContas.sql.Add('ORDER BY Data_Emissao');
     qrLocContas.open;
end;

procedure Tf_contasp.btnFiltrarClick(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     qrFiltFornec.Open;

     pnlPrincipal.Enabled := False;
     pnlOpcoes.Enabled := False;
     pnlBotoes.Enabled := False;

     pnlFiltrar.Visible := True;
     Screen.Cursor := crDefault;
     dbLcbFiltFornec.KeyValue := qrFiltFornecCodigo.AsString;
     cbFiltFornec.SetFocus;
end;

procedure Tf_contasp.btnOkFiltClick(Sender: TObject);
var vFiltro: String;

begin
     vFiltro := '';
     If Not cbFiltFornec.Checked Then
        vFiltro := vFiltro +'AND Fornecedor = "'+ qrFiltFornecCodigo.AsString +'" ';

     If meFiltEmissao.Text <> '  /  /    ' Then
        Try
           StrToDate(meFiltEmissao.Text);
           vFiltro := vFiltro +'AND Data_Emissao = Cast("'+ meFiltEmissao.Text +'" as datetime) ';
        Except
           MessageDlg('Data de Emissão inválida!', mtWarning, [mbOk], 0);
           meFiltEmissao.SetFocus;
           Exit;
        End;

     If meFiltVenc.Text <> '  /  /    ' Then
        Try
           StrToDate(meFiltVenc.Text);
           vFiltro := vFiltro +'AND Data_Vencimento = Cast("'+ meFiltVenc.Text +'" as datetime) ';
        Except
           MessageDlg('Data de Vencimento inválida!', mtWarning, [mbOk], 0);
           meFiltVenc.SetFocus;
           Exit;
        End;

     If edtFiltDias.Text <> '' Then
        vFiltro := vFiltro +'AND (DATEDIFF(DAY,data_vencimento,GETDATE()) = "'+ edtFiltDias.Text +'") ';

     Case rgFiltVenc.ItemIndex Of
         1: vFiltro := vFiltro +'AND (DATEDIFF(DAY,data_vencimento,GETDATE()) < 0) ';
         2: vFiltro := vFiltro +'AND (DATEDIFF(DAY,data_vencimento,GETDATE()) = 0) ';
         3: vFiltro := vFiltro +'AND (DATEDIFF(DAY,data_vencimento,GETDATE()) > 0) ';
     End;

     Case rgFiltPag.ItemIndex Of
         1: vFiltro := vFiltro +'AND Saldo > 0 ';
         2: vFiltro := vFiltro +'AND Saldo <= 0 ';
     End;

     With qrContasPag Do Begin
         Close;
         SQL.Strings[3] := vFiltro;
         Open;
     End;

     pnlPrincipal.Enabled := True;
     pnlOpcoes.Enabled := True;
     pnlBotoes.Enabled := True;

     pnlFiltrar.Visible := False;
     qrFiltFornec.Close;

     dbGrdContas.SetFocus;
end;

procedure Tf_contasp.btnCancelarFiltClick(Sender: TObject);
begin
     With qrContasPag Do Begin
         Close;
         SQL.Strings[3] := '';
         Open;
     End;

     cbFiltFornec.Checked := True;
     meFiltEmissao.Clear;
     meFiltVenc.Clear;
     edtFiltDias.Clear;
     rgFiltVenc.ItemIndex := 0;
     rgFiltPag.ItemIndex := 0;

     pnlPrincipal.Enabled := True;
     pnlOpcoes.Enabled := True;
     pnlBotoes.Enabled := True;

     pnlFiltrar.Visible := False;
     qrFiltFornec.Close;

     dbGrdContas.SetFocus;
end;

procedure Tf_contasp.edtFiltDiasKeyPress(Sender: TObject; var Key: Char);
begin
     If Not (Key In ['0'..'9','-',#8]) Then
        Key := #0;
     If Key = '-' Then
        If Pos('-', edtFiltDias.Text) > 0 Then
           Key := #0
        Else
           If edtFiltDias.SelStart > 0 Then
              Key := #0;
end;

procedure Tf_contasp.cbFiltFornecClick(Sender: TObject);
begin
     dbLcbFiltFornec.Enabled := Not cbFiltFornec.Checked;
end;

procedure Tf_contasp.btnImprimirClick(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     qrFiltFornec.Open;
     qrRelPlano.Open;

     pnlPrincipal.Enabled := False;
     pnlOpcoes.Enabled := False;
     pnlBotoes.Enabled := False;

     pnlRelatorio.Visible := True;
     Screen.Cursor := crDefault;
     dbLcbRelFornec.KeyValue := qrFiltFornecCodigo.AsString;
     dbLcbRelPlano.KeyValue := qrRelPlanoCodigo.AsString;
     cbRelFornec.SetFocus;
end;

procedure Tf_contasp.btnImprimirRelClick(Sender: TObject);
var vFiltro, vOrdem: String;

begin
     vFiltro := '';
     vOrdem := 'ORDER BY C.Data_Emissao ';

     If Not cbRelFornec.Checked Then
        vFiltro := vFiltro +'AND Fornecedor = "'+ qrFiltFornecCodigo.AsString +'" ';

     If Not cbRelPlano.Checked Then
        vFiltro := vFiltro +'AND Plano_contas = "'+ qrRelPlanoCodigo.AsString +'" '
     Else Begin
        vFiltro := vFiltro +'AND Plano_contas <> "51" ';
        If cbOrdenaPlano.Checked Then
           vOrdem := 'ORDER BY P.Descricao, C.Data_Emissao ';
     End;

     If meRelEmissaoDe.Text <> '  /  /    ' Then
        Try
           StrToDate(meRelEmissaoDe.Text);
           vFiltro := vFiltro +'AND Data_Emissao >= Cast("'+ meRelEmissaoDe.Text +'" as datetime) ';
        Except
           MessageDlg('Data de Emissão inválida!', mtWarning, [mbOk], 0);
           meRelEmissaoDe.SetFocus;
           Exit;
        End;

     If meRelEmissaoAte.Text <> '  /  /    ' Then
        Try
           StrToDate(meRelEmissaoAte.Text);
           vFiltro := vFiltro +'AND Data_Emissao <= Cast("'+ meRelEmissaoAte.Text +'" as datetime) ';
        Except
           MessageDlg('Data de Emissão inválida!', mtWarning, [mbOk], 0);
           meRelEmissaoAte.SetFocus;
           Exit;
        End;

     If meRelVencDe.Text <> '  /  /    ' Then
        Try
           StrToDate(meRelVencDe.Text);
           vFiltro := vFiltro +'AND Data_Vencimento >= Cast("'+ meRelVencDe.Text +'" as datetime) ';
        Except
           MessageDlg('Data de Vencimento inválida!', mtWarning, [mbOk], 0);
           meRelVencDe.SetFocus;
           Exit;
        End;

     If meRelVencAte.Text <> '  /  /    ' Then
        Try
           StrToDate(meRelVencAte.Text);
           vFiltro := vFiltro +'AND Data_Vencimento <= Cast("'+ meRelVencAte.Text +'" as datetime) ';
        Except
           MessageDlg('Data de Vencimento inválida!', mtWarning, [mbOk], 0);
           meRelVencAte.SetFocus;
           Exit;
        End;

     Case rgRelVenc.ItemIndex Of
         1: vFiltro := vFiltro +'AND (DATEDIFF(DAY,data_vencimento,GETDATE()) < 0) ';
         2: vFiltro := vFiltro +'AND (DATEDIFF(DAY,data_vencimento,GETDATE()) = 0) ';
         3: vFiltro := vFiltro +'AND (DATEDIFF(DAY,data_vencimento,GETDATE()) > 0) ';
     End;

     Case rgRelPag.ItemIndex Of
         1: vFiltro := vFiltro +'AND Saldo > 0 ';
         2: vFiltro := vFiltro +'AND Saldo <= 0 ';
     End;

     If Not Assigned(QR_RelContasP) Then Application.CreateForm(TQR_RelContasP, QR_RelContasP);

     With QR_RelContasP Do Begin
         If cbRelFornec.Checked Then
            qrlFornec.Caption := 'Todos'
         Else
            qrlFornec.Caption := qrFiltFornecRazao_Social.AsString;

         If cbRelPlano.Checked Then
            qrlPlano.Caption := 'Todos'
         Else
            qrlPlano.Caption := qrRelPlanoDescricao.AsString;

         qrlEmissaoDe.Caption := meRelEmissaoDe.Text;
         qrlEmissaoAte.Caption := meRelEmissaoAte.Text;
         qrlVencDe.Caption := meRelVencDe.Text;
         qrlVencAte.Caption := meRelVencAte.Text;

         qrlStatVenc.Caption := rgRelVenc.Items[rgRelVenc.ItemIndex];
         qrlStatPag.Caption := rgRelPag.Items[rgRelPag.ItemIndex];

         If cbRelPag.Checked Then Begin
            qrlDesPag.Caption := 'Sim';
            ghPag.Enabled := True;
            subPag.Enabled := True;
            gfPag.Enabled := True;
         End
         Else Begin
            qrlDesPag.Caption := 'Não';
            ghPag.Enabled := False;
            subPag.Enabled := False;
            gfPag.Enabled := False;
         End;

         If cbRelCorre.Checked Then Begin
            qrlDesCorre.Caption := 'Sim';
            ghCorre.Enabled := True;
            subCorre.Enabled := True;
            gfCorre.Enabled := True;
         End
         Else Begin
            qrlDesCorre.Caption := 'Não';
            ghCorre.Enabled := False;
            subCorre.Enabled := False;
            gfCorre.Enabled := False;
         End;
         //showmessage(vFiltro);
         With qrContas Do Begin
             Close;
             Params[0].AsString := vEmp;
             Params[1].AsString := vFil;
             {SQL.Strings[2] := vFiltro;
             SQL.Strings[3] := vOrdem;}
             Open;
         End;
         With qrContasSint Do Begin
             Close;
             If cbRelPlano.Checked Then Begin
                Params[0].AsString := vEmp;
                Params[1].AsString := vFil;
                //SQL.Strings[3] := vFiltro;
                Open;
            End;
         End;
         Preview;
     End;
end;

procedure Tf_contasp.btnCancelarRelClick(Sender: TObject);
begin
     cbRelFornec.Checked := True;
     meRelEmissaoDe.Clear;
     meRelEmissaoAte.Clear;
     meRelVencDe.Clear;
     meRelVencAte.Clear;
     rgRelVenc.ItemIndex := 0;
     rgRelPag.ItemIndex := 0;
     cbRelPag.Checked := True;
     cbRelCorre.Checked := True;

     pnlPrincipal.Enabled := True;
     pnlOpcoes.Enabled := True;
     pnlBotoes.Enabled := True;

     pnlRelatorio.Visible := False;
     qrFiltFornec.Close;
     qrRelPlano.Close;

     dbGrdContas.SetFocus;
end;

procedure Tf_contasp.cbRelFornecClick(Sender: TObject);
begin
     dbLcbRelFornec.Enabled := Not cbRelFornec.Checked;
end;

procedure Tf_contasp.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     If tbCorrecoes.State In [dsInsert, dsEdit] Then Begin
        MessageDlg('A Correção da Conta à Pagar está em edição!', mtInformation,[mbOk], 0);
        CanClose := False;
        Exit;
     End;

     If tbContasPag.State In [dsInsert, dsEdit] Then Begin
        MessageDlg('A Conta à Pagar está em edição!', mtInformation, [mbOk], 0);
        CanClose := False;
        Exit;
     End;

     If vAlterou Then Begin
        tbContasPag.Edit;
        acCalculaSaldo.Execute;
        tbContasPag.Post;
     End;
     vAlterou := False;
end;

procedure Tf_contasp.cbRelPlanoClick(Sender: TObject);
begin
     dbLcbRelPlano.Enabled := Not cbRelPlano.Checked;
     cbOrdenaPlano.Enabled := cbRelPlano.Checked;
end;

procedure Tf_contasp.dbEdtCodKeyPress(Sender: TObject; var Key: Char);
begin
     If Key In [#32,'"', ''''] Then Key := #0;
end;

end.
