{$A+,B-,C+,D+,E-,F-,G+,H+,I+,J+,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00020000}
{$IMAGEBASE $00040000}
{$APPTYPE GUI}
{$A+,B-,C+,D+,E-,F-,G+,H+,I+,J+,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00020000}
{$IMAGEBASE $00040000}
{$APPTYPE GUI}
unit u_profollowup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, Db, DBTables, DBCtrls, Buttons, Grids, DBGrids,
  ActnList;

type
  TF_proFollowup = class(TForm)
    pnlTop: TPanel;
    Label26: TLabel;
    ME_nossaref: TMaskEdit;
    dsQProcessos: TDataSource;
    l_cliente: TLabel;
    qrFollowUp: TQuery;
    dsQFollowUp: TDataSource;
    dsFollowUp: TDataSource;
    tbFollowUp: TTable;
    dsQLocEventos: TDataSource;
    qrLocEventos: TQuery;
    dsEventos: TDataSource;
    dsObsEventos: TDataSource;
    pnlPrincipal: TPanel;
    Label219: TLabel;
    Label220: TLabel;
    Label221: TLabel;
    Label222: TLabel;
    Label223: TLabel;
    Label253: TLabel;
    dbgFollowUp: TDBGrid;
    dbEdtData: TDBEdit;
    dbEdtHora: TDBEdit;
    dbLcbEvento: TDBLookupComboBox;
    dbLcbObs: TDBLookupComboBox;
    dbEdtObsDet: TDBEdit;
    dbEdtRef: TDBEdit;
    pnlLocEventos: TPanel;
    Label251: TLabel;
    b_cancelaloceventos: TBitBtn;
    b_okloceventos: TBitBtn;
    dbgLocEventos: TDBGrid;
    me_localiza: TMaskEdit;
    qrEventos: TQuery;
    qrObsEventos: TQuery;
    qrFollowUpInc: TQuery;
    qrEventosCodigo: TStringField;
    qrEventosDescricao: TStringField;
    qrObsEventosCodigo: TStringField;
    qrObsEventosDescricao: TStringField;
    Panel2: TPanel;
    alAtuTabelas: TActionList;
    acAtuTabelas: TAction;
    pinfo: TPanel;
    bprofol: TButton;
    e_dataprofol: TEdit;
    DBGrid1: TDBGrid;
    dsprofol: TDataSource;
    qprofol: TQuery;
    ds_followres: TDataSource;
    t_FollowRes: TTable;
    tbFollowUpProcesso: TStringField;
    tbFollowUpSequencial: TAutoIncField;
    tbFollowUpCodevento: TStringField;
    tbFollowUpCodobs: TStringField;
    tbFollowUpObs_especifica: TStringField;
    tbFollowUpData: TDateTimeField;
    tbFollowUpHora: TStringField;
    tbFollowUplink: TStringField;
    tbFollowUpData_final: TDateTimeField;
    tbFollowUpHora_final: TStringField;
    tbFollowUpDuracao: TIntegerField;
    tbFollowUpUsuario: TStringField;
    tbFollowUpRef_Follow: TIntegerField;
    qrFollowUpProcesso: TStringField;
    qrFollowUpData: TDateTimeField;
    qrFollowUpHora: TStringField;
    qrFollowUpSequencial: TAutoIncField;
    qrFollowUpCodevento: TStringField;
    qrFollowUpqevento: TStringField;
    qrFollowUpCodobs: TStringField;
    qrFollowUpqobs: TStringField;
    qrFollowUpObs_especifica: TStringField;
    qrFollowUplink: TStringField;
    t_FollowResProcesso: TStringField;
    t_FollowResDescricao: TMemoField;
    t_FollowResDescricao_Ing: TMemoField;
    qrFollowUpGrupo: TStringField;
    qrFollowUpGRUPORESP: TStringField;
    qrFollowUpCOR_REALCE: TStringField;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    Label2: TLabel;
    Panel4: TPanel;
    Label3: TLabel;
    Panel5: TPanel;
    Label4: TLabel;
    Panel6: TPanel;
    Label5: TLabel;
    Panel7: TPanel;
    Label6: TLabel;
    Panel8: TPanel;
    Label7: TLabel;
    Panel9: TPanel;
    Label8: TLabel;
    Panel10: TPanel;
    Label9: TLabel;
    Panel11: TPanel;
    Label10: TLabel;
    me_localizaobs: TMaskEdit;
    Label11: TLabel;
    qrLocEventosCodigo: TStringField;
    qrLocEventosDescricao: TStringField;
    qrLocEventosCodigo_obs: TStringField;
    qrLocEventosDescricao_obs: TStringField;
    qrLocEventosGrupo: TStringField;
    qrLocEventosQTD_HorasLimite: TIntegerField;
    qrLocEventosCodigo_Fecha: TStringField;
    qrLocEventosAtivo: TIntegerField;
    Label12: TLabel;
    Label13: TLabel;
    me_localizaCodEv: TMaskEdit;
    Label14: TLabel;
    me_localizaCodObs: TMaskEdit;
    qrProcessos: TQuery;
    qryVerificaMSAnterior: TQuery;
    sbLocEvento: TBitBtn;
    sbLimpaObs: TBitBtn;
    qryFollowAtual: TQuery;
    qryFollowDevido: TQuery;
    pnlAutorizacao: TPanel;
    Panel12: TPanel;
    Label15: TLabel;
    Panel13: TPanel;
    edtCoordenadorResp: TDBLookupComboBox;
    Label16: TLabel;
    edtSenha: TEdit;
    Label17: TLabel;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    qryCoordenador: TQuery;
    dtsCoordenador: TDataSource;
    qryCoordenadorUsuario: TStringField;
    qryCoordenadorSenha: TStringField;
    lbMsg: TLabel;
    qryUpdatePVG: TQuery;
    qryUpdateALC: TQuery;
    qrHoraAlterar: TQuery;
    pnlHoraDesembaraco: TPanel;
    Label28: TLabel;
    Panel14: TPanel;
    BitBtn1: TBitBtn;
    btnCancelarHora: TBitBtn;
    txtHoraDesembaraco: TMaskEdit;
    qDataChegadaURF: TQuery;
    qDataChegadaURFData_Chegada_URF_Cheg: TDateTimeField;
    pnlAutGerente: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Panel16: TPanel;
    Label21: TLabel;
    Panel17: TPanel;
    edtGerenteResp: TDBLookupComboBox;
    Edit1: TEdit;
    btOK: TBitBtn;
    BitBtn3: TBitBtn;
    qrGerente: TQuery;
    qrGerenteUsuario: TStringField;
    qrGerenteSenha: TStringField;
    qryCoordenadorNome_Completo: TStringField;
    qrGerenteNome_Completo: TStringField;
    dsGerente: TDataSource;
    qrUsuScanner: TQuery;
    qrUsuScannerscanner: TBooleanField;
    qrDocumento: TQuery;
    qrDocumentoProcesso: TStringField;
    qChegadaDoNavio: TQuery;
    qChegadaDoNavioData_Chegada_URF_Cheg: TDateTimeField;
    qryCheckInsert: TQuery;
    qryCheckHierarquia: TQuery;
    qryCheckSelect: TQuery;
    qrUpdateStatus: TQuery;
    qrStatusProc: TQuery;
    qrStatusProcstatus: TStringField;
    qAtuProcessoVisaoGeral: TQuery;
    gpbFollow_auto: TGroupBox;
    chbCriarFollow: TCheckBox;
    btnAtivaFollow: TButton;
    btnCancelarFollow: TButton;
    qrUpdateCriar: TQuery;
    qrUpdateCancelar: TQuery;
    qrFollowUpfollow_ativo: TIntegerField;
    qrFollowUpfollow_auto: TIntegerField;
    qrExibiLabel: TQuery;
    lblExibiFollow: TLabel;
    qrExibiLabelqevento: TStringField;
    qrExibiLabelqobs: TStringField;
    qrInsertAtivo: TQuery;
    qrExibiLabelProcesso: TStringField;
    qrExibiLabelCodevento: TStringField;
    qrExibiLabelCodobs: TStringField;
    qrExibiLabelObs_especifica: TStringField;
    qrExibiLabelfollow_ativo: TIntegerField;
    qrExibiLabelfollow_auto: TIntegerField;
    qrVerificafollowRec: TQuery;
    qrverificafollowNumerario: TQuery;
    qrverificafollowNumerarioCodevento: TStringField;
    qrverificafollowNumerarioData: TDateTimeField;
    qrVerificafollowRecCodevento: TStringField;
    qrVerificafollowRecData: TDateTimeField;
    qrverificafollowNumerarioprocesso: TStringField;
    qrverificafollowNumerarioDescricao_evento: TStringField;
    qrverificafollowNumerarioDescricao: TStringField;
    qrverificafollowNumerarioCodobs: TStringField;
    qrDoc: TQuery;
    qrExibiLabelData: TDateTimeField;
    qrExibiLabelHora: TStringField;
    qrInvoice: TQuery;
    qrInvoiceProcesso: TStringField;
    qrInvoiceSequencial: TAutoIncField;
    qrInvoiceCodevento: TStringField;
    qrInvoiceCodobs: TStringField;
    qrInvoiceObs_especifica: TStringField;
    qrInvoiceData: TDateTimeField;
    qrInvoiceHora: TStringField;
    qrInvoicelink: TStringField;
    qrInvoiceData_final: TDateTimeField;
    qrInvoiceHora_final: TStringField;
    qrInvoiceDuracao: TIntegerField;
    qrInvoiceUsuario: TStringField;
    qrInvoiceRef_Follow: TIntegerField;
    qrInvoiceFollow_auto: TIntegerField;
    qrInvoiceFollow_ativo: TIntegerField;
    qrInsertRecInovice: TQuery;
    qryVUserCemPorcento: TQuery;
    qryVUserCemPorcentoUsuario: TStringField;
    qryVUserCemPorcentoPERCENTUAL: TFloatField;
    lblStatusProcesso: TLabel;
    qrUpdateCobs: TQuery;
    lblResponsavelEmpresa: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    lblResponsavelDaPasta: TLabel;
    qMovimentacaoPastas: TQuery;
    qUsu: TQuery;
    qUsuNome_Completo: TStringField;
    qUsuRamal: TStringField;
    qControle_Pasta: TQuery;
    qControle_PastaEmpresa: TStringField;
    qControle_PastaFilial: TStringField;
    qControle_PastaProcesso: TStringField;
    qControle_PastaUsuario: TStringField;
    qControle_PastaAceite: TSmallintField;
    qControle_PastaData: TDateTimeField;
    qMovimentacaoPastasDe_usuario: TStringField;
    qrDiDigitalizada: TQuery;
    qrICMSdigitalizado: TQuery;
    Label22: TLabel;
    lblDescAPenc: TLabel;
    pnlBaixo: TPanel;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    btnResumido: TBitBtn;
    btnAlterarHora: TBitBtn;
    btnCheck: TBitBtn;
    btnSemEmail: TBitBtn;
    qrUP_SemEmail: TQuery;
    qrApenc_Pendencias: TQuery;
    qrApenc_PendenciasProcesso: TStringField;
    qrApenc_PendenciasPendencia: TIntegerField;
    qrApenc_PendenciasDescricao: TStringField;
    lblSaldo: TLabel;
    lblSaldoResult: TLabel;
    qrSem_email: TQuery;
    qrSem_emailsem_email: TIntegerField;
    qr_FollowUp_Check_Tipo_Processo: TQuery;
    qr_FollowUp_Check_Tipo_ProcessoPK_ID: TAutoIncField;
    qr_FollowUp_Check_Tipo_ProcessoFK_Tipo_Processo: TStringField;
    qr_FollowUp_Check_Tipo_ProcessoFK_Usuario: TStringField;
    qrExcluirPendencia: TQuery;
    qrVerificaPendencia: TQuery;
    qrInsertAbrirProcesso: TQuery;
    qrUpAbrirProcesso: TQuery;
    btnAbrirProcesso: TBitBtn;
    btnExcluirPendencia: TBitBtn;
    qrProcessoAberto: TQuery;
    qrySP_Controle_Pastas_Financeiro: TQuery;
    qrSP_Relatorio_Follows_KPI: TQuery;
    qrRelatorioKPI: TQuery;
    qrRelatorioKPIprocesso: TStringField;
    qrRelatorioKPIDescricao: TMemoField;
    btnAutorizaDI: TBitBtn;
    qrAutorizaDI: TQuery;
    dsAutorizadorDI: TDataSource;
    qrAutorizaDIAuditor1: TStringField;
    qrAutorizaDIData_Auditor1: TDateTimeField;
    pnlAutorizaDI: TPanel;
    Panel18: TPanel;
    lblAutorizaDI: TLabel;
    Panel19: TPanel;
    btnIncluiAutDI: TBitBtn;
    btnRejeitaAutDI: TBitBtn;
    GroupBox2: TGroupBox;
    dbedAutorizador1: TDBEdit;
    GroupBox4: TGroupBox;
    dbedAutorizador2: TDBEdit;
    dbedDataAutorizador1: TDBEdit;
    dbedDataAutorizador2: TDBEdit;
    qrAutorizaDIAuditor2: TStringField;
    qrAutorizaDIData_Auditor2: TDateTimeField;
    DBGrid2: TDBGrid;
    pnlRejeicao: TPanel;
    Panel20: TPanel;
    Label30: TLabel;
    Panel21: TPanel;
    btnSalvarRejeicao: TBitBtn;
    mmDetalheRejeicao: TMemo;
    Label25: TLabel;
    qrHistoricoRejeicao: TQuery;
    dsHistoricoRejeicao: TDataSource;
    qrHistoricoRejeicaoProcesso: TStringField;
    qrHistoricoRejeicaoData_Rejeicao: TDateTimeField;
    qrHistoricoRejeicaoAuditor_Rejeicao: TStringField;
    qrHistoricoRejeicaoObservacao: TStringField;
    btnCancelarRejeicao: TBitBtn;
    btnFecharAutorizacaoDI: TBitBtn;
    qrProcessosStatusNome: TStringField;
    qrProcessosStatus: TStringField;
    qrProcessosData_Aprovacao_RCR: TDateTimeField;
    qrProcessoscanal: TStringField;
    qrProcessosTipo: TStringField;
    qrProcessosEmpresa: TStringField;
    qrProcessosFilial: TStringField;
    qrProcessosProcesso: TStringField;
    qrProcessosData: TDateTimeField;
    qrProcessosrefcli: TStringField;
    qrProcessosCliente: TStringField;
    qrProcessostipodecla: TStringField;
    qrProcessosTipo_Declaracao: TStringField;
    qrProcessostipopro: TStringField;
    qrProcessosTipo_1: TStringField;
    qrProcessosqcontrato: TStringField;
    qrProcessosqlocal: TStringField;
    qrProcessosresponsavel_empresa: TStringField;
    qrProcessosqcnpj: TStringField;
    qrProcessosFechado: TIntegerField;
    qrProcessosATIVO: TIntegerField;
    qrProcessosImportador: TStringField;
    qrProcessosResponsavel_empresac: TStringField;
    qrProcessosData_Chegada_URF_Cheg: TDateTimeField;
    qrProcessosVia: TStringField;
    qrProcessosNumeroMaster: TStringField;
    qrProcessosNumerodoccarga: TStringField;
    qrProcessosTipodoccarga: TStringField;
    qrProcessosNR_DECLARACAO_IMP: TStringField;
    qrProcessosSaldo: TFloatField;
    qrProcessosNumero_TR: TStringField;
    qrProcessosData_Entrada_TR: TDateTimeField;
    qrProcessosData_vencimento_TR: TDateTimeField;
    qrProcessosDT_DESEMBARACO: TDateTimeField;
    procedure FormActivate(Sender: TObject);
    procedure ME_nossarefChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbFollowUpAfterPost(DataSet: TDataSet);
    procedure tbFollowUpBeforeDelete(DataSet: TDataSet);
    procedure btnSairClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure sbLocEventoClick(Sender: TObject);
    procedure me_localizaChange(Sender: TObject);
    procedure b_okloceventosClick(Sender: TObject);
    procedure b_cancelaloceventosClick(Sender: TObject);
    procedure qrEventosAfterScroll(DataSet: TDataSet);
    procedure sbLimpaObsClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dbEdtDataChange(Sender: TObject);
    procedure dbEdtHoraChange(Sender: TObject);
    procedure acAtuTabelasExecute(Sender: TObject);
    procedure bprofolClick(Sender: TObject);
    procedure btnResumidoClick(Sender: TObject);
    procedure t_FollowResAfterPost(DataSet: TDataSet);
    procedure dbgFollowUpDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnAlterarHoraClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnCancelarHoraClick(Sender: TObject);
    procedure btOKClick(Sender: TObject);
    procedure btnCheckClick(Sender: TObject);
    procedure btnCancelarFollowClick(Sender: TObject);
    procedure btnAtivaFollowClick(Sender: TObject);
    procedure btnSemEmailClick(Sender: TObject);
    procedure btnExcluirPendenciaClick(Sender: TObject);
    procedure btnAbrirProcessoClick(Sender: TObject);
    procedure btnAutorizaDIClick(Sender: TObject);
    procedure btnIncluiAutDIClick(Sender: TObject);
    procedure dbedDataAutorizador1Change(Sender: TObject);
    procedure dbedAutorizador1Change(Sender: TObject);
    procedure dbedDataAutorizador2Change(Sender: TObject);
    procedure dbedAutorizador2Change(Sender: TObject);
    procedure btnSalvarRejeicaoClick(Sender: TObject);
    procedure btnRejeitaAutDIClick(Sender: TObject);
    procedure btnCancelarRejeicaoClick(Sender: TObject);
    procedure btnFecharAutorizacaoDIClick(Sender: TObject);
    procedure qrFollowUpAfterScroll(DataSet: TDataSet);
   private
    fLiberadoOK: Boolean;
    fLiberarTransOK: Boolean;
    fLiberarAgOK: Boolean;
    fCargaOK: Boolean;
    fLiberarnumOK: Boolean;
    fLiberarDARJOK: Boolean;
    fLiberarEnviouDARJOK: Boolean;
    fLiberarVisadaOK: Boolean;
    fLiberarRFOK: Boolean;
    fLiberarFinOK: Boolean;
    fLiberarResOK: Boolean;
    fLiberarGuiaOK: Boolean;
    fLiberarSISOK: Boolean;
    fLiberarDIOK: Boolean;
    fLiberarcliOK: Boolean;
    fLiberarMarOK: Boolean;
    fLiberarArOK: Boolean;
    fLiberarRGOK: Boolean;
    fLiberarDSIOK: Boolean;
    fLiberarcargaOK: Boolean;
    fLiberarEmbOK: Boolean;
    fLiberarCadastroOK: Boolean;
    fProcessoCancelOK: Boolean;
    fBloquearFollowOK: Boolean;
    fBloquearFollowFinanceiroOK: Boolean;
    fBloquearFin0 : Boolean;
    fBloquearFin1 : Boolean;
    fBloquearFin2 : Boolean;
    TotalFatura : Double;

    procedure UpdateALC(Processo : String; Data: TDateTime);
    procedure TestPre_Requisitos();
    function ConhecimentoNaoScaneado(MS, Conhecimento: String): Boolean;
    function DesembaracoCompleto : Boolean;
    function FollowOK( MS : String  ) : Boolean;
    function CargaChegou : Boolean;
    function Liberar : Boolean;
    function Liberarnum : Boolean;
    function LiberarDARJ : Boolean;
    function LiberarEnviouDARJ : Boolean;
    function LiberarVisada : Boolean;
    function LiberarRF : Boolean;
    function LiberarFin : Boolean;
    function LiberarRes : Boolean;
    function LiberarGuia : Boolean;
    function LiberarSIS : Boolean;
    function LiberarDI : Boolean;
    function Liberarcli : Boolean;
    function LiberarMar : Boolean;
    function LiberarAr : Boolean;
    function LiberarRG : Boolean;
    function LiberarTrans : Boolean;
    function LiberarAg : Boolean;
    function LiberarDSI : Boolean;
    function Liberarcarga : Boolean;
    function LiberarEmb : Boolean;
    function BloquearFin0 : Boolean;
    function BloquearFin1 : Boolean;
    function BloquearFin2 : Boolean;
    function LiberarCadastro(CodigoOBS : Integer): Boolean;
    function ProcessoCancelado : Boolean;
    property LiberarCadastroOK : Boolean read fLiberarCadastroOK write fLiberarCadastroOK;
    property LiberarnumOK : Boolean read fLiberarnumOK write  fLiberarnumOK;
    property LiberarDARJOK : Boolean read fLiberarDARJOK write  fLiberarDARJOK;
    property LiberarEnviouDARJOK : Boolean read fLiberarEnviouDARJOK write  fLiberarEnviouDARJOK;
    property LiberarVisadaOK : Boolean read fLiberarVisadaOK write  fLiberarVisadaOK;
    property LiberarRFOK : Boolean read fLiberarRFOK write  fLiberarRFOK;
    property LiberarFinOK : Boolean read fLiberarFinOK write  fLiberarFinOK;
    property LiberarResOK : Boolean read fLiberarResOK write  fLiberarResOK;
    property LiberarGuiaOK : Boolean read fLiberarGuiaOK write  fLiberarGuiaOK;
    property LiberarSISOK : Boolean read fLiberarSISOK write  fLiberarSISOK;
    property LiberarDIOK : Boolean read fLiberarDIOK write  fLiberarDIOK;
    property LiberarcliOK : Boolean read fLiberarcliOK write  fLiberarcliOK;
    property LiberarMarOK : Boolean read fLiberarMarOK write  fLiberarMarOK;
    property LiberarArOK : Boolean read fLiberarArOK write  fLiberarArOK;
    property LiberarRGOK : Boolean read fLiberarRGOK write  fLiberarRGOK;
    property BloquearFollowOK : Boolean read fBloquearFollowOK write  fBloquearFollowOK;
    property LiberarTransOK : Boolean read fLiberarTransOK write  fLiberarTransOK;
    property LiberarAgOK : Boolean read fLiberarAgOK write  fLiberarAgOK;
    property LiberarDSIOK : Boolean read fLiberarDSIOK write  fLiberarDSIOK;
    property LiberarcargaOK : Boolean read fLiberarcargaOK write  fLiberarcargaOK;
    property LiberarEmbOK : Boolean read fLiberarEmbOK write  fLiberarEmbOK;
    property LiberadoOK : Boolean read fLiberadoOK write fLiberadoOK;
    property BloquearFollowFinanceiroOK : Boolean read fBloquearFollowFinanceiroOK write fBloquearFollowFinanceiroOK;
    property CargaOK : Boolean read fCargaOK write fCargaOK;
    property ProcessoCancelOK : Boolean read fProcessoCancelOK write fProcessoCancelOK;
    property BloquearFin0OK : Boolean read fBloquearFin0 write fBloquearFin0;
    property BloquearFin1OK : Boolean read fBloquearFin1 write fBloquearFin1;
    property BloquearFin2OK : Boolean read fBloquearFin2 write fBloquearFin2;
    function VerificarLiberacaoProcessoUsuario : Boolean;
    function VerificarFollowAtivo : Boolean;
    function VerificarFollowinvoice : Boolean;
    function VerificarFollowEntradaDI : Boolean;
    function BloquearFollow: Boolean;
    function BloquearFollowFinanceiro: Boolean;
    function AtualizaGridAutorizacaoDI : Boolean;
    procedure EnviaEmailResponsavelProcesso(Tipo : String);
    procedure GravaObservacaoRejeicaoDI;
    procedure AtualizaGridRejeicaoDI;
    function VerificarSeContratoERepetro(Processo : String) : Boolean;
    function DIEstaIncluidaNoRepetro(DI : String) : Boolean;
    function ICMSNaoContabilizado(Processo : String) : Boolean;

    function VerificaICMS(Processo : String) : Boolean;
    function NaoPossuiFaturaItenFaturaTributacao(
      Processo: String): Boolean;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_proFollowup: TF_proFollowup;
  v_novofol: boolean;
  v_editafollow: integer;
  vEmp, vFil, vPro: String;
  SenhaOK : Boolean;
  vUsuScanner : integer;
  op : integer;
  invoice : integer;
  voper : string;
  
