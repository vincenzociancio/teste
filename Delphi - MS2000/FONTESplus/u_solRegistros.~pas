unit u_solRegistros;
                                        
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Buttons, Grids, DBGrids, ExtCtrls, Db, DBTables,
  IdComponent, IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP,
  IdMessage, IdBaseComponent, IdAntiFreezeBase, IdAntiFreeze, OleCtrls,
  SHDocVw, MSHTML, ComCtrls, Psock, NMsmtp;

type
  Tf_solRegistros = class(TForm)
    pnlPrincipal: TPanel;
    Panel1: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    cbVerTodos: TCheckBox;
    DBLookupComboBox2: TDBLookupComboBox;
    pnlInclusaoItens: TPanel;
    Label26: TLabel;
    Panel10: TPanel;
    edtProc: TMaskEdit;
    qrProcessos: TQuery;
    dsQProcessos: TDataSource;
    ds_propis: TDataSource;
    q_piscofinstrib: TQuery;
    dsSolReg: TDataSource;
    tbSolReg: TTable;
    tbParametros: TTable;
    dsTbSolReg: TDataSource;
    qrPermissaoAlterar: TQuery;
    tbTipoDec: TTable;
    pnl12: TPanel;
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    Button2: TButton;
    qrVerificaExiste: TQuery;
    Panel11: TPanel;
    pnlAguarde: TPanel;
    qrFinanc: TQuery;
    pnlBrowser: TPanel;
    WebBrowser1: TWebBrowser;
    pnlBroConEmi: TPanel;
    BitBtn6: TBitBtn;
    btnEmitir: TBitBtn;
    pnlImprimir: TPanel;
    BitBtn7: TBitBtn;
    BitBtn9: TBitBtn;
    pnlBroConSol: TPanel;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    pnlEmissao: TPanel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Panel13: TPanel;
    Panel15: TPanel;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit1: TDBEdit;
    qrSolicitante: TQuery;
    tbProcessosRegImp: TTable;
    qrSolReg: TQuery;
    qrListaStatus: TQuery;
    dsListaStatus: TDataSource;
    qrVerificaExiste1DI: TQuery;
    edtFiltro: TEdit;
    Label16: TLabel;
    Label25: TLabel;
    cbFiltrar: TCheckBox;
    Label27: TLabel;
    qrReativa1DI: TQuery;
    qrReativa2DI: TQuery;
    qrConta: TQuery;
    DBLookupComboBox1: TDBLookupComboBox;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    dsConta: TDataSource;
    qrStatusEmail: TQuery;
    p_autoriza: TPanel;
    Panel14: TPanel;
    Panel16: TPanel;
    cancelsenha: TBitBtn;
    oksenha: TBitBtn;
    me_senha: TMaskEdit;
    q_autoriza: TQuery;
    q_impaut: TQuery;
    b_di: TBitBtn;
    b_con: TBitBtn;
    pnlDados: TPanel;
    Label4: TLabel;
    Label1: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    Panel3: TPanel;
    Label15: TLabel;
    dbeCliente: TDBEdit;
    Panel2: TPanel;
    Label2: TLabel;
    Label18: TLabel;
    Label3: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    dbeRef_MS: TDBEdit;
    dbeSolicitante: TDBEdit;
    dbeData_requisicao: TDBEdit;
    dbeAutorizador: TDBEdit;
    dbeStatus: TDBEdit;
    dbeDescricao: TDBEdit;
    dbeCIF: TDBEdit;
    dbeII: TDBEdit;
    dbeIPI: TDBEdit;
    dbeTxSisco: TDBEdit;
    dbePIS_PASEP: TDBEdit;
    dbeCOFINS: TDBEdit;
    dbeBC: TDBEdit;
    dbeICMS: TDBEdit;
    dbeICMS1: TDBEdit;
    q_contac: TQuery;
    t_movcc: TTable;
    t_num: TTable;
    q_del01: TQuery;
    q_del02: TQuery;
    qrListaStatusDescricao: TStringField;
    qrListaStatusCodigo: TIntegerField;
    qrProcessosEmpresa: TStringField;
    qrProcessosFilial: TStringField;
    qrProcessosProcesso: TStringField;
    qrProcessosdecl: TStringField;
    qrProcessosData: TDateTimeField;
    qrProcessosCliente: TStringField;
    qrProcessosValor_FOB: TFloatField;
    qrProcessosValor_CIF: TFloatField;
    qrProcessosValor_FOBC: TFloatField;
    qrProcessosValor_CIFC: TFloatField;
    qrProcessosII: TFloatField;
    qrProcessosIPI: TFloatField;
    qrProcessosTaxa_SISCOMEX: TFloatField;
    qrProcessosIIc: TFloatField;
    qrProcessosIPIc: TFloatField;
    qrProcessosTaxa_SISCOMEXc: TFloatField;
    qrProcessosNR_DECLARACAO_IMP: TStringField;
    qrProcessosNR_DECLARACAO_IMPC: TStringField;
    qrProcessosURF_chegada: TStringField;
    qrProcessosData_Chegada_URF_Cheg: TDateTimeField;
    qrProcessosDT_DESEMBARACO: TDateTimeField;
    qrProcessosURF_Despacho: TStringField;
    qrProcessosDescricao: TStringField;
    qrProcessossaldo: TFloatField;
    qrProcessosimportador: TStringField;
    qrProcessosBASE_ICMS: TSmallintField;
    q_piscofinstribProcesso: TStringField;
    q_piscofinstribAdicao: TStringField;
    q_piscofinstribRegime_Tributacao_II: TStringField;
    q_piscofinstribRegime_Tributacao_IPI: TStringField;
    q_piscofinstribDESCRICAO: TStringField;
    q_piscofinstribTratamento_Tributario: TStringField;
    tbParametrosEmpresa: TStringField;
    tbParametrosFilial: TStringField;
    tbParametrosNumerador_Processos: TStringField;
    tbParametrosNumerador_Documentos: TStringField;
    tbParametrosEndereco_ftp: TStringField;
    tbParametrosUsuario_ftp: TStringField;
    tbParametrosSenha_ftp: TStringField;
    tbParametrosHost: TStringField;
    tbParametrosVersao: TStringField;
    tbParametroskeycrypt: TStringField;
    tbParametrosHost_smtp: TStringField;
    tbParametrosPorta_smtp: TSmallintField;
    tbParametrosUsuario_smtp: TStringField;
    tbParametrosSenha_smtp: TStringField;
    tbParametrosNumerador_Transmittal: TStringField;
    tbParametrosPATH_SERVER: TStringField;
    tbParametrosAliq_PIS_PASEP: TFloatField;
    tbParametrosAliq_COFINS: TFloatField;
    tbParametrosAliq_ICMS: TFloatField;
    tbParametrosAliq_ICMS_EXTRA: TFloatField;
    tbParametrosNumerador_Sol_Cheques: TStringField;
    tbParametrosNumerador_Sol_Reg: TStringField;
    tbParametrosNumerador_Sol_Tracla: TStringField;
    qrPermissaoAlterarEmail_aviso_oper: TSmallintField;
    qrPermissaoAlterarUsuario: TStringField;
    qrFinancUsuario: TStringField;
    qrFinancNome_Completo: TStringField;
    qrFinancEmail_aviso_finan: TSmallintField;
    qrFinancEmail: TStringField;
    qrFinancEmail_aviso_oper: TSmallintField;
    qrContaBanco: TStringField;
    qrContaAgencia: TStringField;
    qrContaConta: TStringField;
    qrContaBAC: TStringField;
    tbTipoDecCodigo: TStringField;
    tbTipoDecDescricao: TStringField;
    tbTipoDecSIGLA: TStringField;
    qrVerificaExiste1DIdeclaracao: TStringField;
    qrVerificaExiste1DIREF_MS: TStringField;
    qrVerificaExiste1DIdeclaracao_c: TStringField;
    qrVerificaExistedeclaracao: TStringField;
    qrVerificaExisteREF_MS: TStringField;
    qrVerificaExistedeclaracao_c: TStringField;
    qrStatusEmailCodigo: TIntegerField;
    qrStatusEmailDescricao: TStringField;
    tbProcessosRegImpEmpresa: TStringField;
    tbProcessosRegImpFilial: TStringField;
    tbProcessosRegImpProcesso: TStringField;
    tbProcessosRegImpBanco: TStringField;
    tbProcessosRegImpAgencia: TStringField;
    tbProcessosRegImpConta_Corrente: TStringField;
    tbProcessosRegImpII: TFloatField;
    tbProcessosRegImpIPI: TFloatField;
    tbProcessosRegImpTaxa_SISCOMEX: TFloatField;
    tbProcessosRegImpBancoc: TStringField;
    tbProcessosRegImpAgenciac: TStringField;
    tbProcessosRegImpConta_Correntec: TStringField;
    tbProcessosRegImpIIc: TFloatField;
    tbProcessosRegImpIPIc: TFloatField;
    tbProcessosRegImpTaxa_SISCOMEXc: TFloatField;
    tbProcessosRegImpEnviou_adcc: TSmallintField;
    tbProcessosRegImpEnviou_adcc_c: TSmallintField;
    tbProcessosRegImpEnviou_adr: TSmallintField;
    tbProcessosRegImpEnviou_adr_c: TSmallintField;
    qrReativa2DIdeclaracao: TStringField;
    qrReativa2DIdeclaracao_c: TStringField;
    qrReativa2DIREF_MS: TStringField;
    q_autorizaEMISSAO_CHEQUE: TStringField;
    q_autorizaAUTORIZA_REGISTRO: TStringField;
    q_impautEmpresa: TStringField;
    q_impautFilial: TStringField;
    q_impautCodigo: TStringField;
    q_impautEMISSAO_CHEQUE: TSmallintField;
    q_impautAUTORIZA_REGISTRO: TSmallintField;
    q_contacBanco: TStringField;
    q_contacAgencia: TStringField;
    q_contacConta: TStringField;
    q_contacCONTAC: TIntegerField;
    t_movccEmpresa: TStringField;
    t_movccFilial: TStringField;
    t_movccCodigo: TIntegerField;
    t_movccData: TDateTimeField;
    t_movccTipo: TIntegerField;
    t_movccDoc: TStringField;
    t_movccHistorico: TStringField;
    t_movccValor: TFloatField;
    t_movccCliente: TStringField;
    t_movccCodigo_Mov: TAutoIncField;
    t_movccPlano_Contas: TStringField;
    t_movccUsuario: TStringField;
    t_movccData_apuracao_cpmf_inicial: TDateTimeField;
    t_movccData_apuracao_cpmf_final: TDateTimeField;
    t_movccDesmembra: TIntegerField;
    t_movccCodigo_SOLREG: TStringField;
    q_propis: TQuery;
    q_propisEmpresa: TStringField;
    q_propisFilial: TStringField;
    q_propisProcesso: TStringField;
    q_propisAdicao: TStringField;
    q_propisNCM: TStringField;
    q_propisVA: TFloatField;
    q_propisOT: TFloatField;
    q_propisDA: TFloatField;
    q_propisAliq_NCM_II: TFloatField;
    q_propisAliq_NCM_IPI: TFloatField;
    q_propisAliq_PIS_PASEP: TFloatField;
    q_propisAliq_COFINS: TFloatField;
    q_propisAliq_ICMS: TFloatField;
    q_propisAliq_ICMS_EXTRA: TFloatField;
    q_propisBASEC_PISCOFINS: TFloatField;
    q_propisBASEC_ICMS: TFloatField;
    q_propisVALOR_II: TFloatField;
    q_propisVALOR_IPI: TFloatField;
    q_propisVALOR_ICMS: TFloatField;
    q_propisVALOR_ICMS_EXTRA: TFloatField;
    q_propisVALOR_PIS_PASEP: TFloatField;
    q_propisVALOR_COFINS: TFloatField;
    q_propisPrazo_permanencia: TIntegerField;
    q_propisVA_proporcional: TFloatField;
    q_propisAliq_NCM_II_proporcional: TFloatField;
    q_propisAliq_NCM_IPI_proporcional: TFloatField;
    q_propisFOB: TFloatField;
    t_numEmpresa: TStringField;
    t_numFilial: TStringField;
    t_numProcesso: TStringField;
    t_numREG: TAutoIncField;
    t_numNumerario: TStringField;
    t_numUsuario_Previsao: TStringField;
    t_numData_Previsao: TDateTimeField;
    t_numValor_Previsao: TFloatField;
    t_numPrevisao_solicitada: TStringField;
    t_numOk_Previsao_financeiro: TStringField;
    t_numUsuario_Financeiro: TStringField;
    t_numData_Registro: TDateTimeField;
    t_numValor_Registrado: TFloatField;
    t_numValor_Contabilizado: TFloatField;
    t_numContabilizado: TStringField;
    t_numUsuario_Contablizado: TStringField;
    t_numConta_Corrente: TIntegerField;
    t_numCodigo_mov: TIntegerField;
    t_numImpdemfim: TStringField;
    t_numDetalhe: TStringField;
    t_numDocsis: TStringField;
    t_numFatura_mov: TStringField;
    t_numFornecedor: TStringField;
    t_numCodigo: TStringField;
    t_numContabilizado_cliente: TIntegerField;
    t_numREG_creditos: TIntegerField;
    t_numProcesso_FundoFIXO: TStringField;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    qrSolicitanteNome_Completo: TStringField;
    qrSolicitanteEmail: TStringField;
    qrSolicitanteUsuario: TStringField;
    qrSolicitanteSupervisor: TStringField;
    qrSolicitanteSupervisor_Nome_Completo: TStringField;
    qrSolicitanteSupervisor_Email: TStringField;
    qrSolicitanteSupervisor_Senha: TStringField;
    qrSolRegEmpresa: TStringField;
    qrSolRegFilial: TStringField;
    qrSolRegcodigo: TStringField;
    qrSolRegData_requisicao: TDateTimeField;
    qrSolRegData_autorizacao: TDateTimeField;
    qrSolRegStatus: TIntegerField;
    qrSolRegSolicitante: TStringField;
    qrSolRegautorizador: TStringField;
    qrSolRegValor_CIF: TStringField;
    qrSolRegII: TStringField;
    qrSolRegIPI: TStringField;
    qrSolRegtx_siscomex: TStringField;
    qrSolRegpis_pasep: TStringField;
    qrSolRegCOFINS: TStringField;
    qrSolRegvalor_total: TStringField;
    qrSolRegbase_calculo: TStringField;
    qrSolRegICMS: TStringField;
    qrSolRegICMS_1: TStringField;
    qrSolRegCliente: TStringField;
    qrSolRegREF_MS: TStringField;
    qrSolRegEmbarcacao: TStringField;
    qrSolRegBanco: TStringField;
    qrSolRegAgencia: TStringField;
    qrSolRegC_C: TStringField;
    qrSolRegdeclaracao: TStringField;
    qrSolRegdeclaracao_c: TStringField;
    qrSolRegDescricao: TStringField;
    qrSolRegExpr2: TStringField;
    qrSolRegExpr3: TStringField;
    qrSolRegSIGLA: TStringField;
    qrSolRegExpr1: TStringField;
    qrSolRegNome_Completo: TStringField;
    qrSolRegExpr4: TStringField;
    qrSolRegDT_REGISTRO_DI: TStringField;
    qrSolRegContabilizado_cliente: TIntegerField;
    qrSolRegContabilizado_cliente_icms: TIntegerField;
    qrSolRegSupervisor: TStringField;
    Panel5: TPanel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    DBEBANCO: TDBEdit;
    DBEAGENCIA: TDBEdit;
    DBECC: TDBEdit;
    q_sqls: TQuery;
    C_CLIENTE: TBitBtn;
    qrSolRegimportador: TStringField;
    tbSolRegEmpresa: TStringField;
    tbSolRegFilial: TStringField;
    tbSolRegCodigo: TStringField;
    tbSolRegData_requisicao: TDateTimeField;
    tbSolRegData_autorizacao: TDateTimeField;
    tbSolRegStatus: TIntegerField;
    tbSolRegSolicitante: TStringField;
    tbSolRegautorizador: TStringField;
    tbSolRegValor_CIF: TStringField;
    tbSolRegII: TStringField;
    tbSolRegIPI: TStringField;
    tbSolRegtx_siscomex: TStringField;
    tbSolRegpis_pasep: TStringField;
    tbSolRegCOFINS: TStringField;
    tbSolRegvalor_total: TStringField;
    tbSolRegbase_calculo: TStringField;
    tbSolRegICMS: TStringField;
    tbSolRegICMS_1: TStringField;
    tbSolRegCliente: TStringField;
    tbSolRegEmbarcacao: TStringField;
    tbSolRegREF_MS: TStringField;
    tbSolRegBanco: TStringField;
    tbSolRegAgencia: TStringField;
    tbSolRegC_C: TStringField;
    tbSolRegdeclaracao: TStringField;
    tbSolRegdeclaracao_c: TStringField;
    tbSolRegContabilizado_cliente: TIntegerField;
    tbSolRegContabilizado_cliente_icms: TIntegerField;
    edFiltroCliente: TEdit;
    Label5: TLabel;
    cbFiltCliente: TCheckBox;
    Label6: TLabel;
    cbFiltSolicitante: TCheckBox;
    panel6: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn3: TBitBtn;
    qrSolRegData_Chegada_URF_Cheg: TDateTimeField;
    q_Localizar: TQuery;
    q_LocalizarNome_Grupo: TStringField;
    dsLocalizar: TDataSource;
    pnlLocalizar: TPanel;
    Label7: TLabel;
    btnOK: TBitBtn;
    edtLocalizar: TEdit;
    DBGrid2: TDBGrid;
    Panel7: TPanel;
    lblSaldo: TLabel;
    edSaldo: TEdit;
    dbcbFiltroSolicitante: TDBLookupComboBox;
    qrListaUsuarios: TQuery;
    dsListaUsuarios: TDataSource;
    qrListaUsuariosUSUARIO: TStringField;
    qrListaUsuariosNOME_COMPLETO: TStringField;
    q_Saldo: TQuery;
    q_SaldoCREDITOS: TFloatField;
    q_SaldoNUMERARIOS: TFloatField;
    Label31: TLabel;
    cbFiltValor: TCheckBox;
    comboFiltValor: TComboBox;
    pnlBotoesSol: TPanel;
    BitBtn1: TBitBtn;
    btnSolicita: TBitBtn;
    btnEmissao: TBitBtn;
    btnCancSol: TBitBtn;
    btnReativar: TBitBtn;
    btnCanCheque: TBitBtn;
    q_Aux: TQuery;
    q_LocalizarCodigo: TStringField;
    btnSair: TBitBtn;
    edValorTotal: TEdit;
    dbeValTot: TDBEdit;
    Label32: TLabel;
    qryEmail_Auto: TQuery;
    qrFollowup: TQuery;
    q_propisRegime_Tributacao_II: TStringField;
    q_propisRegime_Tributacao_IPI: TStringField;
    q_propisCD_REGIME_TRIBUTAR_PISCOFINS: TStringField;
    q_propisTratamento_Tributario: TStringField;
    q_propisBASEC_ICMS_ACRESC: TFloatField;
    q_propisVALOR_ICMS_ACRESC: TFloatField;
    q_propisVALOR_ICMS_ACRESC_EXTRA: TFloatField;
    q_propisRateio_Acresc_ICMS: TFloatField;
    Function ICMS1():Real;
    Function CriaCodigo():String;
    procedure edtProcChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dbeCIFEnter(Sender: TObject);
    procedure dbeCIFExit(Sender: TObject);
    procedure extraLog(Sender: TObject);
    procedure tbSolRegAfterInsert(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    Procedure Recalcula();
    procedure qrSolRegAfterScroll(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnSolicitaClick(Sender: TObject);
    Procedure CorpoEmail(var v_body, v_razao: String);
    Procedure EmailConecta();
    Procedure EmailDePara();
    procedure BitBtn7Click(Sender: TObject);
    procedure btnEmitirClick(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure btnEmissaoClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnCanChequeClick(Sender: TObject);
    procedure btnReativarClick(Sender: TObject);
    procedure btnCancSolClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbVerTodosClick(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure edtFiltroChange(Sender: TObject);
    procedure cbFiltrarClick(Sender: TObject);
    procedure Inclusao();
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure oksenhaClick(Sender: TObject);
    procedure cancelsenhaClick(Sender: TObject);
    procedure b_diClick(Sender: TObject);
    procedure b_conClick(Sender: TObject);
    procedure pnlInclusaoItensExit(Sender: TObject);
    procedure DBCheckBox1Exit(Sender: TObject);
    procedure C_CLIENTEClick(Sender: TObject);
    procedure cbFiltClienteClick(Sender: TObject);
    procedure edFiltroClienteChange(Sender: TObject);
    procedure cbFiltSolicitanteClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure edtLocalizarChange(Sender: TObject);
    procedure AplicarFiltrosGrid(usu, sup : String);
    procedure dbcbFiltroSolicitanteClick(Sender: TObject);
    procedure cbFiltValorClick(Sender: TObject);
    procedure comboFiltValorChange(Sender: TObject);
    procedure qrSolRegAfterOpen(DataSet: TDataSet);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure btnSairClick(Sender: TObject);
  private
    EmailAutorizador        : String;
    NomeCompletoAutorizador : String;
    CodigoCliente           : String;
    vCodAPL, vTitulo, vAssunto, vAnexo, vDe, vPara, vCco, vCc, vBody : String;

    procedure BuscaEmailNomeCompletoAutorizador;
    procedure ZeraVariaveisAutorizador;

    procedure CalculaSaldo; {calcula e mostra o saldo dos processos na tela}
    procedure CalculaValorTotal; {calcula e mostra o cálculo dos Impostos}

    procedure IncluiEmailAuto(CodAPL, Titulo, Assunto, Anexo, De, Para, Cco, Cc, Body: String);

    procedure PreencheBancoAgenciaContaCliente; 
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_solRegistros: Tf_solRegistros;
  ii_total,ipi_total,bc_total,pis_total,cofins_total,aliq_icms,aliq_icms_extra,da_total,da_total2,cif_proporcional,qcif, acresc_icms : real;
  {qaliq,}qtaxa : real;
  aux_aliquota, v_extraLog_ant, v_extraLog_pos, tipoDec, tipoDec_c : String;
  v_antes : Boolean;
  b_emissor,b_reativa : Boolean;
  v_valorPrincipal, v_html: String;
  v_status_email : String;
  qprosemsaldo : string;
  semsaldo : boolean;
  V_STYLE : string;
  v_super : string;
  v_MS : String;

implementation

uses U_MSCOMEX;

{$R *.DFM}

Function Tf_solRegistros.CriaCodigo():String;
var v_tbparametros, v_solRegistros, v_ano : String;
Begin
  tbSolRegSolicitante.AsString := v_usuario;
  tbSolRegStatus.AsInteger     := 0;
  tbSolRegEmpresa.AsString     := v_empresa;
  tbSolRegFilial.AsString      := v_filial;

  tbParametros.Open;

  v_tbParametros := tbParametrosNumerador_Sol_Reg.AsString;
  v_ano          := (Copy(v_tbParametros,7,2));
  v_solRegistros := formatfloat('0000#',StrToInt(Copy(v_tbParametros,1,5)) + 1) + '/' + v_ano;

  tbparametros.First;
  tbparametros.Edit;
  tbParametrosNumerador_Sol_Reg.AsString := v_solRegistros;
  tbParametros.Post;
  tbParametros.Close;

  Result := v_solRegistros;
End;

Function Tf_solRegistros.ICMS1():Real;
begin
  if (qrprocessosURF_chegada.asstring = '0717700')
   then begin
     if (qrprocessosDT_DESEMBARACO.isnull)
      then qtaxa := 1-((strtofloat('13,00')/100)+0.01)
      else begin
        if (qrprocessosDT_DESEMBARACO.asdatetime >= strtodate('31/08/2004'))
         then qtaxa := 1-((strtofloat('13,00')/100)+0.01)
         else qtaxa := 1-((strtofloat('18,00')/100)+0.01);
      end;
   end
   else begin
     if (qrprocessosDT_DESEMBARACO.isnull)
      then qtaxa := 1-((strtofloat(f_mscomex.t_parametrosAliq_ICMS.asstring)/100)+0.01)
      else begin
        if v_filial = 'RJO'
         then begin
           if (qrprocessosDT_DESEMBARACO.asdatetime >= strtodate('31/08/2004'))
            then qtaxa := 1-((strtofloat(f_mscomex.t_parametrosAliq_ICMS.asstring)/100)+0.01)
            else qtaxa := 1-((strtofloat('18,00')/100)+0.01);
         end
         else qtaxa := 1-((strtofloat(f_mscomex.t_parametrosAliq_ICMS.asstring)/100)+0.01);
      end;
   end;

  Result := qtaxa;
end;

procedure AppendToWB(WB: TWebBrowser; const html: widestring) ;
var
  Range: IHTMLTxtRange;
begin
  Range := ((WB.Document AS IHTMLDocument2).body AS IHTMLBodyElement).createTextRange;
  Range.Set_text('');
  Range.Collapse(False);
  Range.PasteHTML(html);
end;

Procedure Tf_solRegistros.EmailConecta();
Begin
  tbParametros.Open;

  pnlAguarde.Height := 105;
  pnlAguarde.Left   := 255;
  pnlAguarde.Width  := 234;
  pnlAguarde.Top    := 160;

  pnlAguarde.Left := round(pnlPrincipal.Width/2) - round(pnlAguarde.Width/2);
  pnlAguarde.Top := round(pnlPrincipal.Height/2) - round(pnlAguarde.Height/2);
  pnlAguarde.Refresh;

  tbParametros.Close;
end;

Procedure Tf_solRegistros.EmailDePara();
var
  i : Integer;
Begin
  vDe := 'solreg@mslogistica.com.br';

  if qrSolicitante.RecordCount > 0
   then begin
     vPara := qrSolicitanteNome_Completo.AsString + '<' + qrSolicitanteEmail.AsString + '>';

     {Adicionado Autorizador do Registro ao invés do Supervisor do Usuário, conforme solicitado pela Odilma - Wellington - 10/05/2011}
     if (qrSolRegautorizador.AsString <> '') and (qrSolRegautorizador.AsString <> 'DUDA'     ) and
                                                 (qrSolRegautorizador.AsString <> 'FABIANO'  ) and
                                                 (qrSolRegautorizador.AsString <> 'TEREZA'   ) and
                                                 (qrSolRegautorizador.AsString <> 'EMANUELLE')
      then begin
        BuscaEmailNomeCompletoAutorizador;

        if (NomeCompletoAutorizador <> '') and
                  (EmailAutorizador <> '')
         then begin
           if vCc = ''
            then vCc := NomeCompletoAutorizador + '<' + EmailAutorizador + '>'
            else vCc := vCc + '; ' + NomeCompletoAutorizador + '<' + EmailAutorizador + '>';
         end;
      end;

     vCco := 'Fabiano Souza<fabiano.souza@mslogistica.com.br>;Emanuelle Dias<emanuelle.dias@mslogistica.com.br>'; 
   end;
end;

Procedure Tf_solRegistros.Recalcula();
begin
  dbeValTot.Text :=floattostrf(strtofloat(dbeII.Text)+strtofloat(dbeIPI.Text)+strtofloat(dbeTxsisco.Text)+strtofloat(dbepis_pasep.Text)+ strtofloat(dbeCOFINS.Text),fffixed,15,2);
  
  edValorTotal.Text := floattostrf(strtofloat(dbeII.Text)        +
                                   strtofloat(dbeIPI.Text)       +
                                   strtofloat(dbeTxsisco.Text)   +
                                   strtofloat(dbepis_pasep.Text) +
                                   strtofloat(dbeCOFINS.Text)    +
                                   strtofloat(dbeICMS.Text)      +
                                   strtofloat(dbeICMS1.Text),fffixed,15,2);
End;

Procedure Tf_solRegistros.CorpoEmail(var v_body, v_razao: String);
var
  qcontabilizado1, qcontabilizado2 : string;
begin
  qcontabilizado1 := 'Sim';

  if qrSolRegcontabilizado_cliente.asinteger = 0
   then qcontabilizado1 := 'Não';

  qcontabilizado2 := 'Sim';

  if qrSolRegcontabilizado_cliente_icms.asinteger = 0
   then qcontabilizado2 := 'Não';

  v_body := v_body + '<table class="table2x" style="width:100.0%;mso-cellspacing:0cm;border:solid #002255 1.0pt; " >'+#13#10
                   +   '<tr>'+#13#10
                   +     '<td>'+#13#10
                   +       '<table class="table3x" style="width:100.0%;mso-cellspacing:0cm;border:solid #002255 0.0pt;">'+#13#10
                   +         '<tr>'+#13#10
                   +            '<td align="Left" colspan="6" class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;" >'+ 'Contabilizado pelo Cliente: <b>'+ qcontabilizado1 +'</b></td>'+#13#10
         	   +		'</tr>'+#13#10
                   +         '<tr>'+#13#10
                   +            '<td align="Left" colspan="6" class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;" >'+ 'Contabilizado pelo Cliente (ICMS e FECP): <b>'+ qcontabilizado2 +'</b></td>'+#13#10
		   +		'</tr>'+#13#10
                   +         '<tr>'+#13#10
                   +            '<td align="Left" colspan="6" class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;" >'+''+'</td>'+#13#10
		   +		'</tr>'+#13#10
                   +         '<tr>'+#13#10
                   +            '<td width="14%" class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+ 'Valor CIF:'+'</td>'+#13#10
                   +            '<td width="3%"  class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">' + 'R$:' +  '</td>'+#13#10
                   +            '<td width="17%" align="Right" class="detalhe2X" STYLE="FONT: 12px Arial; COLOR: #002255; font-weight: bold;">' + qrSolRegValor_CIF.AsString + '</td>'+#13#10
                   +            '<td width="6%"  class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+''+'</td>'+#13#10
                   +            '<td width="18%" class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+'Cliente:'+'</td>'+#13#10
                   +            '<td width="42%" class="detalhe2X" STYLE="FONT: 12px Arial; COLOR: #002255; font-weight: bold;">'+qrSolRegCliente.AsString+'</td>'+#13#10
		   +		'</tr>'+#13#10
                   +         '<tr>'+#13#10
                   +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+ 'I.I.:'+'</td>'+#13#10
                   +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">' + 'R$:' +  '</td>'+#13#10
                   +            '<td class="detalhe2X" STYLE="FONT: 12px Arial; COLOR: #002255; font-weight: bold;" align="Right">' + qrSolRegII.AsString + '</td>'+#13#10
                   +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+'</td>'+#13#10
                   +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+'Embarcação:'+'</td>'+#13#10
                   +            '<td class="detalhe2X" STYLE="FONT: 12px Arial; COLOR: #002255; font-weight: bold;">'+qrSolRegEmbarcacao.AsString+'</td>'+#13#10
		   +		'</tr>'+#13#10
                   +         '<tr>'+#13#10
                   +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+ 'I.P.I.:'+'</td>'+#13#10
                   +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">' + 'R$:' +  '</td>'+#13#10
                   +            '<td class="detalhe2X" STYLE="FONT: 12px Arial; COLOR: #002255; font-weight: bold;" align="Right">' + qrSolRegIPI.AsString + '</td>'+#13#10
                   +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+'</td>'+#13#10
                   +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+'REF. MS:'+'</td>'+#13#10
                   +            '<td class="detalhe2X" STYLE="FONT: 12px Arial; COLOR: #002255; font-weight: bold;">'+qrSolRegREF_MS.AsString+'</td>'+#13#10
		   +		'</tr>'+#13#10

                   +         '<tr>'+#13#10
                   +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+ 'Tx. Siscomex:'+'</td>'+#13#10
                   +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">' + 'R$:' +  '</td>'+#13#10
                   +            '<td class="detalhe2X" STYLE="FONT: 12px Arial; COLOR: #002255; font-weight: bold;" align="Right">' + qrSolRegtx_siscomex.AsString + '</td>'+#13#10
                   +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+'</td>'+#13#10
                   +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+'Solicitante:'+'</td>'+#13#10
                   +            '<td class="detalhe2X" STYLE="FONT: 12px Arial; COLOR: #002255; font-weight: bold;">'+qrSolRegNome_Completo.AsString+'</td>'+#13#10
		   +		'</tr>'+#13#10

                   +         '<tr>'+#13#10
                   +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+ 'PIS/PASEP:'+'</td>'+#13#10
                   +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">' + 'R$:' +  '</td>'+#13#10
                   +            '<td class="detalhe2X" STYLE="FONT: 12px Arial; COLOR: #002255; font-weight: bold;" align="Right">' + qrSolRegpis_pasep.AsString + '</td>'+#13#10
                   +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+'</td>'+#13#10
                   +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+'Data Solicitação:'+'</td>'+#13#10
                   +            '<td class="detalhe2X" STYLE="FONT: 12px Arial; COLOR: #002255; font-weight: bold;">'+qrSolRegData_requisicao.AsString+'</td>'+#13#10
		   +		'</tr>'+#13#10

                   +         '<tr>'+#13#10
                   +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+ 'COFINS:'+'</td>'+#13#10
                   +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">' + 'R$:' +  '</td>'+#13#10
                   +            '<td class="detalhe2X" STYLE="FONT: 12px Arial; COLOR: #002255; font-weight: bold;" align="Right">' + qrSolRegCOFINS.AsString + '</td>'+#13#10
                   +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+'</td>';

  v_body := v_body +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+'Status:'+'</td>'+#13#10
                   +            '<td class="detalhe2X" STYLE="FONT: 12px Arial; COLOR: #002255; font-weight: bold;">'+v_status_email+'</td>'+#13#10;

  v_body := v_body +		'</tr>'+#13#10
                   +         '<tr>'+#13#10
                   +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+ 'Valor Total:'+'</td>'+#13#10
                   +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">' + 'R$:' +  '</td>'+#13#10
                   +            '<td class="detalhe2X" STYLE="FONT: 12px Arial; COLOR: #002255; font-weight: bold;" align="Right">' + qrSolRegvalor_total.AsString + '</td>'+#13#10
                   +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+'</td>'+#13#10;

  if b_emissor
   then begin
     v_body := v_body   +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+'Autorizador:'+'</td>'+#13#10
                        +            '<td class="detalhe2X" STYLE="FONT: 12px Arial; COLOR: #002255; font-weight: bold;">'+v_nomecompleto+'</td>'+#13#10;
   end
   else begin
     if trim(dbeAutorizador.Text)<>''
      then begin
        v_body := v_body +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+'Autorizador:'+'</td>'+#13#10
                         +            '<td class="detalhe2X" STYLE="FONT: 12px Arial; COLOR: #002255; font-weight: bold;">'+trim(dbeAutorizador.Text)+'</td>'+#13#10;
      end
      else begin
        v_body := v_body +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+''+'</td>'+#13#10
                         +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+''+'</td>'+#13#10;
      end;
   end;

  v_body := v_body +		'</tr>'+#13#10
                   +         '<tr>'+#13#10
                   +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+ 'I.C.M.S.:'+'</td>'+#13#10
                   +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">' + 'R$:' +  '</td>'+#13#10
                   +            '<td class="detalhe2X" STYLE="FONT: 12px Arial; COLOR: #002255; font-weight: bold;" align="Right">' + qrSolRegICMS.AsString + '</td>'+#13#10
                   +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+'</td>'+#13#10;

  if Trim(dbEdit11.Text)<>''
   then begin
     v_body := v_body +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+'Banco: '+'</td>'+#13#10
                      +            '<td class="detalhe2X" STYLE="FONT: 12px Arial; COLOR: #002255; font-weight: bold;">'+dbEdit11.Text+'</td>'+#13#10;
   end
   else begin
     v_body := v_body +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+''+'</td>'+#13#10
                      +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+''+'</td>'+#13#10;
   end;

  v_body := v_body +		'</tr>'+#13#10
                   +         '<tr>'+#13#10
                   +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+ 'I.C.M.S.(1%):'+'</td>'+#13#10
                   +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">' + 'R$:' +  '</td>'+#13#10
                   +            '<td class="detalhe2X" STYLE="FONT: 12px Arial; COLOR: #002255; font-weight: bold;" align="Right">' + qrSolRegICMS_1.AsString + '</td>'+#13#10
                   +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+'</td>'+#13#10;   

  if Trim(dbEdit10.Text) <> ''
   then begin
     v_body := v_body +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+'Agência: '+'</td>'+#13#10
                      +            '<td class="detalhe2X" STYLE="FONT: 12px Arial; COLOR: #002255; font-weight: bold;">'+dbEdit10.Text+'</td>'+#13#10;
   end
   else begin
     v_body := v_body +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+''+'</td>'+#13#10
                      +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+''+'</td>'+#13#10
   end;

  v_body := v_body    +		'</tr>'+#13#10
                      +         '<tr>'+#13#10
                      +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+ 'Total Impostos:'+'</td>'+#13#10
                      +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">' + 'R$:' +  '</td>'+#13#10
                      +            '<td class="detalhe2X" STYLE="FONT: 12px Arial; COLOR: #002255; font-weight: bold;" align="Right">' + edValorTotal.Text + '</td>'+#13#10
                      +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+'</td>'+#13#10;

  if Trim(dbEdit1.Text) <> ''
   then begin
     v_body := v_body +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+'C/C:'+'</td>'+#13#10
                      +            '<td class="detalhe2X" STYLE="FONT: 12px Arial; COLOR: #002255; font-weight: bold;">'+dbEdit1.Text+'</td>'+#13#10
   end
   else begin
     v_body := v_body +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+''+'</td>'+#13#10
                      +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+''+'</td>'+#13#10;
   end;

  v_body := v_body    +		'</tr>'+#13#10
                      +         '<tr>'+#13#10
                      +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+ 'Base Cálculo:'+'</td>'+#13#10
                      +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">' + 'R$:' +  '</td>'+#13#10
                      +            '<td class="detalhe2X" STYLE="FONT: 12px Arial; COLOR: #002255; font-weight: bold;" align="Right">' + qrSolRegbase_calculo.AsString + '</td>'+#13#10
                      +            '<td class="detalheX" STYLE="FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF;">'+'</td>'+#13#10;

  v_body := v_body +		'</tr>'+#13#10
                   +       '</table>'+#13#10
		   +      '</td>'+#13#10
		   + '</tr>'+#13#10
                   +'</Table>'+#13#10
end;

procedure Tf_solRegistros.extraLog(Sender: TObject);
begin
  if v_antes = True
   then begin
     v_extraLog_ant :=  Trim(TDBedit(Sender).Text);
   end
   else begin
     v_extraLog_pos := Trim(TDBedit(Sender).Text);

     if v_extraLog_ant <> v_extraLog_pos
      then logusu('A','Alterou Solicitação Registro: [Cod]= '+tbSolRegCodigo.AsString + TDBedit(Sender).Name + ' de: ['+v_extraLog_ant+'] para: ['+v_extraLog_pos+']');
   end;
End;

procedure Tf_solRegistros.edtProcChange(Sender: TObject);
begin
  if Length(edtProc.Text) < 8
   then begin
     Exit;
   end;

  panel11.Caption := 'Aguarde...';
  panel11.visible := True;
  panel11.Refresh;

  if qrProcessos.Locate('Processo', edtProc.Text, [loCaseInsensitive])
   then begin
     if qrProcessosdecl.AsString = ''
      then begin
        MessageDlg('Processo sem tipo de declaração informado. Informar o tipo de declaração na abertura do processo!', mtInformation,[mbOk], 0);
        pnlInclusaoItens.Visible := False;
        pnlPrincipal.Enabled     := True;
        Exit;
      end;

     panel11.Caption := '';
     panel11.visible := False;
     tipoDec := '';
     tipoDec_c := '';
     Screen.Cursor := crDefault;

     if qrProcessos.RecordCount < 1
      then begin
        MessageDlg('Processo não existe!', mtInformation,[mbOk], 0);
        Exit;
      end;

     with qrVerificaExiste1DI do
      begin
        Close;
        params[0].AsString := edtProc.Text;
        params[1].AsString := edtProc.Text;
        params[2].AsString := edtProc.Text;
        params[3].AsString := qrProcessosdecl.AsString;
        open;
      end;

     if qrVerificaExiste1DI.RecordCount > 0
      then begin
        MessageDlg('Solicitação já incluída. Verificar Status!', mtInformation,[mbOk], 0);
        pnlInclusaoItens.Visible := False;
        pnlPrincipal.Enabled     := True;
        qrSolReg.Locate('REF_MS',edtProc.Text,[loCaseInsensitive]);
        edtProc.Clear;

        Exit;
      end;

     {Autor: Wellington Medeiros
      Data: 25/05/2011
      Solicitação: Fabiano Souza, Maria Eduarda
      Motivo: Incluído crítica para não permitir inclusão de solicitação para processos sem a Data de Chegada}
     if (Trim(qrProcessosData_Chegada_URF_Cheg.AsString) = '')
      then begin
        MessageDlg('Não é possível incluir uma solicitação sem informar a Data de Chegada na UFR de Entrada!', mtInformation,[mbOk], 0);
        pnlInclusaoItens.Visible := False;
        pnlPrincipal.Enabled     := True;
        Exit;
      end;

     if qrProcessosdecl.AsString = '12'
      then begin
        pnlInclusaoItens.Visible := False;
        pnl12.Left   := 260;
        pnl12.Top    := 185;
        pnl12.Width  := 313;
        pnl12.height := 150;

        pnl12.Visible := True;
        pnlInclusaoItens.Enabled := False;
        radiogroup1.itemindex := 0;
        label27.Caption := 'Deseja incluir solicitação para o processo '+edtProc.Text+'?';
      end
      else begin
        if MessageDlg('Incluir esta Autorização?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
         then begin
           pnlInclusaoItens.Visible := False;
           Inclusao();
           pnlPrincipal.Enabled     := True;
           pnlInclusaoItens.Visible := False;
         end
         else begin
           panel11.visible          := False;
           pnlInclusaoItens.Visible := False;
           pnlPrincipal.Enabled     := True;
         end;
      end;
   end
   else begin
     panel11.Caption := '';
     panel11.visible := False;
     MessageDlg('Processo não encontrado!', mtInformation,[mbOk], 0);
     edtProc.Clear;
     panel11.visible          := False;
     pnlInclusaoItens.Visible := False;
     pnlPrincipal.Enabled     := True;
   end;
end;

procedure Tf_solRegistros.FormCreate(Sender: TObject);
begin
  Top    := 0;
  Left   := 0;
  Height := 651;
  Width  := 791;

  vTitulo := 'MS2000Plus - Sistema Gerencial Aduaneiro - Versão Plus 2011 - SQL Server';
  vCodAPL := 'MS2000';
  vAnexo   := '';
  vCco     := '';

  v_super := v_usuario;

  if  (v_super = 'ODILMA') or
      (v_super = 'NATASHA')
   then v_super := '%';

  b_emissor := False;

  tbSolReg.Open;
  qrPermissaoAlterar.Open;
  qrListaStatus.Open;

  DBLookupComboBox2.KeyValue := '1';

  if strtoint(v_nivel) < 5
   then AplicarFiltrosGrid('','')
   else cbVerTodos.Checked := True;

  try
    screen.cursor := crHourGlass;
    qrProcessos.Open;
  except
  end;
  
  WebBrowser1.Navigate('about:blank') ;
  b_reativa     := False;
  screen.cursor := crDefault;

  qrStatusEmail.Open;
  q_autoriza.open;
  q_impaut.open;

  v_STYLE := '<style> ';
  v_STYLE := v_STYLE +'.titulo{                                      ';
  v_STYLE := v_STYLE +' FONT: 14px Arial;COLOR:#ffffff; text-align: center; BACKGROUND: #002255; width:100.0%;  } ';

  v_STYLE := v_STYLE +'.detalhe{                                      ';
  v_STYLE := v_STYLE +' FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF; } ';

  v_STYLE := v_STYLE +'.detalhe2{                                      ';
  v_STYLE := v_STYLE +' FONT: 12px Arial; COLOR: #002255; font-weight: bold;  } ';

  v_STYLE := v_STYLE +'.TABLE1{                                      ';
  v_STYLE := v_STYLE +' width:100.0%;mso-cellspacing:0cm;background:#002255;border:solid #002255 1.0pt; padding:.75pt .75pt .75pt .75pt ';
  v_STYLE := v_STYLE +' } ';

  v_STYLE := v_STYLE +'.TABLE2{                           ';
  v_STYLE := v_STYLE +' width:100.0%;mso-cellspacing:0cm;border:solid #002255 1.0pt; ';
  v_STYLE := v_STYLE +' } ';

  v_STYLE := v_STYLE +'.TABLE3{                                      ';
  v_STYLE := v_STYLE +' width:100.0%;mso-cellspacing:0cm;border:solid #002255 0.0pt; ';
  v_STYLE := v_STYLE +' } ';

  v_STYLE := v_STYLE +'</style> ';
end;

procedure Tf_solRegistros.BitBtn1Click(Sender: TObject);
begin
  pnlInclusaoItens.Left    := 168;
  pnlInclusaoItens.Top     := 168;
  pnlInclusaoItens.Width   := 481;
  pnlInclusaoItens.Height  := 81;
  pnlInclusaoItens.Visible := True;
  pnlInclusaoItens.Enabled := True;

  pnlPrincipal.Enabled := False;

  edtProc.Clear;
  edtProc.SetFocus;
end;

procedure Tf_solRegistros.dbeCIFEnter(Sender: TObject);
begin
  v_antes := True;
  TDBEdit(Sender).Tag := 1;
end;

procedure Tf_solRegistros.dbeCIFExit(Sender: TObject);
begin
  if Sender is TdbeDit
   then begin
     if Trim(TDBEdit(Sender).Text) = ''
      then TDBEdit(Sender).Text := '0,00';

     try
       StrToFloat(TDBEdit(Sender).Text);
       TDBEdit(Sender).Text := floattostrf(StrToFloat(TDBEdit(Sender).Text),fffixed,15,2);
       v_antes := False;
       Recalcula();
       TDBEdit(Sender).Tag := 0;
     except
       showmessage('Formato inválido');
       TDBEdit(Sender).SetFocus;
     end;
   end
   else Exit;
end;

procedure Tf_solRegistros.tbSolRegAfterInsert(DataSet: TDataSet);
begin
  logusu('A','Alterou Solicitação Registro: [Cod]= '+tbSolRegCodigo.AsString + ''+tbSolRegC_C.AsString +''+tbSolRegCOFINS.AsString +''+tbSolRegbase_calculo.AsString+' '+tbSolRegEmbarcacao.AsString+' '+tbSolRegICMS.AsString+' '+tbSolRegICMS_1.AsString+' '+tbSolRegII.AsString+' '+tbSolRegIPI.AsString+' '+tbSolRegpis_pasep.AsString+' '+tbSolRegtx_siscomex.ASString+' '+tbSolRegValor_CIF.AsString);
end;

procedure Tf_solRegistros.BitBtn3Click(Sender: TObject);
begin
  if (qrSolRegStatus.AsInteger >= 3) { 2 AUTORIZADA }
   then begin
     ShowMessage(V_USUARIO+', Atenção a solicitação foi CANCELADA OU DI REGISTRADA OU CONTABILIZADA. Para alterar deverá ser efetuado o cancelamento ou reativação.');
     Exit;
   end
   else begin
     panel1.Enabled := False;
     panel5.Enabled := False;
     pnlDados.Enabled := True;

     if MessageDlg(v_usuario+', Deseja Atualizar os valores?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
      then begin
        b_reativa := True;
        tbSolReg.Open;
        tbSolReg.Edit;
        Inclusao();
        b_reativa := False;
        DBECIF.SETFOCUS;
      end;

     tbSolReg.Edit;
     bitbtn3.Enabled := False;
     bitbtn4.Enabled := True;
     bitbtn5.Enabled := True;

     panel5.Enabled := false;

     if (tbsolregcontabilizado_cliente.asinteger=1)
      then begin
        panel5.Enabled := true;
      end;
   end;
end;

procedure Tf_solRegistros.qrSolRegAfterScroll(DataSet: TDataSet);
begin
  if qrSolReg.RecordCount > 0
   then begin
     qrSolicitante.Close;
     qrSolicitante.Params[0].AsString := qrSolRegSolicitante.AsString;
     qrSolicitante.Open;

     if (strtoint(v_nivel) <= 5) or
                   (v_super='%') or
        ((qrsolicitantesupervisor.AsString = v_usuario) and ((qrSolRegcontabilizado_cliente.asinteger=1) or (qrSolRegcontabilizado_cliente_icms.asinteger=1)))
      then btnEmissao.Visible := True;

     bitbtn3.enabled := false;

     if (qrSolRegStatus.AsInteger = 0) {Não Solicitado}
      then begin
        btnReativar.Visible := false;
        btnReativar.Enabled := false;
        btnCancSol.Visible  := true;
        btnCancSol.Enabled  := false;
        btnSolicita.Enabled := false;

        btnCanCheque.Visible := false;
        btnCanCheque.Enabled := false;
        btnEmissao.Visible   := true;
        btnEmissao.Enabled   := False;

        if                 ((StrToInt(v_nivel) < 5) or
                                      (v_super='%') or
         (qrSolRegSolicitante.AsString = v_usuario) or
         (qrPermissaoalterar.Locate('usuario', v_usuario, [loCaseInsensitive])))
         then begin
           bitbtn3.enabled     := True;
           btnCancSol.Enabled  := true;
           btnSolicita.Enabled := true;
         end;
      end;

     if (qrSolRegStatus.AsInteger = 1) {solicitada}
      then Begin
        btnReativar.Visible := false;
        btnReativar.Enabled := false;
        btnCancSol.Visible  := true;
        btnCancSol.Enabled  := false;
        btnSolicita.Enabled := false;

        btnCanCheque.Visible := false;
        btnCanCheque.Enabled := false;
        btnEmissao.Visible   := true;
        btnEmissao.Enabled   := false;

        if                            (v_usuario = 'DUDA') or
                                   (v_usuario = 'FABIANO') or
                                    (v_usuario = 'TEREZA') or
                                 (v_usuario = 'EMANUELLE') or
                                             (v_super='%') or
           ((qrsolicitantesupervisor.AsString = v_usuario) and ((qrSolRegcontabilizado_cliente.asinteger=1) or (qrSolRegcontabilizado_cliente_icms.asinteger=1)))
         then begin
           btnEmissao.Enabled   := true;
           btnEmissao.Visible   := true;
           btnCanCheque.Visible := false;
         end;

        if                   ((StrToInt(v_nivel) < 5) or
                                        (v_super='%') or
           (qrSolRegSolicitante.AsString = v_usuario) or
           (qrPermissaoalterar.Locate('usuario', v_usuario, [loCaseInsensitive])))
         then begin
           bitbtn3.enabled     := true;
           btnCancSol.Enabled  := true;
           btnSolicita.Enabled := true;
         end;
      end;

     b_di.Enabled := false;

     if (qrSolRegStatus.AsInteger = 2) {autorizada}
      then begin
        btnReativar.Visible := false;
        btnReativar.Enabled := false;
        btnCancSol.Visible  := true;
        btnCancSol.Enabled  := false;
        btnSolicita.Enabled := false;

        btnCanCheque.Visible := true;
        btnCanCheque.Enabled := false;
        btnEmissao.Visible   := false;
        btnEmissao.Enabled   := false;

        b_di.Enabled := true;

        if                         (StrToInt(v_nivel) < 5) or
                                             (v_super='%') or
           ((qrsolicitantesupervisor.AsString = v_usuario) and ((qrSolRegcontabilizado_cliente.asinteger=1) or
                                                           (qrSolRegcontabilizado_cliente_icms.asinteger=1)))
         then begin
           btnCanCheque.Visible := true;
           btnCanCheque.Enabled := true;
           btnEmissao.Visible   := false;
           btnEmissao.Enabled   := false;
         end;

        if                   ((StrToInt(v_nivel) < 5) or
                                        (v_super='%') or
           (qrSolRegSolicitante.AsString = v_usuario) or
           (qrPermissaoalterar.Locate('usuario', v_usuario, [loCaseInsensitive])))
         then bitbtn3.enabled := True;
      end;

     if (qrSolRegStatus.AsInteger = 3) {cancelada}
      then begin
        btnReativar.Visible := true;
        btnReativar.Enabled := true;
        btnCancSol.Visible  := false;
        btnCancSol.Enabled  := false;
        btnSolicita.Enabled := false;

        btnCanCheque.Visible := false;
        btnCanCheque.Enabled := false;
        btnEmissao.Visible   := true;
        btnEmissao.Enabled   := false;

        bitbtn3.enabled := false;
      end;

     b_con.Enabled := false;
     b_con.Caption := 'CONTABILIZAR';

     if (qrSolRegStatus.AsInteger >= 4) {di registrada}
      then begin
        btnReativar.Visible  := false;
        btnReativar.Enabled  := false;
        btnCancSol.Visible   := true;
        btnCancSol.Enabled   := false;
        btnSolicita.Enabled  := false;
        btnCanCheque.Visible := true;
        btnCanCheque.Enabled := false;
        btnEmissao.Visible   := false;
        btnEmissao.Enabled   := false;

        if (v_usuario = 'DUDA'     ) or
           (v_usuario = 'FABIANO'  ) or
           (v_usuario = 'TEREZA'   ) or
           (v_usuario = 'EMANUELLE') or           
                     (v_nivel = '0')
         then begin
           b_con.Enabled := true;

           if (qrSolRegcontabilizado_cliente.asinteger = 0)
            then btnCancSol.Enabled  := true;
         end;

        if (((qrsolicitantesupervisor.AsString = v_usuario)   or
                                              (v_super='%'))  and
              ((qrSolRegcontabilizado_cliente.asinteger = 1)  or
          (qrSolRegcontabilizado_cliente_icms.asinteger = 1)))
         then b_con.Enabled := true;
      end;

     if (qrSolRegStatus.AsInteger = 5) {contabilizada}
      then begin
        b_con.Caption := 'DESCONTABILIZAR';
        btnCancSol.Enabled  := false;
      end;

     CalculaSaldo;

     CalculaValorTotal;
   end;
end;

procedure Tf_solRegistros.CalculaValorTotal;
begin
  edValorTotal.Text := floattostrf(strtofloat(dbeII.Text) +
                            strtofloat(dbeIPI.Text)       +
                            strtofloat(dbeTxsisco.Text)   +
                            strtofloat(dbepis_pasep.Text) +
                            strtofloat(dbeCOFINS.Text)    +
                            strtofloat(dbeICMS.Text)      +
                            strtofloat(dbeICMS1.Text),fffixed,15,2);
end;

procedure Tf_solRegistros.Button1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 0
   then begin
     with qrVerificaExiste do
      begin
        Close;
        params[1].AsString := edtProc.Text;
        params[0].AsString := '01';
        Open;
      end;

     if qrVerificaExiste.RecordCount > 0
      then begin
        MessageDlg('Solicitação já exite ', mtInformation,[mbOk], 0);
        qrSolReg.Locate('ref_ms',edtProc.Text,[loCaseInsensitive]);
        Exit;
      end;

     tipoDec   := '12';
     tipoDec_c := '01';
   end
   else if RadioGroup1.ItemIndex = 1
         then begin
           with qrVerificaExiste do
            begin
              Close;
              params[1].AsString := edtProc.Text;
              params[0].AsString := '05';
              Open;
            end;

           if qrVerificaExiste.RecordCount > 0
            then begin
              MessageDlg('Solicitação já exite ', mtInformation,[mbOk], 0);
              qrSolReg.Locate('ref_ms',edtProc.Text,[loCaseInsensitive]);
              Exit;
            end;

           tipoDec   := '12';
           tipoDec_c := '05';
         end
         else if RadioGroup1.ItemIndex = 2
               then begin
                 with qrVerificaExiste do
                  begin
                    Close;
                    params[1].AsString := edtProc.Text;
                    params[0].AsString := '*';
                    Open;
                  end;

                 if qrVerificaExiste.RecordCount > 0
                  then begin
                    MessageDlg('Solicitação já exite. Verifique o Status do Registro. ', mtInformation,[mbOk], 0);
                    qrSolReg.Locate('ref_ms',edtProc.Text,[loCaseInsensitive]);
                    Exit;
                  end;

                 tipoDec   := '12';
                 tipoDec_c := '';
               end;

  pnl12.Visible := False;
  pnlInclusaoItens.Enabled := True;
  Inclusao();
  pnlPrincipal.Enabled := True;
  pnlInclusaoItens.Visible := False;
end;

procedure Tf_solRegistros.Button2Click(Sender: TObject);
begin
  pnlPrincipal.Enabled := True;
  pnl12.Visible        := False;
end;

procedure Tf_solRegistros.btnSolicitaClick(Sender: TObject);
var
  v_razao : String;
  v_body, qsql : String;
begin
  if (Trim(qrSolRegData_Chegada_URF_Cheg.AsString) = '')
   then begin
     MessageDlg('Não é possível solicitar este registro sem informar a Data de Chegada na UFR de Entrada!', mtInformation,[mbOk], 0);
     pnlPrincipal.Enabled := True;
     Exit;
   end;

  if (tbsolregcontabilizado_cliente.asinteger=1)
   then begin
     if (tbsolregbanco.asstring   = '') or
        (tbsolregagencia.asstring = '') or
        (tbsolregc_c.asstring     = '')
      then begin
        Showmessage(v_usuario+', ATENÇÃO! para registros contabilizados pelo cliente é necessário informar o banco/agência/conta corrente.!');
        exit;
      end;

     {verificar parametros de contabilização}
     q_sqls.close;
     q_sqls.sql.clear;

     qsql := '';
     qsql := qsql+' SELECT     Parametros_Contabilizacao.Importador, Tipos_Numerario.Empresa, Tipos_Numerario.Filial, Tipos_Numerario.Codigo, Tipos_Numerario.Descricao, ' ;
     qsql := qsql+'                       Tipos_Numerario.Plano_contas, Tipos_Numerario.Rateio, Tipos_Numerario.ContabilizaCC, Tipos_Numerario.Sequencia                  ';
     qsql := qsql+' FROM         Tipos_Numerario INNER JOIN ';
     qsql := qsql+'                       Parametros_Contabilizacao ON Tipos_Numerario.Codigo = Parametros_Contabilizacao.Numerario ';
     qsql := qsql+' WHERE ';
     qsql := qsql+' (Parametros_Contabilizacao.Importador = '+chr(39)+qrsolregimportador.asstring+chr(39)+') AND ';
     qsql := qsql+' (                                                  ';
     qsql := qsql+' (Tipos_Numerario.Codigo = ''II'')  OR                ';
     qsql := qsql+' (Tipos_Numerario.Codigo = ''IPI'') OR                ';
     qsql := qsql+' (Tipos_Numerario.Codigo = ''PP'') OR                 ';
     qsql := qsql+' (Tipos_Numerario.Codigo = ''CF'') OR                 ';
     qsql := qsql+' (Tipos_Numerario.Codigo = ''ICMS'') OR               ';
     qsql := qsql+' (Tipos_Numerario.Codigo = ''FECP'') OR               ';
     qsql := qsql+' (Tipos_Numerario.Codigo = ''TAXA'')                  ';
     qsql := qsql+' ) ';

     q_sqls.sql.add(qsql);
     q_sqls.open;

     if q_sqls.RecordCount < 7
      then begin
        Showmessage(v_usuario+', ATENÇÃO! Cliente não possuem parametros de contabilização para os débitos desta solicitação! Favor solicitar ao Financeiro para que seja cadastrado.');
        exit;
      end;

     q_sqls.close;
   end;

  screen.cursor := crHourGlass;
  EmailConecta();

  v_body :=   '<table width="100%" class="table1X" STYLE=" mso-cellspacing: 0cm; background: #002255; border: solid #002255 1.0pt; padding:.75pt .75pt .75pt .75pt; "> '
            +     '<tr>'
            +        '<td class="tituloX" STYLE="FONT: 14px Arial; COLOR:#ffffff; text-align: center; BACKGROUND: #002255; width:100.0%; "><B>'+v_sistema+' - '+v_versao+'</B>'
            +        '<br><B>Solicitação de Autorização de Registro Nº:</B> '+ qrSolRegCodigo.AsString + '  -  <B>Data da Solicitação:</B> ' + DateTimeToStr(Date)
            +        '<br>' + FormatDateTime('dddd, d " de " mmmm " de " yyyy " às " hh:mm:ss', Now()) + '</td>'
            +     '</tr>'
            + '</table>';

  if qrStatusEmail.Locate('Codigo','1',[])
   then v_status_email := qrStatusEmailDescricao.AsString;

  CorpoEmail(v_body, v_razao);
  EmailDePara();

  vAssunto := 'MS2000Plus - Sol.Reg Nº ' + qrSolRegCodigo.AsString+' - SOLICITADO';
  vBody    := v_body;

  AppendToWB(WebBrowser1,v_body);

  pnlbrowser.Align := alClient;
  pnlbrowser.visible := true;
  pnlbrowser.top   := 0;
  pnlbrowser.left  := 0;
  pnlbrowser.Width := 790;
  screen.cursor := crDefault;

  pnlBroConSol.Visible := True;
  pnlBroConEmi.Visible := False;
  pnlImprimir.Visible  := False;

  ShowMessage(V_USUARIO+','+#13#10#13#10+'ATENÇÃO! ANTES DE SOLICITAR, DEVERÁ TRANSFERIR A DI PARA O SEU SISCOMEX E DEPOIS ATUALIZAR OS VALORES DA SOLICITAÇÃO. ');
end;

procedure Tf_solRegistros.BitBtn7Click(Sender: TObject);
begin
  WebBrowser1.ExecWB(OLECMDID_PRINT, OLECMDEXECOPT_PROMPTUSER);
end;

procedure Tf_solRegistros.btnEmitirClick(Sender: TObject);
var
  cod, qref : string;
  qsql :string;
begin
  pnlBrowser.visible := False;

  pnlAguarde.Visible := True;
  pnlAguarde.Refresh;
  screen.cursor := crHourGlass;

  qref := tbsolregref_ms.asstring;

  try
    try
      IncluiEmailAuto(vCodApl, vTitulo, vAssunto, vAnexo, vDe, vPara, vCco, vCc, vBody);

      pnlAguarde.Visible := False;

      tbSolReg.Edit;
      tbSolRegStatus.AsInteger          := 2;
      tbSolRegAgencia.AsString          := DBEdit10.Text;
      tbSolRegC_C.AsString              := DBEdit1.Text;
      tbSolRegBanco.AsString            := DBEdit11.Text;
      tbSolRegautorizador.AsString      := v_usuario;
      tbSolRegData_autorizacao.AsString := v_dataFollow;
      tbSolReg.Post;

      tbProcessosRegImp.open;
      tbProcessosRegImp.Locate('processo',qref,[loCaseInsensitive]);
      tbProcessosRegImp.Edit;

      if tbSolRegdeclaracao.AsString = '12'
       then begin
         if tbSolRegdeclaracao_c.AsString = '01'
          then begin
            tbProcessosRegImpAgenciac.AsString        := DBEdit10.Text;
            tbProcessosRegImpBancoc.AsString          := DBEdit11.Text;
            tbProcessosRegImpConta_Correntec.AsString := DBEdit1.Text;
          end
          else begin
            tbProcessosRegImpAgencia.AsString        := DBEdit10.Text;
            tbProcessosRegImpBanco.AsString          := DBEdit11.Text;
            tbProcessosRegImpConta_Corrente.AsString := DBEdit1.Text;
          end;
       end
       else begin
         tbProcessosRegImpAgencia.AsString        := DBEdit10.Text;
         tbProcessosRegImpBanco.AsString          := DBEdit11.Text;
         tbProcessosRegImpConta_Corrente.AsString := DBEdit1.Text;
       end;

      tbProcessosRegImp.Post;
      tbProcessosRegImp.Close;

      btnCancSol.Enabled := False;
      pnlEmissao.Visible := False;
      logusu('P','Emitiu Solicitação de Autorização de Registro: [Cod]= '+tbSolRegCodigo.AsString + ' [remetente]= '+tbSolRegSolicitante.AsString+' [Valor]= ' + tbSolRegvalor_total.AsString);

      if (tbsolregcontabilizado_cliente.asinteger = 1)
       then begin
         if (DBCheckBox1.Checked = true) or (DBCheckBox2.Checked = true)
          then begin
            F_MSCOMEX.qfol1.close;
            F_MSCOMEX.qfol1.sql.clear;
            F_MSCOMEX.qfol1.sql.add('select processo from Followup where Processo='+chr(39)+qref+chr(39)+' and Codevento='+chr(39)+'628'+chr(39)+' and Data='+chr(39)+tbSolRegdata_autorizacao.asstring+chr(39));
            F_MSCOMEX.qfol1.open;

            if F_MSCOMEX.qfol1.recordcount = 0
             then begin
               F_MSCOMEX.qfol1up.sql.clear;

               qsql := 'INSERT INTO Followup ([Processo],[Codevento] ,[Data] ,[Hora] ,[Usuario]) VALUES ( ';
               qsql := qsql+chr(39)+qref+chr(39)+', ';
               qsql := qsql+chr(39)+'628'+chr(39)+', ';
               qsql := qsql+chr(39)+v_dataFollow+chr(39)+', ';
               qsql := qsql+chr(39)+copy(timetostr(time()),1,5)+chr(39)+', ';
               qsql := qsql+chr(39)+v_usuario+chr(39)+' ';
               qsql := qsql+' )';

               F_MSCOMEX.qfol1up.sql.add(qsql);
               F_MSCOMEX.qfol1up.execsql;
               logusu('P','Incluiu Follow Up: Registro Autorizado pelo Cliente. - Processo: '+qref);
               Showmessage(v_usuario+',ATENÇÃO! foi INCLUÍDO follow up de Registro Autorizado pelo Cliente.!');

               {Ticket 1042 - Leandro Serra}
               {qrFollowup.Close;
               qrFollowup.ParamByName('pPROCESSO').Value:= qref;//v_MS;
               qrFollowup.ExecSQL;
               logusu('P','Incluiu Follow Up: Registro Autorizado pelo Cliente. - Processo: '+qref);
               Showmessage(v_usuario+',ATENÇÃO! foi INCLUÍDO follow up de Registro Autorizado pelo Cliente.!');}
               {Fim - 1042}
             end;
          end;
       end
       else if (tbsolregcontabilizado_cliente.asinteger = 0)
             then begin
               F_MSCOMEX.qfol1.close;
               F_MSCOMEX.qfol1.sql.clear;
               F_MSCOMEX.qfol1.sql.add('select processo from Followup where Processo='+chr(39)+qref+chr(39)+' and Codevento='+chr(39)+'35'+chr(39)+' and Data='+chr(39)+tbSolRegdata_autorizacao.asstring+chr(39));
               F_MSCOMEX.qfol1.open;

               if F_MSCOMEX.qfol1.recordcount = 0
                then begin
                  F_MSCOMEX.qfol1up.sql.clear;

                  qsql := 'INSERT INTO Followup ([Processo],[Codevento] ,[Data] ,[Hora] ,[Usuario]) VALUES ( ';
                  qsql := qsql+chr(39)+qref+chr(39)+', ';
                  qsql := qsql+chr(39)+'35'+chr(39)+', ';
                  qsql := qsql+chr(39)+v_dataFollow+chr(39)+', ';
                  qsql := qsql+chr(39)+copy(timetostr(time()),1,5)+chr(39)+', ';
                  qsql := qsql+chr(39)+v_usuario+chr(39)+' ';
                  qsql := qsql+' )';

                  F_MSCOMEX.qfol1up.sql.add(qsql);
                  F_MSCOMEX.qfol1up.execsql;
                  logusu('P','Incluiu Follow Up: Registro Autorizado pelo Financeiro. - Processo: '+qref);
                  Showmessage(v_usuario+',ATENÇÃO! foi INCLUÍDO follow up de Registro Autorizado pelo Financeiro.!');
                end;
             end;
    except on E : Exception do
      showmessage('Erro ao tentar enviar e-mail');
    end;
  finally
    screen.cursor := crDefault;
  end;

  pnlAguarde.Visible := False;
  
  cod := qrSolRegCodigo.AsString;  
  qrSolReg.Close;
  qrSolReg.Open;
  qrSolReg.Locate('Codigo',cod,[loCaseInsensitive]);
end;

procedure Tf_solRegistros.BitBtn13Click(Sender: TObject);
var
  v_body, v_razao : String;
begin
  if Trim(DBEdit11.Text) = ''
   then begin
     MessageDlg('Banco não pode ser em Branco!', mtInformation,[mbOk], 0);
     DBEdit11.SetFocus;
     Exit;
   end;

  if Trim(DBEdit10.Text) = ''
   then begin
     MessageDlg('Agência não pode ser em Branco!', mtInformation,[mbOk], 0);
     DBEdit10.SetFocus;
     Exit;
   end;

  if Trim(DBEdit1.Text) = ''
   then begin
     MessageDlg('CC não pode ser em Branco!', mtInformation,[mbOk], 0);
     DBEdit1.SetFocus;
     Exit;
   end;

  pnlPrincipal.Enabled := True;
  dbGrid1.SetFocus;
  EmailConecta();
  pnlEmissao.Visible := False;

  v_body :=  '<table width="100%" STYLE=" mso-cellspacing: 0cm; background: #002255; border: solid #002255 1.0pt;  "> '
            +     '<tr>'
            +        '<td width="100%" STYLE="FONT: 14px Arial; COLOR:#ffffff; text-align: center; BACKGROUND: #002255; "><B>'+v_sistema+' - '+v_versao+'</B>'
            +        '<br><B>Autorização de Registro Nº:</B> '+ qrSolRegCodigo.AsString + '  -  <B>Data da Solicitação:</B> ' + DateTimeToStr(Date)
            +        '<br>' + FormatDateTime('dddd, d " de " mmmm " de " yyyy " às " hh:mm:ss', Now()) + '</td>'
            +     '</tr>'
            + '</table>';

  b_emissor := true;

  if qrStatusEmail.Locate('Codigo','2',[])
   then v_status_email := qrStatusEmailDescricao.AsString;

  CorpoEmail(v_body, v_razao);
  b_emissor := False;
  EmailDePara();

  v_html := v_body;

  vAssunto := 'MS2000Plus - Sol.Reg Nº ' + qrSolRegCodigo.AsString+' - AUTORIZADO';
  vBody    := v_body;

  AppendToWB(WebBrowser1,v_body);

  pnlbrowser.Align   := alClient;
  pnlbrowser.visible := true;
  pnlbrowser.top     := 0;
  pnlbrowser.left    := 0;
  pnlbrowser.Width   := 790;

  pnlBroConSol.Visible := False;
  pnlBroConEmi.Visible := True;
  pnlImprimir.Visible  := False;



end;

procedure Tf_solRegistros.BitBtn10Click(Sender: TObject);
var
  cod, qref : string;
  qsql : string;
begin
  pnlBrowser.visible := False;
  pnlAguarde.Visible := True;
  pnlAguarde.Refresh;
  screen.cursor := crHourGlass;

  qref := tbsolregref_ms.asstring;

  try
    try
      IncluiEmailAuto(vCodApl, vTitulo, vAssunto, vAnexo, vDe, vPara, vCco, vCc, vBody);
    except on E:Exception do
     begin
       showmessage('Erro ao tentar enviar e-mail');
     end;
    end;

    pnlAguarde.Visible := False;

    tbSolReg.Edit;
    tbSolRegStatus.AsInteger := 1;
    tbSolRegData_requisicao.AsDateTime := Date();
    tbSolReg.Post;

    cod := qrSolRegCodigo.AsString;

    qrSolReg.Close;
    qrSolReg.Open;
    qrSolReg.Locate('Codigo',cod,[loCaseInsensitive]);

    logusu('P','Solicitou Autorização de Registro: [Cod]= '+tbSolRegCodigo.AsString + ' [remetente]= '+tbSolRegSolicitante.AsString+' [Valor]= ' + tbSolRegvalor_total.AsString);
    MessageDlg('Solicitação enviada com sucesso!', mtInformation,[mbOk], 0);

    F_MSCOMEX.qfol1.close;
    F_MSCOMEX.qfol1.sql.clear;
    F_MSCOMEX.qfol1.sql.add('select processo from Followup where Processo='+chr(39)+qref+chr(39)+' and Codevento='+chr(39)+'1116'+chr(39)+' and Data='+chr(39)+v_dataFollow+chr(39));
    F_MSCOMEX.qfol1.open;
    {Leandro Serra - Solicitação da Elaine 28/11/2011}
    if (DBCheckBox1.Checked = True) or (DBCheckBox2.Checked = True) then
    begin
             F_MSCOMEX.qfol1up.sql.clear;
             qsql := 'INSERT INTO Followup ([Processo],[Codevento],[Codobs], [Data] ,[Hora] ,[Usuario]) VALUES ( ';
             qsql := qsql+chr(39)+qref+chr(39)+', ';
             qsql := qsql+chr(39)+'1021'+chr(39)+', ';
             qsql := qsql+chr(39)+'1185'+chr(39)+', ';
             qsql := qsql+chr(39)+v_dataFollow+chr(39)+', ';
             qsql := qsql+chr(39)+copy(timetostr(time()),1,5)+chr(39)+', ';
             qsql := qsql+chr(39)+v_usuario+chr(39)+' ';
             qsql := qsql+' )';

             F_MSCOMEX.qfol1up.sql.add(qsql);
             F_MSCOMEX.qfol1up.execsql;
             logusu('P','Incluiu Follow Up: Solicitou registro da DI na c/c do cliente. - Processo: '+qref);
             Showmessage(v_usuario+',ATENÇÃO! foi INCLUÍDO follow up de Solicitado registro da DI na c/c do cliente.!');
    end
    else
    begin
          if  F_MSCOMEX.qfol1.recordcount = 0
           then begin
             F_MSCOMEX.qfol1up.sql.clear;
             qsql := 'INSERT INTO Followup ([Processo],[Codevento] ,[Data] ,[Hora] ,[Usuario]) VALUES ( ';
             qsql := qsql+chr(39)+qref+chr(39)+', ';
             qsql := qsql+chr(39)+'1116'+chr(39)+', ';
             qsql := qsql+chr(39)+v_dataFollow+chr(39)+', ';
             qsql := qsql+chr(39)+copy(timetostr(time()),1,5)+chr(39)+', ';
             qsql := qsql+chr(39)+v_usuario+chr(39)+' ';
             qsql := qsql+' )';

             F_MSCOMEX.qfol1up.sql.add(qsql);
             F_MSCOMEX.qfol1up.execsql;
             logusu('P','Incluiu Follow Up: Solicitado registro ao Financeiro. - Processo: '+qref);
             Showmessage(v_usuario+',ATENÇÃO! foi INCLUÍDO follow up de Solicitado registro ao Financeiro.!');
           end;
    end;
  finally
    screen.cursor := crDefault;
  end;

  pnlAguarde.Visible := False;
end;

procedure Tf_solRegistros.DBGrid1DblClick(Sender: TObject);
var
  v_body, v_razao : String;
begin
  screen.cursor := crHourGlass;

  v_body :=           '<table width="100%" class="table1X" STYLE=" mso-cellspacing:0cm;background:#002255;border:solid #002255 1.0pt; padding:.75pt .75pt .75pt .75pt "> '
                    +     '<tr>'
                    +        '<td class="tituloX" STYLE="FONT: 14px Arial;COLOR:#ffffff; text-align: center; BACKGROUND: #002255; width:100.0%; "><B>'+v_sistema+' - '+v_versao+'</B>'
                    +        '<br><B>Solicitação de Autorização de Registro Nº:</B> '+ qrSolRegCodigo.AsString + '  -  <B>Data da Solicitação:</B> ' + DateTimeToStr(Date)
                    +        '<br>' + FormatDateTime('dddd, d " de " mmmm " de " yyyy " às " hh:mm:ss', Now()) + '</td>'
                    +     '</tr>'
                    + '</table>';

  v_status_email := qrSolRegDescricao.AsString;
  CorpoEmail(v_body, v_razao);

  pnlEmissao.Visible := False;
  AppendToWB(WebBrowser1,v_body);
  pnlAguarde.Visible := False;

  pnlbrowser.Align   := alClient;
  pnlbrowser.visible := true;
  pnlbrowser.top     := 0;
  pnlbrowser.left    := 0;

  screen.cursor := crDefault;
  pnlBroConSol.Visible := False;
  pnlBroConEmi.Visible := False;
  pnlImprimir.Visible := True;
end;

procedure Tf_solRegistros.BitBtn11Click(Sender: TObject);
begin
  pnlBrowser.Visible := False;
end;

procedure Tf_solRegistros.Inclusao();
var
  q_suspe, v_aux_loc, v_processo, v_aliq : string;
begin
  panel11.visible := False;
  screen.cursor := crHourGlass;

  if not b_Reativa
   then v_processo := edtProc.Text
   else v_processo := qrSolRegREF_MS.AsString;

  if qrProcessos.Locate('Processo',v_processo , [loCaseInsensitive])
   then begin
     if not b_Reativa
      then begin
        tbSolReg.Open;

        if tbSolReg.RecordCount > 1
         then tbSolReg.Append
         else tbSolReg.Insert;
      end;

     q_propis.close;
     q_propis.Params[0].asstring := v_processo;
     q_propis.open;

     q_piscofinstrib.close;
     q_piscofinstrib.Params[0].asstring := v_processo;
     q_piscofinstrib.open;

     { soma as bases de cálculo do icms, pis, cofins }
     q_propis.first;

     qcif         := 0;
     ii_total     := 0;
     ipi_total    := 0;
     bc_total     := 0;
     pis_total    := 0;
     cofins_total := 0;

     da_total  := qrprocessostaxa_siscomex.asfloat;
     da_total2 := 0;
     cif_proporcional := 0;
     aliq_icms := 0;
     aliq_icms_extra := 0;

     while not q_propis.eof do
      begin
        q_suspe := '';
        q_piscofinstrib.first;

        if q_piscofinstrib.Locate('Adicao',q_propisadicao.asstring,[loCaseInsensitive])
         then begin
           if q_piscofinstribtratamento_tributario.asstring <> ''
            then q_suspe := ' -> (SUSPENSÃO)';
         end;

        if qrprocessosdecl.asstring <> '12'
         then begin
           qcif      := qcif      + q_propisva.asfloat;
           da_total2 := da_total2 + q_propisda.asfloat;
           bc_total  := bc_total  + q_propisBASEC_ICMS.asfloat;
         end
         else begin
           if q_piscofinstribtratamento_tributario.asstring = ''
            then begin
              qcif      := qcif      + q_propisva.asfloat;
              da_total2 := da_total2 + q_propisda.asfloat;
              bc_total  := bc_total  + q_propisBASEC_ICMS.asfloat;
            end;
         end;

        {NÃO É SUSPENSO}
        if q_suspe = ''
         then begin
           if (qrprocessosBASE_ICMS.asinteger=0) or ((qrprocessosBASE_ICMS.asinteger=1) and (q_piscofinstribRegime_Tributacao_II.asstring<>'5'))
            then begin
              ii_total     := ii_total     + q_propisvalor_ii.asfloat;
              ipi_total    := ipi_total    + q_propisvalor_ipi.asfloat;
              pis_total    := pis_total    + q_propisVALOR_PIS_PASEP.asfloat;
              cofins_total := cofins_total + q_propisVALOR_COFINS.asfloat;
            end;

           aliq_icms := q_propisAliq_ICMS.asfloat;
           aliq_icms_extra := q_propisAliq_ICMS_EXTRA.asfloat;
         end;

        q_propis.next;
      end;

     dbeCIF.Text := floattostrf(qcif,fffixed,15,2);
     dbeII.Text  := floattostrf(ii_total,fffixed,15,2);
     dbeIPI.Text := floattostrf(ipi_total,fffixed,15,2);

     dbepis_pasep.Text := floattostrf(pis_total,fffixed,15,2);
     dbeCOFINS.Text    := floattostrf(cofins_total,fffixed,15,2);
     dbeTxSisco.Text   := floattostrf(da_total,fffixed,15,2);

     qtaxa := 1-((aliq_icms + aliq_icms_extra)/100);
//     dbeBC.Text := floattostrf(((strtofloat(dbepis_pasep.Text)+strtofloat(dbeCOFINS.Text)+strtofloat(dbeCIF.Text)+strtofloat(dbeII.Text)+strtofloat(dbeIPI.Text)+DA_TOTAL2)/(qtaxa)),fffixed,15,2);
     dbeBC.Text := floattostrf(((q_propisRateio_Acresc_ICMS.asFloat+strtofloat(dbepis_pasep.Text)+strtofloat(dbeCOFINS.Text)+strtofloat(dbeCIF.Text)+strtofloat(dbeII.Text)+strtofloat(dbeIPI.Text)+DA_TOTAL2)/(qtaxa)),fffixed,15,2);

     dbeValTot.Text    := floattostrf(strtofloat(dbeII.Text)+strtofloat(dbeIPI.Text)+strtofloat(dbeTxsisco.Text)+strtofloat(dbepis_pasep.Text)+ strtofloat(dbeCOFINS.Text),fffixed,15,2);
     v_valorPrincipal  := floattostrf(strtofloat(dbeBC.Text)*(aliq_icms/100),fffixed,15,2);

     dbeICMS.Text := v_valorPrincipal;

     dbeICMS1.Text := floattostrf(strtofloat(dbeBC.Text)*(aliq_icms_extra/100),fffixed,15,2);

     q_propis.Close;

     dbeCliente.Text := qrprocessoscliente.asstring;
     dbeREF_MS.Text  := v_processo;

     dbeSolicitante.Text := v_usuario;

     dbeData_requisicao.Text := FormatDateTime('dd/mm/yyyy',Date());
     dbeDescricao.Text       := qrProcessosDescricao.AsString;

     if tipoDec = ''
      then begin
        tbSolRegdeclaracao.AsString := qrProcessosdecl.AsString;
      end
      else begin
        tbSolRegdeclaracao.AsString   := tipoDec;
        tbSolRegdeclaracao_c.AsString := tipoDec_c;
      end;

     v_aux_loc := tbSolRegCodigo.AsString;

     if not b_Reativa
      then v_aux_loc := CriaCodigo;

     tbSolRegCodigo.AsString := v_aux_loc;
     tbSolReg.Post;
     qrSolReg.Close;
     qrSolReg.Open;
   end;

  qrSOLReg.Locate('Codigo',v_aux_loc,[]);
  screen.cursor := crDefault;
end;

procedure Tf_solRegistros.BitBtn9Click(Sender: TObject);
begin
  pnlBrowser.Visible := False;
end;

procedure Tf_solRegistros.btnEmissaoClick(Sender: TObject);
var
  qref, qsql : string;
begin
  qref := tbsolregref_ms.asstring;
  //v_MS := tbSolRegCodigo.asString;
  v_MS := tbsolregref_ms.asstring;
  {Alterado por Leandro Serra - 18/04/2011-a}
  if DBCheckBox1.Checked
   then begin
     if (tbsolregbanco.asstring   = '') or
        (tbsolregagencia.asstring = '') or
        (tbsolregc_c.asstring     = '')
      then begin
        Showmessage(v_usuario+', ATENÇÃO! para registros contabilizados pelo cliente é necessário informar o banco/agência/conta corrente.!');
        Exit;
      end;

     {verificar parametros de contabilização}
     q_sqls.close;
     q_sqls.sql.clear;

     qsql := '';
     qsql := qsql+' SELECT     Parametros_Contabilizacao.Importador, Tipos_Numerario.Empresa, Tipos_Numerario.Filial, Tipos_Numerario.Codigo, Tipos_Numerario.Descricao, ' ;
     qsql := qsql+'                       Tipos_Numerario.Plano_contas, Tipos_Numerario.Rateio, Tipos_Numerario.ContabilizaCC, Tipos_Numerario.Sequencia                  ';
     qsql := qsql+' FROM         Tipos_Numerario INNER JOIN ';
     qsql := qsql+'                       Parametros_Contabilizacao ON Tipos_Numerario.Codigo = Parametros_Contabilizacao.Numerario ';
     qsql := qsql+' WHERE ';
     qsql := qsql+' (Parametros_Contabilizacao.Importador = '+chr(39)+qrsolregimportador.asstring+chr(39)+') AND ';
     qsql := qsql+' (                                                  ';
     qsql := qsql+' (Tipos_Numerario.Codigo = ''II'')  OR                ';
     qsql := qsql+' (Tipos_Numerario.Codigo = ''IPI'') OR                ';
     qsql := qsql+' (Tipos_Numerario.Codigo = ''PP'') OR                 ';
     qsql := qsql+' (Tipos_Numerario.Codigo = ''CF'') OR                 ';
     qsql := qsql+' (Tipos_Numerario.Codigo = ''ICMS'') OR               ';
     qsql := qsql+' (Tipos_Numerario.Codigo = ''FECP'') OR               ';
     qsql := qsql+' (Tipos_Numerario.Codigo = ''TAXA'')                  ';
     qsql := qsql+' ) ';

     q_sqls.sql.add(qsql);
     q_sqls.open;

     if q_sqls.RecordCount<7
      then begin
        Showmessage(v_usuario+', ATENÇÃO! Cliente não possuem parametros de contabilização para os débitos desta solicitação! Favor solicitar ao Financeiro para que seja cadastrado.');
        Exit;
      end;

     q_sqls.close;

     if MessageDlg(V_USUARIO+', Atenção! Autorização de registro contabilizado pelo cliente irá Contabilizar os valores após a DI REGISTRADA. Confirma?', mtConfirmation,[mbYes, mbNo], 0) = mrNo
      then Exit;

     BitBtn13Click(f_solRegistros);
   end
   else begin

     {verificar saldos dos processos}
     semsaldo      := false;
     me_senha.Text := '';
     qrprocessos.first;
     qrProcessos.Locate('Processo', qref, []);
     q_impaut.first;
     q_impaut.Locate('Codigo', qrprocessosimportador.asstring, []);

     if q_impautautoriza_registro.asinteger = 1
      then begin
        if tbsolregvalor_total.asfloat > qrprocessossaldo.asfloat
         then semsaldo := true;
      end;

     if semsaldo
      then begin
        showmessage(v_usuario+', Atenção!:'+#13#10+qref+#13#10+'será necessário senha de autorização para processos sem saldo.');
        p_autoriza.Height  := 112;
        p_autoriza.Left    := round(pnlPrincipal.Width/2) - round(p_autoriza.Width/2);
        p_autoriza.Top     := round(pnlPrincipal.Height/2) - round(p_autoriza.Height/2);
        p_autoriza.Visible := true;
        me_senha.SetFocus;
      end
      else begin
        oksenhaClick(f_solregistros);
      end;
   end;
end;

procedure Tf_solRegistros.BitBtn6Click(Sender: TObject);
begin
  tbSolReg.Cancel;
  pnlBrowser.Visible := False;
end;

procedure Tf_solRegistros.BitBtn12Click(Sender: TObject);
begin
  tbSolReg.Cancel;
  pnlEmissao.Visible := False;
  pnlPrincipal.Enabled := True;
end;

procedure Tf_solRegistros.BitBtn5Click(Sender: TObject);
var
  aux, cod, v_body, v_razao : String;
begin
  if (tbsolregcontabilizado_cliente.asinteger = 1)
   then begin
     if (tbsolregbanco.asstring   = '') or
        (tbsolregagencia.asstring = '') or
        (tbsolregc_c.asstring     = '')
      then begin
        panel5.Enabled := true;

        Showmessage(v_usuario+', ATENÇÃO! para registros contabilizados pelo cliente é necessário informar o banco/agência/conta corrente.!');

        dbeBANCO.SetFocus;
        exit;
      end;
   end;

  Recalcula();
  panel1.Enabled := True;
  pnlDados.Enabled := False;

  if DBCheckBox1.Checked
   then tbSolRegContabilizado_cliente.AsInteger := 1
   else tbSolRegContabilizado_cliente.AsInteger := 0;

  if DBCheckBox2.Checked
   then tbSolRegContabilizado_cliente_icms.AsInteger := 1
   else tbSolRegContabilizado_cliente_icms.AsInteger := 0;

  tbSolReg.Post;
  bitbtn3.Enabled := True;
  bitbtn4.Enabled := False;
  bitbtn5.Enabled := False;
  aux := qrSolRegCodigo.AsString;

  qrSolreg.Close;
  qrSolReg.Open;
  qrSolReg.Locate('Codigo',aux,[loCaseInsensitive]);

  screen.cursor := crHourGlass;
  dbGrid1.SetFocus;
  pnlAguarde.Visible := True;
  EmailConecta();

  if qrStatusEmail.Locate('Codigo',tbSolRegstatus.asstring,[])
   then v_status_email := qrStatusEmailDescricao.AsString;

  v_body :=          '<table width="100%" class="table1X" STYLE=" mso-cellspacing:0cm;background:#002255;border:solid #002255 1.0pt; padding:.75pt .75pt .75pt .75pt "> '
                    +     '<tr>'
                    +        '<td class="tituloX" STYLE="FONT: 14px Arial;COLOR:#ffffff; text-align: center; BACKGROUND: #002255; width:100.0%; "><B>'+v_sistema+' - '+v_versao+'</B>'
                    +        '<br><B>'+v_status_email+' - ALTERAÇÃO '+' -  Autorização de Registro Nº: </B>'+ qrSolRegCodigo.AsString
                    +        '<br>' + FormatDateTime('dddd, d " de " mmmm " de " yyyy " às " hh:mm:ss', Now()) + '</td>'
                    +     '</tr>'
                    + '</table>';

  CorpoEmail(v_body, v_razao);

  EmailDePara();

  vAssunto := 'MS2000Plus - Sol.Reg Nº ' + qrSolRegCodigo.AsString+' - '+v_status_email+' - ALTERAÇÃO ';
  vBody    := v_body;

  try
    try
      IncluiEmailAuto(vCodApl, vTitulo, vAssunto, vAnexo, vDe, vPara, vCco, vCc, vBody);

      pnlAguarde.Visible := False;

      logusu('P',v_status_email+' - ALTERAÇÃO '+' - Autorização de Solicitação de Registro: [Cod]= '+tbSolRegCodigo.AsString + ' [solicitante]= '+tbSolRegSolicitante.AsString+' [Valor]= ' + tbSolRegvalor_total.AsString);
    except on E:Exception do
           showmessage('Erro ao tentar enviar e-mail');
    end;
  finally
    screen.cursor := crDefault;
  end;
  pnlAguarde.Visible := False;
end;

procedure Tf_solRegistros.BitBtn4Click(Sender: TObject);
begin
  panel1.Enabled := True;
  dbGrid1.SetFocus;
  pnlDados.Enabled := False;
  tbSolReg.Cancel;
  bitbtn3.Enabled := True;
  bitbtn4.Enabled := False;
  bitbtn5.Enabled := False;
end;

procedure Tf_solRegistros.btnCanChequeClick(Sender: TObject);
var
  cod, v_body, v_razao, qref, Data_Autorizacao : String;
begin
  qref := tbsolregref_ms.asstring;

  if MessageDlg('Deseja cancelar a Autorização desta Solicitação de Registro?', mtConfirmation,[mbYes, mbNo], 0) = mrNo
   then Exit;

  screen.cursor := crHourGlass;
  dbGrid1.SetFocus;
  pnlAguarde.Visible := True;
  EmailConecta();

  v_body :=           '<table width="100%" class="table1X" STYLE=" mso-cellspacing:0cm;background:#002255;border:solid #002255 1.0pt; padding:.75pt .75pt .75pt .75pt "> '
                    +     '<tr>'
                    +        '<td class="tituloX" STYLE="FONT: 14px Arial;COLOR:#ffffff; text-align: center; BACKGROUND: #002255; width:100.0%; "><B>'+v_sistema+' - '+v_versao+'</B>'
                    +        '<br><B>Cancelamento da Autorização de Registro Nº: </B>'+ qrSolRegCodigo.AsString + '  -  <B>Data da Autorização:</B> ' + DateTimeToStr(Date)
                    +        '<br>' + FormatDateTime('dddd, d " de " mmmm " de " yyyy " às " hh:mm:ss', Now()) + '</td>'
                    +     '</tr>'
                    + '</table>';

  if qrStatusEmail.Locate('Codigo','2',[])
   then v_status_email := qrStatusEmailDescricao.AsString;

  CorpoEmail(v_body, v_razao);

  EmailDePara();

  vAssunto := 'MS2000Plus - Sol.Reg Nº ' + qrSolRegCodigo.AsString+' - AUTORIZAÇÃO CANCELADA';
  vBody    := v_body;

  try
    try
      IncluiEmailAuto(vCodApl, vTitulo, vAssunto, vAnexo, vDe, vPara, vCco, vCc, vBody);

      pnlAguarde.Visible := False;

      tbProcessosRegImp.open;
      tbProcessosRegImp.Locate('processo',qref,[loCaseInsensitive]);
      tbProcessosRegImp.Edit;

      if tbSolRegdeclaracao.AsString = '12'
       then begin
         if tbSolRegdeclaracao_c.AsString = '01'
          then begin
            tbProcessosRegImpAgenciac.AsString := '';
            tbProcessosRegImpBancoc.AsString := '';
            tbProcessosRegImpConta_Correntec.AsString := '';
          end
          else begin
            tbProcessosRegImpAgencia.AsString := '';
            tbProcessosRegImpBanco.AsString := '';
            tbProcessosRegImpConta_Corrente.AsString := '';
          end;
       end
       else begin
         tbProcessosRegImpAgencia.AsString := '';
         tbProcessosRegImpBanco.AsString := '';
         tbProcessosRegImpConta_Corrente.AsString := '';
       end;

      Data_Autorizacao := tbSolRegData_autorizacao.AsString;

      tbprocessosRegImp.Close;
      tbSolReg.Edit;
      tbSolRegStatus.AsInteger := 1;
      tbSolRegC_C.AsString              := '';
      tbSolRegBanco.AsString            := '';
      tbSolRegAgencia.AsString          := '';
      tbSolRegData_autorizacao.AsString := '';
      tbSolRegautorizador.AsString      := '';
      tbSolReg.Post;

      pnlEmissao.Visible := False;
      logusu('P','Cancelou Autorização de Solicitação de Registro: [Cod]= '+tbSolRegCodigo.AsString + ' [solicitante]= '+tbSolRegSolicitante.AsString+' [Valor]= ' + tbSolRegvalor_total.AsString);
      MessageDlg('Email enviado com sucesso!', mtInformation,[mbOk], 0);

      if (tbsolregcontabilizado_cliente.asinteger = 0)
       then begin
         F_MSCOMEX.qfol1up.sql.clear;
         F_MSCOMEX.qfol1up.sql.add('delete Followup where Processo='+chr(39)+qref+chr(39)+' and Codevento='+chr(39)+'35'+chr(39)+' and Data='+chr(39)+Data_Autorizacao+chr(39));
         F_MSCOMEX.qfol1up.execsql;
         logusu('E','Excluiu Follow Up:  Registro Autorizado pelo Financeiro. - Processo: '+qref);
         Showmessage(v_usuario+',ATENÇÃO! foi EXCLUÍDO follow up de Registro Autorizado pelo Financeiro.!');
       end;
    except
     on E : Exception do
       showmessage('Erro ao tentar enviar e-mail');
    end;
  finally
    screen.cursor := crDefault;
  end;

  cod := qrSolRegCodigo.AsString;
  qrSolReg.Close;
  qrSolReg.Open;
  qrSolReg.Locate('Codigo',cod,[loCaseInsensitive]);

  pnlAguarde.Visible := False;
end;

procedure Tf_solRegistros.btnReativarClick(Sender: TObject);
var
  cod : String;
begin
  if MessageDlg('Reativar a Solicitação desta Autorização?', mtConfirmation,[mbYes, mbNo], 0) = mrNo
   then Exit;

  if qrSolRegdeclaracao.AsString = '12'
   then begin
     if qrSolRegdeclaracao_c.AsString = '01'
      then begin
        with qrReativa2DI do
         begin
           Close;
           params[1].AsString := qrSolRegREF_MS.AsString;
           params[0].AsString := '01';
           open;
         end;

        if qrReativa2DI.RecordCount > 0
         then begin
           MessageDlg('Solicitação já exite ', mtInformation,[mbOk], 0);
           Exit;
         end;

        tipoDec   := '12';
        tipoDec_c := '01';
      end
      else if qrSolRegdeclaracao_c.AsString = '05'
            then begin
              with qrReativa2DI do
               begin
                 Close;
                 params[1].AsString := qrSolRegREF_MS.AsString;
                 params[0].AsString := '05';

                 Open;
               end;

              if qrReativa2DI.RecordCount > 0
               then begin
                 MessageDlg('Solicitação já exite ', mtInformation,[mbOk], 0);
                 Exit;
               end;

              tipoDec := '12';
              tipoDec_c := '05';
            end
            else if qrSolRegdeclaracao_c.AsString = ''
                  then begin
                    with qrReativa2DI do
                     begin
                       Close;
                       params[1].AsString := qrSolRegREF_MS.AsString;
                       params[0].AsString := '12';
                       Open;
                     end;

                    if qrReativa2DI.RecordCount > 0
                     then begin
                       MessageDlg('Solicitação já exite. Verifique o Status do Registro. ', mtInformation,[mbOk], 0);
                       Exit;
                     end;
                  end;
   end
   else begin
     with qrReativa1DI do
      begin
        Close;
        params[0].AsString := qrSolRegREF_MS.AsString;
        Open;
      end;

     if qrReativa1DI.RecordCount > 0
      then begin
        MessageDlg('Solicitação já exite. Verifique o Status do Registro. ', mtInformation,[mbOk], 0);
        Exit;
      end;
   end;

  if MessageDlg('Deseja Atualizar os valores?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
   then begin
     b_reativa := True;
     tbSolReg.Open;
     tbSolReg.Edit;
     Inclusao();
     b_reativa := False;
     pnldados.enabled:=False;
   end;

  tbSolReg.Edit;
  tbSolRegStatus.AsInteger := 0;
  tbSolReg.Post;
  logusu('P','Reativou Solicitação de Autorização de Registro [Cod]= '+tbSolRegCodigo.AsString + ' [solicitante]= '+tbSolRegSolicitante.AsString+' [Valor]= ' + tbSolRegvalor_total.AsString);
  cod := qrSolRegCodigo.AsString;
  qrSolReg.Close;
  qrSolReg.Open;
  qrSolReg.Locate('Codigo',cod,[loCaseInsensitive]);
  btnReativar.Visible := False;
  btnCancSol.Visible := True;
  dbGrid1.SetFocus;
end;

procedure Tf_solRegistros.btnCancSolClick(Sender: TObject);
var
  cod, v_body, v_razao : String;
  v_aux : Integer;
  qref : String;
begin
  if MessageDlg(v_usuario+', Deseja Cancelar esta Solicitação de Autorização de Registro?', mtConfirmation,[mbYes, mbNo], 0) = mrNo
   then Exit;

  qref := tbsolregref_ms.asstring;
  screen.cursor := crHourGlass;
  v_aux := tbSolRegStatus.AsInteger;

  if v_aux <> 0
   then begin
     pnlAguarde.Visible := True;
     EmailConecta();

     v_body :=           '<table width="100%" class="table1X" STYLE=" mso-cellspacing:0cm;background:#002255;border:solid #002255 1.0pt; padding:.75pt .75pt .75pt .75pt "> '
                       +     '<tr>'
                       +        '<td class="tituloX" STYLE="FONT: 14px Arial;COLOR:#ffffff; text-align: center; BACKGROUND: #002255; width:100.0%; "><B>'+v_sistema+' - '+v_versao+'</B>'
                       +        '<br><B>Cancelamento da Solicitação de Autorização Nº: </B>'+ qrSolRegCodigo.AsString + '  -  <B>Data do Cancelamento:</B> ' + DateTimeToStr(Date)
                       +        '<br>' + FormatDateTime('dddd, d " de " mmmm " de " yyyy " às " hh:mm:ss', Now()) + '</td>'
                       +     '</tr>'
                       + '</table>';

     if qrStatusEmail.Locate('Codigo','3',[])
      then v_status_email := qrStatusEmailDescricao.AsString;

     CorpoEmail(v_body, v_razao);
     EmailDePara();

     vAssunto := 'MS2000Plus - Sol.Reg Nº ' + qrSolRegCodigo.AsString+' - SOLICITAÇÃO CANCELADA';
     vBody    := v_body;
   end;

  dbGrid1.SetFocus;

  try
    try
      if v_aux <> 0
       then begin
         IncluiEmailAuto(vCodApl, vTitulo, vAssunto, vAnexo, vDe, vPara, vCco, vCc, vBody);
       end;

      pnlAguarde.Visible := False;

      tbSolReg.Edit;
      tbSolRegStatus.AsInteger := 3;
      tbSolRegC_C.AsString := '';
      tbSolRegBanco.AsString := '';
      tbSolRegAgencia.AsString := '';
      tbSolRegData_autorizacao.AsString := '';
      tbSolRegautorizador.AsString := '';
      tbSolReg.Post;

      cod := qrSolRegCodigo.AsString;
      qrSolReg.Close;
      qrSolReg.Open;
      qrSolReg.Locate('Codigo',cod,[loCaseInsensitive]);
      btnReativar.Visible := True;
      btnCancSol.Visible := False;
      logusu('P','Cancelou Solicitação de Registro: [Cod]= '+tbSolRegCodigo.AsString + ' [solicitante]= '+tbSolRegSolicitante.AsString+' [Valor]= ' + tbSolRegvalor_total.AsString );

      if v_aux <> 0
       then begin
         MessageDlg('Email enviado com sucesso!', mtInformation,[mbOk], 0);

         F_MSCOMEX.qfol1up.sql.clear;
         F_MSCOMEX.qfol1up.sql.add('delete Followup where Processo='+chr(39)+qref+chr(39)+' and Codevento='+chr(39)+'1116'+chr(39)+' and Data='+chr(39)+tbSolRegdata_requisicao.asstring+chr(39));
         F_MSCOMEX.qfol1up.execsql;
         logusu('E','Excluiu Follow Up:  Solicitado registro ao Financeiro. - Processo: '+qref);
         Showmessage(v_usuario+',ATENÇÃO! foi EXCLUÍDO follow up de Solicitado registro ao Financeiro.!');
       end;
    except on E:Exception do
      if v_aux <> 0
       then showmessage('Erro ao tentar enviar e-mail');
    end;
  finally
    screen.cursor := crDefault;
  end;

  pnlAguarde.Visible := False;
end;

procedure Tf_solRegistros.FormActivate(Sender: TObject);
var
  s, w, h, m, p : integer;
  mc : string;
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_solRegistros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  f_mscomex.ControledeSolicitaesdeAutorizaodeRegistros2.Enabled := True;
  f_solRegistros := nil;
  Action := caFree;
end;

procedure Tf_solRegistros.cbVerTodosClick(Sender: TObject);
begin
  if cbVerTodos.Checked
   then begin
     if (StrToInt(v_nivel) < 5)
      then AplicarFiltrosGrid('','')
      else AplicarFiltrosGrid(v_usuario, v_super);

     DBLookupComboBox2.Enabled := False;
   end
   else begin
     DBLookupComboBox2.Enabled := True;

     if (StrToInt(v_nivel) < 5)
      then AplicarFiltrosGrid('','')
      else AplicarFiltrosGrid(v_usuario, v_super);
   end;
end;

procedure Tf_solRegistros.DBLookupComboBox2Click(Sender: TObject);
begin
  if not cbVerTodos.Checked
   then begin
     if (StrToInt(v_nivel) < 5)
      then AplicarFiltrosGrid('','')
      else AplicarFiltrosGrid(v_usuario, v_super);
   end;
end;

procedure Tf_solRegistros.edtFiltroChange(Sender: TObject);
begin
  if Length(edtFiltro.Text) < 8
   then Exit
   else begin
     if (StrToInt(v_nivel) < 5)
      then AplicarFiltrosGrid('','')
      else AplicarFiltrosGrid(v_usuario, v_super);
   end;
end;

procedure Tf_solRegistros.cbFiltrarClick(Sender: TObject);
begin
  if cbFiltrar.Checked
   then begin
     edtFiltro.Enabled := True;
     edtFiltro.SetFocus;
   end
   else begin
     if (StrToInt(v_nivel) < 5)
      then AplicarFiltrosGrid('','')
      else AplicarFiltrosGrid(v_usuario, v_super);

     edtFiltro.Clear;
     edtFiltro.Enabled := False;
   end;
end;

procedure Tf_solRegistros.DBLookupComboBox1Click(Sender: TObject);
begin
  tbSolRegBanco.AsString   := qrContaBanco.AsString;
  tbSolRegAgencia.AsString := qrContaAgencia.AsString;
  tbSolRegC_C.AsString     := qrContaConta.AsString;
end;

procedure Tf_solRegistros.oksenhaClick(Sender: TObject);
begin
  if sender<>f_solregistros
   then begin
     if me_senha.text<>q_autorizaautoriza_registro.asstring
      then begin
        showmessage(v_usuario+', senha inválida!');
        exit;
      end;
   end;

  p_autoriza.Visible := false;

  qrConta.Open;

  pnlEmissao.Height  := 170;
  pnlEmissao.Left    := round(pnlPrincipal.Width/2) - round(pnlEmissao.Width/2);
  pnlEmissao.Top     := round(pnlPrincipal.Height/2) - round(pnlEmissao.Height/2);
  pnlEmissao.Visible := True;

  tbSolReg.Edit;
  dbedit10.Text := '';
  dbedit11.Text := '';
  dbedit1.Text := '';
  dblookupcombobox1.SetFocus;
  pnlPrincipal.Enabled := False;
  dblookupcombobox1.KeyValue := '';
end;

procedure Tf_solRegistros.cancelsenhaClick(Sender: TObject);
begin
  p_autoriza.Visible := false;
end;

procedure Tf_solRegistros.b_diClick(Sender: TObject);
var
  cod, v_body, v_razao, qsql : String;
begin
  {aqui grava as contabilizações}
  if qrSolRegDT_REGISTRO_DI.AsString = ''
   then begin
     Showmessage(v_usuario+', Data de Registro da DI NÃO foi informada! Favor verificar no DESEMBARAÇO. Não é possível informar DI REGISTRADA. ');
     screen.cursor := crDefault;
     exit;
   end;

  if (tbsolregcontabilizado_cliente.asinteger = 0) and (tbSolRegContabilizado_cliente_icms.asinteger = 0)
   then begin
     {wellington - 31/08/2011-b - implementada no momento da DI Registrada, solicitação do Fabiano - Financeiro}
     if MessageDlg(v_usuario+', Deseja Atualizar os valores?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
      then begin
        b_reativa := True;
        tbSolReg.Open;
        tbSolReg.Edit;
        Inclusao();
        tbSolReg.Edit;
        b_reativa := False;
      end;
     {------}

     if MessageDlg(V_usuario+', confirme o Registro da DI com os valores desta autorização?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
      then begin
        screen.cursor := crHourGlass;
        dbGrid1.SetFocus;
        pnlAguarde.Visible := True;
        EmailConecta();

        v_body :=           '<table width="100%" class="table1X" STYLE=" mso-cellspacing:0cm;background:#002255;border:solid #002255 1.0pt; padding:.75pt .75pt .75pt .75pt "> '
                          +     '<tr>'
                          +        '<td class="tituloX" STYLE="FONT: 14px Arial;COLOR:#ffffff; text-align: center; BACKGROUND: #002255; width:100.0%; "><B>'+v_sistema+' - '+v_versao+'</B>'
                          +        '<br><B>DI REGISTRADA -  Autorização de Registro Nº: </B>'+ qrSolRegCodigo.AsString
                          +        '<br>' + FormatDateTime('dddd, d " de " mmmm " de " yyyy " às " hh:mm:ss', Now()) + '</td>'
                          +     '</tr>'
                          + '</table>';


        if qrStatusEmail.Locate('Codigo','4',[])
         then v_status_email := qrStatusEmailDescricao.AsString;

        CorpoEmail(v_body, v_razao);

        EmailDePara();

        vAssunto := 'MS2000Plus - Sol.Reg Nº ' + qrSolRegCodigo.AsString+' - DI REGISTRADA';
        vBody    := v_body;

        try
          try
            IncluiEmailAuto(vCodApl, vTitulo, vAssunto, vAnexo, vDe, vPara, vCco, vCc, vBody);

            pnlAguarde.Visible := False;

            tbSolReg.Edit;
            tbSolRegStatus.AsInteger := 4;
            tbSolReg.Post;
            cod := qrSolRegCodigo.AsString;
            qrSolReg.Close;
            qrSolReg.Open;
            qrSolReg.Locate('Codigo',cod,[loCaseInsensitive]);

            logusu('P','DI REGISTRADA - Autorização de Solicitação de Registro: [Cod]= '+tbSolRegCodigo.AsString + ' [solicitante]= '+tbSolRegSolicitante.AsString+' [Valor]= ' + tbSolRegvalor_total.AsString);
          except on E:Exception do
            showmessage('Erro ao tentar enviar e-mail');
          end;
        finally
          screen.cursor := crDefault;
        end;

        pnlAguarde.Visible := False;

        showmessage(v_usuario+', status da autorização alterado para DI REGISTRADA.');
      end;
   end
   else begin {CONTABILIZADO PELO CLIENTE IRÁ CONTABILIZAR DIRETO}
     {verificar parametros de contabilização}
     q_sqls.close;
     q_sqls.sql.clear;

     qsql := '';
     qsql := qsql+' SELECT     Parametros_Contabilizacao.Importador, Tipos_Numerario.Empresa, Tipos_Numerario.Filial, Tipos_Numerario.Codigo, Tipos_Numerario.Descricao, ' ;
     qsql := qsql+'                       Tipos_Numerario.Plano_contas, Tipos_Numerario.Rateio, Tipos_Numerario.ContabilizaCC, Tipos_Numerario.Sequencia                  ';
     qsql := qsql+' FROM         Tipos_Numerario INNER JOIN ';
     qsql := qsql+'                       Parametros_Contabilizacao ON Tipos_Numerario.Codigo = Parametros_Contabilizacao.Numerario ';
     qsql := qsql+' WHERE ';
     qsql := qsql+' (Parametros_Contabilizacao.Importador = '+chr(39)+qrsolregimportador.asstring+chr(39)+') AND ';
     qsql := qsql+' (                                                  ';
     qsql := qsql+' (Tipos_Numerario.Codigo = ''II'')  OR                ';
     qsql := qsql+' (Tipos_Numerario.Codigo = ''IPI'') OR                ';
     qsql := qsql+' (Tipos_Numerario.Codigo = ''PP'') OR                 ';
     qsql := qsql+' (Tipos_Numerario.Codigo = ''CF'') OR                 ';
     qsql := qsql+' (Tipos_Numerario.Codigo = ''ICMS'') OR               ';
     qsql := qsql+' (Tipos_Numerario.Codigo = ''FECP'') OR               ';
     qsql := qsql+' (Tipos_Numerario.Codigo = ''TAXA'')                  ';
     qsql := qsql+' ) ';

     q_sqls.sql.add(qsql);
     q_sqls.open;

     if q_sqls.RecordCount < 7
      then begin
        Showmessage(v_usuario+', ATENÇÃO! Cliente não possuem parametros de contabilização para os débitos desta solicitação! Favor solicitar ao Financeiro para que seja cadastrado.');
        exit;
      end;

     q_sqls.close;

     if MessageDlg(V_usuario+', confirme o Registro da DI com os valores desta autorização? Será CONTABILIZADA PELO CLIENTE.', mtConfirmation,[mbYes, mbNo], 0) = mrYes
      then begin
        screen.cursor := crHourGlass;
        dbGrid1.SetFocus;
        pnlAguarde.Visible := True;
        EmailConecta();

        v_body :=           '<table width="100%" class="table1X" STYLE=" mso-cellspacing:0cm;background:#002255;border:solid #002255 1.0pt; padding:.75pt .75pt .75pt .75pt "> '
                          +     '<tr>'
                          +        '<td class="tituloX" STYLE="FONT: 14px Arial;COLOR:#ffffff; text-align: center; BACKGROUND: #002255; width:100.0%; "><B>'+v_sistema+' - '+v_versao+'</B>'
                          +        '<br><B>DI REGISTRADA. CONTABILIZADA PELO CLIENTE -  Autorização de Registro Nº: </B>'+ qrSolRegCodigo.AsString
                          +        '<br>' + FormatDateTime('dddd, d " de " mmmm " de " yyyy " às " hh:mm:ss', Now()) + '</td>'
                          +     '</tr>'
                          + '</table>';

        if qrStatusEmail.Locate('Codigo','5',[])
         then v_status_email := qrStatusEmailDescricao.AsString;

        CorpoEmail(v_body, v_razao);

        EmailDePara();

        vAssunto := 'MS2000Plus - Sol.Reg Nº ' + qrSolRegCodigo.AsString+' - DI REGISTRADA. CONTABILIZADA PELO CLIENTE';
        vBody    := v_body;

        try
          try
            IncluiEmailAuto(vCodApl, vTitulo, vAssunto, vAnexo, vDe, vPara, vCco, vCc, vBody);

            pnlAguarde.Visible := False;

            tbSolReg.Edit;
            tbSolRegStatus.AsInteger := 5;
            tbSolReg.Post;

            cod := qrSolRegCodigo.AsString;
            qrSolReg.Close;
            qrSolReg.Open;
            qrSolReg.Locate('Codigo',cod,[loCaseInsensitive]);

            {AQUI PROCESSAR SQLS DE INCLUSÃO}
            C_CLIENTEClick(f_solRegistros);

            logusu('P','DI REGISTRADA. CONTABILIZADA PELO CLIENTE - Autorização de Solicitação de Registro: [Cod]= '+tbSolRegCodigo.AsString + ' [solicitante]= '+tbSolRegSolicitante.AsString+' [Valor]= ' + tbSolRegvalor_total.AsString);
          except on E:Exception do
            showmessage('Erro ao tentar enviar e-mail');
          end;
        finally
          screen.cursor := crDefault;
        end;

        pnlAguarde.Visible := False;

        showmessage(v_usuario+', status da autorização alterado para CONTABILIZADA.');
      end;
   end;
end;

procedure Tf_solRegistros.b_conClick(Sender: TObject);
var
  cod, v_body, v_razao, qmovcc, qcomo : String;
begin
  if (qrSolRegStatus.AsInteger = 5)
   then begin
     if (tbsolregcontabilizado_cliente.asinteger = 0)
      then begin
        if MessageDlg(V_usuario+', confirme a DESCONTABILIZAÇÃO dos valores desta autorização?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
         then begin
           screen.cursor := crHourGlass;

           if (qrSolRegcodigo.asstring<>'') and (not qrSolRegcodigo.isnull)
            then begin
              q_del01.Params[0].AsString := qrSolRegcodigo.asstring;
              q_del01.ExecSQL;

              q_del02.Params[0].AsString := qrSolRegcodigo.asstring;
              q_del02.ExecSQL;

              f_mscomex.MSPGP(qrSolRegref_ms.asstring);
            end
            else begin
              showmessage(v_usuario+', ocorreu um ERRO! Favor enviar esta tela para mssistemas@mslogistica.com.br!');
            end;

           dbGrid1.SetFocus;
           pnlAguarde.Visible := True;
           EmailConecta();

           v_body :=           '<table width="100%" class="table1X" STYLE=" mso-cellspacing:0cm;background:#002255;border:solid #002255 1.0pt; padding:.75pt .75pt .75pt .75pt "> '
                             +     '<tr>'
                             +        '<td class="tituloX" STYLE="FONT: 14px Arial;COLOR:#ffffff; text-align: center; BACKGROUND: #002255; width:100.0%; "><B>'+v_sistema+' - '+v_versao+'</B>'
                             +        '<br><B>DESCONTABILIZADA -  Autorização de Registro Nº: </B>'+ qrSolRegCodigo.AsString
                             +        '<br>' + FormatDateTime('dddd, d " de " mmmm " de " yyyy " às " hh:mm:ss', Now()) + '</td>'
                             +     '</tr>'
                             + '</table>';


           if qrStatusEmail.Locate('Codigo','4',[])
            then v_status_email := qrStatusEmailDescricao.AsString;

           CorpoEmail(v_body, v_razao);

           EmailDePara();

           vAssunto := 'MS2000Plus - Sol.Reg Nº ' + qrSolRegCodigo.AsString+' - DESCONTABILIZADA';
           vBody    := v_body;

           try
             try
               IncluiEmailAuto(vCodApl, vTitulo, vAssunto, vAnexo, vDe, vPara, vCco, vCc, vBody);

               pnlAguarde.Visible := False;

               tbSolReg.Edit;
               tbSolRegStatus.AsInteger := 4;
               tbSolReg.Post;

               cod := qrSolRegCodigo.AsString;
               qrSolReg.Close;
               qrSolReg.Open;
               qrSolReg.Locate('Codigo',cod,[loCaseInsensitive]);

               logusu('P','DESCONTABILIZADA - Autorização de Solicitação de Registro: [Cod]= '+tbSolRegCodigo.AsString + ' [solicitante]= '+tbSolRegSolicitante.AsString+' [Valor]= ' + tbSolRegvalor_total.AsString);
             except on E:Exception do
               showmessage('Erro ao tentar enviar e-mail');
             end;
           finally
             screen.cursor := crDefault;
           end;

           pnlAguarde.Visible := False;

           showmessage(v_usuario+', status da autorização alterado para DI REGISTRADA.');
         end;
      end
      else begin {DESCONTABILIZAÇÃO DOS CONTABILIZADOS PELOS CLIENTES}
        if MessageDlg(V_usuario+', confirme a DESCONTABILIZAÇÃO dos valores desta autorização?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
         then begin
           screen.cursor := crHourGlass;

           if (qrSolRegcodigo.asstring<>'') and (not qrSolRegcodigo.isnull)
            then begin
              q_sqls.close;
              q_sqls.sql.clear;
              q_sqls.sql.add('DELETE FROM Numerarios_Processos WHERE Numerarios_Processos.docsis  = '+chr(39)+qrSolRegcodigo.asstring+chr(39) );
              q_sqls.ExecSQL;

              q_sqls.close;
              q_sqls.sql.clear;
              q_sqls.sql.add('DELETE FROM Creditos_Processos WHERE Creditos_Processos.docsis  = '+chr(39)+qrSolRegcodigo.asstring+chr(39) );
              q_sqls.ExecSQL;
            end
            else begin
              showmessage(v_usuario+', ocorreu um ERRO! Favor enviar esta tela para mssistemas@mslogistica.com.br!');
            end;

           dbGrid1.SetFocus;
           pnlAguarde.Visible := True;
           EmailConecta();

           v_body :=           '<table width="100%" class="table1X" STYLE=" mso-cellspacing:0cm;background:#002255;border:solid #002255 1.0pt; padding:.75pt .75pt .75pt .75pt "> '
                             +     '<tr>'
                             +        '<td class="tituloX" STYLE="FONT: 14px Arial;COLOR:#ffffff; text-align: center; BACKGROUND: #002255; width:100.0%; "><B>'+v_sistema+' - '+v_versao+'</B>'
                             +        '<br><B>DESCONTABILIZADA -  Autorização de Registro Nº: </B>'+ qrSolRegCodigo.AsString
                             +        '<br>' + FormatDateTime('dddd, d " de " mmmm " de " yyyy " às " hh:mm:ss', Now()) + '</td>'
                             +     '</tr>'
                             + '</table>';

           if qrStatusEmail.Locate('Codigo','4',[])
            then v_status_email := qrStatusEmailDescricao.AsString;

           CorpoEmail(v_body, v_razao);

           EmailDePara();

           vAssunto := 'MS2000Plus - Sol.Reg Nº ' + qrSolRegCodigo.AsString+' - DESCONTABILIZADA';
           vBody    := v_body;

           try
             try
               IncluiEmailAuto(vCodApl, vTitulo, vAssunto, vAnexo, vDe, vPara, vCco, vCc, vBody);

               pnlAguarde.Visible := False;

               tbSolReg.Edit;
               tbSolRegStatus.AsInteger := 2;
               tbSolReg.Post;

               cod := qrSolRegCodigo.AsString;

               qrSolReg.Close;
               qrSolReg.Open;
               qrSolReg.Locate('Codigo',cod,[loCaseInsensitive]);

               logusu('P','DESCONTABILIZADA - Autorização de Solicitação de Registro: [Cod]= '+tbSolRegCodigo.AsString + ' [solicitante]= '+tbSolRegSolicitante.AsString+' [Valor]= ' + tbSolRegvalor_total.AsString);
             except on E:Exception do
               showmessage('Erro ao tentar enviar e-mail');
             end;
           finally
             screen.cursor := crDefault;
           end;

           pnlAguarde.Visible := False;

           showmessage(v_usuario+', status da autorização alterado para AUTORIZADO.');
         end;
      end
   end
   else begin {contabilização}
     qcomo := 'MANUAL';

     if MessageDlg(V_usuario+', confirme a CONTABILIZAÇÃO dos valores desta autorização?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
      then begin
        screen.cursor := crHourGlass;

        if MessageDlg(V_usuario+', ATENÇÃO!, confirme a CONTABILIZAÇÃO MANUAL dos valores desta autorização?', mtConfirmation,[mbYes, mbNo], 0) = mrNo
         then begin
           {aqui grava as contabilizações}
           if qrSolRegDT_REGISTRO_DI.AsString = ''
            then begin
              Showmessage(v_usuario+', Data de Registro da DI NÃO foi informada! Favor verificar no DESEMBARAÇO. Não é possível contabilizar. ');
              screen.cursor := crDefault;
              exit;
            end;

           { Alterado por Wellington - versão 06052011-a }
           if not DBCheckBox1.Checked
            then begin
              q_contac.Close;
              q_contac.Params[0].AsString := qrSolRegbanco.AsString;
              q_contac.Params[1].AsString := qrSolRegagencia.AsString;
              q_contac.Params[2].AsString := qrSolRegc_c.AsString;
              q_contac.open;

              if (q_contac.recordcount = 0) or (q_contaccontac.asstring = '')
               then begin
                 q_contac.Close;
                 Showmessage(v_usuario+', conta contabil não localizada! Não foi possível contabilizar. ');
                 screen.cursor := crDefault;
                 Exit;
               end;
            end;

           t_movcc.open;
           t_movcc.append;
           t_movccEmpresa.asstring       := v_empresa;
           t_movccFilial.asstring        := v_filial;
           t_movccCodigo.asstring        := q_contaccontac.asstring;
           t_movccData.asstring          := COPY(qrSolRegDT_REGISTRO_DI.AsString,1,2)+'/'+COPY(qrSolRegDT_REGISTRO_DI.AsString,3,2)+'/'+COPY(qrSolRegDT_REGISTRO_DI.AsString,5,4);
           t_movccTipo.asstring          := '2';
           t_movccHistorico.asstring     := 'REGISTRO SISCOMEX REF.MS:'+qrSolRegREF_MS.AsString+' - '+qrSolRegCLIENTE.AsString;
           t_movccValor.asfloat          := (qrSolRegvalor_total.asfloat*(-1));
           t_movccCliente.asstring       := '0000';
           t_movccUsuario.asstring       := v_usuario;
           t_movccDesmembra.asinteger    := 1;
           t_movccCodigo_SOLREG.asstring := qrSolRegcodigo.asstring;
           t_movcc.post;
           t_movcc.Refresh;
           t_movcc.Last;

           t_num.open;

           {gravando II}
           if qrSolRegii.asfloat <> 0
            then begin
              t_num.append;
              t_numEmpresa.asstring              := v_empresa;
              t_numFilial.asstring               := v_filial;
              t_numProcesso.asstring             := qrSolRegref_ms.asstring;
              t_numNumerario.asstring            := 'II';
              t_numUsuario_Previsao.asstring     := v_usuario;
              t_numData_Previsao.asstring        := t_movccData.asstring;
              t_numValor_Previsao.asstring       := qrSolRegii.asstring;
              t_numPrevisao_solicitada.AsString  := 'NÃO';
              t_numUsuario_Financeiro.AsString   := v_usuario;
              t_numData_Registro.asstring        := t_movccData.asstring;
              t_numValor_Registrado.asstring     := qrSolRegii.asstring;
              t_numValor_Contabilizado.asstring  := qrSolRegii.asstring;
              t_numContabilizado.asstring        := 'SIM';
              t_numUsuario_Contablizado.asstring := v_usuario;
              t_numConta_Corrente.asstring       := t_movccCodigo.asstring;
              t_numCodigo_mov.asstring           := t_movccCodigo_Mov.asstring;
              t_numImpdemfim.asstring            := 'Sim';
              t_numDetalhe.asstring              := 'Contabilizado pela Sol.Registro Nº '+ t_movccCodigo_SOLREG.asstring;
              t_numDocsis.asstring               := qrSolRegcodigo.asstring;
              t_num.post;
            end;

           {gravando IPI}
           if qrSolRegipi.asfloat <> 0
            then begin
              t_num.append;
              t_numEmpresa.asstring              := v_empresa;
              t_numFilial.asstring               := v_filial;
              t_numProcesso.asstring             := qrSolRegref_ms.asstring;
              t_numNumerario.asstring            := 'IPI';
              t_numUsuario_Previsao.asstring     := v_usuario;
              t_numData_Previsao.asstring        := t_movccData.asstring;
              t_numValor_Previsao.asstring       := qrSolRegipi.asstring;
              t_numPrevisao_solicitada.AsString  := 'NÃO';
              t_numUsuario_Financeiro.AsString   := v_usuario;
              t_numData_Registro.asstring        := t_movccData.asstring;
              t_numValor_Registrado.asstring     := qrSolRegipi.asstring;
              t_numValor_Contabilizado.asstring  := qrSolRegipi.asstring;
              t_numContabilizado.asstring        := 'SIM';
              t_numUsuario_Contablizado.asstring := v_usuario;
              t_numConta_Corrente.asstring       := t_movccCodigo.asstring;
              t_numCodigo_mov.asstring           := t_movccCodigo_Mov.asstring;
              t_numImpdemfim.asstring            := 'Sim';
              t_numDetalhe.asstring              := 'Contabilizado pela Sol.Registro Nº '+ t_movccCodigo_SOLREG.asstring;
              t_numDocsis.asstring               := qrSolRegcodigo.asstring;
              t_num.post;
            end;

           {gravando TAXA}
           if qrSolRegtx_siscomex.asfloat <> 0
            then begin
              t_num.append;
              t_numEmpresa.asstring              := v_empresa;
              t_numFilial.asstring               := v_filial;
              t_numProcesso.asstring             := qrSolRegref_ms.asstring;
              t_numNumerario.asstring            := 'TAXA';
              t_numUsuario_Previsao.asstring     := v_usuario;
              t_numData_Previsao.asstring        := t_movccData.asstring;
              t_numValor_Previsao.asstring       := qrSolRegTX_SISCOMEX.asstring;
              t_numPrevisao_solicitada.AsString  := 'NÃO';
              t_numUsuario_Financeiro.AsString   := v_usuario;
              t_numData_Registro.asstring        := t_movccData.asstring;
              t_numValor_Registrado.asstring     := qrSolRegTX_SISCOMEX.asstring;
              t_numValor_Contabilizado.asstring  := qrSolRegTX_SISCOMEX.asstring;
              t_numContabilizado.asstring        := 'SIM';
              t_numUsuario_Contablizado.asstring := v_usuario;
              t_numConta_Corrente.asstring       := t_movccCodigo.asstring;
              t_numCodigo_mov.asstring           := t_movccCodigo_Mov.asstring;
              t_numImpdemfim.asstring            := 'Sim';
              t_numDetalhe.asstring              := 'Contabilizado pela Sol.Registro Nº '+ t_movccCodigo_SOLREG.asstring;
              t_numDocsis.asstring               := qrSolRegcodigo.asstring;
              t_num.post;
            end;

           {gravando pis}
           if qrSolRegpis_pasep.asfloat <> 0
            then begin
              t_num.append;
              t_numEmpresa.asstring              := v_empresa;
              t_numFilial.asstring               := v_filial;
              t_numProcesso.asstring             := qrSolRegref_ms.asstring;
              t_numNumerario.asstring            := 'PP';
              t_numUsuario_Previsao.asstring     := v_usuario;
              t_numData_Previsao.asstring        := t_movccData.asstring;
              t_numValor_Previsao.asstring       := qrSolRegpis_pasep.asstring;
              t_numPrevisao_solicitada.AsString  := 'NÃO';
              t_numUsuario_Financeiro.AsString   := v_usuario;
              t_numData_Registro.asstring        := t_movccData.asstring;
              t_numValor_Registrado.asstring     := qrSolRegpis_pasep.asstring;
              t_numValor_Contabilizado.asstring  := qrSolRegpis_pasep.asstring;
              t_numContabilizado.asstring        := 'SIM';
              t_numUsuario_Contablizado.asstring := v_usuario;
              t_numConta_Corrente.asstring       := t_movccCodigo.asstring;
              t_numCodigo_mov.asstring           := t_movccCodigo_Mov.asstring;
              t_numImpdemfim.asstring            := 'Sim';
              t_numDetalhe.asstring              := 'Contabilizado pela Sol.Registro Nº '+ t_movccCodigo_SOLREG.asstring;
              t_numDocsis.asstring               := qrSolRegcodigo.asstring;
              t_num.post;
            end;

           {gravando COFINS}
           if qrSolRegcofins.asfloat <> 0
            then begin
              t_num.append;
              t_numEmpresa.asstring              := v_empresa;
              t_numFilial.asstring               := v_filial;
              t_numProcesso.asstring             := qrSolRegref_ms.asstring;
              t_numNumerario.asstring            := 'CF';
              t_numUsuario_Previsao.asstring     := v_usuario;
              t_numData_Previsao.asstring        := t_movccData.asstring;
              t_numValor_Previsao.asstring       := qrSolRegCOFINS.asstring;
              t_numPrevisao_solicitada.AsString  := 'NÃO';
              t_numUsuario_Financeiro.AsString   := v_usuario;
              t_numData_Registro.asstring        := t_movccData.asstring;
              t_numValor_Registrado.asstring     := qrSolRegCOFINS.asstring;
              t_numValor_Contabilizado.asstring  := qrSolRegCOFINS.asstring;
              t_numContabilizado.asstring        := 'SIM';
              t_numUsuario_Contablizado.asstring := v_usuario;
              t_numConta_Corrente.asstring       := t_movccCodigo.asstring;
              t_numCodigo_mov.asstring           := t_movccCodigo_Mov.asstring;
              t_numImpdemfim.asstring            := 'Sim';
              t_numDetalhe.asstring              := 'Contabilizado pela Sol.Registro Nº '+ t_movccCodigo_SOLREG.asstring;
              t_numDocsis.asstring               := qrSolRegcodigo.asstring;
              t_num.post;
            end;

           t_movcc.close;
           t_num.close;

           qcomo := 'AUTOMÁTICAMENTE';
         end;

        dbGrid1.SetFocus;
        pnlAguarde.Visible := True;
        EmailConecta();

        v_body :=           '<table width="100%" class="table1X" STYLE=" mso-cellspacing:0cm;background:#002255;border:solid #002255 1.0pt; padding:.75pt .75pt .75pt .75pt "> '
                          +     '<tr>'
                          +        '<td class="tituloX" STYLE="FONT: 14px Arial;COLOR:#ffffff; text-align: center; BACKGROUND: #002255; width:100.0%; "><B>'+v_sistema+' - '+v_versao+'</B>'
                          +        '<br><B>CONTABILIZADA '+qcomo+' -  Autorização de Registro Nº: </B>'+ qrSolRegCodigo.AsString
                          +        '<br>' + FormatDateTime('dddd, d " de " mmmm " de " yyyy " às " hh:mm:ss', Now()) + '</td>'
                          +     '</tr>'
                          + '</table>';

        if qrStatusEmail.Locate('Codigo','5',[])
         then v_status_email := qrStatusEmailDescricao.AsString;

        CorpoEmail(v_body, v_razao);

        EmailDePara();

        vAssunto := 'MS2000Plus - Sol.Reg Nº ' + qrSolRegCodigo.AsString+' - CONTABILIZADA '+qcomo;
        vBody    := v_body;

        try
          try
            IncluiEmailAuto(vCodApl, vTitulo, vAssunto, vAnexo, vDe, vPara, vCco, vCc, vBody);

            pnlAguarde.Visible := False;

            tbSolReg.Edit;
            tbSolRegStatus.AsInteger := 5;
            tbSolReg.Post;
            cod := qrSolRegCodigo.AsString;
            qrSolReg.Close;
            qrSolReg.Open;
            qrSolReg.Locate('Codigo',cod,[loCaseInsensitive]);

            logusu('P','CONTABILIZADA - Autorização de Solicitação de Registro: [Cod]= '+tbSolRegCodigo.AsString + ' [solicitante]= '+tbSolRegSolicitante.AsString+' [Valor]= ' + tbSolRegvalor_total.AsString);
          except on E:Exception do
            showmessage('Erro ao tentar enviar e-mail');
          end;
        finally
          screen.cursor := crDefault;
        end;

        pnlAguarde.Visible := False;
        showmessage(v_usuario+', status da autorização alterado para CONTABILIZADA.');
        f_mscomex.MSPGP(qrSolRegref_ms.asstring);
      end;
   end;
end;

procedure Tf_solRegistros.pnlInclusaoItensExit(Sender: TObject);
begin
  pnlPrincipal.Enabled     := true;
  pnlInclusaoItens.Visible := false;
end;

procedure Tf_solRegistros.DBCheckBox1Exit(Sender: TObject);
begin
  PANEL5.Enabled := FALSE;
  PANEL5.Color := CLGRAY;
  LABEL35.Font.Color := CLWHITE;
  LABEL36.Font.Color := CLWHITE;
  LABEL37.Font.Color := CLWHITE;

  if (DBCheckBox1.Checked) or (DBCheckBox2.Checked)
   then begin
     PANEL5.Color := clYellow;
     LABEL35.Font.Color := CLBLACK;
     LABEL36.Font.Color := CLBLACK;
     LABEL37.Font.Color := CLBLACK;

     PANEL5.Enabled := TRUE;

     if pnlDados.Enabled and
        ((Trim(DBEBANCO.Text) = '') or (Trim(DBEAGENCIA.Text) = '') or (Trim(DBECC.Text) = ''))
      then PreencheBancoAgenciaContaCliente;
   end
   else begin
     if pnlDados.Enabled
      then begin
        DBEBANCO.Clear;
        DBEAGENCIA.Clear;
        DBECC.Clear;
      end;
   end;
end;

procedure Tf_solRegistros.C_CLIENTEClick(Sender: TObject);
var
  qsql : string;
begin
  t_num.open;

  {gravando II}
  if qrSolRegii.asfloat <> 0
   then begin
     t_num.append;
     t_numEmpresa.asstring                := v_empresa;
     t_numFilial.asstring                 := v_filial;
     t_numProcesso.asstring               := qrSolRegref_ms.asstring;
     t_numNumerario.asstring              := 'II';
     t_numUsuario_Previsao.asstring       := v_usuario;
     t_numData_Previsao.asstring          := COPY(qrSolRegDT_REGISTRO_DI.AsString,1,2)+'/'+COPY(qrSolRegDT_REGISTRO_DI.AsString,3,2)+'/'+COPY(qrSolRegDT_REGISTRO_DI.AsString,5,4);
     t_numValor_Previsao.asstring         := qrSolRegii.asstring;
     t_numPrevisao_solicitada.AsString    := 'NÃO';
     t_numUsuario_Financeiro.AsString     := v_usuario;
     t_numData_Registro.asstring          := COPY(qrSolRegDT_REGISTRO_DI.AsString,1,2)+'/'+COPY(qrSolRegDT_REGISTRO_DI.AsString,3,2)+'/'+COPY(qrSolRegDT_REGISTRO_DI.AsString,5,4);
     t_numValor_Registrado.asstring       := qrSolRegii.asstring;
     t_numValor_Contabilizado.asstring    := qrSolRegii.asstring;
     t_numContabilizado.asstring          := 'SIM';
     t_numUsuario_Contablizado.asstring   := v_usuario;
     t_numConta_Corrente.asstring         := '0';
     t_numCodigo_mov.asstring             := '0';
     t_numImpdemfim.asstring              := 'Sim';
     t_numDetalhe.asstring                := 'Contabilizado pela Sol.Registro Nº '+ qrSolRegcodigo.asstring;
     t_numDocsis.asstring                 := qrSolRegcodigo.asstring;
     t_numContabilizado_cliente.asinteger :=1;
     t_num.post;
   end;
   
  {gravando IPI}
  if qrSolRegipi.asfloat <> 0
   then begin
     t_num.append;
     t_numEmpresa.asstring                := v_empresa;
     t_numFilial.asstring                 := v_filial;
     t_numProcesso.asstring               := qrSolRegref_ms.asstring;
     t_numNumerario.asstring              := 'IPI';
     t_numUsuario_Previsao.asstring       := v_usuario;
     t_numData_Previsao.asstring          := COPY(qrSolRegDT_REGISTRO_DI.AsString,1,2)+'/'+COPY(qrSolRegDT_REGISTRO_DI.AsString,3,2)+'/'+COPY(qrSolRegDT_REGISTRO_DI.AsString,5,4);
     t_numValor_Previsao.asstring         := qrSolRegipi.asstring;
     t_numPrevisao_solicitada.AsString    := 'NÃO';
     t_numUsuario_Financeiro.AsString     := v_usuario;
     t_numData_Registro.asstring          := COPY(qrSolRegDT_REGISTRO_DI.AsString,1,2)+'/'+COPY(qrSolRegDT_REGISTRO_DI.AsString,3,2)+'/'+COPY(qrSolRegDT_REGISTRO_DI.AsString,5,4);
     t_numValor_Registrado.asstring       := qrSolRegipi.asstring;
     t_numValor_Contabilizado.asstring    := qrSolRegipi.asstring;
     t_numContabilizado.asstring          := 'SIM';
     t_numUsuario_Contablizado.asstring   := v_usuario;
     t_numConta_Corrente.asstring         := '0';
     t_numCodigo_mov.asstring             := '0';
     t_numImpdemfim.asstring              := 'Sim';
     t_numDetalhe.asstring                := 'Contabilizado pela Sol.Registro Nº '+ qrSolRegcodigo.asstring;
     t_numDocsis.asstring                 := qrSolRegcodigo.asstring;
     t_numContabilizado_cliente.asinteger := 1;
     t_num.post;
   end;

  {gravando TAXA}
  if qrSolRegtx_siscomex.asfloat <> 0
   then begin
     t_num.append;
     t_numEmpresa.asstring                := v_empresa;
     t_numFilial.asstring                 := v_filial;
     t_numProcesso.asstring               := qrSolRegref_ms.asstring;
     t_numNumerario.asstring              := 'TAXA';
     t_numUsuario_Previsao.asstring       := v_usuario;
     t_numData_Previsao.asstring          := COPY(qrSolRegDT_REGISTRO_DI.AsString,1,2)+'/'+COPY(qrSolRegDT_REGISTRO_DI.AsString,3,2)+'/'+COPY(qrSolRegDT_REGISTRO_DI.AsString,5,4);
     t_numValor_Previsao.asstring         := qrSolRegTX_SISCOMEX.asstring;
     t_numPrevisao_solicitada.AsString    := 'NÃO';
     t_numUsuario_Financeiro.AsString     := v_usuario;
     t_numData_Registro.asstring          := COPY(qrSolRegDT_REGISTRO_DI.AsString,1,2)+'/'+COPY(qrSolRegDT_REGISTRO_DI.AsString,3,2)+'/'+COPY(qrSolRegDT_REGISTRO_DI.AsString,5,4);
     t_numValor_Registrado.asstring       := qrSolRegTX_SISCOMEX.asstring;
     t_numValor_Contabilizado.asstring    := qrSolRegTX_SISCOMEX.asstring;
     t_numContabilizado.asstring          := 'SIM';
     t_numUsuario_Contablizado.asstring   := v_usuario;
     t_numConta_Corrente.asstring         := '0';
     t_numCodigo_mov.asstring             := '0';
     t_numImpdemfim.asstring              := 'Sim';
     t_numDetalhe.asstring                := 'Contabilizado pela Sol.Registro Nº '+ qrSolRegcodigo.asstring;
     t_numDocsis.asstring                 := qrSolRegcodigo.asstring;
     t_numContabilizado_cliente.asinteger := 1;
     t_num.post;
   end;

  {gravando pis}
  if qrSolRegpis_pasep.asfloat <> 0
   then begin
     t_num.append;
     t_numEmpresa.asstring                := v_empresa;
     t_numFilial.asstring                 := v_filial;
     t_numProcesso.asstring               := qrSolRegref_ms.asstring;
     t_numNumerario.asstring              := 'PP';
     t_numUsuario_Previsao.asstring       := v_usuario;
     t_numData_Previsao.asstring          := COPY(qrSolRegDT_REGISTRO_DI.AsString,1,2)+'/'+COPY(qrSolRegDT_REGISTRO_DI.AsString,3,2)+'/'+COPY(qrSolRegDT_REGISTRO_DI.AsString,5,4);
     t_numValor_Previsao.asstring         := qrSolRegpis_pasep.asstring;
     t_numPrevisao_solicitada.AsString    := 'NÃO';
     t_numUsuario_Financeiro.AsString     := v_usuario;
     t_numData_Registro.asstring          := COPY(qrSolRegDT_REGISTRO_DI.AsString,1,2)+'/'+COPY(qrSolRegDT_REGISTRO_DI.AsString,3,2)+'/'+COPY(qrSolRegDT_REGISTRO_DI.AsString,5,4);
     t_numValor_Registrado.asstring       := qrSolRegpis_pasep.asstring;
     t_numValor_Contabilizado.asstring    := qrSolRegpis_pasep.asstring;
     t_numContabilizado.asstring          := 'SIM';
     t_numUsuario_Contablizado.asstring   := v_usuario;
     t_numConta_Corrente.asstring         := '0';
     t_numCodigo_mov.asstring             := '0';
     t_numImpdemfim.asstring              := 'Sim';
     t_numDetalhe.asstring                := 'Contabilizado pela Sol.Registro Nº '+ qrSolRegcodigo.asstring;
     t_numDocsis.asstring                 := qrSolRegcodigo.asstring;
     t_numContabilizado_cliente.asinteger :=1;
     t_num.post;
   end;

  {gravando COFINS}
  if qrSolRegcofins.asfloat <> 0
   then begin
     t_num.append;
     t_numEmpresa.asstring                := v_empresa;
     t_numFilial.asstring                 := v_filial;
     t_numProcesso.asstring               := qrSolRegref_ms.asstring;
     t_numNumerario.asstring              := 'CF';
     t_numUsuario_Previsao.asstring       := v_usuario;
     t_numData_Previsao.asstring          := COPY(qrSolRegDT_REGISTRO_DI.AsString,1,2)+'/'+COPY(qrSolRegDT_REGISTRO_DI.AsString,3,2)+'/'+COPY(qrSolRegDT_REGISTRO_DI.AsString,5,4);
     t_numValor_Previsao.asstring         := qrSolRegCOFINS.asstring;
     t_numPrevisao_solicitada.AsString    := 'NÃO';
     t_numUsuario_Financeiro.AsString     := v_usuario;
     t_numData_Registro.asstring          := COPY(qrSolRegDT_REGISTRO_DI.AsString,1,2)+'/'+COPY(qrSolRegDT_REGISTRO_DI.AsString,3,2)+'/'+COPY(qrSolRegDT_REGISTRO_DI.AsString,5,4);
     t_numValor_Registrado.asstring       := qrSolRegCOFINS.asstring;
     t_numValor_Contabilizado.asstring    := qrSolRegCOFINS.asstring;
     t_numContabilizado.asstring          := 'SIM';
     t_numUsuario_Contablizado.asstring   := v_usuario;
     t_numConta_Corrente.asstring         := '0';
     t_numCodigo_mov.asstring             := '0';
     t_numImpdemfim.asstring              := 'Sim';
     t_numDetalhe.asstring                := 'Contabilizado pela Sol.Registro Nº '+ qrSolRegcodigo.asstring;
     t_numDocsis.asstring                 := qrSolRegcodigo.asstring;
     t_numContabilizado_cliente.asinteger := 1;
     t_num.post;
   end;

  if (qrSolRegcontabilizado_cliente_ICMS.asinteger = 1)
   then begin
     {gravando ICMS}
     if qrSolRegcofins.asfloat <> 0
      then begin
        t_num.append;
        t_numEmpresa.asstring                := v_empresa;
        t_numFilial.asstring                 := v_filial;
        t_numProcesso.asstring               := qrSolRegref_ms.asstring;
        t_numNumerario.asstring              := 'ICMS';
        t_numUsuario_Previsao.asstring       := v_usuario;
        t_numData_Previsao.asstring          := COPY(qrSolRegDT_REGISTRO_DI.AsString,1,2)+'/'+COPY(qrSolRegDT_REGISTRO_DI.AsString,3,2)+'/'+COPY(qrSolRegDT_REGISTRO_DI.AsString,5,4);
        t_numValor_Previsao.asstring         := qrSolRegICMS.asstring;
        t_numPrevisao_solicitada.AsString    := 'NÃO';
        t_numUsuario_Financeiro.AsString     := v_usuario;
        t_numData_Registro.asstring          := COPY(qrSolRegDT_REGISTRO_DI.AsString,1,2)+'/'+COPY(qrSolRegDT_REGISTRO_DI.AsString,3,2)+'/'+COPY(qrSolRegDT_REGISTRO_DI.AsString,5,4);
        t_numValor_Registrado.asstring       := qrSolRegICMS.asstring;
        t_numValor_Contabilizado.asstring    := qrSolRegICMS.asstring;
        t_numContabilizado.asstring          := 'SIM';
        t_numUsuario_Contablizado.asstring   := v_usuario;
        t_numConta_Corrente.asstring         := '0';
        t_numCodigo_mov.asstring             := '0';
        t_numImpdemfim.asstring              := 'Sim';
        t_numDetalhe.asstring                := 'Contabilizado pela Sol.Registro Nº '+ qrSolRegcodigo.asstring;
        t_numDocsis.asstring                 := qrSolRegcodigo.asstring;
        t_numContabilizado_cliente.asinteger :=1;
        t_num.post;
      end;

     {gravando FECP}
     if qrSolRegcofins.asfloat <> 0
      then begin
        t_num.append;
        t_numEmpresa.asstring                := v_empresa;
        t_numFilial.asstring                 := v_filial;
        t_numProcesso.asstring               := qrSolRegref_ms.asstring;
        t_numNumerario.asstring              := 'FECP';
        t_numUsuario_Previsao.asstring       := v_usuario;
        t_numData_Previsao.asstring          := COPY(qrSolRegDT_REGISTRO_DI.AsString,1,2)+'/'+COPY(qrSolRegDT_REGISTRO_DI.AsString,3,2)+'/'+COPY(qrSolRegDT_REGISTRO_DI.AsString,5,4);
        t_numValor_Previsao.asstring         := qrSolRegICMS_1.asstring;
        t_numPrevisao_solicitada.AsString    := 'NÃO';
        t_numUsuario_Financeiro.AsString     := v_usuario;
        t_numData_Registro.asstring          := COPY(qrSolRegDT_REGISTRO_DI.AsString,1,2)+'/'+COPY(qrSolRegDT_REGISTRO_DI.AsString,3,2)+'/'+COPY(qrSolRegDT_REGISTRO_DI.AsString,5,4);
        t_numValor_Registrado.asstring       := qrSolRegICMS_1.asstring;
        t_numValor_Contabilizado.asstring    := qrSolRegICMS_1.asstring;
        t_numContabilizado.asstring          := 'SIM';
        t_numUsuario_Contablizado.asstring   := v_usuario;
        t_numConta_Corrente.asstring         := '0';
        t_numCodigo_mov.asstring             := '0';
        t_numImpdemfim.asstring              := 'Sim';
        t_numDetalhe.asstring                := 'Contabilizado pela Sol.Registro Nº '+ qrSolRegcodigo.asstring;
        t_numDocsis.asstring                 := qrSolRegcodigo.asstring;
        t_numContabilizado_cliente.asinteger :=1;
        t_num.post;
      end;
   end;

  t_num.close;

  q_sqls.close;
  q_sqls.sql.clear;

  qsql := '';
  qsql := qsql+' INSERT INTO [MS2000].[dbo].[Creditos_Processos]     ';
  qsql := qsql+'            ([Empresa]                               ';
  qsql := qsql+'            ,[Filial]                                ';
  qsql := qsql+'            ,[Processo]                              ';
  qsql := qsql+'            ,[Credito]                               ';
  qsql := qsql+'            ,[Data_Credito]                          ';
  qsql := qsql+'            ,[Valor]                                 ';
  qsql := qsql+'            ,[Conta_Corrente]                        ';
  qsql := qsql+'            ,[Codigo_mov]                            ';
  qsql := qsql+'            ,[Contabilizado]                         ';
  qsql := qsql+'            ,[Impdemfim]                             ';
  qsql := qsql+'            ,[Contabilizado_cliente]                 ';
  qsql := qsql+'            ,[REG_numerarios]                        ';
  qsql := qsql+'            ,[Processo_FundoFIXO]                    ';
  qsql := qsql+'            ,[Detalhe]                               ';
  qsql := qsql+'            ,[Docsis])                               ';
  qsql := qsql+'                                                     ';
  qsql := qsql+' SELECT                                              ';
  qsql := qsql+'          Numerarios_Processos.Empresa               ';
  qsql := qsql+'        , Numerarios_Processos.Filial                ';
  qsql := qsql+'        , Numerarios_Processos.Processo              ';
  qsql := qsql+'        , Parametros_Contabilizacao.Credito          ';
  qsql := qsql+'        , Numerarios_Processos.Data_Registro         ';
  qsql := qsql+'        , Numerarios_Processos.Valor_Contabilizado   ';
  qsql := qsql+'        , Numerarios_Processos.Conta_Corrente        ';
  qsql := qsql+'        , Numerarios_Processos.Codigo_mov            ';
  qsql := qsql+'        , Numerarios_Processos.Contabilizado         ';
  qsql := qsql+'        , Numerarios_Processos.Impdemfim             ';
  qsql := qsql+'        , Numerarios_Processos.Contabilizado_cliente ';
  qsql := qsql+'        , Numerarios_Processos.REG                   ';
  qsql := qsql+'        , Numerarios_Processos.Processo_FundoFIXO    ';
  qsql := qsql+'        , Numerarios_Processos.Detalhe               ';
  qsql := qsql+'        , Numerarios_Processos.Docsis                ';
  qsql := qsql+' FROM         Parametros_Contabilizacao INNER JOIN   ';
  qsql := qsql+'                       Processos ON Parametros_Contabilizacao.Importador = Processos.Importador INNER JOIN               ';
  qsql := qsql+'                       Numerarios_Processos ON Parametros_Contabilizacao.Numerario = Numerarios_Processos.Numerario AND  ';
  qsql := qsql+'                       Processos.Codigo = Numerarios_Processos.Processo                                                  ';
  qsql := qsql+' WHERE     (Numerarios_Processos.Docsis = '+chr(39)+qrSolRegcodigo.asstring+chr(39)+')';

  q_sqls.sql.add(qsql);
  q_sqls.ExecSQL;

  q_sqls.close;
  q_sqls.sql.clear;

  qsql := '';
  qsql := qsql+'    update Numerarios_Processos set REG_creditos=Creditos_Processos.REG ';
  qsql := qsql+'FROM         Numerarios_Processos INNER JOIN  ';
  qsql := qsql+'                      Creditos_Processos ON Numerarios_Processos.REG = Creditos_Processos.REG_numerarios ';
  qsql := qsql+'WHERE     (Numerarios_Processos.Docsis = '+chr(39)+qrSolRegcodigo.asstring+chr(39)+')';

  q_sqls.sql.add(qsql);
  q_sqls.ExecSQL;

  f_mscomex.MSPGP(qrSolRegref_ms.asstring);
end;

procedure Tf_solRegistros.BuscaEmailNomeCompletoAutorizador;
var
  QryAux : TQuery;
begin
  try
    ZeraVariaveisAutorizador;

    QryAux := TQuery.Create(nil);
    QryAux.DatabaseName := 'DBNMSCOMEX';

    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('SELECT EMAIL, NOME_COMPLETO FROM USUARIOS WHERE USUARIO =:USUARIO ');
    QryAux.Params[0].Value := qrSolRegautorizador.AsString;

    QryAux.Open;

    EmailAutorizador        := QryAux.FieldByName('EMAIL').AsString;
    NomeCompletoAutorizador := QryAux.FieldByName('NOME_COMPLETO').AsString;
  finally
    QryAux.Free;
  end;
end;

procedure Tf_solRegistros.ZeraVariaveisAutorizador;
begin
  EmailAutorizador        := '';
  NomeCompletoAutorizador := '';
end;

procedure Tf_solRegistros.cbFiltClienteClick(Sender: TObject);
begin
  if cbFiltCliente.Checked
   then begin
     edFiltroCliente.Enabled := True;
     edFiltroCliente.SetFocus;

     pnlLocalizar.Top  := 20;
     pnlLocalizar.Left := 106;

     pnlLocalizar.Visible := True;
     pnlPrincipal.Enabled := False;

     q_Localizar.Open;
     edtLocalizar.SetFocus;
   end
   else begin
     edFiltroCliente.Clear;
     edFiltroCliente.Enabled := False;
   end;
end;

procedure Tf_solRegistros.edFiltroClienteChange(Sender: TObject);
begin
  if q_LocalizarNome_Grupo.AsString <> ''
   then edFiltroCliente.Text := q_LocalizarNome_Grupo.AsString;

  if q_LocalizarCodigo.AsString <> ''
   then CodigoCliente := q_LocalizarCodigo.AsString;

  if strtoint(v_nivel) < 5
   then AplicarFiltrosGrid('','')
   else AplicarFiltrosGrid(v_usuario,v_super);
end;

procedure Tf_solRegistros.btnOKClick(Sender: TObject);
begin
  pnlLocalizar.Visible := False;
  pnlPrincipal.Enabled := True;

  if q_LocalizarNome_Grupo.AsString <> ''
   then edFiltroCliente.Text := q_LocalizarNome_Grupo.AsString;

  if q_LocalizarCodigo.AsString <> ''
   then CodigoCliente := q_LocalizarCodigo.AsString;

  q_Localizar.Close;
  edtLocalizar.Text := '';
end;

procedure Tf_solRegistros.edtLocalizarChange(Sender: TObject);
begin
  q_Localizar.Filter := 'Nome_Grupo = '''+ uppercase(edtLocalizar.Text) +'*''';

  if (edtLocalizar.Text = '')
   then q_Localizar.Filtered := False
   else q_Localizar.Filtered := True;
end;

procedure Tf_solRegistros.AplicarFiltrosGrid(usu, sup : String);
begin
  qrSolReg.Close;
  qrSolReg.SQL.Clear;
  qrSolReg.SQL.Add('  SELECT     A.EMPRESA,                               ');
  qrSolReg.SQL.Add('             A.FILIAL,                                ');
  qrSolReg.SQL.Add('             A.CODIGO AS CODIGO,                      ');
  qrSolReg.SQL.Add('             A.DATA_REQUISICAO,                       ');
  qrSolReg.SQL.Add('             A.DATA_AUTORIZACAO,                      ');
  qrSolReg.SQL.Add('             A.STATUS,                                ');
  qrSolReg.SQL.Add('             A.SOLICITANTE,                           ');
  qrSolReg.SQL.Add('             A.AUTORIZADOR,                           ');
  qrSolReg.SQL.Add('             A.VALOR_CIF,                             ');
  qrSolReg.SQL.Add('             A.II,                                    ');
  qrSolReg.SQL.Add('             A.IPI,                                   ');
  qrSolReg.SQL.Add('             A.TX_SISCOMEX,                           ');
  qrSolReg.SQL.Add('             A.PIS_PASEP,                             ');
  qrSolReg.SQL.Add('             A.COFINS,                                ');
  qrSolReg.SQL.Add('             A.VALOR_TOTAL,                           ');
  qrSolReg.SQL.Add('             A.BASE_CALCULO,                          ');
  qrSolReg.SQL.Add('             A.ICMS,                                  ');
  qrSolReg.SQL.Add('             A.ICMS_1,                                ');
  qrSolReg.SQL.Add('             A.CLIENTE,                               ');
  qrSolReg.SQL.Add('             A.REF_MS,                                ');
  qrSolReg.SQL.Add('             A.EMBARCACAO,                            ');
  qrSolReg.SQL.Add('             A.BANCO,                                 ');
  qrSolReg.SQL.Add('             A.AGENCIA,                               ');
  qrSolReg.SQL.Add('             A.C_C,                                   ');
  qrSolReg.SQL.Add('             A.DECLARACAO,                            ');
  qrSolReg.SQL.Add('             A.DECLARACAO_C,                          ');
  qrSolReg.SQL.Add('             AR.DESCRICAO,                            ');
  qrSolReg.SQL.Add('             TIPODEC.CODIGO AS EXPR2,                 ');
  qrSolReg.SQL.Add('             TIPODEC.DESCRICAO AS EXPR3,              ');
  qrSolReg.SQL.Add('             TIPODEC.SIGLA,                           ');

  qrSolReg.SQL.Add('             CASE TIPODECC.DESCRICAO WHEN ''''        ');
  qrSolReg.SQL.Add('               THEN TIPODEC.DESCRICAO                 ');
  qrSolReg.SQL.Add('               ELSE TIPODECC.DESCRICAO                ');
  qrSolReg.SQL.Add('             END AS Expr1,                            ');

  qrSolReg.SQL.Add('             USU_SOL.NOME_COMPLETO,                   ');
  qrSolReg.SQL.Add('             PROCESSOS.IMPORTADOR,                    ');
  qrSolReg.SQL.Add('             USU_AUT.NOME_COMPLETO AS EXPR4,          ');
  qrSolReg.SQL.Add('             PROCESSOS.DT_REGISTRO_DI,                ');
  qrSolReg.SQL.Add('             A.CONTABILIZADO_CLIENTE,                 ');
  qrSolReg.SQL.Add('             A.CONTABILIZADO_CLIENTE_ICMS,            ');
  qrSolReg.SQL.Add('             USU_SOL.SUPERVISOR,                      ');
  qrSolReg.SQL.Add('             CP.DATA_CHEGADA_URF_CHEG                 ');

  qrSolReg.SQL.Add('FROM         AUTORIZACAO_REGISTROS AS A              INNER JOIN AUTORIZACAO_REG_STATUS AS AR            ');
  qrSolReg.SQL.Add('          ON A.STATUS             = AR.CODIGO        INNER JOIN TAB_TIPO_DECLARACAO    AS TIPODEC       ');
  qrSolReg.SQL.Add('          ON A.DECLARACAO         = TIPODEC.CODIGO   LEFT OUTER JOIN TAB_TIPO_DECLARACAO    AS TIPODECC ');
  qrSolReg.SQL.Add('          ON A.DECLARACAO_C       = TIPODECC.CODIGO  LEFT OUTER JOIN USUARIOS               AS USU_SOL  ');
  qrSolReg.SQL.Add('          ON A.SOLICITANTE        = USU_SOL.USUARIO  LEFT OUTER JOIN USUARIOS               AS USU_AUT  ');
  qrSolReg.SQL.Add('          ON A.AUTORIZADOR        = USU_AUT.USUARIO  LEFT OUTER JOIN PROCESSOS                          ');
  qrSolReg.SQL.Add('          ON A.REF_MS             = PROCESSOS.CODIGO LEFT OUTER JOIN Importadores_Agrupados AS IMP_A    ');
  qrSolReg.SQL.Add('          ON PROCESSOS.IMPORTADOR = IMP_A.Codigo     LEFT OUTER JOIN CONHECIMENTO_PROCESSO CP           ');
  qrSolReg.SQL.Add('          ON PROCESSOS.EMPRESA    = CP.EMPRESA AND                                                      ');
  qrSolReg.SQL.Add('             PROCESSOS.FILIAL     = CP.Filial  AND                                                      ');
  qrSolReg.SQL.Add('             PROCESSOS.CODIGO     = CP.PROCESSO                                                         ');

  if cbVerTodos.Checked
   then begin
     qrSolReg.SQL.Add(' WHERE A.STATUS LIKE ' + QuotedStr('%'));

     DBLookupComboBox2.Enabled := False;
   end
   else begin
     DBLookupComboBox2.Enabled := True;

     qrSolReg.SQL.Add(' WHERE A.STATUS LIKE ' + QuotedStr(qrListaStatusCodigo.AsString));
   end;

  if (usu <> '') and (sup <> '')
   then begin
     qrSolReg.SQL.Add(' AND (A.SOLICITANTE LIKE ' + QuotedStr(usu));
     qrSolReg.SQL.Add('  OR USU_SOL.SUPERVISOR LIKE ' + QuotedStr(sup) + ')');
   end;

  if (cbFiltrar.Checked and (Length(edtFiltro.Text) >= 8))
   then qrSolReg.SQL.Add(' AND A.REF_MS = ' + QuotedStr(edtFiltro.Text));

  if cbFiltCliente.Checked
   then begin
     {Código Cliente}
     if (Length(CodigoCliente) = 3)
      then qrSolReg.SQL.Add(' AND IMP_A.Codigo = ' + QuotedStr(CodigoCliente));

     {Código Cliente Agrupado}
     if (Length(CodigoCliente) = 4)
      then qrSolReg.SQL.Add(' AND IMP_A.Codigo_AGRUPADO = ' + QuotedStr(CodigoCliente));
   end;

  if cbFiltValor.Checked
   then begin
     case comboFiltValor.ItemIndex of
       0 : qrSolReg.SQL.Add(' AND CAST(A.VALOR_TOTAL AS MONEY) <=   ''1000,00'' ');
       1 : qrSolReg.SQL.Add(' AND CAST(A.VALOR_TOTAL AS MONEY) <=   ''5000,00'' ');
       2 : qrSolReg.SQL.Add(' AND CAST(A.VALOR_TOTAL AS MONEY) <=  ''10000,00'' ');
       3 : qrSolReg.SQL.Add(' AND CAST(A.VALOR_TOTAL AS MONEY) <=  ''20000,00'' ');
       4 : qrSolReg.SQL.Add(' AND CAST(A.VALOR_TOTAL AS MONEY) <=  ''30000,00'' ');
       5 : qrSolReg.SQL.Add(' AND CAST(A.VALOR_TOTAL AS MONEY) <=  ''40000,00'' ');
       6 : qrSolReg.SQL.Add(' AND CAST(A.VALOR_TOTAL AS MONEY) <=  ''50000,00'' ');
       7 : qrSolReg.SQL.Add(' AND CAST(A.VALOR_TOTAL AS MONEY) <= ''100000,00'' ');
     end;
   end;

  if cbFiltSolicitante.Checked
   then qrSolReg.SQL.Add(' AND A.SOLICITANTE = ' + QuotedStr(qrListaUsuariosUSUARIO.AsString));

  qrSolReg.SQL.Add('ORDER BY A.DATA_REQUISICAO, A.DATA_AUTORIZACAO, CODIGO');

  qrSolReg.Open;
end;

procedure Tf_solRegistros.dbcbFiltroSolicitanteClick(Sender: TObject);
begin
  if (dbcbFiltroSolicitante.KeyValue <> '')
   then begin
     if (StrToInt(v_nivel) < 5)
      then AplicarFiltrosGrid('','')
      else AplicarFiltrosGrid(v_usuario, v_super);
   end;
end;

procedure Tf_solRegistros.cbFiltSolicitanteClick(Sender: TObject);
begin
  if cbFiltSolicitante.Checked
   then begin
     dbcbFiltroSolicitante.Enabled := True;
     dbcbFiltroSolicitante.SetFocus;

     qrListaUsuarios.Open;
   end
   else begin
     qrListaUsuarios.Close;

     dbcbFiltroSolicitante.KeyValue := '';
     dbcbFiltroSolicitante.Enabled := False;

     if (StrToInt(v_nivel) < 5)
      then AplicarFiltrosGrid('','')
      else AplicarFiltrosGrid(v_usuario, v_super);
   end;
end;

procedure Tf_solRegistros.cbFiltValorClick(Sender: TObject);
begin
  if cbFiltValor.Checked
   then begin
     comboFiltValor.Enabled := True;
     comboFiltValor.SetFocus;
   end
   else begin
     comboFiltValor.ItemIndex := -1;
     comboFiltValor.Enabled := False;

     if (StrToInt(v_nivel) < 5)
      then AplicarFiltrosGrid('','')
      else AplicarFiltrosGrid(v_usuario, v_super);
   end;
end;

procedure Tf_solRegistros.comboFiltValorChange(Sender: TObject);
begin
  if (comboFiltValor.ItemIndex >= 0)
   then begin
     if (StrToInt(v_nivel) < 5)
      then AplicarFiltrosGrid('','')
      else AplicarFiltrosGrid(v_usuario, v_super);
   end;
end;

procedure Tf_solRegistros.CalculaSaldo;{calcula e mostra o saldo dos processos na tela}
var
  Creditos, Numerarios, Saldo : Real;
begin
  try
    q_Saldo.ParamByName('EMP').Value := qrSolRegEmpresa.AsString;
    q_Saldo.ParamByName('FIL').Value := qrSolRegFilial.AsString;
    q_Saldo.ParamByName('COD').Value := qrSolRegREF_MS.AsString;
    q_Saldo.Open;

    Creditos   := 0;
    Numerarios := 0;

    if q_Saldo.RecordCount > 0
     then begin
       while not q_Saldo.Eof do
        begin
          if (q_SaldoCREDITOS.AsFloat <> 0)
           then Creditos := Creditos + q_SaldoCREDITOS.AsFloat;

          if (q_SaldoNUMERARIOS.AsFloat <> 0)
           then Numerarios := Numerarios + q_SaldoNUMERARIOS.AsFloat;

          q_Saldo.Next;
        end;
     end;

    Saldo := Creditos - Numerarios;
    Saldo := strtofloat(floattostrf(Saldo,fffixed	,10,2));

    if (Saldo = 0)
     then begin
       edSaldo.Text := FormatFloat('#,##0.00',Saldo);

       lblSaldo.Caption    := 'Saldo Zerado';
       lblSaldo.Font.Color := clWhite;
     end
     else begin
       if (Saldo < 0)
        then begin
          edSaldo.Text := FormatFloat('#,##0.00',Saldo*(-1));

          lblSaldo.Caption    := 'Saldo a Pagar';
          lblSaldo.Font.Color := clRed;
        end
        else begin
          edSaldo.Text := FormatFloat('#,##0.00',Saldo);

          lblSaldo.Caption    := 'Saldo a Receber';
          lblSaldo.Font.Color := clGreen;
        end;
     end;
  finally
    q_Saldo.Close;
  end;
end;

procedure Tf_solRegistros.qrSolRegAfterOpen(DataSet: TDataSet);
begin
  if qrSolReg.RecordCount = 0
   then begin
     edSaldo.Clear;
     lblSaldo.Caption := '';
   end;
end;

procedure Tf_solRegistros.DBGrid1TitleClick(Column: TColumn);
var
  Indice : Integer;
  Ordem : String;
begin
  if Indice <> Column.Index
   then Ordem := ''
   else begin
     if Length(Ordem) > 0
      then Ordem := ''
      else Ordem := 'ASC';
   end;

  with qrSolReg do
  begin
    close;
    SQL[SQL.Count - 1] := 'ORDER BY ' + Column.FieldName + ' ' + Ordem;
    Open;
  end;
  
  Indice := Column.Index;
end;

procedure Tf_solRegistros.btnSairClick(Sender: TObject);
begin
  pnlLocalizar.Visible := False;
  pnlPrincipal.Enabled := True;

  q_Localizar.Close;
  cbFiltCliente.Checked := False;

  CodigoCliente := '';
  edtLocalizar.Text    := '';
  edFiltroCliente.Text := '';
end;

procedure Tf_solRegistros.IncluiEmailAuto(CodAPL, Titulo, Assunto, Anexo,
  De, Para, Cco, Cc, Body: String);
begin
  try
    qryEmail_Auto.ParamByName('Programa').Value := CodAPL;
    qryEmail_Auto.ParamByName('Assunto').Value  := Assunto;
    qryEmail_Auto.ParamByName('Titulo').Value   := Titulo;
    qryEmail_Auto.ParamByName('De').Value       := De;
    qryEmail_Auto.ParamByName('Para').Value     := Para;
    qryEmail_Auto.ParamByName('Cc').Value       := Cc;
    qryEmail_Auto.ParamByName('Cco').Value      := Cco;
    qryEmail_Auto.ParamByName('Body').Value     := Body;
    qryEmail_Auto.ParamByName('Anexo').Value    := Anexo;
    qryEmail_Auto.ParamByName('HTML').Value     := 1;
    qryEmail_Auto.ParamByName('Data').Value     := Date();
    qryEmail_Auto.ParamByName('Hora').Value     := Now();
    qryEmail_Auto.ExecSQL;
  except
  end;
end;

procedure Tf_solRegistros.PreencheBancoAgenciaContaCliente;
var
  QryAux : TQuery;
begin
  QryAux := TQuery.Create(nil);
  QryAux.DatabaseName := 'DBNMSCOMEX';

  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('SELECT Banco, Agencia, Conta_Corrente FROM Autorizacao_Registros_Contas_Clientes ARCC INNER JOIN Processos P ON ARCC.Importador = P.Importador ');
    QryAux.SQL.Add(' WHERE P.Codigo = :p0 ');
    QryAux.Params[0].Value := tbSolRegREF_MS.AsString;
    QryAux.Open;

    if QryAux.RecordCount > 0
     then begin
       if MessageDlg('Deseja preencher as informações de Banco, Agência e Conta Corrente de acordo com as parametrizadas para esse importador ?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
        then begin
          tbSolReg.Edit;
          tbSolRegBanco.value   := QryAux.FieldByName('Banco').AsString;
          tbSolRegAgencia.value := QryAux.FieldByName('Agencia').AsString;
          tbSolRegC_C.value     := QryAux.FieldByName('Conta_Corrente').AsString;
        end;
     end;
  finally
    QryAux.Free;
  end;
end;
end.



