{$A+,B-,C+,D+,E-,F-,G+,H+,I+,J+,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00020000}
{$IMAGEBASE $00040000}
{$APPTYPE GUI}
{$DEFINE Testando}
{$DEFINE TestTicket_1773}
unit u_pronumerarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, Db, DBTables, Psock, NMsmtp, DBCtrls, Buttons,
  Grids, DBGrids, MailMS2000, IdAntiFreezeBase, IdAntiFreeze, IdMessage,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP;

Const
  InputBoxMessage = WM_USER + 200;

Type
  TOperacao = (tnil, tInsert, tUpdate);

type
  TF_proNumerarios = class(TForm)
    pnlTop: TPanel;
    Label26: TLabel;
    ME_nossaref: TMaskEdit;
    qrProcessos: TQuery;
    dsQProcessos: TDataSource;
    l_cliente: TLabel;
    tbNumerarios: TTable;
    dsNumerarios: TDataSource;
    dsUsuarios: TDataSource;
    pnlPrincipal: TPanel;
    Label226: TLabel;
    Label227: TLabel;
    Label228: TLabel;
    Label229: TLabel;
    Label230: TLabel;
    dbGrdNumerarios: TDBGrid;
    dbEdtValPrev: TDBEdit;
    dbEdtDtPrev: TDBEdit;
    dbLcbNumerario: TDBLookupComboBox;
    dbEdtDtReal: TDBEdit;
    dbEdtValReal: TDBEdit;
    email_num: TNMSMTP;
    pnlBaixo: TPanel;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    qrNumerarios: TQuery;
    dsQNumerarios: TDataSource;
    qrTipoNum: TQuery;
    dsTipoNum: TDataSource;
    qrUsuarios: TQuery;
    qrTipoNum_Ing: TQuery;
    dsContatosImp: TDataSource;
    qrCCDeposito: TQuery;
    qrConhecimento: TQuery;
    pnlSolicitacao: TPanel;
    Panel32: TPanel;
    Label257: TLabel;
    Label258: TLabel;
    Panel33: TPanel;
    dbEdtSolicitante: TDBEdit;
    dbEdtEmailDE: TDBEdit;
    btnEmail: TBitBtn;
    btnFax: TBitBtn;
    Panel34: TPanel;
    Label259: TLabel;
    Label260: TLabel;
    Label256: TLabel;
    Label234: TLabel;
    Panel35: TPanel;
    dbEdtContato: TDBEdit;
    dbEdtEmailPARA: TDBEdit;
    dbEdtCopia: TDBEdit;
    dbEdtFax: TDBEdit;
    Panel1: TPanel;
    pnlCalcTotal: TPanel;
    Label231: TLabel;
    me_vprevisao: TMaskEdit;
    Label232: TLabel;
    me_vreal: TMaskEdit;
    btnCalc: TBitBtn;
    pnlEmail: TPanel;
    Memo_email: TMemo;
    btnEnviarEmail: TBitBtn;
    btnCancelarEmail: TBitBtn;
    Panel2: TPanel;
    tbContatosImp: TTable;
    btnAlterarContato: TBitBtn;
    btnSalvarContato: TBitBtn;
    btnCancelarContato: TBitBtn;
    dbcb_contabilizado: TDBCheckBox;
    t_paracon: TTable;
    ds_tparacon: TDataSource;
    Q_inccred: TQuery;
    q_exccred: TQuery;
    SMTP: TIdSMTP;
    mailmessage: TIdMessage;
    IdAntiFreeze1: TIdAntiFreeze;
    q_temparasol: TQuery;
    q_paramsolnum: TQuery;
    q_temparasolImportador: TStringField;
    q_temparasolImportador2: TStringField;
    q_temparasolimpnome: TStringField;
    q_paramsolnumImportador: TStringField;
    q_paramsolnumNumerario: TStringField;
    q_paramsolnumImportador2: TStringField;
    q_paramsolnumimpnome: TStringField;
    qrTipoNumCodigo: TStringField;
    qrTipoNumDescricao: TStringField;
    qrTipoNumPlano_contas: TStringField;
    qrTipoNum_IngCodigo: TStringField;
    qrTipoNum_IngDescricao: TStringField;
    qrTipoNum_IngPlano_contas: TStringField;
    qrUsuariosEmpresa: TStringField;
    qrUsuariosFilial: TStringField;
    qrUsuariosUsuario: TStringField;
    qrUsuariosSenha: TStringField;
    qrUsuariosNome_Completo: TStringField;
    qrUsuariosDiretorio_SISCOMEX: TStringField;
    qrUsuariosNivel: TStringField;
    qrUsuariosNivel_ccorrente: TStringField;
    qrUsuariosData_validade_senha: TDateTimeField;
    qrUsuariosEmail: TStringField;
    qrUsuariosEmail_Sol_Num: TSmallintField;
    qrUsuariosSupervisor: TStringField;
    tbContatosImpEmpresa: TStringField;
    tbContatosImpFilial: TStringField;
    tbContatosImpImportador: TStringField;
    tbContatosImpEmail_Numerario: TStringField;
    tbContatosImpFax_Numerario: TStringField;
    tbContatosImpContato_Numerario: TStringField;
    tbContatosImpCC_email: TStringField;
    t_paraconEmpresa: TStringField;
    t_paraconFilial: TStringField;
    t_paraconImportador: TStringField;
    t_paraconNumerario: TStringField;
    t_paraconCredito: TStringField;
    qrConhecimentoProcesso: TStringField;
    qrConhecimentoNumerodoccarga: TStringField;
    qrConhecimentoNumeromaster: TStringField;
    qrConhecimentodescricao: TStringField;
    qrConhecimentoEmbarcacao: TStringField;
    qrCCDepositoCodigo: TAutoIncField;
    qrCCDepositoBanco: TStringField;
    qrCCDepositoAgencia: TStringField;
    qrCCDepositoConta_Corrente: TStringField;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    qrProcessosEmpresa: TStringField;
    qrProcessosFilial: TStringField;
    qrProcessosqcli: TStringField;
    qrProcessosProcesso: TStringField;
    qrProcessosData: TDateTimeField;
    qrProcessosrefcli: TStringField;
    qrProcessosCliente: TStringField;
    qrProcessoscodigo: TStringField;
    qrProcessostipodecla: TStringField;
    qrProcessostipopro: TStringField;
    qrProcessoscontrato: TStringField;
    qrProcessosqcontrato: TStringField;
    qrProcessoslocal: TStringField;
    qrProcessosqlocal: TStringField;
    qrProcessosConta_Corrente_Deposito: TIntegerField;
    qrProcessosqcnpj: TStringField;
    qrProcessosFechado: TSmallintField;
    qrProcessosATIVO: TSmallintField;
    qrProcessosImportador: TStringField;
    qrProcessosResponsavel_empresa: TStringField;
    qrProcessosResponsavel_empresac: TStringField;
    qrNumerariosEmpresa: TStringField;
    qrNumerariosFilial: TStringField;
    qrNumerariosProcesso: TStringField;
    qrNumerariosREG: TAutoIncField;
    qrNumerariosNumerario: TStringField;
    qrNumerariosUsuario_Previsao: TStringField;
    qrNumerariosData_Previsao: TDateTimeField;
    qrNumerariosValor_Previsao: TFloatField;
    qrNumerariosPrevisao_solicitada: TStringField;
    qrNumerariosOk_Previsao_financeiro: TStringField;
    qrNumerariosUsuario_Financeiro: TStringField;
    qrNumerariosData_Registro: TDateTimeField;
    qrNumerariosValor_Registrado: TFloatField;
    qrNumerariosValor_Contabilizado: TFloatField;
    qrNumerariosContabilizado: TStringField;
    qrNumerariosUsuario_Contablizado: TStringField;
    qrNumerariosConta_Corrente: TIntegerField;
    qrNumerariosCodigo_mov: TIntegerField;
    qrNumerariosImpdemfim: TStringField;
    qrNumerariosDetalhe: TStringField;
    qrNumerariosDocsis: TStringField;
    qrNumerariosFatura_mov: TStringField;
    qrNumerariosDescricao: TStringField;
    qrNumerariosdeb_cli: TStringField;
    tbNumerariosEmpresa: TStringField;
    tbNumerariosFilial: TStringField;
    tbNumerariosProcesso: TStringField;
    tbNumerariosREG: TAutoIncField;
    tbNumerariosNumerario: TStringField;
    tbNumerariosUsuario_Previsao: TStringField;
    tbNumerariosData_Previsao: TDateTimeField;
    tbNumerariosValor_Previsao: TFloatField;
    tbNumerariosPrevisao_solicitada: TStringField;
    tbNumerariosOk_Previsao_financeiro: TStringField;
    tbNumerariosUsuario_Financeiro: TStringField;
    tbNumerariosData_Registro: TDateTimeField;
    tbNumerariosValor_Registrado: TFloatField;
    tbNumerariosValor_Contabilizado: TFloatField;
    tbNumerariosContabilizado: TStringField;
    tbNumerariosUsuario_Contablizado: TStringField;
    tbNumerariosConta_Corrente: TIntegerField;
    tbNumerariosCodigo_mov: TIntegerField;
    tbNumerariosImpdemfim: TStringField;
    tbNumerariosDetalhe: TStringField;
    tbNumerariosDocsis: TStringField;
    tbNumerariosFatura_mov: TStringField;
    tbNumerariosFornecedor: TStringField;
    tbNumerariosCodigo: TStringField;
    tbNumerariosContabilizado_cliente: TIntegerField;
    tbNumerariosREG_creditos: TIntegerField;
    tbNumerariosProcesso_FundoFIXO: TStringField;
    qrySupervisores: TQuery;
    qryUsuario: TQuery;
    q_Processo_Tem_DI: TQuery;
    q_Informou_FollowDI_Enviada: TQuery;
    q_Informou_FollowDI_EnviadaSequencial: TAutoIncField;
    q_Processo_Tem_DINR_DECLARACAO_IMP: TStringField;
    qryEmail_Auto: TQuery;
    qryAutorizacaoSolicitacao: TQuery;
    qryGravaEnvioSolicitacao: TQuery;
    qryUpdateSolicitacao: TQuery;
    qrySelectAnexo: TQuery;
    qrProcessosTipo: TStringField;
    qrFaturas: TQuery;
    qrFaturasEmpresa: TStringField;
    qrFaturasFilial: TStringField;
    qrFaturasProcesso: TStringField;
    qrFaturasCodigo: TStringField;
    qrFaturasExportador: TStringField;
    qrFaturasIncoterm: TStringField;
    qrFaturasVinculacao: TStringField;
    qrFaturasCondicao: TStringField;
    qrFaturasValor_Total: TFloatField;
    qrFaturasPeso_Total: TFloatField;
    qrFaturasPeso_Total_Acertado: TFloatField;
    qrFaturasAcrescimos_Reducoes: TIntegerField;
    qrFaturasMoeda: TStringField;
    qrFaturasCobertura_Cambial: TStringField;
    qrFaturasMotivo_Sem_Cobertura: TStringField;
    qrFaturasModalidade_de_Pagamento: TStringField;
    qrFaturasInstituicao_Financiadora: TStringField;
    qrFaturasTipo_Parcela: TStringField;
    qrFaturasNumero_de_parcelas: TStringField;
    qrFaturasPeriodicidade: TStringField;
    qrFaturasValor_das_Parcelas: TFloatField;
    qrFaturasIndicador_Periodicidade: TStringField;
    qrFaturasTaxa_de_Juros: TIntegerField;
    qrFaturasCodigo_Taxa_de_Juros: TStringField;
    qrFaturasValor_Taxa_de_Juros: TFloatField;
    qrFaturasROF_BACEN: TStringField;
    qrFaturasPercentual_ROF: TFloatField;
    qrFaturasDT_PREV_PAG_CAMBIO: TDateTimeField;
    qrFaturasDT_PAG_CAMBIO: TDateTimeField;
    qrFaturasSTATUS_CAMBIO: TStringField;
    qrFaturasCONTRATO_CAMBIO: TStringField;
    qrFaturasSALDO_CAMBIO: TFloatField;
    qrFaturasDtEmissao: TDateTimeField;
    qrFaturasPeso_Libra: TIntegerField;
    qrFaturasContrato: TStringField;
    qrFaturasLocal_Inventario: TStringField;
    qrFaturasFK_Plataforma: TIntegerField;
    qryInsereRegistroSolicitacao: TQuery;
    qryNumerarioObrigatorio: TQuery;
    qryNumerarioObrigatorioFK_Tipo_Processo: TStringField;
    qryNumerarioObrigatorioFK_Tipo_Declaracao: TStringField;
    qryNumerarioObrigatorioFK_Tipo_Numerario: TStringField;
    qrProcessosTipo_Declaracao: TStringField;
    qrConhecimentoDT_ETA: TDateTimeField;
    procedure FormActivate(Sender: TObject);
    procedure ME_nossarefChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnEmailClick(Sender: TObject);
    procedure btnFaxClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbEdtFaxChange(Sender: TObject);
    procedure btnEnviarEmailClick(Sender: TObject);
    procedure btnCancelarEmailClick(Sender: TObject);
    procedure tbNumerariosAfterPost(DataSet: TDataSet);
    procedure tbNumerariosBeforeDelete(DataSet: TDataSet);
    procedure dbEdtDtPrevChange(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnCalcClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnSairClick(Sender: TObject);
    procedure btnAlterarContatoClick(Sender: TObject);
    procedure btnSalvarContatoClick(Sender: TObject);
    procedure btnCancelarContatoClick(Sender: TObject);
    procedure email_numAuthenticationFailed(var Handled: Boolean);
    procedure qrNumerariosAfterScroll(DataSet: TDataSet);
    procedure qrNumerariosAfterOpen(DataSet: TDataSet);
    procedure tbNumerariosAfterEdit(DataSet: TDataSet);
    procedure dbGrdNumerariosDblClick(Sender: TObject);
    procedure tbNumerariosAfterScroll(DataSet: TDataSet);
    procedure dbLcbNumerarioExit(Sender: TObject);
    procedure dbcb_contabilizadoExit(Sender: TObject);
    procedure dbGrdNumerariosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    fObrigatorio: Boolean;
  private
    { Private declarations }
    Operacao   : TOperacao;
    Supervisor : String;
    valTotal   : Real;    
    valTotalG  : Real;
    
    procedure InputBoxSetPasswordChar(var Msg: TMessage); message InputBoxMessage;
    Procedure InsereNumerarios;
    function Autorizado( MS : String ) : Boolean;
    procedure InsereRegistroSolicitacaoNumerario;
    property Obrigatorio : Boolean read fObrigatorio write fObrigatorio;
    function ValoresOK(): Boolean;
  public
    { Public declarations }
  end;

var
  F_proNumerarios: TF_proNumerarios;
  vEmp, vFil, vPro, vfatura: String;

implementation

uses U_MSCOMEX, u_solnum, u_solnum_ing, uSolicitacaoNumerario;

{$R *.DFM}


procedure TF_proNumerarios.InputBoxSetPasswordChar(var Msg: TMessage);
var
  hInputForm, hEdit: HWND;
begin
  hInputForm := Screen.Forms[0].Handle;

  if (hInputForm <> 0)
   then begin
     hEdit := FindWindowEx(hInputForm, 0, 'TEdit', nil);
     SendMessage(hEdit, EM_SETPASSWORDCHAR, Ord('*'), 0);
   end;
end;

procedure TF_proNumerarios.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;

  with qrConhecimento do
   begin
     Close;
     Params[0].AsString := qrProcessosProcesso.AsString;
     Open;
   end;

  with qrCCDeposito do
   begin
     Close;
     Params[0].AsInteger := qrProcessosConta_Corrente_Deposito.AsInteger;
     Open;
   end;

  with qrTipoNum do
   begin
     Close;
     Open;
   end;

  with qrTipoNum_Ing do
   begin
     Close;
     Open;
   end;
end;

procedure TF_proNumerarios.ME_nossarefChange(Sender: TObject);
var
  cnpj: String;
begin
  if Length(F_MSCOMEX.LRTrim(me_nossaref.Text)) <> 8
   then Exit;  
  // eduardo.souza 01/02/2012 - Para processos fechados - Exibi mensagem e fecha a tela
  if (IsClosedProcess( me_nossaref.Text, F_proNumerarios ))
   then Abort;
  //--
  //Obs: Que porra � essa, aqui!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  //If qrProcessos.Locate('Processo', me_nossaref.Text, [loCaseInsensitive]) Then Begin
  // eduardo.souza 28/06/2011
  qrProcessos.ParamByName( 'Processo' ).Value := me_nossaref.Text;
  qrProcessos.Close;
  qrProcessos.Open;

  if ( Not qrProcessos.IsEmpty )
   then begin
     //Fim eduardo.souza 02/06/2011

     vEmp := qrProcessosEmpresa.AsString;
     vFil := qrProcessosFilial.AsString;
     vPro := qrProcessosProcesso.AsString;

    // Incio Eduardo Souza - 26/03/2012 - Ticket : 1773
    qryNumerarioObrigatorio.Close;
    qryNumerarioObrigatorio.ParamByName( 'tpProcesso' ).Value := qrProcessosTipo.AsString;

    if ( trim(qrProcessosTipo_Declaracao.AsString) = '')
     then qryNumerarioObrigatorio.ParamByName( 'tpDeclaracao' ).Value := ''
     else qryNumerarioObrigatorio.ParamByName( 'tpDeclaracao' ).Value := qrProcessosTipo_Declaracao.AsString;

    qryNumerarioObrigatorio.Open;
    // Fim Eduardo Souza - 26/03/2012 - Ticket : 1773

     if t_paracon.State = dsInactive
      then t_paracon.Open;

     if tbNumerarios.State = dsInactive
      then tbNumerarios.Open;

     if qrTipoNum.State = dsInactive
      then qrTipoNum.Open;

     if qrTipoNum_Ing.State = dsInactive
      then qrTipoNum_Ing.Open;

     with qrNumerarios do
      begin
        Close;
        Params[0].AsString := vPro;
        Open;
      end;

     if tbContatosImp.State = dsInactive
      then tbContatosImp.Open;

     with qrConhecimento do
      begin
        Close;
        Params[0].AsString := vPro;
        Open;
      end;

     with qrCCDeposito do
      begin
        Close;
        Params[0].AsInteger := qrProcessosConta_Corrente_Deposito.AsInteger;
        Open;
      end;

     if F_MSCOMEX.AcessaPasta(me_nossaref.Text, qrProcessosTipo.AsString, F_proNumerarios)
      then begin
        pnlPrincipal.Visible := True;
        pnlPrincipal.Enabled := True;

        pnlBaixo.Visible := True;
        pnlBaixo.Enabled := True;
      end;

     v_AlteraPRO := 1;

     if (not qrprocessosAtivo.asinteger = 1)
      then begin
        if (v_Edita_cliente_inativo = 0)
         then begin
           Showmessage(v_usuario+', este Cliente est� Inativo. Somente usu�rios habilitados para editar clientes inativos poder�o alterar as informa��es do processo.');
           v_AlteraPRO := 0;
         end;
      end;

     if (qrprocessosFechado.asinteger = 1)
      then begin
        if (v_Edita_Processo_Fechado = 0)
         then begin
           Showmessage(v_usuario+', este Processo est� Fechado. Somente usu�rios habilitados em editar processos fechados poder�o alterar as informa��es do processo.');
           v_AlteraPRO := 1;
         end
         else v_AlteraPRO := 0;
      end;

     //mm 08/11/2007
     Showmessage(v_usuario+',Aten��o!! Numer�rios contabilizados pelo Cliente. Ap�s a informa��o de Numer�rio Contabilizado pelo Cliente, N�O ser� poss�vel alterar. Somente o Financeiro poder� fazer esta altera��o pelo Faturamento!');

     //mm 24/07/2006 - usuariosclientes
     if f_mscomex.q_usucli.recordcount > 0
      then begin
        if f_mscomex.q_usucli.locate('Importador',qrProcessosimportador.asstring,[])
         then begin
           v_autorizadocli := 1;
         end
         else begin
           v_autorizadocli := 0;
         end;
      end
      else v_autorizadocli := 1;

     F_MSCOMEX.atualizacpastas(ME_nossaref.text);
     if (v_autorizadocli = 1)
      then begin
        cnpj := qrprocessosqcnpj.asstring;
        cnpj := Copy(cnpj,1,2)+'.'+Copy(cnpj,3,3)+'.'+Copy(cnpj,6,3)+'/'+Copy(cnpj,9,4)+'-'+Copy(cnpj,13,2);

        l_cliente.Caption := qrProcessosCliente.AsString+' - CNPJ: '+cnpj;
        pnlPrincipal.Visible   := True;
        pnlSolicitacao.Visible := True;
        pnlCalcTotal.Visible   := True;
        pnlBaixo.Visible       := True;

        dbGrdNumerarios.SetFocus;
      end
      else begin
        l_cliente.Caption      := '';
        pnlPrincipal.Visible   := false;
        pnlSolicitacao.Visible := false;
        pnlCalcTotal.Visible   := false;
        pnlBaixo.Visible       := false;
        Showmessage(v_usuario+', este Processo pertence a um Cliente que seu acesso n�o est� permitido!');
      end;
   end
   else begin
     MessageDlg('Processo n�o encontrado!', mtInformation,[mbOk], 0);
     l_cliente.Caption := '';
     me_nossaref.Clear;
     pnlPrincipal.Visible   := False;
     pnlSolicitacao.Visible := False;
     pnlCalcTotal.Visible   := False;
     pnlBaixo.Visible       := False;
     me_nossaref.SetFocus;
   end;
end;

procedure TF_proNumerarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  f_mscomex.Numerrios1.Enabled := True;
  Action := caFree;
  F_proNumerarios := Nil;
end;

procedure TF_proNumerarios.btnEmailClick(Sender: TObject);
var
  soNaoSoli: integer;
  TEM_DD: Boolean;
  valTotalDD: Real;
  valTotalAD: Real;
  reg: String;

  valTotalDDG: Real;
  valTotalADG: Real;

  qembarcacao:string;
  qlinkdocs:string;
  i:integer;
  emPortugues: Integer;

  TEM_PARASOL: Boolean;
  vetSOL : array of array of string;
  L, C : Integer;

  // eduardo.souza 29-06-2011
  Senha,
  Password : String;
  Click : Boolean;
  //---
begin
  // eduardo.souza 18/11/2011 - Odilma

  if (( qrProcessostipo.AsString = '11')Or
  ( qrProcessostipo.AsString = '12')) Then Begin
  qrySelectAnexo.ParamByName('Processo').Value := qrProcessosProcesso.AsString;
  qrySelectAnexo.Open;
  if( qrySelectAnexo.IsEmpty ) Then Begin
    Application.MessageBox( 'Este processo n�o possui o anexo da AN�LISE DO SISCOMEX. Para prosseguir voc� dever� anexar a imagem da ANALISE DO SISCOMEX na tela de DI/ DSI.', 'Aviso', MB_OK+MB_ICONWARNING );
    Abort;
  End;
  qrySelectAnexo.Close;
  End;
  //---

  

  // Incio Eduardo Souza - 26/03/2012 - Ticket : 1773
  {$IFDEF TestTicket_1773}
  If Not( ValoresOK ) Then Begin
    Application.MessageBox('Email n�o pode ser enviado, pois existe numer�rio com valor previsto ZERADO!', 'Aviso', MB_OK+MB_ICONWARNING );
    Abort;
  End;
  {$ENDIF}
  // Fim Eduardo Souza - 26/03/2012 - Ticket : 1773

  {$IFDEF Testando}
    If ( Not Autorizado(qrProcessosProcesso.AsString) ) Then
      Exit;
  {$ELSE}
    // eduardo.souza 29-06-2011
    Supervisor := '';
    Password   := '';

    qrySupervisores.Params[0].Value :=  v_usuario;
    qrySupervisores.Close;
    qrySupervisores.Open;

    If ( qrySupervisores.IsEmpty ) Then Begin
      qryUsuario.ParamByName( 'Usuario' ).Value := v_usuario;
      qryUsuario.Close;
      qryUsuario.Open;
      If ( Not qryUsuario.IsEmpty ) Then Begin
        Supervisor := qryUsuario.fieldByName( 'Nome1' ).AsString;
        Password := qryUsuario.fieldByName( 'Senha1' ).AsString;
      End
      Else Begin
        Application.MessageBox( 'O usu�rio n�o possui supervisor no cadastro.', 'Aviso', MB_OK+MB_ICONWARNING );
        Abort;
      End;
    End
    Else Begin
      qryUsuario.ParamByName( 'Usuario' ).Value := v_usuario;
      qryUsuario.Close;
      qryUsuario.Open;
      If ( Not qryUsuario.IsEmpty ) Then Begin
        Supervisor := qryUsuario.fieldByName( 'Nome2' ).AsString;
        Password := qryUsuario.fieldByName( 'Senha2' ).AsString;
      End;
    End;

    Senha := '';
    Repeat
      PostMessage(Handle, InputBoxMessage, 0, 0);
      Click := InputQuery( 'Autoriza��o para envio', 'Entre com a senha do supervisor: '+ Supervisor, Senha );
      If ( Click ) And ( Senha <> Password ) Then
        Application.MessageBox( 'Senha inv�lida!', 'Erro', MB_OK + MB_ICONERROR );
    Until ( Senha = Password ) Or ( Not Click );
    If ( Not Click ) Then Begin
      Application.MessageBox( 'O envio de email foi cancelado.', 'Aviso', MB_OK + MB_ICONWARNING );
      Abort;
    End;
    // fim eduardo.souza
  {$ENDIF}
  //----
  emPortugues := 0;
  soNaoSoli   := 0;
  reg := qrNumerariosREG.AsString;

  qlinkdocs := '<A href="http://www.mslogistica.com.br/redir.asp?func=MS2000WEB_VERDOCS&op='+qrProcessosProcesso.AsString+'" title="Clique aqui para ver os Documentos Digitalizados.&#013;Click view Digital Files"> >>>*** Documentos Digitalizados / Digital Files ***<<<</A>';

  if MessageDlg('Gera Email em Ingl�s?', mtConfirmation,[mbYes, mbNo], 0) = mryes
   then emPortugues := 1;

  if MessageDlg('Gera Email apenas dos N�O SOLICITADOS?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
   then soNaoSoli := 1;

  with email_num do
   begin
     Host := F_MSCOMEX.t_parametrosHost.AsString;

     with PostMessage do
      begin
        FromAddress := qrUsuariosEmail.AsString;
        FromName    := qrUsuariosNome_Completo.AsString;

        ToAddress.Clear;
        ToCarbonCopy.Clear;

        ToCarbonCopy.Add(stringreplace(tbContatosImpCC_Email.AsString,';',',',[]));
        ToCarbonCopy.Add(qrUsuariosEmail.AsString);
      end;
   end;

  Mailmessage.BccList.Clear;

  Mailmessage.Sender.Address := qrUsuariosEmail.AsString;
  Mailmessage.Sender.Name    := qrUsuariosNome_Completo.AsString;
  Mailmessage.Sender.Text    := qrUsuariosEmail.AsString;

  Mailmessage.From.Address := qrUsuariosEmail.AsString;
  Mailmessage.From.Name    := qrUsuariosNome_Completo.AsString;
  Mailmessage.From.Text    := qrUsuariosEmail.AsString;

  i := 0;
  Mailmessage.ccList.Clear;
  Mailmessage.ccList.Add;
  Mailmessage.ccList[i].Address := qrUsuariosEmail.AsString;
  Mailmessage.ccList[i].Name    := qrUsuariosNome_Completo.AsString;
  Mailmessage.ccList[i].Text    := qrUsuariosEmail.AsString;
  Inc(i);

  qrUsuarios.First;

  while not qrUsuarios.Eof do
   begin
     if (qrUsuariosEmail_sol_num.AsInteger = 1)
      then begin
        email_num.PostMessage.ToCarbonCopy.Add(qrUsuariosEmail.AsString);
        Mailmessage.ccList.Add;
        Mailmessage.ccList[i].Address := qrUsuariosEmail.AsString;
        Mailmessage.ccList[i].Name    := qrUsuariosNome_Completo.AsString;
        Mailmessage.ccList[i].Text    := qrUsuariosEmail.AsString;
        Inc(i);
      end;

     qrUsuarios.Next;
   end;
     
  qrUsuarios.Locate('Usuario',v_usuario,[]);

  email_num.PostMessage.Body.Clear;
  memo_email.Clear;

  memo_email.Lines.Add('                                                                                ');
  memo_email.Lines.Add('________________________________________________________________________________');
  memo_email.Lines.Add('ATEN��O: Ap�s anexar os documentos necess�rios encaminhar:                      ');
  memo_email.Lines.Add('--->Para: '+tbContatosImpEmail_Numerario.AsString);
  memo_email.Lines.Add('--->Com C�pia Para: '+tbContatosImpCC_Email.AsString);
  memo_email.Lines.Add('________________________________________________________________________________');
  memo_email.Lines.Add('                                                                                ');
  memo_email.Lines.Add('                                                                                ');

  q_temparasol.Close;
  q_temparasol.params[0].AsString  := qrProcessosimportador.asstring;
  q_temparasol.open;

  if q_temparasol.RecordCount > 0
   then begin
     TEM_PARASOL := true;
     SetLength(vetSOL, q_temparasol.RecordCount+1);

     for L := Low(vetSOL) to High(vetSOL) do SetLength(vetSOL[L], 3);

     vetSOL[0,0] := '';
     vetSOL[0,2] := qrProcessosCliente.AsString;
     L := 1;

     while not q_temparasol.Eof do
      begin
        vetSOL[L,0] := q_temparasolimportador2.asstring;
        L := L+1;
        q_temparasol.next;
      end;

     //verificar numerarios e gravar vetor
     q_paramsolnum.Close;
     q_paramsolnum.params[0].AsString := qrProcessosimportador.asstring;
     q_paramsolnum.open;

     qrNumerarios.First;

     while not qrNumerarios.Eof do
      begin
        if q_paramsolnum.Locate('Numerario',qrNumerariosNumerario.AsString,[])
         then begin
           for L := Low(vetSOL) to High(vetSOL) do
            begin
              if vetSOL[L,0] = q_paramsolnumimportador2.asstring
               then begin
                 vetSOL[L,1] := vetSOL[L,1]+'|'+ qrNumerariosNumerario.AsString+'|';
                 vetSOL[L,2] := q_paramsolnumimpnome.asstring;
               end;
            end;
         end
         else begin
           vetSOL[0,1] := vetSOL[0,1]+'|'+ qrNumerariosNumerario.AsString+'|';
         end;

        qrNumerarios.Next;
      end;
   end
   else begin
     ///sem parametros e sem vetor
     TEM_PARASOL := FALSE;
     SetLength(vetSOL, 1);
     SetLength(vetSOL[0], 3);
     vetSOL[0,0] := ' ';
     vetSOL[0,1] := ' ';
     vetSOL[0,2] := ' ';
   end;

  //inserir aqui o while do vetor parei aqui
  valTotalDDG := 0;
  valTotalADG := 0;
  valTotalG   := 0;

  for L := Low(vetSOL) to High(vetSOL) do
   begin
     if emPortugues = 0
      then begin
        email_num.PostMessage.Subject := 'MS2000PLUS - Solicita��o de Numer�rios - '+qrProcessosCliente.AsString+' - Processo: '+qrProcessosProcesso.AsString;

        if (L=0)
         then begin
           //     123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/
         //Leonardo.alabarce  12/01/2012 ticket 1465
         qrFaturas.ParamByName('qproc').value := ME_nossaref.text;
         qrFaturas.open;
         qrFaturas.First;
          while Not qrFaturas.eof do begin
            vfatura := vfatura + qrFaturasCodigo.AsString+ ',';
            qrFaturas.next;
          end;
          qrFaturas.Close;
         //Fim----------------------------------------
           with memo_email.Lines do
            begin
              Add('MS2000PLUS - SISTEMA GERENCIAL ADUANEIRO                                        ');
              Add('________________________________________________________________________________');
              Add('                                                                                ');
              Add('                                                                                ');
              Add('Rio de Janeiro, ' + FormatDateTime('dddddd',Now) + '                            ');
              Add('                                                                                ');
              Add('                                                                                ');
              Add('Prezado(s) Senhor(es),                                                          ');
              Add('                                                                                ');
              Add('                                                                                ');
              Add('Solicitamos numer�rios referentes ao processo: '+qrProcessosProcesso.AsString+', Ref.Cliente:'+ qrProcessosRefCli.AsString+', ');

            end;

           if v_filial='RJO'
            then qembarcacao := Trim(qrProcessosqlocal.AsString)
            else qembarcacao := Trim(qrConhecimentoEmbarcacao.AsString);

           if qembarcacao <> ''
            then begin
              memo_email.Lines.Add('embarca��o '+qembarcacao + ', conhecimento '+Trim(qrConhecimentoDescricao.AsString)+' - '+Trim(qrConhecimentoNumerodoccarga.AsString));

              if qrConhecimentoNumeromaster.AsString <> ''
               then memo_email.Lines.Add('Master: '+Trim(qrConhecimentoNumeromaster.AsString));
            end
            else begin
              memo_email.Lines.add('Conhecimento: '+Trim(qrConhecimentoDescricao.AsString)+' - '+Trim(qrConhecimentoNumerodoccarga.AsString));

              if qrConhecimentoNumeromaster.AsString <> ''
               then memo_email.Lines.Add('Master: '+Trim(qrConhecimentoNumeromaster.AsString));
            end;
            //colocar os codigo da fatura no email
            memo_email.Lines.Add('Faturas: ' + vfatura);

            if (Trim(qrConhecimentoDT_ETA.AsString) <> '')
             then memo_email.Lines.Add('Data ETA: ' + qrConhecimentoDT_ETA.AsString);

           if TEM_PARASOL
            then begin
              with memo_email.Lines do
               begin
                 Add('                                                                                ');
                 Add('________________________________________________________________________________');
                 Add(vetsol[L,2]);
                 Add('                                                                                ');
               end;
            end;

         end
         else begin
           with memo_email.Lines do
            begin
              Add('                                                                                ');
              Add('________________________________________________________________________________');
              Add(vetsol[L,2]);
              Add('                                                                                ');
            end;
         end;

        qrNumerarios.First;
        TEM_DD := false;

        while not qrNumerarios.Eof do
         begin
           if (not TEM_PARASOL) or (pos(qrNumerariosnumerario.asstring,vetsol[L,1])>0)
            then begin
              if qrNumerariosdeb_cli.asstring='SIM'
               then begin
                 if ( soNaoSoli = 1 ) and (qrNumerariosPrevisao_Solicitada.AsString = 'N�O')
                  then begin
                    TEM_DD := true;
                    qrNumerarios.last;
                  end
                  else begin
                    if not soNaoSoli = 1
                     then begin
                       TEM_DD := true;
                       qrNumerarios.last;
                     end;
                  end;
               end;
            end;

           qrNumerarios.Next;
         end;

        if TEM_DD
         then begin
           with memo_email.Lines do
            begin
              Add('                                                                                ');
              Add('Especifica��o de Numer�rios - D�bitos Diretos_______ Valor Previsto             ');
              Add('                                                                                ');
            end;

           qrNumerarios.First;
           valTotalDD := 0;

           while not qrNumerarios.Eof do
            begin
              if (not TEM_PARASOL) or (pos(qrNumerariosnumerario.asstring,vetsol[L,1])>0)
               then begin
                 if qrNumerariosdeb_cli.asstring = 'SIM'
                  then begin
                    if ( soNaoSoli = 1 ) and (qrNumerariosPrevisao_Solicitada.AsString = 'N�O')
                     then begin
                       valTotalDD := valTotalDD + qrNumerariosValor_Previsao.AsFloat;
                       memo_email.Lines.Add(Copy(qrTipoNumDescricao.AsString+'____________________________________________________',1,52)+' '+FloatToStrF(qrNumerariosValor_Previsao.AsFloat,fffixed,10,2));
                     end
                     else begin
                       if not ( soNaoSoli = 1 )
                        then begin
                          valTotalDD := valTotalDD + qrNumerariosValor_Previsao.AsFloat;
                          memo_email.Lines.Add(Copy(qrTipoNumDescricao.AsString+'____________________________________________________',1,52)+' '+FloatToStrF(qrNumerariosValor_Previsao.AsFloat,fffixed,10,2));
                        end;
                     end;
                  end;
               end;

              QrNumerarios.Next;
            end;

           valTotalDDG := valTotalDDG+valTotalDD;
         end;

        with memo_email.Lines do
         begin
            Add('                                                                                ');
            Add('                                                                                ');
            Add('Especifica��o de Numer�rios - Adiantamentos MS______ Valor Previsto             ');
            ///      123456789/123456789/123456789/123456789/123456789/123
            ///      ____________________________________________________
            Add('                                                                                ');
         end;

        qrNumerarios.First;
        valTotalAD := 0;

        while not qrNumerarios.Eof do
         begin
           if (not TEM_PARASOL) or (pos(qrNumerariosnumerario.asstring,vetsol[L,1])>0)
            then begin
              if qrNumerariosdeb_cli.asstring <> 'SIM'
               then begin
                 if ( soNaoSoli = 1 ) and (qrNumerariosPrevisao_Solicitada.AsString = 'N�O')
                  then begin
                    valTotalAD := valTotalAD + qrNumerariosValor_Previsao.AsFloat;
                    memo_email.Lines.Add(Copy(qrTipoNumDescricao.AsString+'____________________________________________________',1,52)+' '+FloatToStrF(qrNumerariosValor_Previsao.AsFloat,fffixed,10,2));
                  end
                  else begin
                    if not ( soNaoSoli = 1 )
                     then begin
                       valTotalAD := valTotalAD + qrNumerariosValor_Previsao.AsFloat;
                       memo_email.Lines.Add(Copy(qrTipoNumDescricao.AsString+'____________________________________________________',1,52)+' '+FloatToStrF(qrNumerariosValor_Previsao.AsFloat,fffixed,10,2));
                     end;
                  end;
               end;
            end;

           qrNumerarios.Next;
         end;

        valtotalADG := valtotalADG+valtotalAD;
        valtotal    := (valtotalDD+valtotalAD);
        valtotalG   := valtotalG+valtotal;

        with memo_email.Lines do
         begin
           Add('                                                                                ');

           if valtotalDD > 0
            then begin
              Add(Copy('Total D�bitos Diretos____________________________________',1,52)+' '+FloatToStrF(valTotalDD,fffixed,10,2));
              Add('                                                                                ');
            end;

           if valtotalAD > 0
            then begin
              Add(Copy('Total Adiantamentos MS___________________________________',1,52)+' '+FloatToStrF(valTotalAD,fffixed,10,2));
              Add('                                                                                ');
            end;

           Add(Copy('Total Geral______________________________________________',1,52)+' '+FloatToStrF(valTotal,fffixed,10,2));
         end;

        memo_email.Lines.Add('                                                                                ');
        memo_email.Lines.Add(qlinkdocs);
        memo_email.Lines.Add('                                                                                ');
      end
      else begin //em ingl�s
        if (L = 0)
         then begin
           email_num.PostMessage.Subject := 'MS2000PLUS - Request of Funds - '+qrProcessosCliente.AsString+' - Process: '+qrProcessosProcesso.AsString;
         //Leonardo.alabarce  12/01/2012 ticket 1465
         qrFaturas.ParamByName('qproc').value := ME_nossaref.text;
         qrFaturas.open;
         qrFaturas.First;
          while Not qrFaturas.eof do begin
            vfatura := vfatura + qrFaturasCodigo.AsString+ ',';
            qrFaturas.next;
          end;
          qrFaturas.Close;
         //Fim----------------------------------------
           //     123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/
           with memo_email.Lines do
            begin
              Add('MS2000PLUS - IMPORT MANAGEMENT SYSTEM                                           ');
              Add('________________________________________________________________________________');
              Add('                                                                                ');
              Add('                                                                                ');
              Add('Rio de Janeiro, ' + DateToStr(Date) + '                                         ');
              Add('                                                                                ');
              Add('                                                                                ');
              Add('Dear Sirs,                                                                      ');
              Add('                                                                                ');
              Add('                                                                                ');
              Add('We hereby ask for funds for process: '+qrProcessosProcesso.AsString+', Client Ref.: '+qrProcessosRefCli.AsString+', ');
            end;

           if v_filial = 'RJO'
            then qembarcacao := Trim(qrProcessosqlocal.AsString)
            else qembarcacao := Trim(qrConhecimentoEmbarcacao.AsString);

           if qembarcacao <> ''
            then begin
              memo_email.Lines.Add('vessel '+qembarcacao + ', lading: '+Trim(qrConhecimentoDescricao.AsString)+' - '+Trim(qrConhecimentoNumerodoccarga.AsString));

              if qrConhecimentoNumeromaster.AsString <> ''
               then memo_email.Lines.Add('Master: '+Trim(qrConhecimentoNumeromaster.AsString));
            end
            else begin
              memo_email.Lines.Add('Lading: '+Trim(qrConhecimentoDescricao.AsString)+' - '+Trim(qrConhecimentoNumerodoccarga.AsString));

              if qrConhecimentoNumeromaster.AsString <> ''
               then memo_email.Lines.Add('Master: '+Trim(qrConhecimentoNumeromaster.AsString));
            end;
            
            memo_email.Lines.Add('Faturas: ' + vfatura);

            if (Trim(qrConhecimentoDT_ETA.AsString) <> '')
             then memo_email.Lines.Add('Date ETA: ' + qrConhecimentoDT_ETA.AsString);            

           if TEM_PARASOL
            then begin
              with memo_email.Lines do
               begin
                 Add('                                                                                ');
                 Add('________________________________________________________________________________');
                 Add(vetsol[L,2]);
                 Add('                                                                                ');
               end;
            end;
         end
         else begin
           with memo_email.Lines do
            begin
              Add('                                                                                ');
              Add('________________________________________________________________________________');
              Add(vetsol[L,2]);
              Add('                                                                                ');
            end;
         end;

        qrNumerarios.First;
        TEM_DD := false;

        while not qrNumerarios.Eof do
         begin
           if (not TEM_PARASOL) or (pos(qrNumerariosnumerario.asstring,vetsol[L,1])>0)
            then begin
              if qrNumerariosdeb_cli.asstring='SIM'
               then begin
                 if ( soNaoSoli = 1 ) and (qrNumerariosPrevisao_Solicitada.AsString = 'N�O')
                  then begin
                    TEM_DD := true;
                    qrNumerarios.last;
                  end
                  else begin
                    if not ( soNaoSoli = 1 )
                     then begin
                       TEM_DD := true;
                       qrNumerarios.last;
                     end;
                  end;
               end;
            end;

           qrNumerarios.Next;
         end;

        if TEM_DD
         then begin
           with memo_email.Lines do
            begin
              Add('                                                                                ');
              Add('Breakdown of Funds - Direct Debit___________________ Estimate Amount             ');
              Add('                                                                                ');
            end;

           qrNumerarios.First;
           valTotalDD := 0;

           while not qrNumerarios.Eof do
            begin
              if (not TEM_PARASOL) or (pos(qrNumerariosnumerario.asstring,vetsol[L,1])>0)
               then begin
                 if qrNumerariosdeb_cli.asstring='SIM'
                  then begin
                    if ( soNaoSoli = 1 ) and (qrNumerariosPrevisao_Solicitada.AsString = 'N�O')
                     then begin
                       valTotalDD := valTotalDD + qrNumerariosValor_Previsao.AsFloat;
                       memo_email.Lines.Add(Copy(qrTipoNum_IngDescricao.AsString+'____________________________________________________',1,52)+' '+FloatToStrF(qrNumerariosValor_Previsao.AsFloat,fffixed,10,2));
                     end
                     else begin
                       if not ( soNaoSoli = 1 )
                        then begin
                          valTotalDD := valTotalDD + qrNumerariosValor_Previsao.AsFloat;
                          memo_email.Lines.Add(Copy(qrTipoNum_IngDescricao.AsString+'____________________________________________________',1,52)+' '+FloatToStrF(qrNumerariosValor_Previsao.AsFloat,fffixed,10,2));
                        end;
                     end;
                  end;
               end;

              QrNumerarios.Next;
            end;

           valTotalDDG := valTotalDDG+valTotalDD;
         end;

        with memo_email.Lines do
         begin
           Add('                                                                                ');
           Add('                                                                                ');
           Add('Breakdown of Funds__________________________________ Estimate Amount            ');
           ///      123456789/123456789/123456789/123456789/123456789/123
           ///      ____________________________________________________
           Add('                                                                                ');
         end;

        qrNumerarios.First;
        valTotalAD := 0;

        while not qrNumerarios.Eof do
         begin
           if (not TEM_PARASOL) or (pos(qrNumerariosnumerario.asstring,vetsol[L,1])>0)
            then begin
              if qrNumerariosdeb_cli.asstring <> 'SIM'
               then begin
                 if ( soNaoSoli = 1 ) and (qrNumerariosPrevisao_Solicitada.AsString = 'N�O')
                  then begin
                    valTotalAD := valTotalAD + qrNumerariosValor_Previsao.AsFloat;
                    memo_email.Lines.Add(Copy(qrTipoNum_IngDescricao.AsString+'____________________________________________________',1,52)+' '+FloatToStrF(qrNumerariosValor_Previsao.AsFloat,fffixed,10,2));
                  end
                  else if not ( soNaoSoli = 1 )
                        then begin
                          valTotalAD := valTotalAD + qrNumerariosValor_Previsao.AsFloat;
                          memo_email.Lines.Add(Copy(qrTipoNum_IngDescricao.AsString+'____________________________________________________',1,52)+' '+FloatToStrF(qrNumerariosValor_Previsao.AsFloat,fffixed,10,2));
                        end;
               end;
            end;

           qrNumerarios.Next;
         end;

        valtotalADG := valtotalADG+valtotalAD;
        valtotal    := (valtotalDD+valtotalAD);
        valtotalG   := valtotalG+valtotal;

        with memo_email.Lines do
         begin
           Add('                                                                                ');

           if valtotalDD > 0
            then begin
              Add(Copy('Total Direct Debit_______________________________________',1,52)+' '+FloatToStrF(valTotalDD,fffixed,10,2));
              Add('                                                                                ');
            end;

           if valtotalAD > 0
            then begin
              Add(Copy('Total Adiantamentos MS___________________________________',1,52)+' '+FloatToStrF(valTotalAD,fffixed,10,2));
              Add('                                                                                ');
            end;

           Add(Copy('Total____________________________________________________',1,52)+' '+FloatToStrF(valTotal,fffixed,10,2));
         end;

        memo_email.Lines.Add('                                                                                ');
        memo_email.Lines.Add(qlinkdocs);
        memo_email.Lines.Add('                                                                                ');
      end;
     // fim do vetor
   end;

   ///totais
   if emPortugues = 0
    then begin
      with memo_email.Lines do
       begin
         if TEM_PARASOL
          then begin
            Add('                                                                                ');
            Add('________________________________________________________________________________');
            Add('                                                                                ');

            if valtotalDDG > 0
             then begin
               Add(Copy('Total D�bitos Diretos____________________________________',1,52)+' '+FloatToStrF(valTotalDDG,fffixed,10,2));
               Add('                                                                                ');
             end;

            if valtotalADG > 0
             then begin
               Add(Copy('Total Adiantamentos MS___________________________________',1,52)+' '+FloatToStrF(valTotalADG,fffixed,10,2));
               Add('                                                                                ');
             end;

            Add(Copy('Total Geral______________________________________________',1,52)+' '+FloatToStrF(valTotalG,fffixed,10,2));
            Add('                                                                                ');
            Add('________________________________________________________________________________');
          end;

         Add('                                                                                ');
         Add('                                                                                ');
         Add('                                                                                ');
         Add('Observa��es: Os valores mencionados acima s�o previs�es, sofrer�o altera��es    ');
         Add('conforme a varia��o cambial da moeda negociada.                                 ');
         Add('                                                                                ');
         Add('Favor efetuar dep�sito identificado.                                            ');
         Add('Os cr�ditos efetuados em cheque est�o sujeitos a compensa��o banc�ria.          ');
         Add('                                                                                ');
         Add('Dados para Dep�sito:');
         Add('                                                                                ');
         Add('Banco___________ '+qrCCDepositoBanco.AsString);
         Add('Ag�ncia_________ '+qrCCDepositoAgencia.AsString);
         Add('Conta Corrente__ '+qrCCDepositoConta_Corrente.AsString);
         Add('CNPJ____________ 30.875.884/0001-99');
         Add('Raz�o Social____ MS Logistica Aduaneira Ltda.');
         Add('                                                                                ');
         Add('Atenciosamente,                                                                 ');
         Add('                                                                                ');
         Add('                                                                                ');
         Add(qrUsuariosNome_Completo.AsString);
         Add('                                                                                ');
         Add('                                                                                ');
         Add('                                                                                ');
       end;
    end
    else begin
      with memo_email.Lines do
       begin
         if TEM_PARASOL
          then begin
            Add('                                                                                ');
            Add('________________________________________________________________________________');
            Add('                                                                                ');

            if valtotalDDG > 0
             then begin
               Add(Copy('Total Direct Debit_______________________________________',1,52)+' '+FloatToStrF(valTotalDDG,fffixed,10,2));
               Add('                                                                                ');
             end;

            if valtotalADG>0
             then begin
               Add(Copy('Total Advances MS___________________________________',1,52)+' '+FloatToStrF(valTotalADG,fffixed,10,2));
               Add('                                                                                ');
             end;
          end;
          
         {Add(Copy('Total____________________________________________________',1,52)+' '+FloatToStrF(valTotalG,fffixed,10,2));
         Add('                                                                                ');
         Add('________________________________________________________________________________');}
         Add('                                                                                ');
         Add('                                                                                ');
         Add('                                                                                ');
         Add('Remark: The above mentioned amounts are estimate, and may vary with fluctuation ');
         Add('of exchange rate negotiated curency.                                            ');
         Add('                                                                                ');
         Add('Please to make identified deposit.                                              ');
         Add('The credits made in check are subject to the bank clearing.                     ');
         Add('                                                                                ');
         Add('Transfer Details:');
         Add('                                                                                ');
         Add('Bank____________ '+qrCCDepositoBanco.AsString);
         Add('Branch__________ '+qrCCDepositoAgencia.AsString);
         Add('Current Account_ '+qrCCDepositoConta_corrente.AsString);
         Add('                                                                                ');
         Add('                                                                                ');
         Add('Sincerely,                                                                      ');
         Add('                                                                                ');
         Add('                                                                                ');
         Add(qrUsuariosNome_Completo.AsString);
         Add('                                                                                ');
         Add('                                                                                ');
         Add('                                                                                ');
       end;
    end;

  pnlTop.Enabled         := False;
  pnlPrincipal.Enabled   := False;
  pnlSolicitacao.Enabled := False;
  pnlCalcTotal.Enabled   := False;
  pnlBaixo.Enabled       := False;

  with pnlEmail do
   begin
     Left    := 16;
     Top     := 48;
     Width   := 721;
     Height  := 377;
     Visible := True;
   end;

  qrNumerarios.Locate('REG',reg,[]);
end;

procedure TF_proNumerarios.btnFaxClick(Sender: TObject);
var
  emPortugues: Integer;
  reg: String;
begin
  reg := qrNumerariosREG.AsString;
  emPortugues := 0;

  if MessageDlg('Gera Solicita��o em Ingl�s?', mtConfirmation,[mbYes, mbNo], 0) = mrNO
   then begin
     emPortugues := 1;

     if not Assigned(qr_solnum)
      then Application.CreateForm(Tqr_solnum, qr_solnum)
   end
   else if not Assigned(qr_solnum_ing)
         then Application.CreateForm(Tqr_solnum_ing, qr_solnum_ing);

  if MessageDlg('Gera Solicita��o apenas dos N�O SOLICITADOS?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
   then qrNumerarios.Filter := 'NUMERARIO <> ''ISS'' AND NUMERARIO <> ''CPMF'' AND NUMERARIO <> ''TAXE'' AND PREVISAO_SOLICITADA = ''N�O'' '
   else qrNumerarios.Filter := 'NUMERARIO <> ''ISS'' AND NUMERARIO <> ''CPMF'' AND NUMERARIO <> ''TAXE'' ';

  if emPortugues = 0
   then qr_solnum.Preview
   else qr_solnum_ing.Preview;

  if MessageDlg('Confirma Solicita��o desta Previs�o?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
   then begin
     qrNumerarios.First;

     while not qrNumerarios.Eof do
      begin
        if (qrNumerariosPrevisao_Solicitada.AsString    <> 'SIM') and
           (qrNumerariosOK_Previsao_Financeiro.AsString <> 'SIM')
         then begin
           tbNumerarios.Edit;
           tbNumerariosPrevisao_Solicitada.AsString := 'SIM';
           tbNumerariosUsuario_Previsao.AsString := v_usuario;
           tbNumerarios.Post;
         end;

        qrNumerarios.Next;
      end;

     qrnumerarios.close;
     qrnumerarios.open;

     pnlEmail.Visible       := False;
     pnlTop.Enabled         := True;
     pnlPrincipal.Enabled   := True;
     pnlSolicitacao.Enabled := True;
     pnlCalcTotal.Enabled   := True;
     pnlBaixo.Enabled       := True;

     dbGrdNumerarios.Enabled := true;
     btnIncluir.Enabled      := true;
     btnAlterar.Enabled      := true;
     btnExcluir.Enabled      := true;
     btnSair.Enabled         := true;
     btnSalvar.Enabled       := false;
     btnCancelar.Enabled     := false;
   end;

  qrNumerarios.Filter := 'NUMERARIO <> ''ISS'' AND NUMERARIO <> ''CPMF'' AND NUMERARIO <> ''TAXE'' ';
  qrNumerarios.Locate('REG',reg,[]);
  dbGrdNumerarios.SetFocus;
end;

procedure TF_proNumerarios.FormCreate(Sender: TObject);
begin
  //qrProcessos.Open; // eduardo.souza 29/06/2001
  with qrUsuarios do
   begin
     Close;
     Open;
     Locate('Usuario',v_usuario,[]);
   end;
end;

procedure TF_proNumerarios.dbEdtFaxChange(Sender: TObject);
begin
  if Trim(dbEdtEmailPARA.Text) <> ''
   then btnEmail.Enabled := True
   else btnEmail.Enabled := False;

  if Trim(dbEdtFax.Text) <> ''
   then btnFax.Enabled := True
   else btnFax.Enabled := False;
end;

procedure TF_proNumerarios.btnEnviarEmailClick(Sender: TObject);
var
  i : Integer;
  reg : String;
  tenta, deuerro : boolean;
begin
  //mm 07062006
  {qmsg := #13#10#13#10+'As solicita��es de numer�rios ser�o encaminhadas para o Setor Financeiro,'+#13#10;
  qmsg := qmsg+'ap�s an�lise, o Setor Financeiro encaminhar� a Solicita��o ao Cliente se necess�rio'+#13#10;
  Showmessage(v_usuario+','+qmsg);}

  if MessageDlg('Confirma envio do Email?', mtConfirmation,[mbYes, mbNo], 0) = mrNo
   then Exit;

  if (valTotalG <> 0) or (valTotal <> 0)
   then InsereRegistroSolicitacaoNumerario;

  reg := qrNumerariosREG.AsString;
  email_num.PostMessage.Body.Add('<FONT face=Courier>');

  for i := 0 to memo_email.Lines.Count-1 do
    email_num.PostMessage.Body.Add(memo_email.Lines[i]+'<br>');

  deuerro := true;
  //envia sem autenticacao
  if F_MSCOMEX.t_parametroshost_smtp.asstring = ''
   then begin
     tenta := true;

     while tenta do
      begin
        try
          email_num.connect;
          email_num.sendmail;
          email_num.disconnect;
          showmessage('Email enviado com sucesso!');
          tenta := false;
          deuerro := false;
        except
          on E : Exception do
           begin
             tenta := false;
             deuerro := true;
           end;
        end;
      end;
   end
   else begin // envia com authentica��o
     SMTP.Host     := f_MSCOMEX.t_ParametrosHost_SMTP.AsString;
     SMTP.Port     := StrToInt(f_MSCOMEX.t_ParametrosPorta_SMTP.AsString);
     SMTP.Username := f_MSCOMEX.t_ParametrosUsuario_SMTP.AsString;
     SMTP.Password := f_MSCOMEX.t_ParametrosSenha_SMTP.AsString;

     if f_MSCOMEX.t_ParametrosUsuario_SMTP.AsString = ''
      then SMTP.AuthenticationType := atNone
      else SMTP.AuthenticationType := atLogin;
      
     Mailmessage.ContentType := 'text/html';
     MailMessage.Subject     := email_num.PostMessage.Subject;
     Mailmessage.Body.Text   := '<HTML><BODY>'+email_num.PostMessage.Body.TEXT+'</BODY></HTML>';

     try
       try
         {eduardo.souza 24/08/2011
         SMTP.Connect(0);
         SMTP.Send(MailMessage);}

         // Gravando Tabela EmailAuto
         qryEmail_Auto.ParamByName( 'Programa' ).Value := 'NUMERARI';
         qryEmail_Auto.ParamByName( 'Assunto' ).Value := MailMessage.Subject;
         qryEmail_Auto.ParamByName( 'Titulo' ).Value := 'Numer�rios';
         qryEmail_Auto.ParamByName( 'De' ).Value := email_num.postmessage.fromname +'<'+ email_num.postmessage.fromaddress+'>';
         qryEmail_Auto.ParamByName( 'Para' ).Value := '';
         qryEmail_Auto.ParamByName( 'CC' ).Value := StringReplace(Mailmessage.ccList.EMailAddresses, ',',';', [rfreplaceall]);
         qryEmail_Auto.ParamByName( 'CCO' ).Value := '';
         qryEmail_Auto.ParamByName( 'Body' ).Value := email_num.PostMessage.Body.TEXT;
         qryEmail_Auto.ParamByName( 'Anexo' ).Value := '';
         qryEmail_Auto.ParamByName( 'HTML' ).Value := 1;
         qryEmail_Auto.ParamByName( 'Data' ).Value := Date();
         qryEmail_Auto.ParamByName( 'Hora' ).Value := Now;
         qryEmail_Auto.ExecSQL;         // fim gravar


         // Controle de Autoriza��o de numer�rios
         {$IFDEF Testando}
           //Grava movimento enviado 06/09/2011
           qryGravaEnvioSolicitacao.ParamByName('Usuario').Value := v_usuario;
           qryGravaEnvioSolicitacao.ParamByName('PK_Solicitacao').Value := qryAutorizacaoSolicitacao['PK_Solicitacao'];
           qryGravaEnvioSolicitacao.ParamByName('Cancelado_por').Value := '';
           qryGravaEnvioSolicitacao.ParamByName('Status').Value := 6;
           qryGravaEnvioSolicitacao.ExecSQL;
           //
           // Update tabela controle de solicitacao
           qryUpdateSolicitacao.ParamByName('solicitacao').Value := qryAutorizacaoSolicitacao['PK_Solicitacao'];
           qryUpdateSolicitacao.ParamByName('Cancelado_por').Value := '';
           qryUpdateSolicitacao.ParamByName('OBS_Cancelamento').Value := '';
           qryUpdateSolicitacao.ParamByName('Status').Value := 6;
           qryUpdateSolicitacao.ExecSQL;
           //
           qryAutorizacaoSolicitacao.Close;
           //---
        {$ELSE}
          // n�o faz nada
        {$ENDIF}
         // Follow Autom�tico eduardo.souza 18/07/2011
         F_MSCOMEX.IncluiFollow( qrProcessosProcesso.AsString, '1021','1147', '', v_usuario, Date, Now );
         logusu('O','Tela de Numer�rios - Envio de Numer�rios autorizado por: '+ Supervisor );
         // fim 18/07/2011
         MessageDlg('Email enviado com sucesso!', mtInformation,[mbOk], 0);
         tenta := false;
         deuerro := false;
       except on E:Exception do
         showmessage('Erro ao tentar enviar e-mail');
       end;
     finally
       {if SMTP.Connected then
         SMTP.Disconnect;}
       screen.cursor := crDefault;
     end;
   end;

  pnlEmail.Visible       := False;
  pnlTop.Enabled         := True;
  pnlPrincipal.Enabled   := True;
  pnlSolicitacao.Enabled := True;
  pnlCalcTotal.Enabled   := True;
  pnlBaixo.Enabled       := True;

  if deuerro
   then showmessage(v_usuario+', seu email n�o foi enviado!')
   else begin
     showmessage(v_usuario+', seu email foi enviado com sucesso!');

     if MessageDlg('Confirma Solicita��o desta Previs�o?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
      then begin
        qrNumerarios.First;

        while not qrNumerarios.Eof do
         begin
           if (qrNumerariosPrevisao_Solicitada.AsString <> 'SIM') and
              (qrNumerariosOK_Previsao_Financeiro.AsString <> 'SIM')
            then begin
              tbNumerarios.Edit;
              tbNumerariosPrevisao_Solicitada.AsString := 'SIM';
              tbNumerariosUsuario_Previsao.AsString := v_usuario;
              tbNumerarios.Post;
            end;

           qrNumerarios.Next;
         end;

        qrnumerarios.close;
        qrnumerarios.open;

        pnlEmail.Visible       := False;
        pnlTop.Enabled         := True;
        pnlPrincipal.Enabled   := True;
        pnlSolicitacao.Enabled := True;
        pnlCalcTotal.Enabled   := True;
        pnlBaixo.Enabled       := True;

        dbGrdNumerarios.Enabled := true;
        btnIncluir.Enabled      := true;
        btnAlterar .Enabled     := true;
        btnExcluir.Enabled      := true;
        btnSair.Enabled         := true;
        btnSalvar.Enabled       := false;
        btnCancelar.Enabled     := false;
      end;
   end;

  qrNumerarios.Locate('REG',reg,[]);
  dbGrdNumerarios.SetFocus;
end;

procedure TF_proNumerarios.btnCancelarEmailClick(Sender: TObject);
begin
  pnlEmail.Visible       := False;
  pnlTop.Enabled         := True;
  pnlPrincipal.Enabled   := True;
  pnlSolicitacao.Enabled := True;
  pnlCalcTotal.Enabled   := True;
  pnlBaixo.Enabled       := True;
end;

procedure TF_proNumerarios.tbNumerariosAfterPost(DataSet: TDataSet);
begin
  f_mscomex.MSPGP(me_nossaref.text);
  logusu('P','Alterou o Numer�rio: '+tbNumerariosNumerario.AsString+', do Processo: '+tbNumerariosProcesso.AsString);
end;

procedure TF_proNumerarios.tbNumerariosBeforeDelete(DataSet: TDataSet);
begin
  logusu('E','Excluiu o Numer�rio: '+tbNumerariosNumerario.AsString+', do Processo: '+tbNumerariosProcesso.AsString);
end;

procedure TF_proNumerarios.dbEdtDtPrevChange(Sender: TObject);
begin
  if tbNumerarios.State In [dsInsert, dsEdit]
   then if dbEdtDtPrev.Text = '  /  /    '
         then tbNumerariosData_Previsao.AsString := '';
end;

procedure TF_proNumerarios.btnIncluirClick(Sender: TObject);
begin
  with q_Processo_Tem_DI do
   begin
     close;
     ParamByName('pCodigo').value:=ME_nossaref.text;
     Open;
   end;

  with q_Informou_FollowDI_Enviada do
   begin
     close;
     ParamByName('pProcesso').value:=ME_nossaref.text;
     Open;
   end;

  if (v_AlteraPRO = 1)
   then begin
     {Solicita��o da Odilma:
      Permitir solicita��o de numer�rios somente se houver DI enviada p/ An�lise.
      Primeiro verificar se o processo tem DI.
      Leandro Serra - 18/08/2011}

     {Solicita��o da Odilma: Alterado para permitir somente se tiver informado
      Setor Operacional - Enviou Declara��o de Importa��o para an�lise no SISCOMEX
      Wellington Medeiros - 04/10/2011}
     if ((qrProcessostipo.AsString = '11') or
         (qrProcessostipo.AsString = '12') or
         (qrProcessostipo.AsString = '6' ) or
         (qrProcessostipo.AsString = '6A') or
         (qrProcessostipo.AsString = 'IT'))
      then begin
        if (q_Processo_Tem_DINR_DECLARACAO_IMP.Value <> '') and not (q_Processo_Tem_DINR_DECLARACAO_IMP.IsNull)
         then if q_Informou_FollowDI_Enviada.RecordCount > 0
               then InsereNumerarios
               else Showmessage(v_usuario+', ATEN��O! Informe o follow Setor Operacional - Enviou Declara��o de Importa��o para an�lise no SISCOMEX, para solicitar os numer�rios.')
         else InsereNumerarios;

        Operacao := tInsert;
      end
      else begin
        Operacao := tInsert;
        
        InsereNumerarios;
      end;
   end
   else Showmessage(v_usuario+', ATEN��O! Acesso n�o permitido � processos sob Responsabilidade e/ou o processo est� fechado e/ou o Cliente est� Inativo.');
end;

Procedure TF_proNumerarios.InsereNumerarios;
begin
  if tbNumerarios.State = dsInactive
   then tbNumerarios.Open;

  tbNumerarios.Append;
  tbNumerariosEmpresa.AsString                := vEmp;
  tbNumerariosFilial.AsString                 := vFil;
  tbNumerariosProcesso.AsString               := vPro;
  tbNumerariosData_Previsao.AsDateTime        := Date;
  tbNumerariosUsuario_Previsao.AsString       := v_usuario;
  tbNumerariosPrevisao_Solicitada.AsString    := 'N�O';
  tbNumerariosOk_Previsao_financeiro.asstring := 'N�O';
  dbLcbNumerario.SetFocus
end;

procedure TF_proNumerarios.btnAlterarClick(Sender: TObject);
begin
  if (v_AlteraPRO = 1)
   then begin
     Operacao := tUpdate;

     Obrigatorio := qryNumerarioObrigatorio.Locate('fk_tipo_numerario', qrNumerariosNumerario.AsString, []);
     dbLcbNumerario.Enabled := Not(Obrigatorio);

     dbLcbNumerarioExit(dbLcbNumerario);

     tbNumerarios.Edit;
     tbNumerariosData_Previsao.AsDateTime  := Date;
     tbNumerariosUsuario_Previsao.AsString := v_usuario;
     dbLcbNumerario.SetFocus
   end
   else Showmessage(v_usuario+', ATEN��O! Acesso n�o permitido � processos sob Responsabilidade e/ou o processo est� fechado e/ou o Cliente est� Inativo.');
end;

procedure TF_proNumerarios.btnExcluirClick(Sender: TObject);
begin
  if (v_AlteraPRO = 1)
   then begin
     Obrigatorio := qryNumerarioObrigatorio.Locate('fk_tipo_numerario', qrNumerariosNumerario.AsString, []);

     if Not(Obrigatorio)
      then begin
        if (tbNumerariosValor_Registrado.AsFloat > 0)
         then begin
           MessageDlg('Numer�rio n�o pode ser exclu�do! valor registrado maior que zero.', mtInformation,[mbOk], 0);
           dbGrdNumerarios.SetFocus;
           Exit;
         end;

        if (tbNumerarioscontabilizado_cliente.asinteger = 1)
         then begin
           MessageDlg('Numer�rio n�o pode ser exclu�do! Contabilizado pelo cliente.', mtInformation,[mbOk], 0);
           dbGrdNumerarios.SetFocus;
           Exit;
         end;

        if (tbNumerarioscontabilizado.asstring = 'SIM')
         then begin
           MessageDlg('Numer�rio n�o pode ser exclu�do! Contabilizado no Financeiro.', mtInformation,[mbOk], 0);
           dbGrdNumerarios.SetFocus;
           Exit;
         end;

        if MessageDlg('Confirma exclus�o do Numer�rio?', mtConfirmation,[mbYes, mbNo], 0) = mrNo
         then Exit;

        tbNumerarios.Delete;

        with qrNumerarios do
         begin
           Close;
           Open;
         end;

        me_vprevisao.Text := '0';
        me_vreal.Text     := '0';

        f_mscomex.MSPGP(me_nossaref.text);
        dbGrdNumerarios.SetFocus;
      end
      else Showmessage(v_usuario+', ATEN��O! Esse numer�rio � obrigat�rio para esse processo e n�o pode ser exclu�do.');
   end
   else Showmessage(v_usuario+', ATEN��O! Acesso n�o permitido � processos sob Responsabilidade e/ou o processo est� fechado e/ou o Cliente est� Inativo.');
end;

procedure TF_proNumerarios.btnCancelarClick(Sender: TObject);
begin
  Operacao := tNil;

  dbGrdNumerarios.Enabled    := True;
  dbcb_contabilizado.Enabled := False;
  dbLcbNumerario.Enabled     := False;
  dbEdtDtPrev.Enabled        := False;
  dbEdtValPrev.Enabled       := False;
  dbEdtDtReal.Enabled        := False;
  dbEdtValReal.Enabled       := False;

  tbNumerarios.Cancel;
  dbGrdNumerarios.SetFocus;
end;

procedure TF_proNumerarios.btnCalcClick(Sender: TObject);
var
  reg: String;
begin
  me_vprevisao.Text := '0';
  me_vreal.Text     := '0';

  reg := qrNumerariosREG.AsString;
  qrNumerarios.First;

  while not qrNumerarios.Eof do
   begin
     me_vprevisao.Text := FloatToStr(StrToFloat(me_vprevisao.Text) + qrNumerariosValor_Previsao.AsFloat);
     me_vreal.Text     := FloatToStr(StrToFloat(me_vreal.Text) + qrNumerariosValor_Registrado.AsFloat);

     qrNumerarios.Next;
   end;

  qrNumerarios.Locate('REG',reg,[]);
end;

procedure TF_proNumerarios.btnSalvarClick(Sender: TObject);
var
  reg: String;
begin
  Operacao := tnil;

  if (v_AlteraPRO = 1)
   then begin
     {Leandro Serra - 12/08/2011
      Verifica se o tipo de numer�rio for Frete ou Armazenagem deve-se informar o respectivo ao tipo de processo.
      No caso eu criei um tipo gen�rico FRET este n�o � contabilizado ent�o o usu�rio n�o poder� grav�-lo, o mesmo
      ocorre com Armazenagem}
     if tbNumerariosNumerario.Value = 'FRET'
      then begin
        ShowMessage('Informe o FRETE respectivo ao tipo de processo, se for B/L, FRIM ou AWB');
        dbLcbNumerario.SetFocus;
        Exit;
      end;

     if tbNumerariosNumerario.Value = 'ARMZ'
      then begin
        ShowMessage('Informe a Armazenagem respectiva ao tipo de processo, se for ARMP, ARSP ou ...');
        dbLcbNumerario.SetFocus;
        Exit;
      end;

     if tbNumerariosNumerario.IsNull
      then begin
        ShowMessage('O Numer�rio est� em branco!');
        dbLcbNumerario.SetFocus;
        Exit;
      end;

     if tbNumerariosData_Previsao.IsNull
      then begin
        ShowMessage('A Data de Previs�o est� em branco!');
        dbEdtDtPrev.SetFocus;
        Exit;
      end;

     if tbNumerariosValor_Previsao.IsNull
      then begin
        ShowMessage('O Valor de Previs�o est� em branco!');
        dbEdtValPrev.SetFocus;
        Exit;
      end;

     if tbnumerarioscontabilizado_cliente.asinteger = 1
      then begin
        if ((tbNumerariosValor_registrado.IsNull) or (tbNumerariosValor_registrado.asfloat <= 0))
         then begin
           ShowMessage('O Valor Real n�o est� preenchido! � necess�rio para contabiliza��o do cliente.');
           dbEdtValreal.SetFocus;
           Exit;
         end;

        if (tbNumerariosdata_registro.IsNull)
         then begin
           ShowMessage('A Data de registro n�o est� preenchida! � necess�ria para contabiliza��o do cliente.');
           dbEdtdtreal.SetFocus;
           Exit;
         end;
      end;

     tbNumerarios.Post;
     tbnumerarios.edit;

     if tbnumerarioscontabilizado_cliente.asinteger = 1
      then begin
        tbnumerarioscontabilizado.asstring      := 'SIM';
        tbnumerariosvalor_contabilizado.asfloat := tbnumerariosvalor_registrado.asfloat;
        tbnumerariosdetalhe.asstring            := 'CONTABILIZADO PELO CLIENTE';

        //incluir cr�ditos correspondentes
        with q_exccred do
         begin
           params[0].asinteger := tbnumerariosreg.asinteger;
           Execsql;
         end;

        with q_inccred do
         begin
           params[0].AsString := tbnumerariosempresa.asstring;
           params[1].AsString := tbnumerariosfilial.asstring;
           params[2].AsString := tbnumerariosprocesso.asstring;
           params[3].AsString := t_paraconcredito.asstring;
           params[4].AsString := tbnumerariosdata_registro.asstring;
           params[5].AsString := stringreplace(tbnumerariosvalor_contabilizado.asstring,',','.',[]);
           params[6].AsString := tbnumerariosreg.asstring;
           Execsql;
         end;
      end
      else begin
        tbnumerarioscontabilizado.asstring := 'N�O';
        tbnumerariosvalor_contabilizado.asfloat := 0;
        tbnumerariosdetalhe.asstring := '';

        //exclui cr�ditos correspondentes
        with q_exccred do
         begin
           params[0].asinteger := tbnumerariosreg.asinteger;
           Execsql;
         end;
      end;

     tbNumerarios.Post;

     reg := tbNumerariosREG.AsString;

     with qrNumerarios do
      begin
        Close;
        Open;
      end;

     me_vprevisao.Text := '0';
     me_vreal.Text     := '0';
     dbGrdNumerarios.SetFocus;
     qrNumerarios.Locate('REG',reg,[]);

     // Eduardo Souza 08/09/2011 - Controle de Autoriza��o de Numer�rio
     {$IFDEF Testando}
     if (Operacao = tUpdate) or (Operacao = tInsert)
      then Begin
        qryAutorizacaoSolicitacao.ParamByName('Processo').Value := qrProcessosProcesso.AsString;
        qryAutorizacaoSolicitacao.Close;
        qryAutorizacaoSolicitacao.Open;

        if (not qryAutorizacaoSolicitacao.IsEmpty)
         then begin
           if ( qryAutorizacaoSolicitacao['Status_Atual'] = 4 ) or
              ( qryAutorizacaoSolicitacao['Status_Atual'] = 6 )
            then Begin
              //Grava movimento enviado 06/09/2011
              qryGravaEnvioSolicitacao.ParamByName('Usuario').Value        := '';
              qryGravaEnvioSolicitacao.ParamByName('PK_Solicitacao').Value := qryAutorizacaoSolicitacao['PK_Solicitacao'];
              qryGravaEnvioSolicitacao.ParamByName('Cancelado_por').Value  := v_usuario;
              qryGravaEnvioSolicitacao.ParamByName('Status').Value         := 2;
              qryGravaEnvioSolicitacao.ExecSQL;
              //

              // Update tabela controle de solicitacao
              qryUpdateSolicitacao.ParamByName('solicitacao').Value   := qryAutorizacaoSolicitacao['PK_Solicitacao'];
              qryUpdateSolicitacao.ParamByName('Cancelado_por').Value := v_usuario;
              qryUpdateSolicitacao.ParamByName('Status').Value        := 2;

              if (Operacao = tUpdate)
               then qryUpdateSolicitacao.ParamByName('OBS_Cancelamento').Value := 'Motivo do cancelamento: Altera��o dos dados na tela de numer�rios.'
               else qryUpdateSolicitacao.ParamByName('OBS_Cancelamento').Value := 'Motivo do cancelamento: Complemento de Numer�rio.';

              qryUpdateSolicitacao.ExecSQL;
              qryAutorizacaoSolicitacao.Close;
            end;
         end;
      end;
     {$ELSE}
      // n�o faz nada
    {$ENDIF}
     //---

   end
   else Showmessage(v_usuario+', este processo est� fechado e/ou o Cliente est� Inativo. Somente usu�rios habilitados para editar clientes inativos e/ou editar processos fechados, poder�o alterar as informa��es do processo.');

  dbGrdNumerarios.Enabled    := True;
  dbcb_contabilizado.Enabled := False;
  dbLcbNumerario.Enabled     := False;
  dbEdtDtPrev.Enabled        := False;
  dbEdtValPrev.Enabled       := False;
  dbEdtDtReal.Enabled        := False;
  dbEdtValReal.Enabled       := False;
end;

procedure TF_proNumerarios.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if tbContatosImp.State In [dsEdit]
   then tbContatosImp.Cancel;

  if tbNumerarios.State In [dsInsert, dsEdit]
   then begin
     MessageDlg('O Numer�rio est� em edi��o!', mtInformation,[mbOk], 0);
     CanClose := False;
   end
   else CanClose := True;
end;

procedure TF_proNumerarios.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TF_proNumerarios.btnAlterarContatoClick(Sender: TObject);
begin
  tbContatosImp.Edit;

  pnlTop.Enabled   := False;
  pnlBaixo.Enabled := False;

  dbEdtContato.Enabled   := True;
  dbEdtEmailPARA.Enabled := True;
  dbEdtFax.Enabled       := True;
  dbEdtCopia.Enabled     := True;

  btnAlterarContato.Enabled  := False;
  btnSalvarContato.Enabled   := True;
  btnCancelarContato.Enabled := True;
end;

procedure TF_proNumerarios.btnSalvarContatoClick(Sender: TObject);
begin
  tbContatosImp.Post;

  pnlTop.Enabled   := True;
  pnlBaixo.Enabled := True;

  dbEdtContato.Enabled   := False;
  dbEdtEmailPARA.Enabled := False;
  dbEdtFax.Enabled       := False;
  dbEdtCopia.Enabled     := False;

  btnAlterarContato.Enabled  := True;
  btnSalvarContato.Enabled   := False;
  btnCancelarContato.Enabled := False;
end;

procedure TF_proNumerarios.btnCancelarContatoClick(Sender: TObject);
begin
  tbContatosImp.Cancel;

  pnlTop.Enabled   := True;
  pnlBaixo.Enabled := True;

  dbEdtContato.Enabled   := False;
  dbEdtEmailPARA.Enabled := False;
  dbEdtFax.Enabled       := False;
  dbEdtCopia.Enabled     := False;

  btnAlterarContato.Enabled  := True;
  btnSalvarContato.Enabled   := False;
  btnCancelarContato.Enabled := False;
end;

procedure TF_proNumerarios.email_numAuthenticationFailed(
  var Handled: Boolean);
begin
  showmessage('ERRO NA AUTENTICA��O!');
end;

procedure TF_proNumerarios.qrNumerariosAfterScroll(DataSet: TDataSet);
begin
  tbNumerarios.FindKey([vEmp, vFil, vPro, qrNumerariosREG.AsString]);
  qrTipoNum_Ing.Locate('codigo',qrNumerariosNumerario.AsString,[]);
  dbLcbNumerarioExit(f_pronumerarios);
end;

procedure TF_proNumerarios.qrNumerariosAfterOpen(DataSet: TDataSet);
begin
  pnlTop.Enabled         := True;
  pnlSolicitacao.Enabled := True;
  pnlCalcTotal.Enabled   := True;

  dbGrdNumerarios.Enabled := True;
  dbLcbNumerario.Enabled  := False;
  dbEdtDtPrev.Enabled     := False;
  dbEdtValPrev.Enabled    := False;

  if qrNumerarios.RecordCount <> 0
   then begin
     btnAlterar.Enabled := True;
     btnExcluir.Enabled := True;

     if tbNumerarios.State = dsInactive
      then tbNumerarios.Open;
   end
   else begin
     tbNumerarios.Close;
     btnAlterar.Enabled := False;
     btnExcluir.Enabled := False;
   end;

  btnIncluir.Enabled  := True;
  btnSair.Enabled     := True;
  btnSalvar.Enabled   := False;
  btnCancelar.Enabled := False;
end;

procedure TF_proNumerarios.tbNumerariosAfterEdit(DataSet: TDataSet);
begin
  pnlTop.Enabled         := False;
  pnlSolicitacao.Enabled := False;
  pnlCalcTotal.Enabled   := False;
  dbLcbNumerario.Enabled := True;
  dbEdtDtPrev.Enabled    := True;
  dbEdtValPrev.Enabled   := True;

  dbGrdNumerarios.Enabled := False;
  btnIncluir.Enabled      := False;
  btnAlterar.Enabled      := False;
  btnExcluir.Enabled      := False;
  btnSair.Enabled         := False;
  btnSalvar.Enabled       := True;
  btnCancelar.Enabled     := True;
end;

procedure TF_proNumerarios.dbGrdNumerariosDblClick(Sender: TObject);
var
  reg: String;
begin
  tbNumerarios.Edit;

  if tbNumerariosPrevisao_Solicitada.AsString = 'SIM'
   then tbNumerariosPrevisao_Solicitada.AsString := 'N�O'
   else tbNumerariosPrevisao_Solicitada.AsString := 'SIM';

  tbNumerariosUsuario_Previsao.AsString := v_usuario;
  tbNumerarios.Post;

  reg := tbNumerariosREG.AsString;

  with qrNumerarios do
   begin
     Close;
     Open;
   end;

  me_vprevisao.Text := '0';
  me_vreal.Text := '0';
  qrNumerarios.Locate('REG',reg,[]);
end;

procedure TF_proNumerarios.tbNumerariosAfterScroll(DataSet: TDataSet);
begin
  if (tbnumerarioscodigo_mov.asstring <> '0') and (trim(tbnumerarioscodigo_mov.asstring) <> '')
   then btnAlterar.Enabled := false
   else if (Operacao = tnil)
         then btnAlterar.Enabled := true;

  if ((Operacao = tInsert) or (Operacao = tUpdate))
   then begin
     if ((tbnumerarioscontabilizado.asstring = 'SIM') and (not tbnumerarioscontabilizado_cliente.asinteger = 1))
      then dbcb_contabilizado.Enabled := false
      else begin
        dbcb_contabilizado.Enabled := true;

        if tbnumerarioscontabilizado_cliente.asinteger = 1
         then dbcb_contabilizado.Enabled := false;
      end;
   end;
end;

procedure TF_proNumerarios.dbLcbNumerarioExit(Sender: TObject);
begin
  if ((Operacao = tInsert) or (Operacao = tUpdate))
   then begin
     if t_paracon.findkey([tbnumerariosempresa.asstring,tbnumerariosfilial.asstring,qrprocessosqcli.asstring,tbnumerariosnumerario.asstring])
      then begin
        if tbnumerarioscontabilizado_cliente.asinteger = 1
         then begin
           dbcb_contabilizado.Enabled := false;
           dbcb_contabilizado.Checked := true;
         end
         else begin
           dbcb_contabilizado.Enabled := true;
           dbcb_contabilizado.Checked := false;
         end;

        dbEdtDtReal.Enabled  := true;
        dbEdtValReal.Enabled := true;
      end
      else begin
        dbcb_contabilizado.Checked := false;
        dbcb_contabilizado.Enabled := false;

        dbEdtDtReal.Enabled  := false;
        dbEdtValReal.Enabled := false;
      end;
   end;
end;

procedure TF_proNumerarios.dbcb_contabilizadoExit(Sender: TObject);
begin
  if ((Operacao = tInsert) or (Operacao = tUpdate))
   then begin
     if dbcb_contabilizado.Checked
      then begin
        Showmessage(v_usuario+', favor informar as datas/valores reais corretamente para o fechamento cont�bil do processo.');
        dbEdtDtReal.Enabled  := true;
        dbEdtValReal.Enabled := true;
        dbedtdtreal.SetFocus;
      end
      else begin
        dbEdtDtReal.Enabled  := false;
        dbEdtValReal.Enabled := false;
      end;
   end;
end;

procedure TF_proNumerarios.dbGrdNumerariosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (qrnumerariosdeb_cli.asstring = 'N�O')
   then dbGrdNumerarios.Columns[1].font.Color := clNavy
   else dbGrdNumerarios.Columns[1].font.Color := clMaroon;

  if gdSelected in state
   then dbGrdNumerarios.Canvas.font.color := clwhite;
   
  dbGrdNumerarios.defaultDrawColumnCell(Rect, DataCol, Column, State);
end;

function TF_proNumerarios.Autorizado(MS: String): Boolean;
var
  GoOn : Boolean;
begin
  GoOn := false;

  try
    try
      qryAutorizacaoSolicitacao.ParamByName('Processo').Value := MS;
      qryAutorizacaoSolicitacao.Close;
      qryAutorizacaoSolicitacao.Open;

      if ( qryAutorizacaoSolicitacao.IsEmpty )
       then begin
         GoOn := False;

         if MessageDlg('Processo n�o possui solicita��o de autoriza��o de numer�rios. Deseja realizar a solicita��o agora?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
          then begin
            if inttostr(F_MSCOMEX.Solicitao1.tag) < v_nivel
             then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
             else begin
               if not assigned ( frmSolicitacaoNumerario )
                then Application.CreateForm(TfrmSolicitacaoNumerario , frmSolicitacaoNumerario );

               F_MSCOMEX.Solicitao1.Enabled := false;
               logusu('A','Acessou Controle Solicita��o de Numer�rios');
               frmSolicitacaoNumerario.show;
             end;
          end
       end
       else begin
         if ( qryAutorizacaoSolicitacao['Status_Atual'] = 1 )
          then begin
            MessageDlg( 'J� existe um pedido de solicita��o de autoriza��o de numer�rios, solicitado por ' + qryAutorizacaoSolicitacao['Solicitante'] + ', que ainda n�o foi autorizado.', mtInformation, [mbOK], 0 );
            GoOn := False;
          end
          else if ( qryAutorizacaoSolicitacao['Status_Atual'] = 4 ) or
                  ( qryAutorizacaoSolicitacao['Status_Atual'] = 6 )
                then GoOn := True
                else begin
                  GoOn := False;

                  if MessageDlg('Processo n�o possui solicita��o de autoriza��o de numer�rios. Deseja realizar a solicita��o agora?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
                   then begin
                     if inttostr(F_MSCOMEX.Solicitao1.tag) < v_nivel
                      then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
                      else begin
                        if not assigned ( frmSolicitacaoNumerario )
                         then Application.CreateForm(TfrmSolicitacaoNumerario , frmSolicitacaoNumerario );

                        F_MSCOMEX.Solicitao1.Enabled := false;
                        logusu('A','Acessou Controle Solicita��o de Numer�rios');
                        frmSolicitacaoNumerario.show;
                      end;
                   end;
                end;
       end;
    except
      GoOn := False;
    end;
  finally
    Result := GoOn;
  end;
end;

procedure TF_proNumerarios.InsereRegistroSolicitacaoNumerario;
var
  QryAux : TQuery;
begin
  try
    QryAux := TQuery.Create(nil);
    QryAux.DatabaseName := 'DBNMSCOMEX';

    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('SELECT COUNT(*) FROM CONTROLE_NUMERARIOS WHERE PROCESSO = :p0 AND TOTAL = :p1 ');
    QryAux.Params[0].Value := qrProcessosProcesso.AsString;

    if valTotalG <> 0
     then QryAux.Params[1].AsFloat := valTotalG
     else QryAux.Params[1].AsFloat := valTotal;

    QryAux.Open;

    if QryAux.Fields[0].AsInteger > 0
     then Exit;

    qryInsereRegistroSolicitacao.ParamByName('Processo').Value         := qrProcessosProcesso.AsString;
    qryInsereRegistroSolicitacao.ParamByName('Cliente').Value          := qrProcessosCliente.AsString;
    qryInsereRegistroSolicitacao.ParamByName('Data_Solicitacao').Value := Now();

    if valTotalG <> 0
     then qryInsereRegistroSolicitacao.ParamByName('Total').Value      := valTotalG
     else qryInsereRegistroSolicitacao.ParamByName('Total').Value      := valTotal;

    qryInsereRegistroSolicitacao.ParamByName('Solicitante').Value      := qryAutorizacaoSolicitacao['Solicitante'];
    qryInsereRegistroSolicitacao.ParamByName('Autorizador').Value      := qryAutorizacaoSolicitacao['Autorizador_Atual'];
    qryInsereRegistroSolicitacao.ExecSQL;

  finally
    QryAux.Free;
    qryInsereRegistroSolicitacao.Close;
  end;
end;

function TF_proNumerarios.ValoresOK: Boolean;
  var
    Retorno : Boolean;
begin
  qrNumerarios.First;
  Retorno := true;

  while not( qrNumerarios.Eof ) do
   begin
     Retorno := Retorno and
                ((qrNumerariosValor_Previsao.AsFloat   > 0) or
                 (qrNumerariosValor_Registrado.AsFloat > 0) or
                 (qrNumerariosValor_Registrado.AsFloat < 0));
     qrNumerarios.Next;
   end;

  Result := Retorno;
end;

end.