implementation

uses U_MSCOMEX, u_profollowupRes, U_acesso;

{$R *.DFM}

procedure TF_proFollowup.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;

  v_editafollow := v_follow_liberado;

  { REFRESH NAS TABELAS }
  acAtuTabelas.Execute;
end;

procedure TF_proFollowup.ME_nossarefChange(Sender: TObject);
var
  cnpj: String;
  Ok: boolean;
begin
  if Length(F_MSCOMEX.LRTrim(me_nossaref.Text)) <> 8
   then Exit;

  // eduardo.souza 03/11/2011
  SenhaOK := False;
  //---
  Screen.Cursor := crHourGlass;

  qrProcessos.ParamByName( 'Processo' ).Value := me_nossaref.Text;
  qrProcessos.Close;
  qrProcessos.Open;
  {Leandro Serra 29/03/2012 - Ticket 2424}
  {Obs: A localização da pasta na verdade funciona assim
   Se no controle de pasta estiver aceite = 1 então a pasta está com o usuário
   Se no controle de pasta estiver aceite = 2 então a pasta está com o De_usuário da
   pasta de movimentação de pasta, ou seja a última movimentação desta tabela.

   No APENC a localização de pasta irá se basear nesta regra.
   Na tela do Follow a Localização de Pasta também está nesta regra.}

  lblResponsavelEmpresa.Caption := 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx';
  lblResponsavelDaPasta.Caption := 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx';
  lblSaldoResult.Caption        := 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx';

  btnAutorizaDI.Enabled      := (qrProcessos.RecordCount >= 1) and AtualizaGridAutorizacaoDI;

  with qControle_Pasta do
   begin
     close;
     ParamByName('pProcesso').asString := me_nossaref.Text;
     Open;
   end;

  with qMovimentacaoPastas do
   begin
     close;
     ParamByName('pProcesso').asString := me_nossaref.Text;
     Open;
   end;

  if (qControle_PastaAceite.Value = 1)
   then begin
     with qUsu do
      begin
        close;
        ParamByName('pUsu').asString := qControle_PastaUsuario.AsString;
        Open;
      end;

     lblResponsavelDaPasta.Caption:=  qUsuNome_Completo.AsString;
   end
   else begin
     with qUsu do
      begin
        close;
        ParamByName('pUsu').asString := qMovimentacaoPastasDe_usuario.AsString;
        Open;
      end;

     lblResponsavelDaPasta.Caption:=  qUsuNome_Completo.AsString;
   end;

     qryCoordenador.Close;
     qryCoordenador.Open;

   Ok := False;
   while not qryCoordenador.Eof do begin

      if qryCoordenadorUsuario.AsString = v_usuario then
         Ok := true;
    qryCoordenador.next;
   End;

   btnAbrirProcesso.Enabled    := (v_usuario = 'ODILMA');
   btnExcluirPendencia.Enabled := Ok;

  if (qrProcessosSaldo.AsFloat = 0)
   then lblSaldoResult.Caption := '0'
   else lblSaldoResult.Caption := FormatFloat('#,##0.00',qrProcessosSaldo.AsFloat);

  if (v_usuario = 'ODILMA') OR (v_usuario = 'DUDA')
   then begin
     with qUsu do
      begin
        close;
        ParamByName('pUsu').asString := qrProcessosresponsavel_empresa.AsString;
        Open;
      end;

     lblResponsavelEmpresa.Caption :=qUsuNome_Completo.AsString;

     with qrSem_email do
      begin
        close;
        ParamByName('Proc1').asString := me_nossaref.Text ;
        Open;
      end;

     if qrSem_emailsem_email.AsString = '0'
      then btnSemEmail.Enabled := True
      else btnSemEmail.Enabled := False;
   end;
   {Fim do Ticket 2424}

  if (not qrProcessos.IsEmpty)
   then begin
     vEmp := qrProcessosEmpresa.AsString;
     vFil := qrProcessosFilial.AsString;
     vPro := qrProcessosProcesso.AsString;

     with qrFollowUpInc do
      begin
        Params[0].AsString := vPro;
      end;

     with qrFollowUp do
      begin
        Close;
        Params[0].AsString := vPro;
        Open;
      end;

     if tbFollowUp.State = dsInactive
      then tbFollowUp.Open;

     qrVerificafollowRec.ParamByName( 'Processo' ).Value := me_nossaref.Text;
     qrVerificafollowRec.Close;
     qrVerificafollowRec.Open;

     qrverificafollowNumerario.ParamByName( 'Processo' ).Value := me_nossaref.Text;
     qrverificafollowNumerario.Close;
     qrverificafollowNumerario.Open;

     // eduardo.souza e leonardo alabarce 02/12/2011
     TestPre_Requisitos();
     //---

     // Leonardo.Alabarce 22/12/2011 ticket 1188
     chbCriarFollow.Enabled := False;
     btnAtivaFollow.Enabled := False;
     lblExibiFollow.Caption :='';

     qrExibiLabel.ParamByName( 'processo' ).value := ME_nossaref.text;
     qrExibiLabel.close;
     qrExibiLabel.open;

     if qrExibiLabelfollow_auto.AsString = '1'
      then lblExibiFollow.Caption := qrExibiLabelqevento.asstring+ ' - ' +qrExibiLabelqobs.AsString;

     if (qrExibiLabelfollow_ativo.AsString = '0')
      then begin
        if (qrExibiLabelfollow_auto.AsString = '0')
         then begin
           btnAtivaFollow.Enabled := False;
           btnCancelarFollow.Enabled := False;
         end
         else btnAtivaFollow.Enabled := True;
      end;

     if (qrExibiLabelfollow_auto.AsString = '1' )
      then btnCancelarFollow.Enabled := True;
     //Fim---------------------

     with qrApenc_Pendencias do
      begin
        close;
        ParamByName('qProc').asString := qrProcessosProcesso.AsString;
        Open;
      end;

     lblDescAPenc.Caption := '';
     lblDescAPenc.Caption := 'Observações: '+ qrApenc_PendenciasDescricao.AsString;

     // eduardo.souza 08/12/2011 - Follow-Up Check
     try
       //Verifica se o tipo de processo está cadastrado na tabela FollowUp_Check_Tipo_Processo
       qr_FollowUp_Check_Tipo_Processo.ParamByName('usuario').Value := v_usuario;
       qr_FollowUp_Check_Tipo_Processo.ParamByName('tipo').Value := qrProcessosTipo.Value;
       qr_FollowUp_Check_Tipo_Processo.open;

       if qr_FollowUp_Check_Tipo_Processo.IsEmpty
        then btnCheck.Enabled := false
        else btnCheck.Enabled := true;

       // Pegar Gerente, Coordenador e Supervisor
       qryCheckHierarquia.ParamByName('Usuario').Value := v_usuario;
       qryCheckHierarquia.Open;


       // eduardo.souza 19/03/2013 - Ticket: 2288
       // Verificar se o usuário tem tem 100%
       lblStatusProcesso.Caption := '';
       lblStatusProcesso.Caption := 'Status do Processo: '+ qrProcessosStatusNome.AsString;

       if ( not qryCheckHierarquia.IsEmpty )
        then begin
          qryVUserCemPorcento.ParamByName('Usuario').Value := v_usuario;
          qryVUserCemPorcento.Open;
        end;

       btnCheck.Enabled := (not( qryCheckHierarquia.IsEmpty )) and
                           (qryVUserCemPorcentoPERCENTUAL.AsFloat < 100.00);
       //---
       // Verifica se o processo já foi checado
       if (not qryCheckHierarquia.IsEmpty) and (btnCheck.Enabled)
        then begin
          qryCheckSelect.ParamByName('Usuario').Value := v_usuario;
          qryCheckSelect.ParamByName('Processo').Value := qrProcessosProcesso.AsString;
          qryCheckSelect.Open;
          btnCheck.Enabled := ( qryCheckSelect.IsEmpty );

          // Verifica se o status é :
          // 0 - Em Andamento no Operacional
          // 01 - Em Andamento no Operacional - Aguardando Desembaraço
          // 1 - Finalizado no Operacional
          if (qrProcessosStatus.AsString = '2') or
             (qrProcessosStatus.AsString = '3') or
             (qrProcessosStatus.AsString = '4')
           then btnCheck.Enabled := false;
          //---
        end;
          //---
     finally
       qryCheckSelect.Close;
       qryCheckHierarquia.Close;
       qryVUserCemPorcento.Close;
       //-- fim 08/12/2011

       btnAlterar.Enabled := False;
       btnExcluir.Enabled := False;
       btnResumido.Enabled := false;

       if ((v_editafollow = 1) or (v_editafollow = 2) or (v_usuario = qrProcessosResponsavel_empresa.AsString))
        then btnResumido.Enabled := true;

       btnIncluir.Enabled := True;

       { REFRESH NAS TABELAS }
       acAtuTabelas.Execute;

       //coloquei em 19052008
       if assigned (f_profollowupres)
        then begin
          if not t_followres.FindKey([v_empresa,v_filial,ME_nossaref.text])
           then begin
             t_followres.Insert;
             t_followres.edit;
             t_followresprocesso.asstring := ME_nossaref.text;
             t_followres.post;
           end;
        end;

       //alterei em 27/07/2005 - mm - chupisco!!!
       v_AlteraPRO := 1;

       if (not qrprocessosAtivo.asinteger = 1)
        then begin
          if (not v_Edita_cliente_inativo = 1)
           then begin
             Showmessage(v_usuario+', este Cliente está Inativo. Somente usuários habilitados para editar clientes inativos poderão alterar as informações do processo.');
             v_AlteraPRO := 0;
           end;
        end;

       if (qrprocessosFechado.asinteger = 1)
        then begin
          if (not v_Edita_Processo_Fechado = 1)
           then begin
             Showmessage(v_usuario+', este Processo está Fechado. Somente usuários habilitados em editar processos fechados poderão alterar as informações do processo.');
             v_AlteraPRO := 0;
           end
           else v_AlteraPRO := 1;
        end;

       if v_AlteraPRO = 1
        then btnResumido.Enabled := true
        else btnResumido.Enabled := false;

       if v_AlteraPRO = 1
        then btnIncluir.Enabled := true
        else btnIncluir.Enabled := false;

       //mm 24/07/2006 - usuariosclientes
       if f_mscomex.q_usucli.recordcount > 0
        then begin
          if f_mscomex.q_usucli.locate('Importador',qrProcessosimportador.asstring,[])
           then v_autorizadocli := 1
           else v_autorizadocli := 0;
        end
        else v_autorizadocli := 1;

       F_MSCOMEX.atualizacpastas(ME_nossaref.text);

       if v_autorizadocli = 1
        then begin
          cnpj := qrprocessosqcnpj.asstring;
          cnpj := Copy(cnpj,1,2)+'.'+Copy(cnpj,3,3)+'.'+Copy(cnpj,6,3)+'/'+Copy(cnpj,9,4)+'-'+Copy(cnpj,13,2);

          l_cliente.Caption := qrProcessosCliente.AsString+' - CNPJ: '+cnpj;
          pnlPrincipal.Visible := True;
          pnlBaixo.Visible := True;
        end
        else begin
          l_cliente.Caption := '';
          pnlPrincipal.Visible := False;
          pnlBaixo.Visible := False;
          Showmessage(v_usuario+', este Processo pertence a um Cliente que seu acesso não está permitido!');
        end;

       // eduardo.souza 17/08/2011
       qrFollowUp.First;
       qrFollowUp.Last;
       //--

       if (v_nivel <> '4')
        then begin
          if F_MSCOMEX.AcessaPasta(me_nossaref.Text, qrProcessostipo.AsString, F_proFollowup)
           then pnlBaixo.Enabled := True;
        end;
     end;
   end
   else begin
     MessageDlg('Processo não encontrado!', mtInformation,[mbOk], 0);
     l_cliente.Caption := '';
     me_nossaref.Clear;
     pnlPrincipal.Visible := False;
     pnlBaixo.Visible := False;
     me_nossaref.SetFocus
   end;

  // Leonardo.Alabarce 26/01/2012 ticket 1575
  if (qrverificafollowNumerarioData.AsString <> '')
   then begin
     if (qrVerificafollowRecData.AsString <> '' )
      then begin
        if (StrToDate(qrverificafollowNumerarioData.AsString) > StrToDate(qrVerificafollowRecData.AsString))
         then begin
           ShowMessage ('Existe followup "'+qrverificafollowNumerarioDescricao_evento.AsString +' - '+ qrverificafollowNumerarioDescricao.AsString+'" com uma data posterior da Data do recebimento de numerário - '+qrVerificafollowRecData.AsString);
           qrVerificafollowRec.Close;
           qrverificafollowNumerario.close;
         end;
      end;
   end;     
  //Fim-----------------------------------------------------

  Screen.Cursor := crDefault;
  btnIncluir.SetFocus;    
end;

procedure TF_proFollowup.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  f_mscomex.FollowUp2.Enabled := True;
  f_profollowup := Nil;
  Action := caFree;
end;

procedure TF_proFollowup.tbFollowUpAfterPost(DataSet: TDataSet);
begin
  logusu('P','Alterou Follow Up: '+qrEventosDescricao.AsString+' - '+qrObsEventosDescricao.AsString+' - Processo: '+qrProcessosProcesso.AsString);
  f_mscomex.MSPGP(me_nossaref.text);
end;

procedure TF_proFollowup.tbFollowUpBeforeDelete(DataSet: TDataSet);
begin
  logusu('E','Excluiu Follow Up: '+qrEventosDescricao.AsString+' - '+qrObsEventosDescricao.AsString+' - Processo: '+qrProcessosProcesso.AsString);
end;

procedure TF_proFollowup.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TF_proFollowup.btnIncluirClick(Sender: TObject);
var
  vData : TDate;
  datainvoice : String;
begin
  if (v_AlteraPRO = 1)
   then begin
     voper := 'I';
     sbLocEvento.Enabled:=True;

     // eduardo.souza e leonardo alabarce 06/12/2011
     TestPre_Requisitos();
     //---

     // Leonardo.Alabarce 22/12/2011 ticket 1188
     if  (v_usuario = 'ODILMA') or (v_usuario = 'LFERRAZ') or (v_usuario = 'NATASHA') or (v_usuario = 'DUDA')
      then begin
        if (VerificarFollowAtivo = False)
         then chbCriarFollow.Enabled := True;
      end;
     // FIM-----------------------

     // Leonardo.Alabarce 01/03/2012 ticket 1839
     with qrInvoice do
      begin
        close;
        ParamByName('qProcesso').asstring := ME_nossaref.text;
        Open;
      end;

     datainvoice := qrInvoiceData.AsString;

     if ((VerificarFollowinvoice = false) and (qrInvoice.RecordCount <> 0) and (v_dataFollow > datainvoice) and
         (MessageDlg('A Invoice original Foi Recebida?',mtConfirmation,[mbYes, mbNo], 0) = mrYes))
      then begin
        qrInsertRecInovice.ParamByName('Processo').Value := ME_nossaref.text;
        qrInsertRecInovice.ParamByName('data').Value := v_dataFollow;
        qrInsertRecInovice.ParamByName('hora').Value := FormatDateTime('hh:nn',Now());
        qrInsertRecInovice.ParamByName('Usuario').Value := v_usuario;
        qrInsertRecInovice.ExecSQL;
        ShowMessage('O Follow Recebemos invoice original foi cadastrado.');
        qrFollowUp.close;
        qrFollowUp.open;
        btnCancelar.Click;
      end
      else begin
        with qrFollowUpInc do
         begin
           Params[1].AsString := FormatDateTime('dd/mm/yyyy',StrToDate(v_dataFollow));
           Params[2].AsString := FormatDateTime('hh:nn',Now());
           ExecSQL;
         end;

        with qrFollowUp do
         begin
           Close;
           Open;
           Last;
         end;

        tbFollowUp.Edit;
        tbFollowUpUsuario.AsString := v_usuario;
        v_novofol := True;

        op := 1;
        pnlTop.Enabled := False;
        dbgFollowUp.Enabled := False;

        if ((v_editafollow = 1) or (v_editafollow = 2))
         then begin
           dbEdtData.Enabled := true;
           dbEdtHora.Enabled := true;
         end
         else begin
           dbEdtData.Enabled := false;
           dbEdtHora.Enabled := false;
         end;

        dbLcbEvento.Enabled := True;
        dbLcbObs.Enabled    := True;
        dbEdtObsDet.Enabled := True;
        dbEdtRef.Enabled    := True;
        sbLocEvento.Enabled := True;
        sbLimpaObs.Enabled  := True;

        btnIncluir.Enabled  := False;
        btnAlterar.Enabled  := False;
        btnExcluir.Enabled  := False;
        btnSair.Enabled     := False;
        btnSalvar.Enabled   := True;
        btnCancelar.Enabled := True;

        dbLcbEvento.SetFocus;
      end;
      //Fim-----------------------------------------------------------------------------------
   end
   else Showmessage(v_usuario+', este processo está fechado e/ou o Cliente está Inativo. Somente usuários habilitados para editar clientes inativos e/ou editar processos fechados, poderão alterar as informações do processo.');
end;

procedure TF_proFollowup.btnAlterarClick(Sender: TObject);
begin
  if (v_AlteraPRO = 1)
   then begin
     voper := 'A';

     if (tbFollowUpCodevento.AsString = '2519')
      then begin
        Showmessage(v_usuario+', este Follow Up não pode ser alterado.');
        Abort;
      end;

     sbLocEvento.Enabled := True;

     tbFollowUp.Edit;
     tbFollowUpUsuario.AsString := v_usuario;
     v_novofol := False;
     op := 0;
     pnlTop.Enabled := False;
     dbgFollowUp.Enabled := False;

     if ((v_editafollow = 1) or (v_editafollow = 2))
      then begin
        dbEdtData.Enabled := true;
        dbEdtHora.Enabled := true;
      end
      else begin
        dbEdtData.Enabled := false;
        dbEdtHora.Enabled := false;
      end;

     //EDUARDO.SOUZA 09/01/2012 SANDRO
     if (v_editafollow = 2)
      then begin
        dbEdtData.Enabled := true;
        dbEdtHora.Enabled := true;
      end;
     //---

     dbLcbEvento.Enabled := True;
     dbLcbObs.Enabled    := True;
     dbEdtObsDet.Enabled := True;
     dbEdtRef.Enabled    := True;
     sbLocEvento.Enabled := True;
     sbLimpaObs.Enabled  := True;

     btnIncluir.Enabled  := False;
     btnAlterar.Enabled  := False;
     btnExcluir.Enabled  := False;
     btnSair.Enabled     := False;
     btnSalvar.Enabled   := True;
     btnCancelar.Enabled := True;
     
     dbLcbEvento.SetFocus;
   end
   else Showmessage(v_usuario+', este processo está fechado e/ou o Cliente está Inativo. Somente usuários habilitados para editar clientes inativos e/ou editar processos fechados, poderão alterar as informações do processo.');
end;

procedure TF_proFollowup.btnExcluirClick(Sender: TObject);
var
  qreg : String;
  qdata : String;
  qhora : String;
  qduracao : Real;
begin
  if (v_AlteraPRO = 1)
   then begin
     if (tbFollowUpCodevento.AsString = '2519')
      then begin
        Showmessage(v_usuario+', este Follow Up não pode ser excluído.');
        Abort;
      end;

     voper := 'E';
     sbLocEvento.Enabled:=False;

     if MessageDlg('Confirma exclusão de Follow Up?', mtConfirmation,[mbYes, mbNo], 0) = mrNo
      then Exit;

     Screen.Cursor := crHourGlass;

     qreg := tbFollowUpSequencial.AsString;
     qrFollowUp.MoveBy(+1);

     qdata := tbFollowUpData.AsString;
     qhora := tbFollowUpHora.AsString;

     qrFollowUp.MoveBy(-2);
     tbFollowUp.Edit;
     tbFollowUpData_final.AsString := qdata;
     tbFollowUpHora_final.AsString := qhora;

     qduracao := (tbFollowUpData_final.AsDateTime-tbFollowUpData.AsDateTime);

     if qduracao > 0
      then qduracao :=  qduracao * 24 * 60 * 60
      else qduracao := 0;

     qduracao := qduracao - (StrToInt(Copy(tbFollowUpHora.AsString,1,2))*60*60);
     qduracao := qduracao - (StrToInt(Copy(tbFollowUpHora.AsString,4,2))*60);
     qduracao := qduracao + (StrToInt(Copy(tbFollowUpHora_final.AsString,1,2))*60*60);
     qduracao := qduracao + (StrToInt(Copy(tbFollowUpHora_final.AsString,4,2))*60);

     tbFollowUpDuracao.AsFloat := qduracao;
     tbFollowUp.Post;
     qrFollowUp.Locate('sequencial', qreg, [loCaseInsensitive]);
     tbFollowUp.Delete;
     qrFollowUp.Close;
     qrFollowUp.Open;

     Screen.Cursor := crDefault;
   end
   else Showmessage(v_usuario+', este processo está fechado e/ou o Cliente está Inativo. Somente usuários habilitados para editar clientes inativos e/ou editar processos fechados, poderão alterar as informações do processo.');
end;

procedure TF_proFollowup.btnSalvarClick(Sender: TObject);
var
  qreg: String;
  vData: TDate;
  processo : string;
begin
  processo := ME_nossaref.text;
  sbLocEvento.Enabled:=False;

  if ( Trim( qrEventosCodigo.AsString ) = '1017' ) and  ( Trim( qrObsEventosCodigo.AsString ) = '3' )
   then begin
     {Leandro Serra - 07/11/2011 Ticket 1155}
     with qChegadaDoNavio do
      begin
        Close;
        ParamByName('pProcesso').value:= ME_nossaref.text;
        Open;
      end;

     if (qChegadaDoNavioData_Chegada_URF_Cheg.IsNull) or (qChegadaDoNavioData_Chegada_URF_Cheg.AsString = '')
      then begin
        MessageDlg('Follow Up não poderá ser salvo sem informar a chegada do navio.', mtWarning, [mbOk], 0);
        Exit;
      end;
   end;

  if (dbLcbEvento.Text = 'Aguardando Cliente') and (dbLcbObs.Text    = '')
   then begin
     MessageDlg('Follow Up não poderá ser salvo sem informar a observação do evento.', mtWarning, [mbOk], 0);
     Exit;
   end;

  if (dbLcbEvento.Text = 'Aguardando chegada do navio') and (dbLcbObs.Text    = '')
   then begin
     MessageDlg('Follow Up não poderá ser salvo sem informar a observação do evento.', mtWarning, [mbOk], 0);
     Exit;
   end;

  if (dbLcbEvento.Text = 'Aguardando chegada do navio no Porto do RJ') and (dbLcbObs.Text    = '')
   then begin
     MessageDlg('Follow Up não poderá ser salvo sem informar a observação do evento.', mtWarning, [mbOk], 0);
     Exit;
   end;

  {Leandro Serra 03/10/2011 - Ticket 720
  Para o Evento Averbamos B/L verificar se existe data de chegada do Navio, se não cancelar gravação.}
  if (dbLcbEvento.Text = 'Averbamos B/L')
   then begin
     with qDataChegadaURF do
      begin
        close;
        ParamByName('pProcesso').asstring:=ME_nossaref.text;
        Open;

        if  (qDataChegadaURF.RecordCount = 0) or (qDataChegadaURFData_Chegada_URF_Cheg.IsNull) or (qDataChegadaURFData_Chegada_URF_Cheg.AsString =  '')
         then begin
           MessageDlg('Follow Up não poderá ser salvo sem informar a data de chegada do navio.', mtWarning, [mbOk], 0);
           Exit;
         end;
      end;
   end;

  //Leonardo.Alabarce 30/01/2012  Solicitado por Odilma  - ticket 2895
  if ((Trim(qrEventosCodigo.AsString)    = '1021') and ((Trim( qrObsEventosCodigo.AsString) = '1226') or
      (Trim(qrObsEventosCodigo.AsString) = '1241') or   (Trim( qrObsEventosCodigo.AsString) = '1167') or
      (Trim(qrObsEventosCodigo.AsString) = '1168') or   (Trim( qrObsEventosCodigo.AsString) = '1169') or
      (Trim(qrObsEventosCodigo.AsString) = '1221') or   (Trim( qrObsEventosCodigo.AsString) = '1220') or
      (Trim(qrObsEventosCodigo.AsString) = '1207')))
   then begin
     if qrProcessosNR_DECLARACAO_IMP.AsString <> ''
      then begin
        with qrDiDigitalizada do
         begin
           close;
           ParamByName('proc').asstring:=ME_nossaref.text;
           Open;

           if  (qrDiDigitalizada.RecordCount = 0)
            then begin
              MessageDlg('Follow Up não poderá ser salvo, pois a DI não foi Scaneada.', mtWarning, [mbOk], 0);
              Exit;
            end;
         end;
      end;
   end;

  if ((Trim(qrEventosCodigo.AsString) = '1021') and (Trim(qrObsEventosCodigo.AsString) = '1112'))
   then begin
     with qrICMSdigitalizado do
      begin
        close;
        ParamByName('proc').asstring:=ME_nossaref.text;
        Open;

        if (qrICMSdigitalizado.RecordCount = 0)
         then begin
           MessageDlg('Follow Up não poderá ser salvo, pois o ICMS não foi Scaneado.', mtWarning, [mbOk], 0);
           Exit;
         end;
      end;
   end;

  //Leonardo.Alabarce Solicitado por Odilma  - ticket 1502
  if ((Trim(qrEventosCodigo.AsString) = '295') and (Trim(qrObsEventosCodigo.AsString) = '1183' )or ( Trim( qrObsEventosCodigo.AsString) = '1184'))
   then begin
     with qDataChegadaURF do
      begin
        close;
        ParamByName('pProcesso').asstring:=ME_nossaref.text;
        Open;

        if  (qDataChegadaURF.RecordCount = 0) or (qDataChegadaURFData_Chegada_URF_Cheg.IsNull) or (qDataChegadaURFData_Chegada_URF_Cheg.AsString =  '')
         then begin
           MessageDlg('Follow Up não poderá ser salvo sem informar a data de chegada.', mtWarning, [mbOk], 0);
           Exit;
         end;
      end;
   end;
  //Fim---------------------------------

  //Leonardo.Alabarce Solicitado por Odilma  - ticket 1444
  if (qrProcessostipo.AsString = '11')
   then begin
     if ((Trim(qrEventosCodigo.AsString ) = '2336' )or(( Trim( qrEventosCodigo.AsString) = '1021') and ((Trim(qrObsEventosCodigo.AsString) = '1117')    or
         (Trim(qrObsEventosCodigo.AsString ) = '1225' )or( Trim( qrObsEventosCodigo.AsString) = '1125') or (Trim(qrObsEventosCodigo.AsString) = '1129') or
         (Trim(qrObsEventosCodigo.AsString ) = '1141' ))))
      then begin
        with qDataChegadaURF do
         begin
           close;
           ParamByName('pProcesso').asstring:=ME_nossaref.text;
           Open;

           if  (qDataChegadaURF.RecordCount = 0) or (qDataChegadaURFData_Chegada_URF_Cheg.IsNull) or (qDataChegadaURFData_Chegada_URF_Cheg.AsString =  '')
            then begin
              MessageDlg('Follow Up não poderá ser salvo sem informar a data de chegada.', mtWarning, [mbOk], 0);
              Exit;
            end;
         end;
      end;
   end;

  //Leonardo.alabarce 14/03/2012 ticket 2255
  with qrProcessos do
   begin
     close;
     ParamByName('Processo').asstring := ME_nossaref.text;
     Open;

     if ((Trim(qrEventosCodigo.AsString) = '976') and (Trim( qrObsEventosCodigo.AsString) = '7'))
      then begin
        if ((qrProcessoscanal.AsString = '') or (qrProcessoscanal.AsString = '0') or (qrProcessoscanal.IsNull))
         then begin
           MessageDlg('Follow Up não poderá ser salvo sem informar o Canal.', mtWarning, [mbOk], 0);
           Exit;
         end;

        //Leonardo.alabarce 14/03/2012 ticket 2270
        if (VerificarFollowEntradaDI = false)
         then begin
           MessageDlg('Follow Up não poderá ser salvo, pois não existe o follow "Setor Operacional - Apresentou a Declaração de Importação...".', mtWarning, [mbOk], 0);
           Exit;
         end;
      end;
   end;

  if (qrProcessostipo.AsString = '12')
   then begin
     if ((Trim(qrEventosCodigo.AsString) = '2346') or (Trim(qrEventosCodigo.AsString) = '43'))
      then begin
        with qDataChegadaURF do
         begin
           close;
           ParamByName('pProcesso').asstring:=ME_nossaref.text;
           Open;

           if (qDataChegadaURF.RecordCount = 0) or (qDataChegadaURFData_Chegada_URF_Cheg.IsNull) or (qDataChegadaURFData_Chegada_URF_Cheg.AsString = '')
            then begin
              MessageDlg('Follow Up não poderá ser salvo sem informar a data de chegada do Navio.', mtWarning, [mbOk], 0);
              Exit;
            end;
         end;
      end;
   end;
  // Fim--------------------------------------------------------------

  //leonardo.alabarce 21/11/2011 - Solicitado por Odilma  - ticket 1028  - ticket 1086
  if ((Trim(qrEventosCodigo.AsString) = '1021' ) or (Trim(qrEventosCodigo.AsString) = '8') or  (Trim(qrEventosCodigo.AsString) = '1017') or
      (Trim(qrEventosCodigo.AsString) = '1024' ) or (Trim(qrEventosCodigo.AsString) = '295'))
   then begin
     if  (dbLcbObs.text = '')
      then begin
        MessageDlg('Favor informar a Observação.', mtWarning, [mbOk], 0);
        exit;
      end;
   end;
  // fim--------------------------------

  {wellington 30/11/2011 - Excluido o Setor Financeiro dessa verificação - Solicitado pela Maria Eduarda}
  if (StrToInt(v_nivel) > 4)
   then begin
     //leonardo.alabarce 28/11/2011 - Solicitado por Odilma    - ticket 1092
     if ( Trim(qrProcessostipopro.AsString) = 'Importação - Marítimo')
      then begin
        if ( Trim( qrEventosCodigo.AsString ) = '1' ) or ( Trim( qrEventosCodigo.AsString ) = '881' )
         then begin
           MessageDlg('Para Processo tipo marítimo favor informe o evento - "Aguardando chegada do navio".', mtWarning, [mbOk], 0);
           exit;
         end;

        //leonardo.alabarce 29/11/2011 - Solicitado por Odilma    - ticket 1096
        if (LiberarRGOK)
         then begin
           if (LiberarMarOK = false)
            then begin
              if ((Trim(qrEventosCodigo.AsString) = '1021') and (Trim(qrObsEventosCodigo.AsString) = '1130'))
               then LiberarMarOK := TRUE
               else begin
                 MessageDlg('Favor informar o Follow - "Setor Operacional - Apresentou DTA de Entrada Comum na RFB/Porto - RJ".', mtWarning, [mbOk], 0);
                 exit;
               end;
            end;
         end;
      end;

     if ( Trim(qrProcessostipopro.AsString) = 'Importação - Aéreo')
      then begin
        if (LiberarRGOK)
         then begin
           if(LiberarArOK = false)
            then begin
              if((Trim(qrEventosCodigo.AsString) = '1021') and (Trim(qrObsEventosCodigo.AsString) = '1128'))
               then LiberarArOK := TRUE
               else begin
                 MessageDlg('Favor informar o Follow - "Setor Operacional - Apresentou DTA de Entrada Comum na RFB/AIRJ".', mtWarning, [mbOk], 0);
                 exit;
               end;
            end;
         end;
      end;
     // fim-----------------------------------------------------------------------
   end;

  //eduardo.souza 17/08/2011
  if ( CargaOK )
   then begin
     if (Trim(qrEventosCodigo.AsString) = '1'   ) or
        (Trim(qrEventosCodigo.AsString) = '152' ) or
        (Trim(qrEventosCodigo.AsString) = '2338') or
        (Trim(qrEventosCodigo.AsString) = '2339') or
        (Trim(qrEventosCodigo.AsString) = '75'  ) or
        (Trim(qrEventosCodigo.AsString) = '806' )
      then begin
        MessageDlg('Follow-Up não poderá ser salvo, pois já existe o follow "Chegada da Carga...".', mtWarning, [mbOk], 0);
        Exit;
      end;
   end;
  // fim 17/08/2011

  if (Trim(qrEventosCodigo.AsString) = '245')
   then begin
     if (ProcessoCancelOK = True)
      then begin
        MessageDlg(format('Follow-Up não poderá ser salvo, pois já existe um follow "Processo Cancelado" para o processo: %s', [ME_nossaref.text]), mtWarning, [mbOk], 0);
        Exit;
      end;
   end;

  //leonardo.alabarce 15/09/2011 - Solicitado por Odilma
  if ( Trim(qrProcessostipopro.AsString) <> 'Exportação de Óleo / Petróleo')
   then begin
     if  (Trim(qrEventosCodigo.AsString)    = '982' ) and
        ((Trim(qrObsEventosCodigo.AsString) = '1128')  or
         (Trim(qrObsEventosCodigo.AsString)  = '1135')  or
         (Trim(qrObsEventosCodigo.AsString)  = '1136')  or
         (Trim(qrObsEventosCodigo.AsString)  = '1154')  or
         (Trim(qrObsEventosCodigo.AsString)  = '14'  )) or
         (Trim(qrEventosCodigo.AsString)     = '976' ) and
         (Trim(qrObsEventosCodigo.AsString)  = '10'  )
      then begin
        if LiberadoOK = false
         then begin
           MessageDlg('Follow Up não poderá ser salvo, pois não existe o follow "Setor Operacional -  Entrou com o RCR - Requerimento de Concessão de Regime (RFB/NIT) / (RFB/Natal) /(RFB/PORTO-RJ)/(ALF/AIRJ) ".', mtWarning, [mbOk], 0);
           Exit;
         end;
      end;
   end;
  // fim leonardo.alabarce

  //leonardo.alabarce 21/11/2011 - Solicitado por Odilma  - ticket 975
  if (Trim(qrEventosCodigo.AsString)    = '1021') and
     (Trim(qrObsEventosCodigo.AsString) = '1163') or
     (Trim(qrEventosCodigo.AsString)    = '866')  and
     (Trim(qrObsEventosCodigo.AsString) = '1')
   then begin
     if LiberarTransOK = false
      then begin
        MessageDlg('Follow Up não poderá ser salvo, pois não existe o follow "Setor Operacional - Preparou Transmitall para entrega dos documentos".', mtWarning, [mbOk], 0);
        Exit;
      end;
   end;
  // fim leonardo.alabarce

  //leonardo.alabarce 06/12/2011 - Solicitado por Odilma  - ticket 1129  / pan marine e mare alta /
  if  ((qrProcessosqcnpj.asstring = '42519082000125') or (qrProcessosqcnpj.asstring = '03863340000134'))
   then begin
     if (Trim(qrEventosCodigo.AsString)    = '1021') and
        (Trim(qrObsEventosCodigo.AsString) = '1143')
      then begin
        if (LiberarDIOK = false)
         then begin
           MessageDlg('Follow Up não poderá ser salvo, pois não existe o follow "Declaração de Importação enviada para analise".', mtWarning, [mbOk], 0);
           Exit;
         end;
      end;
   end;
  // fim leonardo.alabarce

  //leonardo.alabarce 06/12/2011 - Solicitado por Odilma  - ticket 1130  /modec/
  if  (qrProcessosqcnpj.asstring = '05217376000176')
   then begin
     if ((Trim(qrEventosCodigo.AsString)    = '1018' ) and
         (Trim(qrObsEventosCodigo.AsString) = '4'    ))
      then begin
        if (LiberarSISOK = false)
         then begin
           MessageDlg('Follow Up não poderá ser salvo, pois não existe o follow "Setor Operacional - Enviou Declaração de Importação para análise no SISCOMEX".', mtWarning, [mbOk], 0);
           Exit;
         end;
      end;
   end;
  // fim leonardo.alabarce

  //leonardo.alabarce 15/02/2012 - Solicitado por Odilma  - ticket 1892 /2803
  if (((Trim(qrEventosCodigo.AsString) = '1021') and (Trim(qrObsEventosCodigo.AsString) = '1185'))  or
      ((Trim(qrEventosCodigo.AsString) = '1021') and (Trim(qrObsEventosCodigo.AsString) = '1140'))  or
      ((Trim(qrEventosCodigo.AsString) = '1021') and (Trim(qrObsEventosCodigo.AsString) = '1147')))
   then begin
     if (LiberarSISOK = false)
      then begin
        MessageDlg('Follow Up não poderá ser salvo, pois não existe o follow "Setor Operacional - Enviou Declaração de Importação para análise no SISCOMEX".', mtWarning, [mbOk], 0);
        Exit;
      end;
   end;
  //Fim-----------------------------------------------------

  if ((qrProcessosTipo_Declaracao.AsString =  '01') or (qrProcessosTipo_Declaracao.AsString =  '12'))
   then begin
     //leonardo.alabarce 20/09/2012 - Solicitado por Odilma  - ticket 3636
     if (((Trim(qrEventosCodigo.AsString) = '1021') and (Trim(qrObsEventosCodigo.AsString) = '1169')) or
         ((Trim(qrEventosCodigo.AsString) = '1021') and (Trim(qrObsEventosCodigo.AsString) = '1220')) or
         ((Trim(qrEventosCodigo.AsString) = '1021') and (Trim(qrObsEventosCodigo.AsString) = '1207')) or
         ((Trim(qrEventosCodigo.AsString) = '1021') and (Trim(qrObsEventosCodigo.AsString) = '1226')) or
         ((Trim(qrEventosCodigo.AsString) = '1021') and (Trim(qrObsEventosCodigo.AsString) = '1167')) or
         ((Trim(qrEventosCodigo.AsString) = '1021') and (Trim(qrObsEventosCodigo.AsString) = '1168')))
      then begin
        if (LiberarDARJOK = false)
         then begin
           MessageDlg('Follow Up não poderá ser salvo, pois não existe o follow "Setor Operacional - Recebeu DARJ/ICMS quitado".', mtWarning, [mbOk], 0);
           Exit;
         end;
      end;
     //Fim-----------------------------------------------------

     //leonardo.alabarce 20/09/2012 - Solicitado por Odilma  - ticket 3636
     if (((Trim(qrEventosCodigo.AsString) = '1021') and (Trim(qrObsEventosCodigo.AsString) = '1111')))
      then begin
        if (LiberarEnviouDARJOK = false)
         then begin
           MessageDlg('Follow Up não poderá ser salvo, pois não existe o follow "Setor Operacional - Enviou DARJ/ICMS para o cliente efetuar o pagamento".', mtWarning, [mbOk], 0);
           Exit;
         end;
      end;
     //Fim-----------------------------------------------------
   end;

  //leonardo.alabarce 23/11/2011 - Solicitado por Odilma  - ticket 1046
  if (Trim(qrEventosCodigo.AsString) = '566')
   then begin
     if (LiberarAgOK)
      then begin
        if (LiberarDSIOK = false)
         then begin
           MessageDlg('Follow Up não poderá ser salvo, pois não existe o follow "Correção efetuada no CE Mercante".', mtWarning, [mbOk], 0);
           Exit;
         end;
      end;
   end;
  // fim leonardo.alabarce

  //leonardo.alabarce 16/09/2011 - Solicitado por Odilma
  if (LiberarnumOK)
   then begin
     if (Trim(qrEventosCodigo.AsString)    = '96'  ) and
       ((Trim(qrObsEventosCodigo.AsString) = '101' ) or
        (Trim(qrObsEventosCodigo.AsString) = '127' ) or
        (Trim(qrObsEventosCodigo.AsString) = '1305') or
        (Trim(qrObsEventosCodigo.AsString) = '1307') or
        (Trim(qrObsEventosCodigo.AsString) = '41'  ) or
        (Trim(qrObsEventosCodigo.AsString) = '69'  ) or
        (Trim(qrObsEventosCodigo.AsString) = '70'  ))
      then begin
        MessageDlg('Follow Up não poderá ser salvo, pois existe o follow "Recebimento de Numerários".', mtWarning, [mbOk], 0);
        Exit;
      end;
   end;
  // fim leonardo.alabarce

  //leonardo.alabarce 05/12/2011 - Solicitado por Odilma  - ticket 1117
  if (LiberarcliOK)
   then begin
     if (Trim(qrEventosCodigo.AsString)    = '96') and
        (Trim(qrObsEventosCodigo.AsString) = '98')
      then begin
        MessageDlg('Follow Up não poderá ser salvo, pois existe o follow "Registro Autorizado pelo Cliente".', mtWarning, [mbOk], 0);
        Exit;
      end;
   end;
  // fim leonardo.alabarce

  //leonardo.alabarce 27/07/2012 - Solicitado por Maria Eduarda  - ticket 3305
  if (Trim(qrEventosCodigo.AsString) = '361') and (Trim(qrObsEventosCodigo.AsString) = '4')
   then begin
     if (BloquearFollowFinanceiroOK)
      then begin
        MessageDlg('Follow Up não poderá ser salvo, pois já existe o follow.', mtWarning, [mbOk], 0);
        Exit;
      end;
   end;

  if (Trim(qrEventosCodigo.AsString) = '1020') and (Trim(qrObsEventosCodigo.AsString) = '1107')
   then begin
     if (BloquearFollowOK)
      then begin
        MessageDlg('Follow Up não poderá ser salvo, pois já existe o follow.', mtWarning, [mbOk], 0);
        Exit;
      end;
   end;

  if (((Trim(qrEventosCodigo.AsString) <> '1020') and (Trim(qrObsEventosCodigo.AsString) <> '1107')) and
       (Trim(qrEventosCodigo.AsString) <> '1045') and (Trim(qrEventosCodigo.AsString) <> '271')      and
       (Trim(qrEventosCodigo.AsString) <> '774' ) and (Trim(qrEventosCodigo.AsString) <> '750')      and
       (Trim(qrEventosCodigo.AsString) <> '741' ) and (Trim(qrEventosCodigo.AsString) <> '438'))
   then begin
     if ((v_usuario = 'ANTONIOC') or (v_usuario = 'BAMARAL') or (v_usuario = 'EJUNIOR') OR (v_usuario = 'JUAN'))
      then begin
        if BloquearFollowOK = False
         then begin
           MessageDlg('Follow Up não poderá ser salvo, pois não existe o follow "Setor Financeiro da MS - Recebeu o processo".', mtWarning, [mbOk], 0);
           Exit;
         end;
      end;
   end;
  // fim leonardo.alabarce

  //Wellington Medeiros 28/08/2012 - Solicitado por Maria Eduarda  - ticket 3494
  if ((Trim(qrEventosCodigo.AsString) = '2446') or
      (Trim(qrEventosCodigo.AsString) = '2447') or
     ((Trim(qrEventosCodigo.AsString) = '2250') and (Trim(qrObsEventosCodigo.AsString) = '1')))
   then begin
     if (v_usuario <> 'ANTONIOC') and (v_usuario <> 'BAMARAL') and (v_usuario <> 'JUAN') AND (v_usuario <> 'DUDA') AND (v_usuario <> 'ODILMA')
      then begin
        MessageDlg('O seu usuário não está autorizado a lançar esse Follow Up.', mtWarning, [mbOk], 0);
        Exit;
      end;
   end;
  //Wellington Medeiros

  // Leonardo.Alabarce - 07/10/11    - ticket 731
  if (Trim(qrEventosCodigo.AsString)     = '1021') and
    ((Trim( qrObsEventosCodigo.AsString) = '1123') or
     (Trim( qrObsEventosCodigo.AsString) = '1152'))
   then begin
     if (LiberarCadastro(qrObsEventosCodigo.AsInteger) )
      then begin
        MessageDlg('Para cadastrar este Follow a 3° vez, Entre em contato com o seu Gerente.', mtWarning, [mbOk], 0);
        Edit1.Clear;
        edtGerenteResp.KeyValue := -1;
        label20.Visible := False;
        qrGerente.Close;
        qrGerente.Open;
        pnlAutGerente.Show;
        Abort;
      end;
   end;

  //Leonardo.alabarce 08/12/2011 - Solicitado por Maria Eduarda  - ticket 1160
  if (Trim(qrEventosCodigo.AsString)  = '2249') or
     (Trim( qrEventosCodigo.AsString) = '2250')
   then begin
     if (LiberarFinOK = false)
      then begin
        MessageDlg('Follow Up não poderá ser salvo, pois não existe o follow "Setor Financeiro da MS - Recebeu o processo".', mtWarning, [mbOk], 0);
        Exit;
      end;
   end;
  // fim leonardo.alabarce

  //Leonardo.alabarce 09/02/2012 - Solicitado por Odilma  - ticket 1821 - 1892
  if ((Trim(qrEventosCodigo.AsString) = '96') and (Trim(qrObsEventosCodigo.AsString) = '73') or
      (Trim(qrEventosCodigo.AsString) = '96') and (Trim(qrObsEventosCodigo.AsString) = '26'))
   then begin
     if (LiberarResOK = false)
      then begin
        MessageDlg('Follow Up não poderá ser salvo, pois não existe o follow "Setor operacional - Enviou o Termo de Responsabilidade para assinatura do garantidor".', mtWarning, [mbOk], 0);
        Exit;
      end;
   end;
  // fim leonardo.alabarce

  //Leonardo.alabarce 10/08/2012 - Solicitado por Odilma  - ticket 3397
  if ((Trim(qrEventosCodigo.AsString) = '989') and (Trim(qrObsEventosCodigo.AsString) = '1'))
   then begin
     if (LiberarGuiaOK = false)
      then begin
        MessageDlg('Follow Up não poderá ser salvo, pois não existe o follow "Setor Operacional - Entrou com a Guia de exoneração na SEFAZ/RJ".', mtWarning, [mbOk], 0);
        Exit;
      end;
   end;
  // fim leonardo.alabarce

  //Leonardo.alabarce 09/12/2011 - Solicitado por Odilma  - ticket 1182
  if (Trim(qrEventosCodigo.AsString)    = '976') and
     (Trim(qrObsEventosCodigo.AsString) = '12')
   then begin
     if (LiberarRFOK = false)
      then begin
        MessageDlg('Follow Up não poderá ser salvo, pois não existe o follow "Entrada DI ".', mtWarning, [mbOk], 0);
        Exit;
      end;
   end;
  // fim leonardo.alabarce

  //leonardo.alabarce 10/11/2011 - Solicitado por Odilma  -ticket 972
  if (LiberarEmbOK)
   then begin
     if (Trim(qrEventosCodigo.AsString) = '881')
      then begin
        MessageDlg('Follow Up não poderá ser salvo, pois existe o follow "chegada de embarcação".', mtWarning, [mbOk], 0);
        Exit;
      end;
   end;
  // fim leonardo.alabarce

  //leonardo.alabarce 10/11/2011 - Solicitado por Odilma
  if (Trim(qrEventosCodigo.AsString) = '78')
   then begin
     if LiberarcargaOK = false
      then begin
        MessageDlg('Follow Up não poderá ser salvo, pois não existe o follow "Chegada da carga".', mtWarning, [mbOk], 0);
        Exit;
      end;
   end;

  //Leonardo.Alabarce - 23/11/11  Solicitado por Odilma   - ticket 1045
  if ((Trim(qrEventosCodigo.AsString) = '866') and (Trim(qrObsEventosCodigo.asstring)= '7'))
   then begin
     with qrDocumento do
      begin
        close;
        ParamByName('pProcesso').asstring:=ME_nossaref.text;
        Open;

        if (qrDocumento.RecordCount = 0) or (qrDocumentoProcesso.IsNull) or (qrDocumentoProcesso.AsString = '')
         then begin
           MessageDlg('Follow Up não poderá ser salvo, pois a DTA não foi scaneada.', mtWarning, [mbOk], 0);
           Exit;
         end;
      end;
   end;
  //Fim ------------------------------   ----------------------------------

  // Leonardo.Alabarce - 10/11/11  Solicitado por Odilma   - ticket 969
  if (Trim(qrEventosCodigo.AsString) = '78')
   then begin
     with qDataChegadaURF do
      begin
        close;
        ParamByName('pProcesso').asstring:=ME_nossaref.text;
        Open;

        if (qDataChegadaURF.RecordCount = 0) or (qDataChegadaURFData_Chegada_URF_Cheg.IsNull) or (qDataChegadaURFData_Chegada_URF_Cheg.AsString = '')
         then begin
           MessageDlg('Follow Up não poderá ser salvo, pois a Data de Chegada na URF de Entrada não está informada em Registro de Chegada', mtWarning, [mbOk], 0);
           Exit;
         end;
      end;
   end;
  // Fim ------------------------------   ----------------------------------

  { wellington - 22/08/2011 - Solicitação da Odilma para somente aceitar esse Follow se o Conhecimento de Embarque estiver scaneado}
  if (Trim(qrEventosCodigo.AsString) = '514')
   then begin
     if ConhecimentoNaoScaneado(ME_nossaref.Text, qrProcessosNumerodoccarga.AsString)
      then begin
        MessageDlg('Follow Up não poderá ser salvo sem o scaneamento do Conhecimento de Embarque.', mtWarning, [mbOk], 0);
        Exit;
      end;
   end;

  // eduardo.souza 12/07/2011  or  ((v_usuario <> 'ALISSON')
  if  (v_digitalizador <> 1)
   then begin
     if (not v_arquivista)
      then begin
        if (Trim(qrEventosCodigo.AsString) = '761')
         then begin
           if (Not DesembaracoCompleto)
            then begin
              MessageDlg('Follow Up não poderá ser salvo pois as informações de Desembaraço estão incompletas!', mtWarning, [mbOk], 0);
              Exit;
            end;
         end;
      end;
   end;

  {Leandro Serra - 20/10/2011 Ticket 804}
  if (Trim(qrEventosCodigo.AsString) = '843')
   then begin
     if (qrProcessosData_Chegada_URF_Cheg.AsDateTime <= 0)
      then begin
        MessageDlg('Follow Up não poderá ser salvo, pois a Data de Chegada na URF de Entrada não está informada em Registro de Chegada!', mtWarning, [mbOk], 0);
        Exit;
      end
   end;

  if (Trim(qrEventosCodigo.AsString) = '514') and (qrProcessosVIA.AsString = '4')
   then begin
     if (qrProcessosData_Chegada_URF_Cheg.AsDateTime <= 0 )
      then begin
        MessageDlg('Follow Up não poderá ser salvo, pois a Data de Chegada na URF de Entrada não está informada em Registro de Chegada!', mtWarning, [mbOk], 0);
        Exit;
      end
      else begin
        case qrProcessosTipodoccarga.AsInteger of
          1: begin
               if ( Trim( qrProcessosNumerodoccarga.AsString ) = '' )
                then begin
                  MessageDlg('Follow Up não poderá ser salvo, pois a identificação não está informada em Conhecimentos de Transportes!', mtWarning, [mbOk], 0);
                  Exit;
                end;
             end
          else begin
            if ( Trim( qrProcessosNumerodoccarga.AsString ) = '' )
             then begin
               MessageDlg('Follow Up não poderá ser salvo, pois a identificação não está informada em Conhecimentos de Transportes!', mtWarning, [mbOk], 0);
               Exit;
             end
             else if ( Trim( qrProcessosNumeroMaster.AsString ) = '' )
                   then begin
                     MessageDlg('Follow Up não poderá ser salvo, pois a identificação master não está informada em Conhecimentos de Transportes!', mtWarning, [mbOk], 0);
                     Exit;
                   end;
          end;
        end;
      end;
   end;
  // fim 12/07/2011

  if ((Trim(qrEventosCodigo.AsString) = '914') and (Trim(qrObsEventosCodigo.asstring)= '1'))
   then begin
     if VerificaICMS(ME_nossaref.Text)
      then begin
        if ICMSNaoContabilizado(ME_nossaref.Text)
         then begin
           MessageDlg('Follow Up não poderá ser salvo, o ICMS ainda não foi contabilizado pelo financeiro.', mtWarning, [mbOk], 0);
           Exit;
         end;
      end;
   end;

  if dbEdtData.Text = '  /  /    '
   then Begin
     MessageDlg('A Data não pode estar em branco!', mtWarning, [mbOk], 0);
     dbEdtData.SetFocus;
     Exit;
   end;

  try
    vData := StrToDate(dbEdtData.Text);
  except
    MessageDlg('Data inválida!', mtWarning, [mbOk], 0);
    dbEdtData.SetFocus;
    Exit;
  end;

  if vData > StrToDate(v_dataFollow)
   then begin
     MessageDlg('A data não pode ser maior que a Data atual!', mtWarning, [mbOk], 0);

     if v_editafollow = 1
      then dbEdtData.SetFocus;

     Exit;

     if VerificarLiberacaoProcessoUsuario
      then dbEdtData.SetFocus;

     Exit;
   end;

  if dbEdtHora.Text = '  :  '
   then begin
     MessageDlg('A Hora não pode estar em branco!', mtWarning, [mbOk], 0);
     dbEdtHora.SetFocus;
     Exit;
   end;

  if length(dbEdtHora.Text)<5
   then begin
      MessageDlg('Hora inválida!', mtWarning, [mbOk], 0);
      dbEdtHora.SetFocus;
      Exit;
   end;

  try
    StrToDateTime(dbEdtHora.Text)
  except
    MessageDlg('Hora inválida!', mtWarning, [mbOk], 0);
    dbEdtHora.SetFocus;
    Exit;
  end;

  if tbFollowUpCodevento.IsNull
   then begin
     MessageDlg('O Evento não pode estar em branco!', mtWarning, [mbOk], 0);
     dbLcbEvento.SetFocus;
     Exit;
   end;

  if dbEdtRef.Text <> ''
   then if (dbEdtRef.Text = qrProcessosProcesso.AsString)
         Then Begin
           MessageDlg('Referência ao mesmo processo não permitida!', mtWarning, [mbOk], 0);
           dbEdtRef.Clear;
           dbEdtRef.SetFocus;
           Exit;
         end
         else try     // eduardo.souza 19/07/2011
                qryVerificaMSAnterior.ParamByName( 'Codigo' ).Value := dbEdtRef.Text;
                qryVerificaMSAnterior.Close;
                qryVerificaMSAnterior.Open;

                if (qryVerificaMSAnterior.IsEmpty)
                 then Begin
                   MessageDlg('Processos não encontrado!', mtWarning, [mbOk], 0);
                   dbEdtRef.Clear;
                   dbEdtRef.SetFocus;
                   Exit;
                 end;
              finally
                qryVerificaMSAnterior.Close;
              end;

  //Leonardo.alabarce 08/12/2011 - Solicitado por Maria Eduarda  - ticket 1166
  //Wellington Medeiros 28/08/2012 - Solicitado por Maria Eduarda  - ticket 3494
  if ((Trim(qrEventosCodigo.AsString) = '1020') and (Trim(qrObsEventosCodigo.AsString) = '1107') or
      (Trim(qrEventosCodigo.AsString) = '1020') and (Trim(qrObsEventosCodigo.AsString) = '1108') or
      (Trim(qrEventosCodigo.AsString) = '2445') and (Trim(qrObsEventosCodigo.AsString) = '1102'))
   then begin
     if (v_usuario <> 'EJUNIOR') AND (v_usuario <> 'DUDA') AND (v_usuario <> 'ODILMA') AND
        (qrProcessostipo.AsString <> 'CO') AND (qrProcessostipo.AsString <> 'MR') AND (qrProcessostipo.AsString <> 'US')
      then begin
        MessageDlg('O seu usuário não está autorizado a lançar esse Follow Up.', mtWarning, [mbOk], 0);
        Exit;
      end
      else begin
        if (Trim(qrEventosCodigo.AsString) = '1020') and (Trim(qrObsEventosCodigo.AsString) = '1107')
         then begin
           if (qrProcessostipo.AsString <> 'AD') and (BloquearFin0OK)
            then begin
              if (qrProcessosStatus.AsInteger <> 4)
               then begin
                 MessageDlg('Follow Up não poderá ser salvo, pois o follow "Setor Operacional - Enviou o processo para o setor financeiro faturar" está pendente.', mtWarning, [mbOk], 0);
                 Exit;
               end;
            end
            else begin
              qrUpdateStatus.ParamByName('pStatus').AsString   := '2';
              qrUpdateStatus.ParamByName('pFechado').AsInteger := 0;
              qrUpdateStatus.ParamByName('PROCESSO').AsString  := Processo;
              qrUpdateStatus.ExecSQL;
            end;
         end;

        if (Trim(qrEventosCodigo.AsString) = '1020') and (Trim(qrObsEventosCodigo.AsString) = '1108')
         then if BloquearFin1OK
               then begin
                 MessageDlg('Follow Up não poderá ser salvo, pois o follow "Setor Financeiro da MS - Recebeu o processo" está pendente.', mtWarning, [mbOk], 0);
                 Exit;
               end;

        if (Trim(qrEventosCodigo.AsString) = '2445') and (Trim(qrObsEventosCodigo.AsString) = '1102')
         then if BloquearFin2Ok
               then begin
                 MessageDlg('Follow Up não poderá ser salvo, pois o follow "Setor Financeiro da MS - Preparando o processo para faturamento" está pendente.', mtWarning, [mbOk], 0);
                 Exit;
               end;
      end;
   end;
  //Fim Leonardo.alabarce

  {Wellington Medeiros - 15/10/2012 - Ticket 3762}
  if (Trim(qrEventosCodigo.AsString) = '2250')
   then begin
     if (qrProcessosStatus.value = '2')
      then begin
        if (Trim(qrObsEventosCodigo.AsString) = '1103')
         then begin
           qrUpdateStatus.ParamByName('pStatus').AsString   := '3';
           qrUpdateStatus.ParamByName('pFechado').AsInteger := 0;
           qrUpdateStatus.ParamByName('PROCESSO').AsString := Processo;
           qrUpdateStatus.ExecSQL;
         end;

        if (Trim(qrObsEventosCodigo.AsString) = '1')
         then begin
           qrUpdateStatus.ParamByName('pStatus').AsString   := '3';
           qrUpdateStatus.ParamByName('pFechado').AsInteger := 1;
           qrUpdateStatus.ParamByName('PROCESSO').AsString := Processo;
           qrUpdateStatus.ExecSQL;
         end;
      end;
   end;

  {Wellington Medeiros - 28/08/2012 - Ticket 3494}
  if (Trim(qrEventosCodigo.AsString) = '1021') and  (Trim(qrObsEventosCodigo.AsString) = '1106')
   then begin
     if ((qrProcessosTipo_Declaracao.AsString = '05') or (qrProcessosTipo_Declaracao.AsString = '12'))
      then begin
        if ((Trim(qrProcessosNumero_TR.AsString)          = '') or
            (Trim(qrProcessosData_Entrada_TR.AsString)    = '') or
            (Trim(qrProcessosData_vencimento_TR.AsString) = ''))
         then begin
           MessageDlg('Follow Up não poderá ser salvo, é necessário que sejam informados o número, vigência inicial e vigência final referentes ao TR (Termo de Responsabilidade).', mtWarning, [mbOk], 0);
           Exit;
         end;
      end;

     if ( Trim(qrProcessostipo.AsString) = 'IB')
      then begin
        with qrDoc do
         begin
           Close;
           ParamByName('Processo').value:= ME_nossaref.text;
           Open;
         end;

        if (qrDoc.RecordCount = 0)
         then begin
           MessageDlg('Follow Up não poderá ser salvo, pois os documentos ADE e AITEE não foram Scaneados.', mtWarning, [mbOk], 0);
           Exit;
         end;
      end;

     if (qrProcessostipo.AsString = '11') Or (qrProcessostipo.AsString = '12') Or (qrProcessostipo.AsString = '13') Or
        (qrProcessostipo.AsString = '14') Or (qrProcessostipo.AsString = '15') Or (qrProcessostipo.AsString = '17') Or
        (qrProcessostipo.AsString = '18') Or (qrProcessostipo.AsString = '19') Or (qrProcessostipo.AsString = '20') Or
        (qrProcessostipo.AsString = 'IB') Or (qrProcessostipo.AsString = 'IT') Or (qrProcessostipo.AsString = 'LI')
      then begin
        with qrSP_Relatorio_Follows_KPI do
         begin
           close;
           ParamByName('cod').asstring:= ME_nossaref.text;
           ExecSQL;
         end;

        qrRelatorioKPI.Close;
        qrRelatorioKPI.ParamByName('proc0').AsString := ME_nossaref.text;
        qrRelatorioKPI.Open;

        if qrRelatorioKPI.RecordCount <> 0
         then begin
           MessageDlg('Follow Up não poderá ser salvo, pois há Follow(S) Pendente(s):'+#13#10+#13#10+ qrRelatorioKPIDescricao.Value +#13#10+' Pois é obrigatório para relatório KPI', mtWarning, [mbOk], 0);
           Exit;
         end;
      end;

     if ((qrProcessosTipo_Declaracao.AsString = '05') or (qrProcessosTipo_Declaracao.AsString = '12'))
      then begin
        if VerificarSeContratoERepetro(qrProcessosProcesso.AsString)
         then if not DIEstaIncluidaNoRepetro(qrProcessosNR_DECLARACAO_IMP.AsString)
               then begin
                 if qrProcessosNR_DECLARACAO_IMP.AsString = ''
                  then begin
                    MessageDlg('Follow Up não poderá ser salvo. A DI não está incluída no repetro, a DI deve ser informada no Desembaraço.', mtWarning, [mbOk], 0);
                    Exit;
                  end;

                 if qrProcessosDT_DESEMBARACO.AsString = ''
                  then begin
                    MessageDlg('Follow Up não poderá ser salvo. A DI não está incluída no repetro, a Data de Desembaraço deve ser informada no Desembaraço.', mtWarning, [mbOk], 0);
                    Exit;
                  end;

                 if NaoPossuiFaturaItenFaturaTributacao(qrProcessosProcesso.AsString)
                  then begin
                    MessageDlg('Follow Up não poderá ser salvo. A DI não está incluída no repetro, o processo está pendente de Fatura, Itens da Fatura ou Tributação.', mtWarning, [mbOk], 0);
                    Exit;
                  end;

                 MessageDlg('Follow Up não poderá ser salvo. A DI não está incluída no repetro, aguarde a próxima execução do AREP.', mtWarning, [mbOk], 0);
                 Exit;
               end;
      end;

     if qrApenc_PendenciasPendencia.AsString = '1'
      then begin
        MessageDlg('Follow Up não poderá ser salvo, pois há Pendência no Apenc.', mtWarning, [mbOk], 0);
        logusu('I', v_usuario + ' tentou enviar o processo '+processo+' para o operacional, mas foi impedido pela pendência');
        Exit;
      end;

     if ((qrProcessosStatus.AsString = '0') or (qrProcessosStatus.AsString = '01'))
      then begin
        qrUpdateStatus.ParamByName('pStatus').AsString   := '1';
        qrUpdateStatus.ParamByName('pFechado').AsInteger := 0;
        qrUpdateStatus.ParamByName('PROCESSO').AsString  := Processo;
        qrUpdateStatus.ExecSQL;
      end;

     qrySP_Controle_Pastas_Financeiro.Close;
     qrySP_Controle_Pastas_Financeiro.Params[0].Value := processo;
     qrySP_Controle_Pastas_Financeiro.Params[1].Value := v_usuario;
     qrySP_Controle_Pastas_Financeiro.Params[2].Value := v_nomecompleto;
     qrySP_Controle_Pastas_Financeiro.Params[3].Value := v_email;
     qrySP_Controle_Pastas_Financeiro.ExecSQL;

     if ((qrProcessosStatus.AsString = '0') or (qrProcessosStatus.AsString = '01'))
      then begin
        Application.MessageBox('Processo finalizado no Operacional, favor aguardar o e-mail que definirá para quem deverá ser entregue a pasta.','Informação', MB_ICONINFORMATION);

        logusu('I', v_usuario + ' finalizou o processo '+processo+' no operacional');
      end
      else begin
        Application.MessageBox('Favor aguardar o e-mail que definirá para quem deverá ser entregue a pasta.','Informação', MB_ICONINFORMATION);

        logusu('I', v_usuario + ' enviou o processo '+processo+' do operacional para o financeiro');
      end;
   end;

  // eduardo.souza 26/07/2011
  // regra que verifica se está faltando algum follow anterior, os scanneadores, o financeiro, e o Alisson (Arquivo) estão fora desta regra
  if ((v_digitalizador = 1) or (v_arquivista) or (v_usuario = 'DUDA') or (StrToInt(v_nivel) = 4))
   then begin
     qreg  := tbFollowUpSequencial.AsString;
     Screen.Cursor := crHourGlass;

     if ((tbFollowUpCodobs.isnull)  or (tbFollowUpCodobs.AsString = ''))
      then tbFollowUpCodobs.AsString := '0';

     tbFollowUp.Post;

     //eduardo.souza 14/09/2011 - gravar data ALC quando follow igual a 914 e obsevento 1
     UpdateALC(qrProcessosProcesso.AsString, Date());
     //-- fim

     qryUpdatePVG.ParamByName('Processo').Value := qrProcessosProcesso.AsString;
     qryUpdatePVG.ExecSQL;

     // eduardo.souza 05/12/2011 - Deixar aqui, sempre o ultimo a ser executado
     TestPre_Requisitos();
     //---

     if op = 1
      then begin
        qrExibiLabel.close;
        qrExibiLabel.open;

        if (qrExibiLabelfollow_auto.AsString = '1')
         then begin
           if ((dbLcbEvento.text <> '') or (dbLcbObs.Text <> ''))
            then begin
              qrUpdateCancelar.close;
              qrUpdateCancelar.ParamByName( 'qrprocesso' ).value := ME_nossaref.text;
              qrUpdateCancelar.ExecSQL;
              ShowMessage ('Follow automático cancelado.');
              qrFollowUp.close;
              qrFollowUp.open;
              btnAtivaFollow.Enabled    := False;
              btnCancelarFollow.Enabled := False;
              lblExibiFollow.Caption    := '' ;
              op := 0;
            end;
         end;
      end;

     if (chbCriarFollow.Checked = True)
      then begin
        qrUpdateCriar.ParamByName( 'processo' ).value := ME_nossaref.text;
        qrUpdateCriar.ParamByName( 'sequencial' ).Value := qrFollowUpSequencial.AsString;
        qrUpdateCriar.ExecSQL;
        MessageDlg(format('Follow-Up " %s - %s "  será repetido até sexta-feira como follow automático.', [dbLcbEvento.text,dbLcbObs.text] ), mtWarning, [mbOk], 0);
        chbCriarFollow.checked := false;
        qrFollowUp.close;
        qrFollowUp.open;
        ME_nossarefChange(sender);
      end;

     qrFollowUp.Close;
     qrFollowUp.Open;
     qrFollowUp.Locate('sequencial', qreg, [loCaseInsensitive]);

     v_novofol := False;
     pnlTop.Enabled      := True;

     dbgFollowUp.Enabled := True;
     dbEdtData.Enabled   := False;
     dbEdtHora.Enabled   := False;
     dbLcbEvento.Enabled := False;
     dbLcbObs.Enabled    := False;
     dbEdtObsDet.Enabled := False;
     dbEdtRef.Enabled    := False;
     sbLocEvento.Enabled := False;
     sbLimpaObs.Enabled  := False;
     btnAlterar.Enabled  := False;
     btnExcluir.Enabled  := False;
     btnResumido.Enabled := false;

     if ((v_editafollow = 1) or (v_editafollow = 2) or (v_usuario = qrProcessosResponsavel_empresa.AsString))
      then btnResumido.Enabled := true;

     btnIncluir.Enabled     := True;
     btnSair.Enabled        := True;
     btnSalvar.Enabled      := False;
     btnCancelar.Enabled    := False;
     chbCriarFollow.Enabled := false;
     btnAtivaFollow.Enabled := False;
     dbgFollowUp.SetFocus;
     Screen.Cursor := crDefault;
   end
   else begin
     if ( not FollowOK( qrProcessosProcesso.AsString ) )And( Not SenhaOK )
      then begin
        edtSenha.Clear;
        edtCoordenadorResp.KeyValue := -1;
        lbMsg.Visible := False;
        qryCoordenador.Close;
        qryCoordenador.Open;
        pnlAutorizacao.Show;
      end
      else begin
        qreg := tbFollowUpSequencial.AsString;
        Screen.Cursor := crHourGlass;

        if ((tbFollowUpCodobs.isnull) or (tbFollowUpCodobs.AsString = ''))
         then tbFollowUpCodobs.AsString := '0';

        tbFollowUp.Post;

        //eduardo.souza 14/09/2011 - gravar data ALC quando follow igual a 914 e obsevento 1
        UpdateALC(qrProcessosProcesso.AsString, Date());

        qryUpdatePVG.ParamByName('Processo').Value := qrProcessosProcesso.AsString;
        qryUpdatePVG.ExecSQL;

        // eduardo.souza 05/12/2011 - Deixar aqui, sempre o ultimo a ser executado
        TestPre_Requisitos();

        if op = 1
         then begin
           qrExibiLabel.close;
           qrExibiLabel.open;

           if (qrExibiLabelfollow_auto.AsString = '1')
            then begin
              if ((dbLcbEvento.text <> '') or (dbLcbObs.Text <> ''))
               then begin
                 qrUpdateCancelar.close;
                 qrUpdateCancelar.ParamByName( 'qrprocesso' ).value := ME_nossaref.text;
                 qrUpdateCancelar.ExecSQL;
                 ShowMessage ('Follow automático cancelado.');
                 qrFollowUp.close;
                 qrFollowUp.open;

                 btnAtivaFollow.Enabled    := False;
                 btnCancelarFollow.Enabled := False;
                 lblExibiFollow.Caption := '' ;
                 op := 0;
               end;
            end;
         end;
        //FIm----------------------------------------------------------------

        if (chbCriarFollow.Checked = True)
         then begin
           qrUpdateCriar.ParamByName( 'processo' ).value   := ME_nossaref.text;
           qrUpdateCriar.ParamByName( 'sequencial' ).Value := qrFollowUpSequencial.AsString;
           qrUpdateCriar.ExecSQL;
           MessageDlg(format('Follow-Up " %s - %s "  será repetido até sexta-feira como follow automático.', [dbLcbEvento.text,dbLcbObs.text] ), mtWarning, [mbOk], 0);
           chbCriarFollow.checked := false;
           qrFollowUp.close;
           qrFollowUp.open;
           ME_nossarefChange(sender);
         end;

        with qrFollowUp do
         begin
           Close;
           Open;
           Locate('sequencial', qreg, [loCaseInsensitive]);
         end;

        v_novofol := False;

        pnlTop.Enabled      := True;
        dbgFollowUp.Enabled := True;
        dbEdtData.Enabled   := False;
        dbEdtHora.Enabled   := False;
        dbLcbEvento.Enabled := False;
        dbLcbObs.Enabled    := False;
        dbEdtObsDet.Enabled := False;
        dbEdtRef.Enabled    := False;
        sbLocEvento.Enabled := False;
        sbLimpaObs.Enabled  := False;
        btnAlterar.Enabled  := False;
        btnExcluir.Enabled  := False;
        btnResumido.Enabled := false;

        if ((v_editafollow = 1) or (v_editafollow = 2) or (v_usuario = qrProcessosResponsavel_empresa.AsString))
         then btnResumido.Enabled := true;

        btnIncluir.Enabled     := True;
        btnSair.Enabled        := True;
        btnSalvar.Enabled      := False;
        btnCancelar.Enabled    := False;
        chbCriarFollow.Enabled := false;
        btnAtivaFollow.Enabled := False;
        dbgFollowUp.SetFocus;
        Screen.Cursor := crDefault;
      end;

      if voper = 'I'
       then logusu('P','Inclui Follow Up: '+qrEventosDescricao.AsString+' - '+qrObsEventosDescricao.AsString+' - Processo: '+qrProcessosProcesso.AsString);

      if voper = 'A'
       then logusu('P','Alterou Follow Up: '+qrEventosDescricao.AsString+' - '+qrObsEventosDescricao.AsString+' - Processo: '+qrProcessosProcesso.AsString);

      if voper = 'E'
       then logusu('P','Excluiu Follow Up: '+qrEventosDescricao.AsString+' - '+qrObsEventosDescricao.AsString+' - Processo: '+qrProcessosProcesso.AsString);
    end
end;

procedure TF_proFollowup.btnCancelarClick(Sender: TObject);
begin
     tbFollowUp.Cancel;

     If v_novofol Then Begin
        tbFollowUp.Delete;
        qrFollowUp.Close;
        qrFollowUp.Open;
     End;

     v_novofol := False;

     pnlTop.Enabled := True;
     dbgFollowUp.Enabled := True;
     dbEdtData.Enabled := False;
     dbEdtHora.Enabled := False;
     dbLcbEvento.Enabled := False;
     dbLcbObs.Enabled := False;
     dbEdtObsDet.Enabled := False;
     dbEdtRef.Enabled := False;
     sbLocEvento.Enabled := False;
     sbLimpaObs.Enabled := False;
     chbCriarFollow.Enabled :=False;
        btnAlterar.Enabled := False;
        btnExcluir.Enabled := False;
        btnResumido.Enabled := false;
        If ((v_editafollow = 1) or (v_editafollow = 2) or (v_usuario = qrProcessosResponsavel_empresa.AsString)) Then Begin
           btnResumido.Enabled := true;
        End;
        
     btnIncluir.Enabled := True;
     btnSair.Enabled := True;
     btnSalvar.Enabled := False;
     btnCancelar.Enabled := False;
    
     dbgFollowUp.SetFocus

end;

procedure TF_proFollowup.sbLocEventoClick(Sender: TObject);
begin
     qrLocEventos.Close;
     pnlLocEventos.Left := 8;
     pnlLocEventos.Top := 120;
     pnlLocEventos.Visible := True;
     pnlPrincipal.Enabled := False;
     pnlBaixo.Enabled := False;
     me_localizaCodEv.Clear;
     me_localiza.Clear;
     me_localizaCodObs.Clear;
     me_localizaobs.Clear;
     me_localizaCodEv.SetFocus;
end;

procedure TF_proFollowup.me_localizaChange(Sender: TObject);
begin
  if (me_localizaCodEv.Text <> '') or (me_localiza.Text <> '') or (me_localizaCodObs.Text <> '') or (me_localizaobs.Text <> '')
   then begin
     qrLocEventos.Close;
     qrLocEventos.SQL.Strings[5] := '  ';
     qrLocEventos.SQL.Strings[6] := '  ';
     qrLocEventos.SQL.Strings[7] := '  ';
     qrLocEventos.SQL.Strings[8] := '  ';

     qrLocEventos.SQL.Strings[5] := ' Eventos.Ativo = 1 AND Obs_Eventos.Ativo = 1 ';

     // Eduardo Souza 09/09/2011
     // Reclamação da Sra. Odilma - Follow's desativados estavam sendo mostrados para usuários e eles estavam gravando com follow desativados.
     if (me_localizaCodEv.Text <> '')
      then qrLocEventos.SQL.Strings[6] := ' AND Eventos.scanner = '+intToStr(vUsuScanner)+ ' AND  (Eventos.Codigo LIKE '''+me_localizaCodEv.Text+'%'') '
      else if (me_localiza.Text <> '')
            then qrLocEventos.SQL.Strings[6] := ' AND Eventos.scanner = '+intToStr(vUsuScanner)+ ' AND (Eventos.Ativo = 1) AND (Eventos.Descricao LIKE ''%'+me_localiza.Text+'%'') ';

     if (me_localizaCodObs.Text <> '')
      then qrLocEventos.SQL.Strings[7] := ' AND Eventos.scanner = '+intToStr(vUsuScanner)+ ' AND ( Obs_Eventos.Codigo LIKE '''+me_localizaCodObs.Text+'%'') '
      else if (me_localizaobs.Text <> '')
            then qrLocEventos.SQL.Strings[7] := ' AND Eventos.scanner = '+intToStr(vUsuScanner)+ ' AND ( Obs_Eventos.Descricao LIKE ''%'+me_localizaobs.Text+'%'') ';

     if (me_localizaCodEv.Text <> '') or (me_localiza.Text <> '') or (me_localizaCodObs.Text <> '') or (me_localizaobs.Text <> '')
      then qrLocEventos.SQL.Strings[8] := ' ORDER BY Eventos.Codigo, Obs_Eventos.Codigo';

     qrLocEventos.Open;
     // fim Eduardo Souza
  end;
end;

procedure TF_proFollowup.b_okloceventosClick(Sender: TObject);
begin
     tbFollowUpCodevento.AsString := qrLocEventosCodigo.AsString;
     if not qrloceventoscodigo_obs.IsNull then   tbFollowUpCodobs.AsString := qrLocEventosCodigo_obs.AsString;
     pnlLocEventos.Visible := False;
     pnlPrincipal.Enabled := True;
     pnlBaixo.Enabled := True;
     dbLcbObs.SetFocus;
end;

procedure TF_proFollowup.b_cancelaloceventosClick(Sender: TObject);
begin
     pnlLocEventos.Visible := False;
     pnlPrincipal.Enabled := True;
     pnlBaixo.Enabled := True;
     dbLcbEvento.SetFocus;
end;

procedure TF_proFollowup.qrEventosAfterScroll(DataSet: TDataSet);
begin
     With qrObsEventos Do Begin
         Close;
         Params[0].AsString := qrEventosCodigo.AsString;
         Open;
     End;
end;

procedure TF_proFollowup.sbLimpaObsClick(Sender: TObject);
begin
     tbFollowUpCodobs.Clear;
end;

procedure TF_proFollowup.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     If tbFollowUp.State In [dsEdit, dsInsert] Then Begin
        MessageDlg('O Follow Up está em edição!', mtInformation,[mbOk], 0);
        CanClose := False;
     End
     Else
        CanClose := True;
end;

procedure TF_proFollowup.dbEdtDataChange(Sender: TObject);
begin
     if tbFollowUp.State in [dsEdit] then
        If dbEdtData.Text = '  /  /    ' Then
           tbFollowUpData.AsString := ''
end;

procedure TF_proFollowup.dbEdtHoraChange(Sender: TObject);
begin
     if tbFollowUp.State in [dsEdit] then
        If dbEdtHora.Text = '  :  ' Then
           tbFollowUpHora.AsString := ''
end;

procedure TF_proFollowup.acAtuTabelasExecute(Sender: TObject);
begin
    {Leandro Serra - 09/11/2011  Ticket 964}
     with qrUsuScanner do
     begin
       Close;
       ParamByName('pUSUARIO').asstring := v_usuario;
       Open;
       if  qrUsuScannerscanner.asvariant = true then
              vUsuScanner := 1
       else
              vUsuScanner := 0;
       Close;
     end;
     {Fim 964}
     With qrEventos Do Begin
         Close;
         {Leandro Serra - 09/11/2011  Ticket 964}
         ParamByName('pUSUSCANNER').asInteger := vUsuScanner;
         {fim}
         Open;
     End;
     With qrObsEventos Do Begin
         Close;  Open;
     End;
end;

procedure TF_proFollowup.bprofolClick(Sender: TObject);
begin
qprofol.close;
qprofol.Open;
//qprofol.Params[0].AsString := 04137/07;
//qprofol.Locate('DATA', e_dataprofol.text, [loCaseInsensitive]);
while (not qprofol.eof) do begin
     // if qprofoldata.asdatetime >= strtodate(e_dataprofol.text) then begin
///         AtuNet('FollowUp',[qprofolSequencial.AsString],'P');
     // end;
      qprofol.next
end;
qprofol.close;
end;

procedure TF_proFollowup.btnResumidoClick(Sender: TObject);
begin
if (v_AlteraPRO = 1) then begin
   If t_Followres.State = dsInactive Then t_followres.Open;
   if not t_followres.FindKey([ME_nossaref.text]) then begin
      t_followres.Insert;
      t_followres.edit;
      //t_followresempresa.asstring := v_empresa;
      //t_followresfilial.asstring  := v_filial;
      t_followresprocesso.asstring := ME_nossaref.text;
      t_followres.post;
   end;
   if not assigned (f_profollowupres) then Application.CreateForm(TF_profollowupres, F_profollowupres);
        logusu('A','Acessou Módulo de Follow Up de Processos Resumido.');
        F_profollowupres.show;

   btnResumido.Enabled := false;
end

else begin
     Showmessage(v_usuario+', este processo está fechado e/ou o Cliente está Inativo. Somente usuários habilitados para editar clientes inativos e/ou editar processos fechados, poderão alterar as informações do processo.');
end;

end;


procedure TF_proFollowup.t_FollowResAfterPost(DataSet: TDataSet);
begin
     logusu('P','Alterou Follow Up Resumido do Processo: '+qrProcessosProcesso.AsString);
end;

procedure TF_proFollowup.dbgFollowUpDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

if qrfollowupcor_realce.IsNull then begin
   dbgFollowUp.canvas.font.Color := clblack;
end
else begin
   dbgFollowUp.canvas.font.Color := StringToColor(qrfollowupcor_realce.asstring);
end;

if gdSelected in state then dbgFollowUp.Canvas.font.color := clwhite;

dbgFollowUp.defaultDrawColumnCell(Rect, DataCol, Column, State);

end;

function TF_proFollowup.DesembaracoCompleto: Boolean;
var
  QrAux : TQuery;
begin
  try
    QrAux := TQuery.Create(nil);
    QrAux.DatabaseName := 'DBNMSCOMEX';

    QrAux.SQL.Clear;
    QrAux.SQL.Add('SELECT P.Codigo, P.Tipo, P.DDE, P.Processo_Adm, P.Proc_Adm_Data_Entrada, ');
    QrAux.SQL.Add('       P.NR_DECLARACAO_IMP,');
    QrAux.SQL.Add('       P.DT_PROCESSAMENTO, ');
    QrAux.SQL.Add('       P.DT_TRANSMISSAO,   ');
    QrAux.SQL.Add('       P.DT_REGISTRO_DI,   ');
    QrAux.SQL.Add('       P.Canal,            ');
    QrAux.SQL.Add('       P.DT_DISTRIBUICAO,  ');
    QrAux.SQL.Add('       P.Fiscal,           ');
    QrAux.SQL.Add('       P.DT_DESEMBARACO,   ');
    QrAux.SQL.Add('       P.Data_CI,          ');
    QrAux.SQL.Add('       P.COD_SIT,          ');
    QrAux.SQL.Add('       P.Valor_FOB,        ');
    QrAux.SQL.Add('       P.Valor_CIF,        ');
    QrAux.SQL.Add('       P.Quantidade_LI,    ');
    QrAux.SQL.Add('       PRI.II,             ');
    QrAux.SQL.Add('       PRI.IPI,            ');
    QrAux.SQL.Add('       PRI.Taxa_SISCOMEX,  ');
    QrAux.SQL.Add('       PRI.Banco,          ');
    QrAux.SQL.Add('       PRI.Agencia,        ');
    QrAux.SQL.Add('       PRI.Conta_Corrente  ');

    QrAux.SQL.Add('  FROM Processos P INNER JOIN Processos_registro_impostos PRI ');
    QrAux.SQL.Add('    ON P.Empresa = PRI.Empresa AND                            ');
    QrAux.SQL.Add('       P.Filial  = PRI.Filial  AND                            ');
    QrAux.SQL.Add('       P.Codigo  = PRI.Processo                               ');
    QrAux.SQL.Add(' WHERE P.Codigo  = :pProcesso                                 ');

    QrAux.Params[0].Value := ME_nossaref.Text;
    QrAux.Open;

    If (QrAux.FieldByName('Tipo').asstring='21') or
       (QrAux.FieldByName('Tipo').asstring='22') or
       (QrAux.FieldByName('Tipo').asstring='23') or
       (QrAux.FieldByName('Tipo').asstring='24') or
       (QrAux.FieldByName('Tipo').asstring='26') or
       (QrAux.FieldByName('Tipo').asstring='27') or
       (QrAux.FieldByName('Tipo').asstring='28') or
       (QrAux.FieldByName('Tipo').asstring='29') then begin
      if (QrAux.FieldByName('DDE').AsString = '') or
         (QrAux.FieldByName('DT_PROCESSAMENTO').AsString  = '') or
         (QrAux.FieldByName('DT_TRANSMISSAO').AsString    = '') or
         (QrAux.FieldByName('DT_REGISTRO_DI').AsString    = '') or
         (QrAux.FieldByName('CANAL').AsString             = '') or
         (QrAux.FieldByName('DT_DISTRIBUICAO').AsString   = '') or
         (QrAux.FieldByName('FISCAL').AsString            = '') or
         (QrAux.FieldByName('DT_DESEMBARACO').AsString    = '') or
         (QrAux.FieldByName('COD_SIT').AsString           = '') or
         (QrAux.FieldByName('Processo_Adm').AsString           = '') or
         (QrAux.FieldByName('Proc_Adm_Data_Entrada').AsString    = '') or
         (StrToFloat(FormatFloat('0.00', QrAux.FieldByName('Valor_FOB').AsFloat))     = 0.00) or
         (StrToFloat(FormatFloat('0.00', QrAux.FieldByName('Valor_CIF').AsFloat))     = 0.00) then
         Result := False
       else
        Result := True;
    end
    else begin
      if (QrAux.FieldByName('NR_DECLARACAO_IMP').AsString = '') or
         (QrAux.FieldByName('DT_PROCESSAMENTO').AsString  = '') or
         (QrAux.FieldByName('DT_TRANSMISSAO').AsString    = '') or
         (QrAux.FieldByName('DT_REGISTRO_DI').AsString    = '') or
         (QrAux.FieldByName('CANAL').AsString             = '') or
         (QrAux.FieldByName('DT_DISTRIBUICAO').AsString   = '') or
         (QrAux.FieldByName('FISCAL').AsString            = '') or
         (QrAux.FieldByName('DT_DESEMBARACO').AsString    = '') or
         (QrAux.FieldByName('DATA_CI').AsString           = '') or
         (QrAux.FieldByName('COD_SIT').AsString           = '') or
         (QrAux.FieldByName('BANCO').AsString             = '') or
         (QrAux.FieldByName('AGENCIA').AsString           = '') or
         (QrAux.FieldByName('CONTA_CORRENTE').AsString    = '') or
         (StrToFloat(FormatFloat('0.00', QrAux.FieldByName('Valor_FOB').AsFloat))     = 0.00) or
         (StrToFloat(FormatFloat('0.00', QrAux.FieldByName('Valor_CIF').AsFloat))     = 0.00) or
         (StrToFloat(FormatFloat('0.00', QrAux.FieldByName('Taxa_SISCOMEX').AsFloat)) = 0.00) then
         Result := False
       else
        Result := True;
    end;
  finally
    QrAux.free;
  end;
end;

function TF_proFollowup.FollowOK(MS: String): Boolean;
  var
    GoOn : Boolean;
    QtdFollowAtual,
    QtdFollowDevido : Integer;
begin
  Try
    Try
      // Atribuições
      GoOn := False;
      QtdFollowAtual := 0;
      QtdFollowDevido := 0;
      //--
      // busca quantidade atual de follow-up
      //qryVerificaFollow.SQL.Clear;
      //qryVerificaFollow.SQL.Text := 'select count(distinct(Data))as "QtdFollow" from Followup where processo =:processo ';
      qryFollowAtual.ParamByName('processo').AsString := MS;
	    qryFollowAtual.Close;
      qryFollowAtual.Open;
      If ( Not qryFollowAtual.IsEmpty ) Then
        QtdFollowAtual := qryFollowAtual.FieldByName( 'QtdFollow' ).AsInteger;
      //--
      // busca quantidade atual de follow-up
      //qryVerificaFollow.SQL.Clear;
      //qryVerificaFollow.SQL.Text := 'select DATEDIFF(day, cast(Data as date), cast(GETDATE() as date)) as "QtdDevido" from processos where codigo =:processo ';
      qryFollowDevido.ParamByName('processo').AsString := MS;
	    qryFollowDevido.Close;
      qryFollowDevido.Open;
      If ( Not qryFollowDevido.IsEmpty ) Then
        QtdFollowDevido := qryFollowDevido.FieldByName( 'QtdDevido' ).AsInteger;
      //--
      // Testando
      If ( QtdFollowAtual >= QtdFollowDevido ) Then
        GoOn := True
      Else
        GoOn := False;
      //--
    Except
      GoOn := False;
      Application.MessageBox('Ocorreu um erro na verificação dos follow-up anteriores. Tente novamente.', 'Aviso', MB_ICONERROR + MB_OK);
    End;
  Finally
    Result := GoOn;
    qryFollowDevido.Close;
    qryFollowAtual.Close;
  End;
end;

procedure TF_proFollowup.btnCancelClick(Sender: TObject);
begin
  btnCancelar.Click;
  qryCoordenador.close;
  qrGerente.close;
  pnlAutorizacao.Hide;
  pnlAutGerente.Hide;
end;

procedure TF_proFollowup.btnOKClick(Sender: TObject);
  var
    qreg: String;
begin
  If ( qryCoordenadorSenha.Text = edtSenha.Text ) Then Begin
    SenhaOK := True;
    pnlAutorizacao.Hide;
    lbMsg.Visible := False;
    // Do botao salvar
    qreg  := tbFollowUpSequencial.AsString;
    Screen.Cursor := crHourGlass;
    if ((tbFollowUpCodobs.isnull)  or (tbFollowUpCodobs.AsString = '')) then tbFollowUpCodobs.AsString := '0';
    tbFollowUp.Post;
    //eduardo.souza 14/09/2011 - gravar data ALC quando follow igual a 914 e obsevento 1
    UpdateALC(qrProcessosProcesso.AsString, Date());
    //-- fim
    //eduardo.souza 15/08/2011
    qryUpdatePVG.ParamByName('Processo').Value := qrProcessosProcesso.AsString;
    qryUpdatePVG.ExecSQL;
    //-- 15/08/2011 fim

    // eduardo.souza 05/12/2011 - Deixar aqui, sempre o ultimo a ser executado
    TestPre_Requisitos();
    //---

   //Leonardo.Alabarce 10/02/2012 ticket 1840
    If op = 1 then begin
      qrExibiLabel.close;
      qrExibiLabel.open;
      if (qrExibiLabelfollow_auto.AsString = '1') then begin 
        If ((dbLcbEvento.text <> '') or (dbLcbObs.Text <> '')) then begin
          qrUpdateCancelar.close;
          qrUpdateCancelar.ParamByName( 'qrprocesso' ).value := ME_nossaref.text;
          qrUpdateCancelar.ExecSQL;
          ShowMessage ('Follow automático cancelado.');
          qrFollowUp.close;
          qrFollowUp.open;
          btnAtivaFollow.Enabled := False;
          btnCancelarFollow.Enabled := False;
          lblExibiFollow.Caption := '' ;
          op := 0;
        end;
      end;
    end;
    ///FIm----------------------------------------------------------------

    If (chbCriarFollow.Checked = True) then begin
     //  qrUpdateCriaFollow.close;
       qrUpdateCriar.ParamByName( 'processo' ).value := ME_nossaref.text;
       qrUpdateCriar.ParamByName( 'sequencial' ).Value := qrFollowUpSequencial.AsString;
       qrUpdateCriar.ExecSQL;
       MessageDlg(format('Follow-Up " %s - %s " será repetido até sexta-feira como follow automático.', [dbLcbEvento.text,dbLcbObs.text] ), mtWarning, [mbOk], 0);
       chbCriarFollow.checked := false;
       qrFollowUp.close;
       qrFollowUp.open;
       ME_nossarefChange(sender);
    End;
   //Fim------------

    With qrFollowUp Do Begin
       Close;
       Open;
       Locate('sequencial', qreg, [loCaseInsensitive]);
    End;



    v_novofol := False;

    pnlTop.Enabled := True;
    dbgFollowUp.Enabled := True;
    dbEdtData.Enabled := False;
    dbEdtHora.Enabled := False;
    dbLcbEvento.Enabled := False;
    dbLcbObs.Enabled := False;
    dbEdtObsDet.Enabled := False;
    dbEdtRef.Enabled := False;
    sbLocEvento.Enabled := False;
    sbLimpaObs.Enabled := False;
    btnAlterar.Enabled := False;
    btnExcluir.Enabled := False;
    btnResumido.Enabled := false;

    If ((v_editafollow = 1) or (v_editafollow = 2) or  (v_usuario = qrProcessosResponsavel_empresa.AsString)) Then Begin
      btnResumido.Enabled := true;
    End;

    btnIncluir.Enabled := True;
    btnSair.Enabled := True;
    btnSalvar.Enabled := False;
    btnCancelar.Enabled := False;
    chbCriarFollow.Enabled:= false;
    btnAtivaFollow.Enabled:= False;
    dbgFollowUp.SetFocus;
    Screen.Cursor := crDefault;
    qryCoordenador.close;
    //---
  End
  Else Begin
    lbMsg.Visible := True;
    edtSenha.SetFocus;
  End;
end;

function TF_proFollowup.CargaChegou: Boolean;
begin
  If ( qrFollowUp.Locate('Codevento', '3', [loCaseInsensitive]) ) Or
    ( qrFollowUp.Locate('Codevento', '2340', [loCaseInsensitive]) ) Or
    ( qrFollowUp.Locate('Codevento', '2341', [loCaseInsensitive]) ) Then
    CargaOK := True
  Else
    CargaOK := False;
  Result := CargaOK;
end;

function TF_proFollowup.Liberar: Boolean;
begin
     if ((qrFollowUp.Locate('Codevento;Codobs', VarArrayOf(['1021','1131']) ,[loCaseInsensitive]) )or
         (qrFollowUp.Locate('Codevento;Codobs', VarArrayOf(['1021','1227']) ,[loCaseInsensitive]) ) or
         (qrFollowUp.Locate('Codevento;Codobs', VarArrayOf(['1021','1237']) ,[loCaseInsensitive]) )or
         (qrFollowUp.Locate('Codevento;Codobs', VarArrayOf(['1021','1242']) ,[loCaseInsensitive]) ))Then
       LiberadoOK := true
     else
       LiberadoOK :=  False;
      Result :=  LiberadoOK;
end;

function TF_proFollowup.LiberarTrans: Boolean;
begin
     if(qrFollowUp.Locate('Codevento;Codobs', VarArrayOf(['1021','1122']) ,[loCaseInsensitive]) )Then
       LiberarTransOK := true
     else
       LiberarTransOK :=  False;
      Result :=  LiberarTransOK;
end;

function TF_proFollowup.LiberarSIS: Boolean;
begin
     if(qrFollowUp.Locate('Codevento;Codobs', VarArrayOf(['1021','1201']) ,[loCaseInsensitive]) )Then
       LiberarSISOK := true
     else
       LiberarSISOK :=  False;
      Result :=  LiberarSISOK;
end;

function TF_proFollowup.LiberarAG: Boolean;
begin
     if(qrFollowUp.Locate('Codevento;Codobs', VarArrayOf(['295','49']) ,[loCaseInsensitive]) ) Then
       LiberarAGOK := true
     else
       LiberarAgOK :=  False;
      Result :=  LiberarAgOK;
end;

function TF_proFollowup.Liberarnum: Boolean;
begin
      If ( qrFollowUp.Locate('Codevento', '98', [loCaseInsensitive])) Then
       LiberarnumOK := true
      Else
       LiberarnumOK :=  False;
      Result :=  LiberarnumOK;
end;

function TF_proFollowup.LiberarDARJ: Boolean;
begin
      If (qrFollowUp.Locate('Codevento;Codobs', VarArrayOf(['1021','1111']) ,[loCaseInsensitive]) ) Then
       LiberarDARJOK := true
      Else
       LiberarDARJOK :=  False;
      Result :=  LiberarDARJOK;
end;

function TF_proFollowup.LiberarEnviouDARJ: Boolean;
begin
      If (qrFollowUp.Locate('Codevento;Codobs', VarArrayOf(['1021','1174']) ,[loCaseInsensitive]) ) Then
        LiberarEnviouDARJOK := true
      Else
        If (qrFollowUp.Locate('Codevento;Codobs', VarArrayOf(['1021','1153']) ,[loCaseInsensitive]) ) Then
                LiberarEnviouDARJOK := true
        Else
                If (qrFollowUp.Locate('Codevento', '1031' ,[loCaseInsensitive]) ) Then
                        LiberarEnviouDARJOK := true
                Else
                        LiberarEnviouDARJOK :=  False;
      Result :=  LiberarEnviouDARJOK;
end;



function TF_proFollowup.LiberarVisada: Boolean;
begin
      If ( qrFollowUp.Locate('Codevento', '490', [loCaseInsensitive])) Then
       LiberarVisadaOK := true
      Else
       LiberarVisadaOK :=  False;
      Result :=  LiberarVisadaOK;
end;


function TF_proFollowup.LiberarRF: Boolean;
begin
      If (( qrFollowUp.Locate('Codevento', '987', [loCaseInsensitive])) or ( qrFollowUp.Locate('Codevento', '18', [loCaseInsensitive])) or
         ( qrFollowUp.Locate('Codevento', '624', [loCaseInsensitive])) or ( qrFollowUp.Locate('Codevento', '899', [loCaseInsensitive])) or
         ( qrFollowUp.Locate('Codevento', '2382', [loCaseInsensitive])) or  (qrFollowUp.Locate('Codevento', '17', [loCaseInsensitive]))) Then
       LiberarRFOK := true
      Else
       LiberarRFOK :=  False;
      Result :=  LiberarRFOK;
end;

function TF_proFollowup.LiberarFin: Boolean;
begin
     if(qrFollowUp.Locate('Codevento;Codobs', VarArrayOf(['1020','1107']) ,[loCaseInsensitive]) ) Then
       LiberarFinOK := true
     else
       LiberarFinOK :=  False;
      Result :=  LiberarFinOK;
end;

function TF_proFollowup.LiberarDI: Boolean;
begin
      If ( qrFollowUp.Locate('Codevento', '2355', [loCaseInsensitive])) Then
       LiberarDIOK := true
      Else
       LiberarDIOK :=  False;
      Result :=  LiberarDIOK;
end;

function TF_proFollowup.Liberarcli: Boolean;
begin
      If ( qrFollowUp.Locate('Codevento', '628', [loCaseInsensitive])) Then
       LiberarcliOK := true
      Else
       LiberarcliOK :=  False;
      Result :=  LiberarcliOK;
end;
 
function TF_proFollowup.LiberarRG: Boolean;
begin
      If ( qrFollowUp.Locate('Codevento', '2270', [loCaseInsensitive])) Then
       LiberarRGOK := true
      Else
       LiberarRGOK :=  False;
      Result :=  LiberarRGOK;
end;

function TF_proFollowup.LiberarMar: Boolean;
begin
     if(qrFollowUp.Locate('Codevento;Codobs', VarArrayOf(['1021','1130']) ,[loCaseInsensitive]) ) Then
       LiberarMarOK := true
     else
       LiberarMarOK :=  False;
      Result :=  LiberarMarOK;
end;

function TF_proFollowup.LiberarAr: Boolean;
begin
     if(qrFollowUp.Locate('Codevento;Codobs', VarArrayOf(['1021','1128']) ,[loCaseInsensitive]) ) Then
       LiberarArOK := true
     else
       LiberarArOK :=  False;
      Result :=  LiberarArOK;
end;


function TF_proFollowup.LiberarDSI: Boolean;
begin
      If ( qrFollowUp.Locate('Codevento', '1119', [loCaseInsensitive])) Then
       LiberarDSIOK := true
      Else
       LiberarDSIOK :=  False;       
      Result :=  LiberarDSIOK;
end;

function TF_proFollowup.Liberarcarga: Boolean;
begin
      If ( qrFollowUp.Locate('Codevento', '3', [loCaseInsensitive]) ) Then
       LiberarcargaOK := true
      Else
       LiberarcargaOK :=  False;
      Result :=  LiberarcargaOK;
end;

function TF_proFollowup.LiberarEmb: Boolean;
begin
      If ( qrFollowUp.Locate('Codevento', '1055', [loCaseInsensitive]) ) Then
       LiberarEmbOK := true
      Else
       LiberarEmbOK :=  False;
      Result :=  LiberarEmbOK;
end;

function TF_proFollowup.LiberarCadastro(CodigoOBS : Integer) : Boolean;
var
  q_Aux : TQuery;
begin
  q_Aux := TQuery.Create(nil);
  q_Aux.DatabaseName := 'DBNMSCOMEX';

  try
    if (CodigoOBS = 1123)
     then begin
       q_Aux.SQL.Clear;
       q_Aux.SQL.Add('SELECT SEQUENCIAL FROM FOLLOWUP WHERE CODEVENTO = ''1021'' AND CODOBS = ''1123'' AND PROCESSO = :p0 ');
       q_Aux.Params[0].Value := ME_nossaref.Text;
       q_Aux.Open;

       if (q_Aux.RecordCount >= 2)
        then LiberarCadastroOK := True
        else LiberarCadastroOK := False;
     end;

    if (CodigoOBS = 1152)
     then begin
       q_Aux.Close;
       q_Aux.SQL.Clear;
       q_Aux.SQL.Add('SELECT SEQUENCIAL FROM FOLLOWUP WHERE CODEVENTO = ''1021'' AND CODOBS = ''1152'' AND PROCESSO = :p0 ');
       q_Aux.Params[0].Value := ME_nossaref.Text;
       q_Aux.Open;

       if (q_Aux.RecordCount >= 2)
        then LiberarCadastroOK := True
        else LiberarCadastroOK := False;
     end;
  finally
    FreeAndNil(q_Aux);

    Result := LiberarCadastroOK;
  end;
end;

function TF_proFollowup.ConhecimentoNaoScaneado(MS, Conhecimento: String): Boolean;
var
  QryAux : TQuery;
begin
  QryAux := TQuery.Create(nil);
  QryAux.DatabaseName := 'DBNMSCOMEX';

  try
    QryAux.SQL.Clear;
    QryAux.SQL.Add(' SELECT D.Processo                                                                                                  ');
    QryAux.SQL.Add('   FROM Documentos AS D LEFT JOIN Sub_Tipo_Documentos AS S ON D.Tipo_Doc = S.Tipo_doc AND D.Sub_Tipo_Doc = S.codigo ');
    QryAux.SQL.Add('  WHERE D.Tipo_Doc = ''PROC'' AND D.Processo =:processo AND D.Numero_Doc = :num_doc                                 ');
    QryAux.ParamByName('processo').Value := MS;
    QryAux.ParamByName('num_doc').Value  := Conhecimento;
    QryAux.Open;

    if QryAux.RecordCount = 0
     then Result := True
     else Result := False;
  finally
    QryAux.Free;
  end;
end;

procedure TF_proFollowup.UpdateALC(Processo: String; Data: TDateTime);
begin
  if ((( qrEventosCodigo.AsString = '914' ) and ( qrObsEventosCodigo.AsString = '1' )) or (( qrEventosCodigo.AsString = '1081' ) and ( qrObsEventosCodigo.AsString = '1102' ))) then begin
    qryUpdateALC.ParamByName('PROCESSO').AsString := Processo;
    qryUpdateALC.ParamByName('ALC').AsDateTime := Data;
    qryUpdateALC.ExecSQL;
  end;
end;

procedure TF_proFollowup.btnAlterarHoraClick(Sender: TObject);
begin
    if  (qrFollowUpCodevento.AsString = '982') and (qrFollowUpCodobs.AsString = '1139') then
    begin
        //Leandro Serra - Ticket 583
        With pnlHoraDesembaraco Do
        Begin
          Enabled:=true;
          Left := 272;
          Top  := 152;
          Visible := True;
          txtHoraDesembaraco.setfocus;
        End;
        v_hora :='';
    end
    else
        showmessage('Esta operação somente é válida para o evento, Desembaraçou a Declaração de Importação.');

end;

procedure TF_proFollowup.BitBtn1Click(Sender: TObject);
begin
  if StrIsTime(txtHoraDesembaraco.Text) <> true then
  begin
    showmessage('Informe uma hora válida.');
    exit;
  end;
  //Leandro Serra - Ticket 583
  v_hora := txtHoraDesembaraco.Text;
  with qrHoraAlterar do
  begin
      close;
      ParamByName('pHora').value :=v_hora;
      ParamByName('pProcesso').value := ME_nossaref.Text;
      ParamByName('pSequencial').value := qrFollowUpSequencial.Value;
      ExecSQL;
  end;
  With qrFollowUp Do Begin
      Close;
      Params[0].AsString := vPro;
      Open;
      last;
  End;
  btnCancelarHoraClick(sender);
end;

procedure TF_proFollowup.btnCancelarHoraClick(Sender: TObject);
begin
  //Leandro Serra - Ticket 583
  pnlHoraDesembaraco.Visible:=false;
  pnlHoraDesembaraco.Enabled:=false;
  v_hora := '';
end;


 // Leonardo . alabarce - 07/10/11
procedure TF_proFollowup.btOKClick(Sender: TObject);
 var
    qreg: String;
begin
  If ( qrGerenteSenha.text = Edit1.Text ) Then Begin
    pnlAutGerente.Hide;
    Label20.Visible := False;
     // Do botao salvar
    qreg  := tbFollowUpSequencial.AsString;
    Screen.Cursor := crHourGlass;
    if ((tbFollowUpCodobs.isnull)  or (tbFollowUpCodobs.AsString = '')) then tbFollowUpCodobs.AsString := '0';
    tbFollowUp.Post;

     With qrFollowUp Do Begin
       Close;
       Open;
       Locate('sequencial', qreg, [loCaseInsensitive]);
    End;
   
    v_novofol := False;

    pnlTop.Enabled := True;
    dbgFollowUp.Enabled := True;
    dbEdtData.Enabled := False;
    dbEdtHora.Enabled := False;
    dbLcbEvento.Enabled := False;
    dbLcbObs.Enabled := False;
    dbEdtObsDet.Enabled := False;
    dbEdtRef.Enabled := False;
    sbLocEvento.Enabled := False;
    sbLimpaObs.Enabled := False;
    btnAlterar.Enabled := False;
    btnExcluir.Enabled := False;
    btnResumido.Enabled := false;


    btnIncluir.Enabled := True;
    btnSair.Enabled := True;
    btnSalvar.Enabled := False;
    btnCancelar.Enabled := False;

    dbgFollowUp.SetFocus;
    Screen.Cursor := crDefault;
    qrGerente.close;
    //---
  End
  Else Begin
    Label20.Visible := True;
    Edit1.SetFocus;
  End;
 End;
 //Fim-------------------------
function TF_proFollowup.ProcessoCancelado: Boolean;
begin
  If ( qrFollowUp.Locate('Codevento', '245', [loCaseInsensitive]) ) Then
   ProcessoCancelOK := true
  Else
   ProcessoCancelOK :=  False;
  Result :=  ProcessoCancelOK;
end;

procedure TF_proFollowup.TestPre_Requisitos;
begin
  CargaChegou();
  liberar();
  Liberarnum();
  LiberarDARJ();
  LiberarEnviouDARJ();
  LiberarVisada();
  LiberarRF();
  LiberarFin();
  LiberarRes();
  LiberarGuia();
  LiberarSIS();
  LiberarDI();
  Liberarcli();
  LiberarMar();
  LiberarAr();
  LiberarRG();
  LiberarEmb();
  Liberarcarga();
  liberarDSI();
  LiberarTrans();
  LiberarAg();
  BloquearFollow();
  BloquearFollowFinanceiro();
  BloquearFin0();
  BloquearFin1();
  BloquearFin2();

  ProcessoCancelado();

  qrFollowUp.Last;
end;

procedure TF_proFollowup.btnCheckClick(Sender: TObject);
  var
    OK : Boolean;
begin
  try
    try
      qryCheckInsert.ParamByName('FK_Processo').Value := qrProcessosProcesso.AsString;
      qryCheckInsert.ParamByName('FK_Usuario').Value := v_usuario;
      qryCheckInsert.ExecSQL;
      OK := True;
    except
      OK := False;
      Application.MessageBox('Não foi possível realizar o "CHECK"','Aviso', MB_OK+MB_ICONWARNING);
    end;
  finally
    if ( OK ) then begin
      btnCheck.Enabled := false;
      Application.MessageBox('CHECK realizado com sucesso!','Aviso', MB_OK+MB_ICONINFORMATION);
      f_senha.Follow_Check;
    end;
  end;

end;

 // Leonardo.Alabarce 22/12/2011 ticket 1188
procedure TF_proFollowup.btnCancelarFollowClick(Sender: TObject);
begin
     If MessageDlg('Confirma Cancelamento do Follow Automático?',mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
        qrUpdateCancelar.close;
        qrUpdateCancelar.ParamByName( 'qrprocesso' ).value := ME_nossaref.text;
        qrUpdateCancelar.ExecSQL;
        ShowMessage ('Follow automático cancelado.');
        qrFollowUp.close;
        qrFollowUp.open;
        btnAtivaFollow.Enabled := False;
        btnCancelarFollow.Enabled := False;
        lblExibiFollow.Caption := '' ;

     end;
end;

procedure TF_proFollowup.btnAtivaFollowClick(Sender: TObject);
begin
     if qrExibiLabel.RecordCount <> 0 then begin
//         qrInsertAtivo.open;
         qrInsertAtivo.ParamByName('Processo').Value := ME_nossaref.text;
         qrInsertAtivo.ParamByName('codevento').Value := qrExibiLabelCodevento.AsString;
         qrInsertAtivo.ParamByName('codobs').Value := qrExibiLabelCodobs.AsString;
         qrInsertAtivo.ParamByName('coddet').Value := dbEdtObsDet.text;
         qrInsertAtivo.ParamByName('data').Value := v_dataFollow;
         qrInsertAtivo.ParamByName('hora').Value := FormatDateTime('hh:nn',Now());
         qrInsertAtivo.ParamByName('Usuario').Value := v_usuario;
         qrInsertAtivo.ExecSQL;
         ShowMessage('O follow automático foi ativado.');
         btnAtivaFollow.Enabled := false;
         qrFollowUp.close;
         qrFollowUp.open;

     end;
 //FIM-----------------------------------------------------------------------
end;

function TF_proFollowup.VerificarLiberacaoProcessoUsuario: Boolean;
var
  QrAux1 : TQuery;
begin
  try
    QrAux1 := TQuery.Create(nil);
    QrAux1.DatabaseName := 'DBNMSCOMEX';

    QrAux1.SQL.Clear;
    QrAux1.SQL.Add('SELECT PK_ID FROM USUARIO_FOLLOW_ABERTO WHERE USUARIO = :pUsuario AND PROCESSO = :pProcesso ');
    QrAux1.ParamByName('pUsuario').Value  := v_usuario;
    QrAux1.ParamByName('pProcesso').Value := me_nossaref.Text;
    QrAux1.Open;

    if QrAux1.RecordCount > 0
     then Result := True
     else Result := False;
  finally
     FreeAndNil(QrAux1);

    end;
end;

function TF_proFollowup.VerificarFollowAtivo: Boolean;
var
  Qr_Aux : TQuery;
begin
  try
    Qr_Aux := TQuery.Create(nil);
    Qr_Aux.DatabaseName := 'DBNMSCOMEX';

    Qr_Aux.SQL.Clear;
    Qr_Aux.SQL.Add('SELECT SEQUENCIAL  FROM fOLLOWUP WHERE fOLLOW_AUTO = 1  and Processo = :pProcesso ');
    Qr_Aux.ParamByName('pProcesso').Value := me_nossaref.Text;
    Qr_Aux.Open;

    if Qr_Aux.RecordCount > 0
     then Result := True
     else Result := False;
  finally
     FreeAndNil(Qr_Aux);

    end;
end;

function TF_proFollowup.LiberarRes: Boolean;
begin
     if(qrFollowUp.Locate('Codevento;Codobs', VarArrayOf(['1021','1165']) ,[loCaseInsensitive]) ) Then
       LiberarResOK := true
     else
      LiberarResOK :=  False;
      Result :=  LiberarResOK;
end;

function TF_proFollowup.LiberarGuia: Boolean;
begin
     if(qrFollowUp.Locate('Codevento;Codobs', VarArrayOf(['1021','1154']) ,[loCaseInsensitive]) ) Then
       LiberarGuiaOK := true
     else
      LiberarGuiaOK :=  False;
      Result :=  LiberarGuiaOK;
end;

function TF_proFollowup.VerificarFollowinvoice: Boolean;
var
  Qr_Aux : TQuery;
begin
  try
    Qr_Aux := TQuery.Create(nil);
    Qr_Aux.DatabaseName := 'DBNMSCOMEX';

    Qr_Aux.SQL.Clear;
    Qr_Aux.SQL.Add('SELECT SEQUENCIAL  FROM fOLLOWUP WHERE codevento =''7'' and Processo = :pProcesso ');
    Qr_Aux.ParamByName('pProcesso').Value := me_nossaref.Text;
    Qr_Aux.Open;

    if Qr_Aux.RecordCount > 0
     then Result := True
     else Result := False;
  finally
     FreeAndNil(Qr_Aux);

    end;
end;
function TF_proFollowup.VerificarFollowEntradaDI: Boolean;
var
  Qr_Aux : TQuery;
begin
  try
    Qr_Aux := TQuery.Create(nil);
    Qr_Aux.DatabaseName := 'DBNMSCOMEX';

    Qr_Aux.SQL.Clear;
    Qr_Aux.SQL.Add('SELECT SEQUENCIAL FROM fOLLOWUP WHERE codevento = ''1021'' and Codobs in (''1221'',''1207'',''1169'',''1220'',''1226'',''1167'',''1168'') and Processo = :pProcesso ');
    Qr_Aux.ParamByName('pProcesso').Value := me_nossaref.Text;
    Qr_Aux.Open;

    if Qr_Aux.RecordCount > 0
     then Result := True
     else Result := False;
  finally
    FreeAndNil(Qr_Aux);
  end;
end;

procedure TF_proFollowup.btnSemEmailClick(Sender: TObject);
begin
     qrUP_SemEmail.close;
     qrUP_SemEmail.ParamByName( 'proc' ).value := ME_nossaref.text;
     qrUP_SemEmail.ExecSQL;
     ShowMessage('Processo não vinculado com sucesso.');
     btnSemEmail.Enabled := False;
end;

function TF_proFollowup.BloquearFollow: Boolean;
begin
      If (qrFollowUp.Locate('Codevento;Codobs', VarArrayOf(['1020','1107']) ,[loCaseInsensitive]) ) Then
       BloquearFollowOK := true
      Else
       BloquearFollowOK :=  False;
      Result :=  BloquearFollowOK;
end;                                            

function TF_proFollowup.BloquearFollowFinanceiro: Boolean;
begin
      If (qrFollowUp.Locate('Codevento;Codobs', VarArrayOf(['361','4']) ,[loCaseInsensitive]) ) Then
       BloquearFollowFinanceiroOK := true
      Else
       BloquearFollowFinanceiroOK :=  False;
      Result :=  BloquearFollowFinanceiroOK;
end;

function TF_proFollowup.BloquearFin0: Boolean;
begin
  if (qrFollowUp.Locate('Codevento;Codobs', VarArrayOf(['1021','1106']) ,[loCaseInsensitive]) )
   then BloquearFin0OK := False
   else BloquearFin0OK := True;

  Result := BloquearFin0OK;
end;

function TF_proFollowup.BloquearFin1: Boolean;
begin
  if (qrFollowUp.Locate('Codevento;Codobs', VarArrayOf(['1020','1107']) ,[loCaseInsensitive]) )
   then BloquearFin1OK := False
   else BloquearFin1OK := True;

  Result := BloquearFin1OK;
end;

function TF_proFollowup.BloquearFin2: Boolean;
begin
  if (qrFollowUp.Locate('Codevento;Codobs', VarArrayOf(['1020','1108']) ,[loCaseInsensitive]) )
   then BloquearFin2OK := False
   else BloquearFin2OK := True;

  Result := BloquearFin2OK;
end;

procedure TF_proFollowup.btnExcluirPendenciaClick(Sender: TObject);
begin

  qrVerificaPendencia.Close;
  qrVerificaPendencia.ParamByName( 'qproc' ).value := ME_nossaref.text;
  qrVerificaPendencia.Open;

  If qrVerificaPendencia.RecordCount > 0  then begin
     Try
      qrExcluirPendencia.ParamByName( 'proc' ).value := ME_nossaref.text;
      qrExcluirPendencia.ExecSQL;
      lblDescAPenc.Caption := 'Observações: ';
      logusu('B',v_nomecompleto+ ' Excluiu a Pendência ('+ ME_nossaref.text + ')');
      with qrApenc_Pendencias do
      begin
        close;
        ParamByName('qProc').asString := qrProcessosProcesso.AsString;
        Open;
      end;
     except
      Application.MessageBox('Não foi possível realizar o "Exclusão"','Aviso', MB_OK+MB_ICONWARNING);
    end;
  End  
  Else
    ShowMessage('Processo sem Pendência no Apenc.');

end;

procedure TF_proFollowup.btnAbrirProcessoClick(Sender: TObject);
begin
  Try
   If qrProcessosFechado.AsString = '1' then begin

      qrProcessoAberto.Close;
      qrProcessoAberto.ParamByName( 'qProc' ).value := ME_nossaref.text;
      qrProcessoAberto.Open;

      If qrProcessoAberto.RecordCount = 0 then begin
         qrInsertAbrirProcesso.ParamByName('qrproc').Value := ME_nossaref.text;
         qrInsertAbrirProcesso.ParamByName('dt').Value := FormatDateTime('dd/mm/yyyy',date());
         qrInsertAbrirProcesso.ParamByName('hora').Value := FormatDateTime('hh:nn',Now());
         qrInsertAbrirProcesso.ExecSQL;
      End;

       qrUpAbrirProcesso.ParamByName('Cod').Value := ME_nossaref.text;
       qrUpAbrirProcesso.ExecSQL;
       ShowMessage('Processo Aberto com Sucesso.');
       logusu('B',v_nomecompleto+ ' Abriu o processo'+ ME_nossaref.text);
    End
    Else
       ShowMessage('Processo Já Aberto.');
   except
      Application.MessageBox('Não foi possível Abrir o Processo','Aviso', MB_OK+MB_ICONWARNING);
    end;
end;

procedure TF_proFollowup.btnAutorizaDIClick(Sender: TObject);
var
  qrAux : TQuery;
begin
  pnlAutorizaDI.Visible := True;

  pnlAutorizaDI.Top    := 272;
  pnlAutorizaDI.Left   := 19;
  pnlAutorizaDI.Height := 201;
  pnlAutorizaDI.Width  := 862;

  AtualizaGridAutorizacaoDI;

  AtualizaGridRejeicaoDI;

  qrAux := TQuery.Create(nil);
  qrAux.DatabaseName := 'DBNMSCOMEX';

  try
    qrAux.Sql.Add('SELECT SUM(VALOR_TOTAL) AS Valor_Total FROM FATURAS WHERE PROCESSO = :Processo ');
    qrAux.ParamByName('Processo').AsString := ME_nossaref.Text;
    qrAux.Open;

    lblAutorizaDI.Visible := qrAux.RecordCount > 0;

    TotalFatura := qrAux.FieldByName('Valor_Total').AsFloat;

    dbedDataAutorizador1Change(dbedDataAutorizador1);
    dbedAutorizador1Change(dbedAutorizador1);
    dbedDataAutorizador2Change(dbedDataAutorizador2);
    dbedAutorizador2Change(dbedAutorizador2);

    if qrAux.RecordCount > 0
     then lblAutorizaDI.Caption := 'Total Fatura R$ ' + FormatFloat('#,##0.00', qrAux.FieldByName('Valor_Total').AsFloat);
  finally
    qrAux.Free;
  end;
end;

procedure TF_proFollowup.btnIncluiAutDIClick(Sender: TObject);
var
  QrAux : TQuery;
  Auditor1, Auditor2, Data_Auditor1, Data_Auditor2 : String;
begin
  QrAux := TQuery.Create(nil);
  QrAux.DatabaseName := 'DBNMSCOMEX';

  try
    QrAux.SQL.Add(' SELECT Auditor1, Data_Auditor1, Auditor2, Data_Auditor2 FROM Audita_Registro_DI WHERE Rejeitada = 0 AND Processo = :Processo ');
    QrAux.ParamByName('Processo').AsString := ME_nossaref.Text;
    QrAux.Open;

    if QrAux.RecordCount > 0
     then begin
       Auditor1      := QrAux.FieldbyName('Auditor1').AsString;
       Data_Auditor1 := QrAux.FieldbyName('Data_Auditor1').AsString;
       Auditor2      := QrAux.FieldbyName('Auditor2').AsString;
       Data_Auditor2 := QrAux.FieldbyName('Data_Auditor2').AsString;
     end;

    QrAux.Close;
    QrAux.SQL.Clear;

    if (Auditor1 <> v_nomecompleto) and
       (Auditor2 <> v_nomecompleto)
     then begin
       if ((Auditor1 = '') or (Auditor2 = ''))
        then begin
          if Auditor1 = ''
           then QrAux.SQL.Add('UPDATE Audita_Registro_DI SET Auditor1 = :Auditor, Data_Auditor1 = :Data_Auditor WHERE Rejeitada = 0 AND Processo = :Processo ')
           else if Auditor2 = ''
                 then QrAux.SQL.Add('UPDATE Audita_Registro_DI SET Auditor2 = :Auditor, Data_Auditor2 = :Data_Auditor WHERE Rejeitada = 0 AND Processo = :Processo ');

          QrAux.ParamByName('Processo').AsString     := ME_nossaref.Text;
          QrAux.ParamByName('Auditor').AsString      := v_nomecompleto;
          QrAux.ParamByName('Data_Auditor').AsString := DateToStr(Date());

          try
            QrAux.ExecSQL;

            F_MSCOMEX.IncluiFollow(ME_nossaref.Text,'2519','0','Autorizado por ' + v_nomecompleto, v_usuario, Date, Time());

            logusu('P','Autorizou o registro da DI para o processo ' + ME_nossaref.Text);

            EnviaEmailResponsavelProcesso('A'); //Envia e-mail informação de autorização

            Application.MessageBox('Foi incluído o follow "Registro de DI autorizado".','Informação', MB_ICONINFORMATION);

            qrFollowUp.Close;
            qrFollowUp.Open;

            qrFollowUp.First;
            qrFollowUp.Last;
          finally
          end;
        end;
     end
     else Application.MessageBox('O seu usuário só pode autorizar uma única vez cada processo.','Informação', MB_ICONWARNING);
  finally
    QrAux.Free;

    AtualizaGridAutorizacaoDI;
  end;
end;

function TF_proFollowup.AtualizaGridAutorizacaoDI : Boolean;
begin
  qrAutorizaDI.Close;
  qrAutorizaDI.ParamByName('Processo').AsString := ME_nossaref.Text;
  qrAutorizaDI.Open;

  btnIncluiAutDI.Enabled  := (qrAutorizaDI.RecordCount > 0) and (v_audita_di = 1);
  btnRejeitaAutDI.Enabled := (qrAutorizaDI.RecordCount > 0) and (v_audita_di = 1);

  Result := qrAutorizaDI.RecordCount > 0;
end;

procedure TF_proFollowup.dbedDataAutorizador1Change(Sender: TObject);
begin
  if (dbedDataAutorizador1.Text = '')
   then dbedDataAutorizador1.Color := clRed
   else dbedDataAutorizador1.Color := clWindow;
end;

procedure TF_proFollowup.dbedAutorizador1Change(Sender: TObject);
begin
  if (dbedAutorizador1.Text = '')
   then dbedAutorizador1.Color := clRed
   else dbedAutorizador1.Color := clWindow;
end;

procedure TF_proFollowup.dbedDataAutorizador2Change(Sender: TObject);
begin
  if TotalFatura > v_ValorMaximoRegistroDI
   then begin
     if (dbedDataAutorizador2.Text = '')
      then dbedDataAutorizador2.Color := clRed
      else dbedDataAutorizador2.Color := clWindow;
   end
   else dbedDataAutorizador2.Color := clWindow;
end;

procedure TF_proFollowup.dbedAutorizador2Change(Sender: TObject);
begin
  if TotalFatura > v_ValorMaximoRegistroDI
   then begin
     if (dbedAutorizador2.Text = '')
      then dbedAutorizador2.Color := clRed
      else dbedAutorizador2.Color := clWindow;
   end
   else dbedAutorizador2.Color := clWindow;
end;

procedure TF_proFollowup.EnviaEmailResponsavelProcesso(Tipo : String);
var
  QryAux, QryAux1 : TQuery;
  vPara, vBody : String;
begin
  try
    QryAux := TQuery.Create(nil);
    QryAux.DatabaseName := 'DBNMSCOMEX';

    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add(' SELECT Email FROM Usuarios WHERE Usuario = :Usuario AND Email <> '''' ');
    QryAux.ParamByName('Usuario').AsString := qrProcessosresponsavel_empresa.AsString;
    QryAux.Open;

    if QryAux.RecordCount > 0
     then begin
       if (Tipo = 'A') // (A) Envia e-mail informação de autorização
        then begin
          vBody := '<BR>'
                 + 'Prezado(a),<BR>'
                 + '<BR>'
                 + 'Por meio deste, informamos que o Processo ' + ME_nossaref.Text + ' foi autorizado a Registrar DI pelo(a) usuário(a) ' + v_nomecompleto + '.<BR><BR>'
                 + 'OBS: A autorização só tem validade até hoje. <BR>'
                 + StringOfChar('_', 90)
                 + '<BR><BR>'
                 + 'Este e-mail é automático e não necessita de resposta. <BR>'
                 + '<BR><BR>'
                 + 'Atenciosamente,'
                 + '<BR><BR>'
                 + 'MS2000 - SISTEMA GERENCIAL ADUANEIRO'
                 + '<BR><BR>';

          F_MSCOMEX.IncluiEmailAuto('Autorização para Registro de DI','Processo ' + ME_nossaref.Text + ' autorizado a registrar DI','','MS2000Plus <auditoria@mslogistica.com.br>',QryAux.FieldByName('Email').AsString,v_email,'',vBody);
        end;

       if (Tipo = 'R') // (R) Envia e-mail informação de rejeição
        then begin
          try
            QryAux1 := TQuery.Create(nil);
            QryAux1.DatabaseName := 'DBNMSCOMEX';

            QryAux1.Close;
            QryAux1.SQL.Clear;
            QryAux1.SQL.Add(' SELECT Email, Usuario FROM Usuarios WHERE Ativo = 1 AND Audita_DI = 1 AND Email <> '''' ');
            QryAux1.Open;

            QryAux1.First;

            while not QryAux1.Eof do
             begin
               if vPara = ''
                then vPara := QryAux1.FieldByName('Email').AsString
                else vPara := vPara + '; ' + QryAux1.FieldByName('Email').AsString;

               QryAux1.Next;
             end;
          finally
            QryAux1.Free;
          end;

          vBody := '<BR>'
                 + 'Prezado(a),<BR>'
                 + '<BR>'
                 + 'Por meio deste, informamos que o Processo ' + ME_nossaref.Text + ' foi recusado a Registrar DI pelo(a) usuário(a) ' + v_nomecompleto + '.<BR><BR>'
                 + 'Motivo: ' + mmDetalheRejeicao.Text + '<BR>'
                 + StringOfChar('_', 150)
                 + '<BR><BR>'
                 + 'Este e-mail é automático e não necessita de resposta. <BR>'
                 + '<BR><BR>'
                 + 'Atenciosamente,'
                 + '<BR><BR>'
                 + 'MS2000 - SISTEMA GERENCIAL ADUANEIRO'
                 + '<BR><BR>';

          F_MSCOMEX.IncluiEmailAuto('Registro de DI recusado','Processo ' + ME_nossaref.Text + ' recusado a registrar DI','','MS2000Plus <auditoria@mslogistica.com.br>',QryAux.FieldByName('Email').AsString,vPara,'',vBody);
        end;
     end;
  finally
    QryAux.Free;
  end;
end;

procedure TF_proFollowup.btnSalvarRejeicaoClick(Sender: TObject);
begin
  if (Trim(mmDetalheRejeicao.Text) <> '')
   then begin
     try
       GravaObservacaoRejeicaoDI;

       logusu('P','Rejeitou o registro de DI para o Processo: '+ ME_nossaref.Text + ' com a seguinte Observação: ' + mmDetalheRejeicao.Text);

       EnviaEmailResponsavelProcesso('R');
     except
     end;

     AtualizaGridRejeicaoDI;

     pnlRejeicao.Visible := False;

     btnIncluiAutDI.Enabled  := False;
     btnRejeitaAutDI.Enabled := False;
   end;
end;

procedure TF_proFollowup.btnRejeitaAutDIClick(Sender: TObject);
begin
  mmDetalheRejeicao.Clear;

  pnlRejeicao.Top    := 231;
  pnlRejeicao.Left   := 214;
  pnlRejeicao.Height := 223;
  pnlRejeicao.Width  := 425;

  pnlRejeicao.Visible := True;

  mmDetalheRejeicao.SetFocus;
end;

procedure TF_proFollowup.GravaObservacaoRejeicaoDI;
var
  QrAux : TQuery;
begin
  QrAux := TQuery.Create(nil);
  QrAux.DatabaseName := 'DBNMSCOMEX';

  try
    QrAux.SQL.Clear;
    QrAux.SQL.Add(' UPDATE Audita_Registro_DI                                                                                            ');
    QrAux.SQL.Add('    SET Rejeitada = 1, Auditor_Rejeicao = :Auditor_Rejeicao, Data_Rejeicao = :Data_Rejeicao, Observacao = :Observacao ');
    QrAux.SQL.Add('  WHERE Rejeitada = 0 AND Processo = :Processo                                                                        ');
    QrAux.ParamByName('Auditor_Rejeicao').AsString := v_nomecompleto;
    QrAux.ParamByName('Data_Rejeicao').AsDateTime  := Date();
    QrAux.ParamByName('Observacao').AsMemo         := mmDetalheRejeicao.Text;
    QrAux.ParamByName('Processo').AsString         := ME_nossaref.Text;
    QrAux.ExecSQL;
  finally
    QrAux.Free;
  end;
end;

procedure TF_proFollowup.AtualizaGridRejeicaoDI;
begin
  qrHistoricoRejeicao.Close;
  qrHistoricoRejeicao.ParamByName('Processo').AsString := ME_nossaref.Text;
  qrHistoricoRejeicao.Open;
end;

procedure TF_proFollowup.btnCancelarRejeicaoClick(Sender: TObject);
begin
  if (Trim(mmDetalheRejeicao.Text) <> '')
   then begin
     Application.MessageBox('A observação está preenchida, para cancelar, a observação deverá estar em branco.','Atenção', MB_ICONWARNING);

     mmDetalheRejeicao.SetFocus;
   end
   else pnlRejeicao.Visible := False;
end;

procedure TF_proFollowup.btnFecharAutorizacaoDIClick(Sender: TObject);
begin
  pnlAutorizaDI.Visible := False;
end;

function TF_proFollowup.VerificarSeContratoERepetro(Processo : String): Boolean;
var
  QrAux : TQuery;
begin
  QrAux := TQuery.Create(nil);
  QrAux.DatabaseName := 'DBNMSCOMEX';

  try
    QrAux.SQL.Clear;
    QrAux.SQL.Add('  SELECT C.Repetro                          ');
    QrAux.SQL.Add('    FROM Processos P INNER JOIN Contratos C ');
    QrAux.SQL.Add('      ON P.Empresa    = C.Empresa AND       ');
    QrAux.SQL.Add('         P.Filial     = C.Filial  AND       ');
    QrAux.SQL.Add('         P.Importador = C.Importador AND    ');
    QrAux.SQL.Add('         P.Contrato   = C.Contrato          ');
    QrAux.SQL.Add('   WHERE P.Codigo = :Processo               ');
    QrAux.ParamByName('Processo').AsString := Processo;
    QrAux.Open;

    if QrAux.RecordCount <> 0
     then Result := (QrAux.FieldByName('Repetro').AsInteger = 1)
     else Result := True
  finally
    QrAux.Free;
  end;
end;

function TF_proFollowup.DIEstaIncluidaNoRepetro(DI : String) : Boolean;
var
  QrAux : TQuery;
begin
  QrAux := TQuery.Create(nil);
  QrAux.DatabaseName := 'DBNMSCOMEX';

  try
    QrAux.SQL.Clear;
    QrAux.SQL.Add('  SELECT * FROM Repetro WHERE DI = :DI ');
    QrAux.ParamByName('DI').AsString := DI;
    QrAux.Open;

    if QrAux.RecordCount <> 0
     then Result := True
     else Result := False;
  finally
    QrAux.Free;
  end;
end;


procedure TF_proFollowup.qrFollowUpAfterScroll(DataSet: TDataSet);
begin
  if ((dbEdtData.Text = v_dataFollow) or (v_editafollow = 2))
   then begin
     btnAlterar.Enabled := True;
     btnExcluir.Enabled := True;
   end
   else begin
     btnAlterar.Enabled := False;
     btnExcluir.Enabled := False;
   end;
end;

function TF_proFollowup.ICMSNaoContabilizado(Processo : String): Boolean;
var
  QrAux : TQuery;
begin
  QrAux := TQuery.Create(nil);
  QrAux.DataBaseName := 'DBNMSCOMEX';

  try
    QrAux.Close;
    QrAux.SQL.Clear;
    QrAux.SQL.Add(' SELECT Processo FROM Numerarios_Processos WHERE Numerario = ''ICMS'' AND Valor_Registrado <> 0 AND Processo = :pProcesso ');
    QrAux.ParamByName('pProcesso').Value := Processo;
    QrAux.Open;

    Result := (QrAux.RecordCount = 0);
  finally
    QrAux.Free;
  end;
end;

function TF_proFollowup.VerificaICMS(Processo: String): Boolean;
var
  QrAux : TQuery;
begin
  QrAux := TQuery.Create(nil);
  QrAux.DataBaseName := 'DBNMSCOMEX';

  try
    QrAux.Close;
    QrAux.SQL.Clear;
    QrAux.SQL.Add(' SELECT Tratamento_Tributario FROM Tributacao_Item_Fatura WHERE Tratamento_Tributario = '''' AND Processo = :pProcesso ');
    QrAux.ParamByName('pProcesso').Value := Processo;
    QrAux.Open;

    Result := QrAux.RecordCount <> 0;
  finally
    QrAux.Free;
  end;
end;

function TF_proFollowup.NaoPossuiFaturaItenFaturaTributacao(
  Processo: String): Boolean;
var
  QrAux : TQuery;
begin
  try
    QrAux := TQuery.Create(nil);
    QrAux.DatabaseName := 'DBNMSCOMEX';

    QrAux.Close;
    QrAux.Sql.Clear;
    QrAux.Sql.Add('SELECT TOP 1 P.*                                                   ');
    QrAux.Sql.Add('  FROM Processos P INNER JOIN Faturas F                            ');
    QrAux.Sql.Add('    ON F.Processo = P.Codigo INNER JOIN ItensFaturas ITF           ');
    QrAux.Sql.Add('    ON F.Codigo = ITF.FATURA INNER JOIN Tributacao_Item_Fatura TIF ');
    QrAux.Sql.Add('    ON P.Codigo = TIF.Processo AND                                 ');
    QrAux.Sql.Add('       F.Codigo = TIF.Fatura                                       ');
    QrAux.Sql.Add(' WHERE P.Codigo = :p0                                              ');
    QrAux.Params[0].Value := Processo;
    QrAux.Open;

    if (QrAux.RecordCount <> 0)
     then Result := False
     else Result := True;
  finally
    QrAux.Free;
  end;
end;

end.
