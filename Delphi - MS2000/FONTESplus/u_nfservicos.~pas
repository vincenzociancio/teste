unit u_nfservicos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, ExtCtrls, Grids, DBGrids, Mask, DBCtrls, Buttons, FileCtrl, Printers,
  ComCtrls, shellapi, ActnList, ImgList;

type
  Tf_nfservicos = class(TForm)
    tbParamNFS: TTable;
    dsParamNFS: TDataSource;
    tbNFS: TTable;
    dsNFS: TDataSource;
    tbNFSDet: TTable;
    dsNFSDet: TDataSource;
    tbNFSDetEmpresa: TStringField;
    tbNFSDetFilial: TStringField;
    tbNFSDetNFiscal: TStringField;
    tbNFSDetreg: TAutoIncField;
    tbNFSDetUnidade: TStringField;
    tbNFSDetQuantidade: TStringField;
    tbNFSDetDescricao: TStringField;
    tbNFSDetValor_unitario: TFloatField;
    tbNFSDetValor_total: TFloatField;
    tbParamNFSEmpresa: TStringField;
    tbParamNFSFilial: TStringField;
    tbParamNFSUltima_NF: TStringField;
    tbParamNFSNat_Serv: TStringField;
    tbParamNFSCodigo_Fiscal: TStringField;
    tbParamNFSPercentual_ISS: TFloatField;
    tbParamNFSPercentual_IRRF: TFloatField;
    t_contratos: TTable;
    ds_contratos: TDataSource;
    t_contratosEmpresa: TStringField;
    t_contratosFilial: TStringField;
    t_contratosImportador: TStringField;
    t_contratosContrato: TStringField;
    t_contratosDescricao: TStringField;
    t_contratosVigencia_inicial: TDateTimeField;
    t_contratosVigencia_final: TDateTimeField;
    t_contratosTipo: TStringField;
    t_conhecimento: TTable;
    ds_conhecimento: TDataSource;
    t_tipodoccarga: TTable;
    ds_tipodoccarga: TDataSource;
    t_tipodoccargavia: TStringField;
    t_tipodoccargacodigo: TStringField;
    t_tipodoccargadescricao: TStringField;
    t_tipodocchegada: TTable;
    ds_tipodocchegada: TDataSource;
    t_tipodocchegadacodigo: TStringField;
    t_tipodocchegadadescricao: TStringField;
    psd_printer: TPrinterSetupDialog;
    pnlMenu: TPanel;
    btnNovo: TBitBtn;
    btnExcluir: TBitBtn;
    btnLocalizar: TBitBtn;
    btnImprimir: TBitBtn;
    pnlPrincipal: TPanel;
    pnlP1: TPanel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    dbEdtNatureza: TDBEdit;
    dbEdtCodFiscal: TDBEdit;
    dbEdtCondPag: TDBEdit;
    dbEdtProc: TDBEdit;
    dbEdtDtEmissao: TDBEdit;
    pnlP3: TPanel;
    DBGrid1: TDBGrid;
    pnlP4: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    me_iss: TMaskEdit;
    me_subtotal: TMaskEdit;
    DBEdit14: TDBEdit;
    pnlP5: TPanel;
    Label13: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    me_irrf: TMaskEdit;
    DBEdit15: TDBEdit;
    pnlP2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    pnlLocNF: TPanel;
    Panel9: TPanel;
    pnlProcSNF: TPanel;
    Panel11: TPanel;
    DBGrid2: TDBGrid;
    btnOkPNFS: TBitBtn;
    qrProSNF: TQuery;
    dsProSNF: TDataSource;
    Label27: TLabel;
    qrParam: TQuery;
    qrParamEmpresa: TStringField;
    qrParamFilial: TStringField;
    dsParam: TDataSource;
    qrImport: TQuery;
    qrDelNFSDet: TQuery;
    qrNum: TQuery;
    qrNumNumerario: TStringField;
    qrNumValor_Registrado: TFloatField;
    qrProc: TQuery;
    qrProcCod: TStringField;
    qrProcCodCli: TStringField;
    qrProcImportador: TStringField;
    qrProcNR_DECLARACAO_IMP: TStringField;
    btnAlterar: TBitBtn;
    dbLcbNFS: TDBLookupComboBox;
    dbEdtNFS: TDBEdit;
    qrLocais: TQuery;
    qrLocaisDescricao: TStringField;
    qrProcContrato: TStringField;
    qrProcLocal_Inventario: TStringField;
    btnPSNF: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    btnItens: TBitBtn;
    qrTestaNFS: TQuery;
    qrTestaNFSNFiscal: TStringField;
    qrAltNFSDet: TQuery;
    pnlItens: TPanel;
    Panel2: TPanel;
    dbGrdItens: TDBGrid;
    dbEdtUnid: TDBEdit;
    dbEdtQuant: TDBEdit;
    dbEdtDisc: TDBEdit;
    dbEdtUnit: TDBEdit;
    dbEdtVal: TDBEdit;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    btnNovoItens: TBitBtn;
    btnAlterarItens: TBitBtn;
    btnExcluirItens: TBitBtn;
    btnSalvarItens: TBitBtn;
    btnCancelarItens: TBitBtn;
    btnFecharItens: TBitBtn;
    qrSomaItens: TQuery;
    qrSomaItensSomaValor_total: TFloatField;
    alNF: TActionList;
    SomaItens: TAction;
    dbEdtValTot: TDBEdit;
    btnHabCanc: TBitBtn;
    ilHabCanc: TImageList;
    lblHabCanc: TLabel;
    Label33: TLabel;
    HabCanc: TAction;
    dbEdtValServico: TDBEdit;
    Panel1: TPanel;
    qr_emp: TQuery;
    qr_empempresa: TStringField;
    qr_empfilial: TStringField;
    qr_empRazao_Social: TStringField;
    qr_empDescricao: TStringField;
    ds_qremp: TDataSource;
    DBGrid3: TDBGrid;
    dbEdtDtRecebe: TDBEdit;
    Label34: TLabel;
    qrImportNFS: TQuery;
    p_locpro: TPanel;
    Panel4: TPanel;
    bb_oklocpro: TBitBtn;
    bb_cancellocpro: TBitBtn;
    qlocpro: TQuery;
    dslocpro: TDataSource;
    DBGrid4: TDBGrid;
    btnProc: TBitBtn;
    pnlProc: TPanel;
    Panel5: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label37: TLabel;
    me_dini: TMaskEdit;
    me_dfin: TMaskEdit;
    L_dataini: TLabel;
    qproc: TQuery;
    qprocNFiscal: TStringField;
    qprocProcesso: TStringField;
    qprocData_emissao: TDateTimeField;
    qprocData_Recebimento: TDateTimeField;
    qNFS01: TQuery;
    qNFS02: TQuery;
    Label36: TLabel;
    me_pcc: TMaskEdit;
    Label38: TLabel;
    DBEdit12: TDBEdit;
    tbParamNFSPercentual_PCC: TFloatField;
    t_conhecimentoEmpresa: TStringField;
    t_conhecimentoFilial: TStringField;
    t_conhecimentoProcesso: TStringField;
    t_conhecimentoVia: TStringField;
    t_conhecimentoMultimodal: TIntegerField;
    t_conhecimentoPLaca: TStringField;
    t_conhecimentoLacre: TStringField;
    t_conhecimentoEmbarcacao: TStringField;
    t_conhecimentoTransportador: TStringField;
    t_conhecimentoTipodoccarga: TStringField;
    t_conhecimentoNumerodoccarga: TStringField;
    t_conhecimentoNumeromaster: TStringField;
    t_conhecimentoLocal: TStringField;
    t_conhecimentoData: TDateTimeField;
    t_conhecimentoUtilizacao: TStringField;
    t_conhecimentoTipomanifesto: TStringField;
    t_conhecimentoNumeromanifesto: TStringField;
    t_conhecimentoCodigo_Presenca_Carga: TStringField;
    t_conhecimentoPeso_Bruto: TFloatField;
    t_conhecimentoPeso_Liquido: TFloatField;
    t_conhecimentoAgente: TStringField;
    t_conhecimentoPais_Procedencia: TStringField;
    t_conhecimentoURF_chegada: TStringField;
    t_conhecimentoData_Chegada_URF_Cheg: TDateTimeField;
    t_conhecimentoURF_Despacho: TStringField;
    t_conhecimentoData_Chegada_URF_Desp: TDateTimeField;
    t_conhecimentoRecinto_Alfandegario: TStringField;
    t_conhecimentoSetor_Alfandegario: TStringField;
    t_conhecimentoArmazem: TStringField;
    t_conhecimentoOperacao_FUNDAP: TIntegerField;
    t_conhecimentoContratante_OPCAMBIAL: TStringField;
    t_conhecimentoMoeda_Frete: TStringField;
    t_conhecimentoFrete_Prepaid: TFloatField;
    t_conhecimentoFrete_Collect: TFloatField;
    t_conhecimentoFrete_Ter_Nac: TFloatField;
    t_conhecimentoMoeda_Seguro: TStringField;
    t_conhecimentoValor_Seguro: TFloatField;
    t_conhecimentoMoeda_Despesas_ate_FOB: TStringField;
    t_conhecimentoValor_Despesas_ate_FOB: TFloatField;
    t_conhecimentoUnidade: TStringField;
    t_conhecimentoQuantidade: TFloatField;
    tbNFSEmpresa: TStringField;
    tbNFSFilial: TStringField;
    tbNFSNFiscal: TStringField;
    tbNFSProcesso: TStringField;
    tbNFSImportador: TStringField;
    tbNFSRazao_Social: TStringField;
    tbNFSCGC_CPF: TStringField;
    tbNFSEndereco: TStringField;
    tbNFSNumero: TStringField;
    tbNFSComplemento: TStringField;
    tbNFSBairro: TStringField;
    tbNFSCidade: TStringField;
    tbNFSCEP: TStringField;
    tbNFSUF: TStringField;
    tbNFSEstado: TStringField;
    tbNFSInscricao_Estadual: TStringField;
    tbNFSCond_Pagto: TStringField;
    tbNFSNat_Serv: TStringField;
    tbNFSCodigo_Fiscal: TStringField;
    tbNFSData_emissao: TDateTimeField;
    tbNFSPercentual_ISS: TFloatField;
    tbNFSPercentual_IRRF: TFloatField;
    tbNFSPercentual_PCC: TFloatField;
    tbNFSVatotnota: TFloatField;
    tbNFSCancelada: TIntegerField;
    tbNFSValservico: TFloatField;
    tbNFSData_Recebimento: TDateTimeField;
    qrImportNFSEmpresa: TStringField;
    qrImportNFSFilial: TStringField;
    qrImportNFSCodigo: TStringField;
    qrImportNFSREG: TAutoIncField;
    qrImportNFSRazao_Social: TStringField;
    qrImportNFSPais: TStringField;
    qrImportNFSCNPJ_CPF_COMPLETO: TStringField;
    qrImportNFSCGC_CPF: TStringField;
    qrImportNFSEndereco: TStringField;
    qrImportNFSNumero: TStringField;
    qrImportNFSComplemento: TStringField;
    qrImportNFSBairro: TStringField;
    qrImportNFSCidade: TStringField;
    qrImportNFSCEP: TStringField;
    qrImportNFSUF: TStringField;
    qrImportNFSEstado: TStringField;
    qrImportNFSInscricao_Estadual: TStringField;
    qrImportNFSTelefone: TStringField;
    qlocproNFiscal: TStringField;
    qlocproData_emissao: TDateTimeField;
    qlocproProcesso: TStringField;
    qlocproRazao_Social: TStringField;
    qlocproVatotnota: TFloatField;
    p_nova: TPanel;
    Label39: TLabel;
    Panel6: TPanel;
    b_nova: TBitBtn;
    BitBtn4: TBitBtn;
    me_novanf: TMaskEdit;
    B_IMPRPS: TBitBtn;
    Label40: TLabel;
    DBEdit13: TDBEdit;
    tbNFSLOTE_RPS: TStringField;
    tbNFSInscricao_Municipal: TStringField;
    qrImportNFSInscricao_Municipal: TStringField;
    tbNFSEMAIL: TStringField;
    Label41: TLabel;
    DBEdit16: TDBEdit;
    qrImportNFSEMAIL: TStringField;
    Label42: TLabel;
    DBEdit17: TDBEdit;
    tbNFSTelefone: TStringField;
    qrProcFATURA_ISS: TIntegerField;
    qrImportEmpresa: TStringField;
    qrImportFilial: TStringField;
    qrImportCodigo: TStringField;
    qrImportRazao_Social: TStringField;
    qrImportPais: TStringField;
    qrImportCNPJ_CPF_COMPLETO: TStringField;
    qrImportCGC_CPF: TStringField;
    qrImportTipo_Importador: TStringField;
    qrImportEndereco: TStringField;
    qrImportNumero: TStringField;
    qrImportComplemento: TStringField;
    qrImportBairro: TStringField;
    qrImportCidade: TStringField;
    qrImportCEP: TStringField;
    qrImportUF: TStringField;
    qrImportEstado: TStringField;
    qrImportInscricao_Estadual: TStringField;
    qrImportBanco: TStringField;
    qrImportAgencia: TStringField;
    qrImportConta_Corrente: TStringField;
    qrImportConta_Corrente_Registro: TIntegerField;
    qrImportConta_Corrente_Deposito: TIntegerField;
    qrImportlink: TStringField;
    qrImportCAE: TStringField;
    qrImportTelefone: TStringField;
    qrImportAtivo: TIntegerField;
    qrImportAcesso_WEB_MS: TIntegerField;
    qrImportAcesso_WEB_CLI: TIntegerField;
    qrImportAcesso_WEB_REC: TIntegerField;
    qrImportBASE_ICMS: TIntegerField;
    qrImportMOV_REPETRO: TIntegerField;
    qrImportInscricao_Municipal: TStringField;
    qrImportEMAIL: TStringField;
    qrImportFATURA_ISS: TIntegerField;
    qrImportEMAIL_MONITORACAO: TStringField;
    b_varios: TBitBtn;
    p_varios: TPanel;
    Label43: TLabel;
    ME_PROVARIOS: TMaskEdit;
    Panel7: TPanel;
    DBGrid6: TDBGrid;
    Panel3: TPanel;
    exclui_varios: TBitBtn;
    fecha_varios: TBitBtn;
    qupprod: TQuery;
    qselprod: TQuery;
    QNFPROD: TQuery;
    DS_NFPROD: TDataSource;
    QNFPRODNFISCAL: TStringField;
    QNFPRODPROCESSO: TStringField;
    QNFPRODEMPRESA: TStringField;
    QNFPRODTIPO_PROCESSO: TStringField;
    QNFPRODNR_DECLARACAO_IMP: TStringField;
    QNFPRODCodigo_Cliente: TStringField;
    b_prodetalhe: TButton;
    qselprodprocesso: TStringField;
    qselprodnfiscal: TStringField;
    qselprodcancelada: TIntegerField;
    q_Aux: TQuery;
    T_processos: TTable;
    T_processosEmpresa: TStringField;
    T_processosFilial: TStringField;
    T_processosCodigo: TStringField;
    T_processosaguardando_medicao: TIntegerField;
    DBEdit18: TDBEdit;
    Label44: TLabel;
    tbNFSNFiscal_e: TStringField;
    gbLocalizar: TGroupBox;
    edtLoc: TMaskEdit;
    rbRps: TRadioButton;
    rbProcesso: TRadioButton;
    rbNfe: TRadioButton;
    DBGrid5: TDBGrid;
    Label35: TLabel;
    Label45: TLabel;
    GroupBox1: TGroupBox;
    ed_loc: TMaskEdit;
    rbRps1: TRadioButton;
    rbNfe1: TRadioButton;
    dbedRps: TDBEdit;
    dsNfse: TDataSource;
    T_Rps: TTable;
    BitBtn3: TBitBtn;
    T_RpsNFiscal: TStringField;
    T_RpsNFiscal_e: TStringField;
    T_RpsEmpresa: TStringField;
    T_RpsFilial: TStringField;
    btnFecharPnlRps: TBitBtn;
    btnAlterarPnlRps: TBitBtn;
    btnSalvarPnlRps: TBitBtn;
    qryNfse: TQuery;
    qryNfseEmpresa: TStringField;
    qryNfseFilial: TStringField;
    qryNfseNFiscal: TStringField;
    qryNfseNFiscal_e: TStringField;
    edNfse: TEdit;
    T_processosStatus: TStringField;
    qAtuProcessoVisaoGeral: TQuery;
    T_processosFaturado: TIntegerField;
    qlocproCancelada: TIntegerField;
    qlocproNFiscal_e: TStringField;
    T_processosFechado: TIntegerField;
    btnAdicionarMedicao: TBitBtn;
    pnl_Medicoes: TPanel;
    lblImportador: TLabel;
    Panel10: TPanel;
    dbgridItensMedicao: TDBGrid;
    dbgridMedicao: TDBGrid;
    Label26: TLabel;
    dsControle_Medicao: TDataSource;
    qrControle_Medicao_Itens: TQuery;
    qrControle_Medicao_ItensCodigo: TIntegerField;
    qrControle_Medicao_ItensCodigo_Controle: TIntegerField;
    qrControle_Medicao_ItensProcesso: TStringField;
    qrControle_Medicao_ItensRazao_Social: TStringField;
    qrControle_Medicao_ItensImportador: TStringField;
    dsControle_Medicao_Itens: TDataSource;
    btnFecharPnlMedicao: TBitBtn;
    qrControle_Medicao: TQuery;
    qrControle_MedicaoCodigo: TIntegerField;
    qrControle_MedicaoImportador_Agrupado: TStringField;
    qrControle_MedicaoLocal_Inventario: TStringField;
    qrControle_MedicaoData_Medicao: TDateTimeField;
    qrControle_MedicaoStatus: TIntegerField;
    qrControle_MedicaoNome_Grupo: TStringField;
    qrProcData: TDateTimeField;
    procedure dbEdtProcKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtNaturezaKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtCondPagKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtCodFiscalKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtDtEmissaoKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbNFSDetAfterPost(DataSet: TDataSet);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnLocCancClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnOkPNFSClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbEdtNFSKeyPress(Sender: TObject; var Key: Char);
    procedure btnAlterarClick(Sender: TObject);
    procedure tbNFSBeforeEdit(DataSet: TDataSet);
    procedure tbNFSAfterPost(DataSet: TDataSet);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnSalvarClick(Sender: TObject);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure tbNFSProcessoSetText(Sender: TField; const Text: String);
    procedure tbNFSNFiscalSetText(Sender: TField; const Text: String);
    procedure btnItensClick(Sender: TObject);
    procedure btnFecharItensClick(Sender: TObject);
    procedure btnNovoItensClick(Sender: TObject);
    procedure btnAlterarItensClick(Sender: TObject);
    procedure btnExcluirItensClick(Sender: TObject);
    procedure btnSalvarItensClick(Sender: TObject);
    procedure btnCancelarItensClick(Sender: TObject);
    procedure tbNFSDetAfterOpen(DataSet: TDataSet);
    procedure dbEdtUnidKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtQuantKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtUnitKeyPress(Sender: TObject; var Key: Char);
    procedure tbNFSDetQuantidadeSetText(Sender: TField;
      const Text: String);
    procedure tbNFSDetValor_unitarioSetText(Sender: TField;
      const Text: String);
    procedure SomaItensExecute(Sender: TObject);
    procedure tbNFSAfterScroll(DataSet: TDataSet);
    procedure dbEdtDtEmissaoChange(Sender: TObject);
    procedure tbNFSPercentual_ISSSetText(Sender: TField;
      const Text: String);
    procedure tbNFSPercentual_IRRFSetText(Sender: TField;
      const Text: String);
    procedure btnHabCancClick(Sender: TObject);
    procedure HabCancExecute(Sender: TObject);
    procedure tbNFSBeforeDelete(DataSet: TDataSet);
    procedure tbNFSDetBeforeDelete(DataSet: TDataSet);
    procedure qr_empAfterScroll(DataSet: TDataSet);
    procedure bb_cancellocproClick(Sender: TObject);
    procedure me_processoChange(Sender: TObject);
    procedure btnProcClick(Sender: TObject);
    procedure pnlProcExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure b_novaClick(Sender: TObject);
    procedure p_novaExit(Sender: TObject);
    procedure B_IMPRPSClick(Sender: TObject);
    procedure b_variosClick(Sender: TObject);
    procedure fecha_variosClick(Sender: TObject);
    procedure exclui_variosClick(Sender: TObject);
    procedure ME_PROVARIOSChange(Sender: TObject);
    procedure b_prodetalheClick(Sender: TObject);
    procedure bb_oklocproClick(Sender: TObject);
    procedure ed_locChange(Sender: TObject);
    procedure dbedNfeKeyPress(Sender: TObject; var Key: Char);
    procedure rbRps1Click(Sender: TObject);
    procedure btnAlterarPnlRpsClick(Sender: TObject);
    procedure btnSalvarPnlRpsClick(Sender: TObject);
    procedure ed_locKeyPress(Sender: TObject; var Key: Char);
    procedure qryNfseAfterScroll(DataSet: TDataSet);
    procedure rbProcessoClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnPSNFClick(Sender: TObject);
    procedure qlocproCanceladaGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btnAdicionarMedicaoClick(Sender: TObject);
    procedure qrControle_MedicaoAfterScroll(DataSet: TDataSet);
    procedure btnFecharPnlMedicaoClick(Sender: TObject);
    procedure qrControle_MedicaoStatusGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure dbgridMedicaoDblClick(Sender: TObject);
  private
    { Private declarations }
    Inclusao     : Boolean;
    QtdProcessos : Integer;
    Processos    : Array[0..300] of String;
    MedicaoIncluida : String;

    procedure LancaFollowFaturado;

    procedure AtualizaGridMedicao;

    procedure AtualizaGridMedicaoItens;

    procedure AtualizaGridPnlNfiscalRPS;

    function NfeJaCadastrada : Boolean;

    procedure AtualizaProcessoVisaoGeral(Processo: String);

    function ProcessoNaoRecebidoPeloFinanceiro: Boolean;

    procedure SetaStatusFinalizadoMedicao(NFiscal, CodigoMedicao : String);
  public
    { Public declarations }
  end;

var
  f_nfservicos: Tf_nfservicos;
  vEmp, vFil, vNFS, vEmp2, vFil2 : String;
  vFATURA_ISS : integer;

implementation

uses U_MSCOMEX, U_RPS, U_RPSvarios;

{$R *.DFM}

procedure Tf_nfservicos.dbEdtProcKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13
   Then dbEdtNatureza.SetFocus;
end;

procedure Tf_nfservicos.dbEdtNaturezaKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13
   Then dbEdtCodFiscal.SetFocus;
end;

procedure Tf_nfservicos.dbEdtCondPagKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13
   Then dbedit1.SetFocus;
end;

procedure Tf_nfservicos.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13
   Then dbedit10.SetFocus;
end;

procedure Tf_nfservicos.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13
   Then dbedit11.SetFocus;
end;

procedure Tf_nfservicos.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13
   Then dbedit2.SetFocus;
end;

procedure Tf_nfservicos.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13
   Then dbedit3.SetFocus;
end;

procedure Tf_nfservicos.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13
   Then dbedit4.SetFocus;
end;

procedure Tf_nfservicos.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13
   Then dbedit5.SetFocus;
end;

procedure Tf_nfservicos.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13
   Then dbedit6.SetFocus;
end;

procedure Tf_nfservicos.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13
   Then dbedit7.SetFocus;
end;

procedure Tf_nfservicos.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13
   Then dbedit8.SetFocus;
end;

procedure Tf_nfservicos.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13
   Then dbedit9.SetFocus;
end;

procedure Tf_nfservicos.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13
   Then dbgrid1.SetFocus;

  If Not(Key In ['0'..'9',#8])
   Then Key := #0;
end;

procedure Tf_nfservicos.dbEdtCodFiscalKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13
   Then dbEdtDtEmissao.SetFocus;
end;

procedure Tf_nfservicos.dbEdtDtEmissaoKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13
   Then dbEdtCondPag.SetFocus;
end;

procedure Tf_nfservicos.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_nfservicos.FormClose(Sender: TObject;
  var Action: TCloseAction);
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
   
  f_mscomex.NotasFiscaisdeServios1.Enabled := True;
  Action := caFree;
  f_nfservicos := nil;
end;

procedure Tf_nfservicos.tbNFSDetAfterPost(DataSet: TDataSet);
var
  atu : Boolean; 
begin
  atu := tbNFS.State In [dsInsert, dsEdit];

  If Not atu
   Then tbNFS.Edit;

  SomaItens.Execute;

  If Not atu
   Then tbNFS.Post;

  logusu('P','Alterou o Item da Nota Fiscal de Serviço: '+tbNFSNFiscal.AsString);
end;

procedure Tf_nfservicos.btnImprimirClick(Sender: TObject);
const
  totItens = 25;
var
  vTextoNota : TextFile;
  vTextoBat  : TextFile;
  contItens  : Integer;
  qDir  : String;
  vQtd  : String;
  vValU : String;
  vValT : String;
  qImp  : String;
begin
  {gerar diretorio e arquivo de nf de serviços}
  qDir := 'nfserv' + vEmp2;

  if not DirectoryExists(qDir)
   then if not CreateDir(qDir)
         then MessageDlg('NÃO FOI POSSÍVEL CRIAR DIRETÓRIO!', mtInformation, [mbOK], 0);

  AssignFile(vTextoNota, qDir +'\'+ tbNFSNFiscal.AsString +'.txt');
  Rewrite(vTextoNota);

  Writeln(vTextoNota, '  ');
  Writeln(vTextoNota, '  ');
  Writeln(vTextoNota, '  ');
  Writeln(vTextoNota, '  ');
  Writeln(vTextoNota, '  ');
  Writeln(vTextoNota, '  ');

  if v_filial='RJOx'
   then begin
     Writeln(vTextoNota, '  ');
     Writeln(vTextoNota, '  ');
   end;

{   Writeln(vTextoNota, '         1         2         3         4         5         6         7         8         9        10        11        12        13        14');
    Writeln(vTextoNota, '12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');}

  Writeln(vTextoNota, StringOfChar(' ', 109) + Copy(tbNFSNat_Serv.AsString, 1, 30));
  Writeln(vTextoNota, StringOfChar(' ', 101) + Copy(tbNFSCodigo_Fiscal.AsString, 1, 45));
  Writeln(vTextoNota, StringOfChar(' ', 103) + DateToStr(tbNFSData_emissao.AsDateTime));
  Writeln(vTextoNota, '  ');
  Writeln(vTextoNota, '  ');
  Writeln(vTextoNota, '          '           + tbNFSRazao_Social.AsString);
  Writeln(vTextoNota, '             '        + Trim(tbNFSEndereco.AsString) + ',' + Trim(tbNFSNumero.AsString) + ' ' + Trim(tbNFSComplemento.AsString) + ' ' + Trim(tbNFSBairro.AsString));
  Writeln(vTextoNota, '             '        + Copy(tbNFSCidade.AsString    + StringOfChar(' ', 68), 1, 68) + '          ' + Copy(tbNFSEstado.AsString + StringOfChar(' ', 25), 1, 25) + '        ' + tbNFSCEP.AsString);
  Writeln(vTextoNota, '               '      + tbNFSCGC_CPF.AsString        + StringOfChar(' ', 62) + tbNFSInscricao_Estadual.AsString);
  Writeln(vTextoNota, '                    ' + tbNFSCond_Pagto.AsString);
  Writeln(vTextoNota, '  ');
  Writeln(vTextoNota, '  ');
  Writeln(vTextoNota, '  ');

  contItens := 0;
  tbNFSDet.First;

  while not tbNFSDet.Eof do
   begin
     Inc(contItens);

     vQtd  := tbNFSDetQuantidade.AsString;
     vValU := tbNFSDetValor_unitario.AsString;
     vValT := tbNFSDetValor_total.AsString;

     if vQtd = ''
      then vQtd := '0';

     if vValU = ''
      then vValU  := '0';

     if vValT = ''
      then vValT := '0';

     if StrToFloat(vQtd)  = 0
      then vQtd  := '    ';

     if StrToFloat(vValU) = 0
      then vValU := '    '
      else vValU := FormatFloat('###,###,##0.00', StrToFloat(vValU));

     if StrToFloat(vValT) = 0
      then vValT := '    '
      else vValT := FormatFloat('###,###,##0.00', StrToFloat(vValT));

     Writeln(vTextoNota, '  ' + Copy(tbNFSDetUnidade.AsString + '           ', 1, 8) + '   ' + Copy(vQtd +'           ', 1, 8) +' '+ Copy(tbNFSDetDescricao.AsString + StringOfChar(' ', 85), 1, 85) +'   '+ Copy(vValU + StringOfChar(' ', 15), 1, 15) + '   ' + Trim(Copy(vValT + StringOfChar(' ', 16), 1, 16)));

     tbNFSDet.Next;
   end;

  {imprime linhas em branco}
  while contItens < totItens do
   begin
     Inc(contItens);
     Writeln(vTextoNota, ' ');
   end;

//   Writeln(vTextoNota, '         1         2         3         4         5         6         7         8         9        10        11        12        13        14');
//   Writeln(vTextoNota, '12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');

  Writeln(vTextoNota, '  ');

  Writeln(vTextoNota, StringOfChar(' ', 126) + FormatFloat('###,###,##0.00', tbNFSValServico.AsFloat));
  Writeln(vTextoNota, ' ');

  Writeln(vTextoNota, StringOfChar(' ', 126) + me_iss.Text);
  Writeln(vTextoNota, ' ');

  Writeln(vTextoNota, StringOfChar(' ', 69) + FormatFloat('0', tbNFSPercentual_ISS.AsFloat) + StringOfChar(' ', 56) + me_subtotal.Text);
  Writeln(vTextoNota, ' ');

  Writeln(vTextoNota, StringOfChar(' ', 69) + FormatFloat('0.0', tbNFSPercentual_IRRF.AsFloat) + StringOfChar(' ', 54) + me_irrf.Text);
  Writeln(vTextoNota, ' ');

  Writeln(vTextoNota, StringOfChar(' ', 68) + FormatFloat('0.00', tbNFSPercentual_pcc.AsFloat) + StringOfChar(' ', 54) + me_pcc.Text);
  Writeln(vTextoNota, ' ');

  Writeln(vTextoNota, StringOfChar(' ', 126) + dbEdtValTot.Text);

  Writeln(vTextoNota, ' ');
  Writeln(vTextoNota, ' ');
  Writeln(vTextoNota, ' ');
  Writeln(vTextoNota, ' ');
  Writeln(vTextoNota, ' ');
  Writeln(vTextoNota, ' ');
  Writeln(vTextoNota, ' ');
  Writeln(vTextoNota, ' ');

  Writeln(vTextoNota, '  ');
  Writeln(vTextoNota, '  ');

  CloseFile(vTextoNota);

  qimp := 'lpt1';

  if MessageDlg('Confirma Impressão?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
   then begin
     if MessageDlg('Click em SIM para Impressora Local e NÃO para Impressora em Rede?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
      then qImp := 'lpt1'
      else qImp := 'lpt2';

     AssignFile(vTextoBat,tbNFSnfiscal.AsString+'.bat');
     Rewrite(vTextoBat);
     Writeln(vTextoBat,'copy '+qDir+'\'+tbNFSnfiscal.AsString+'.txt '+qImp);
     Writeln(vTextoBat,' ' );
     CloseFile(vTextoBat);
     ShellExecute(Handle, 'Open', PChar(tbNFSnfiscal.AsString+'.bat'), nil, nil, 0);
   end;

  tbParamNFS.Edit;
  tbParamNFSNat_Serv.AsString        := tbNFSNat_Serv.AsString;
  tbParamNFSCodigo_Fiscal.AsString   := tbNFSCodigo_Fiscal.AsString;
  tbParamNFSPercentual_ISS.AsString  := tbNFSPercentual_ISS.AsString;
  tbParamNFSPercentual_IRRF.AsString := tbNFSPercentual_IRRF.AsString;
  tbParamNFSPercentual_PCC.AsString  := tbNFSPercentual_PCC.AsString;
  tbParamNFS.Post;
end;

procedure Tf_nfservicos.btnNovoClick(Sender: TObject);
var
  i : Integer;
begin
  p_nova.Visible := true;

  if vNFS = ''
   then begin
     vNFS := IntToStr(tbParamNFSUltima_NF.AsInteger + 1);

     for i:=1 To 6 - Length(vNFS) do
       vNFS := '0' + vNFS;
   end
   else begin
     vNFS := IntToStr(strtoint(vNFS) + 1);

     for i:=1 to 6 - Length(vNFS) do
       vNFS := '0' + vNFS;
   end;

  me_novanf.text := vNFS;

  me_novanf.SetFocus();
end;

procedure Tf_nfservicos.btnLocalizarClick(Sender: TObject);
begin
  p_locpro.left        := 48;
  p_locpro.Visible     := True;
  pnlPrincipal.Enabled := False;
  pnlMenu.Enabled      := False;

  edtLoc.Clear;
  edtLoc.SetFocus;
end;

procedure Tf_nfservicos.btnLocCancClick(Sender: TObject);
begin
  pnlLocNF.Visible     := False;
  pnlPrincipal.Enabled := True;
  pnlMenu.Enabled      := True;
end;

procedure Tf_nfservicos.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Confirma exclusão desta Nota Fiscal?', mtConfirmation, [mbYes, mbNo], 0) = mrNo
   then Exit;

  with qrDelNFSDet do
   begin
     Params[2].AsString := tbNFSNFiscal.AsString;
     ExecSQL;
   end;

  tbNFS.Delete;
  dbLcbNFS.KeyValue := tbNFSNFiscal.AsString;
end;

procedure Tf_nfservicos.btnOkPNFSClick(Sender: TObject);
begin
  qrProSNF.Close;
  
  pnlProcSNF.Visible   := False;
  pnlPrincipal.Enabled := True;
  pnlMenu.Enabled      := True;
end;

procedure Tf_nfservicos.FormCreate(Sender: TObject);
begin
  qr_emp.open;

  dbLcbNFS.Left := 32;
  dbEdtNFS.Left := 32;

  with pnlLocNF do
   begin
     Left   := 169;
     Top    := 119;
     Height := 382;
   end;

  with pnlProcSNF do
   begin
     Left   := 105;
     Top    := 40;
     Height := 358;
   end;

  with pnlItens do
   begin
     Left   := 41;
     Top    := 94;
     Height := 249;
   end;

end;

procedure Tf_nfservicos.dbEdtNFSKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13
   then dbEdtProc.SetFocus;

  if not(Key in ['0'..'9',#8])
   then Key := #0;
end;

procedure Tf_nfservicos.btnAlterarClick(Sender: TObject);
begin
  dbLcbNFS.Visible := False;
  dbLcbNFS.Enabled := False;
  dbEdtNFS.Visible := True;
  dbEdtNFS.Enabled := True;

  vNFS := tbNFSNFiscal.AsString;
  tbNFS.Edit;

  dbEdtProc.SetFocus;
end;

procedure Tf_nfservicos.tbNFSBeforeEdit(DataSet: TDataSet);
begin
  pnlP2.Enabled := True;
  pnlP4.Enabled := True;
  pnlP5.Enabled := True;

  dbEdtProc.Enabled      := True;
  dbEdtNatureza.Enabled  := True;
  dbEdtCodFiscal.Enabled := True;
  dbEdtDtRecebe.Enabled  := True;
  dbEdtCondPag.Enabled   := True;

  btnNovo.Enabled      := False;
  btnAlterar.Enabled   := False;
  btnExcluir.Enabled   := False;
  btnHabCanc.Enabled   := False;
  btnItens.Enabled     := False;
  btnLocalizar.Enabled := False;
  btnPSNF.Enabled      := False;
  btnImprimir.Enabled  := False;
  btnSair.Enabled      := False;

  btnSalvar.Enabled   := True;
  btnCancelar.Enabled := True;
end;

procedure Tf_nfservicos.tbNFSAfterPost(DataSet: TDataSet);
begin
  pnlP2.Enabled := False;
  pnlP4.Enabled := False;
  pnlP5.Enabled := False;

  dbEdtProc.Enabled      := False;
  dbEdtNatureza.Enabled  := False;
  dbEdtCodFiscal.Enabled := False;
  dbEdtDtRecebe.Enabled  := False;
  dbEdtCondPag.Enabled   := False;

  HabCanc.Execute;

  btnNovo.Enabled      := True;
  btnHabCanc.Enabled   := True;
  btnLocalizar.Enabled := True;
  btnPSNF.Enabled      := True;
  btnImprimir.Enabled  := True;
  btnSair.Enabled      := True;

  btnSalvar.Enabled   := False;
  btnCancelar.Enabled := False;
  dbLcbNFS.KeyValue   := tbNFSNFiscal.AsString;
  
  f_mscomex.MSPGP(tbNFSPROCESSO.ASSTRING);
  logusu('P','Alterou Nota Fiscal de Serviço: '+tbNFSNFiscal.AsString);
end;

procedure Tf_nfservicos.btnCancelarClick(Sender: TObject);
begin
  MedicaoIncluida := '';

  Inclusao := False;

  tbNFS.Cancel;

  dbLcbNFS.Visible := True;
  dbLcbNFS.Enabled := True;
  dbEdtNFS.Visible := False;
  dbEdtNFS.Enabled := False;

  dbLcbNFS.SetFocus;
end;

procedure Tf_nfservicos.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure Tf_nfservicos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if tbNFSDet.State in [dsInsert, dsEdit]
   then begin
     MessageDlg('O Item da Nota Fiscal está em edição!', mtInformation, [mbOk], 0);
     CanClose := False;
     Exit;
   end
   else CanClose := True;

  if tbNFS.State In [dsInsert, dsEdit]
   then begin
     MessageDlg('A Nota Fiscal está em edição!', mtInformation, [mbOk], 0);
     CanClose := False;
   end
   else CanClose := True;
end;

procedure Tf_nfservicos.btnSalvarClick(Sender: TObject);
begin
  tbNFS.edit;
  tbnfslote_rps.asstring := '';

  try
    if tbNFSImportador.AsString = ''
     then tbNFSImportador.AsString := '0000';

    tbNFS.Post;
  except
    on E: Exception do
     begin
       MessageDlg('Erro na gravação da Nota Fiscal!'+#13#10+#13#10+'MSG: '+E.Message, mtError, [mbOk], 0);
       Exit;
     end;
  end;

  tbParamNFS.Edit;

  with qrTestaNFS do
   begin
     Params[2].AsString := ' ';
     Open;
     tbParamNFSUltima_NF.AsString := qrTestaNFSNFiscal.AsString;
     Close;
   end;

  with qrProc do
   begin
     close;
     Params[2].AsString := qnfprodProcesso.AsString;
     Open;
   end;

  vFATURA_ISS := qrProcFATURA_ISS.asinteger;

  tbParamNFSNat_Serv.AsString      := tbNFSNat_Serv.AsString;
  tbParamNFSCodigo_Fiscal.AsString := tbNFSCodigo_Fiscal.AsString;

  if vfatura_iss = 1
   then tbParamNFSPercentual_ISS.AsString := tbNFSPercentual_ISS.AsString;

  tbParamNFSPercentual_IRRF.AsString := tbNFSPercentual_IRRF.AsString;
  tbParamNFS.Post;

  if Inclusao
   then begin
     LancaFollowFaturado;

     if MedicaoIncluida <> ''
      then SetaStatusFinalizadoMedicao(tbNFSNFiscal.AsString, MedicaoIncluida);
   end;

  MedicaoIncluida := '';

  dbLcbNFS.Visible  := True;
  dbLcbNFS.Enabled  := True;
  dbEdtNFS.Visible  := False;
  dbEdtNFS.Enabled  := False;
  dbLcbNFS.KeyValue := tbNFSNFiscal.AsString;

  f_mscomex.qNFS01.Params[0].AsString := tbNFSprocesso.asstring;
  f_mscomex.qNFS02.Params[0].AsString := tbNFSprocesso.asstring;
  btnItens.SetFocus;
end;

procedure Tf_nfservicos.DBEdit14KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0'..'9',',','.',#8])
   then Key := #0;

  if Key = '.'
   then Key := ',';

  if (Key = ',') and (Pos(',', DBEdit14.Text) > 0)
   then Key := #0;
end;

procedure Tf_nfservicos.DBEdit15KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0'..'9',',','.',#8])
   then Key := #0;

  if Key = '.'
   then Key := ',';

  if (Key = ',') and (Pos(',', DBEdit15.Text) > 0)
   then Key := #0;
end;

procedure Tf_nfservicos.tbNFSProcessoSetText(Sender: TField;
  const Text: String);
var
  qLinha : String;
  vok : boolean;
  vCNPJ, vimportador, vrazao, vend, vnum, vcom, vbai, vcid, vcep, vuf, vest, vinsc, vinscm, vemail, vtel, vmsg : String;
begin
  tbNFSProcesso.AsString := Text;

  if Text = ''
   then Exit;

  vFATURA_ISS := 0;

  with qrProc do
   begin
     Close;
     Params[2].AsString := tbNFSProcesso.AsString;
     Open;

     if RecordCount = 0
      then begin
        MessageDlg('Processo não cadastrado!', mtInformation, [mbOk], 0);
        dbEdtProc.SetFocus;
        Close;
        Exit;
      end;
   end;

  if (qrprocData.AsDateTime > StrToDate('01/07/2012'))
   then begin
     if Inclusao and ProcessoNaoRecebidoPeloFinanceiro
      then begin
        MessageDlg('Processo pendente de Follow "Processo recebido para emissão de Nota Fiscal", operação cancelada.', mtInformation,[mbOk], 0);
        btnCancelarClick(Sender);
        Exit;
      end;
   end;

  vFATURA_ISS := qrProcFATURA_ISS.asinteger;

  qrImportNFS.Close;
  qrImportNFS.Params[2].AsString := qrProcImportador.AsString;
  qrImportNFS.Open;
  vok := false;

  if qrImportNFS.RecordCount <> 0
   then begin
     if (qrProcImportador.AsString = '344')
      then if (qrProcContrato.AsString         = '002') and
              (qrProcLocal_Inventario.AsString = '002')
            then qrImportNFS.Next;

     while (Not qrImportNFS.Eof) and (vok = false) do
      begin
        vCNPJ       := qrImportNFSCNPJ_CPF_COMPLETO.AsString;
        vimportador := qrImportNFSCodigo.AsString;
        vrazao      := qrImportNFSRazao_Social.AsString;
        vCNPJ       := Copy(vCNPJ,1,2)+'.'+Copy(vCNPJ,3,3)+'.'+Copy(vCNPJ,6,3)+'/'+Copy(vCNPJ,9,4)+'-'+Copy(vCNPJ,13,2);
        vend        := qrImportNFSEndereco.AsString;
        vnum        := qrImportNFSNumero.AsString;
        vcom        := qrImportNFSComplemento.AsString;
        vbai        := qrImportNFSBairro.AsString;
        vcid        := qrImportNFSCidade.AsString;
        vcep        := qrImportNFSCEP.AsString;
        vuf         := qrImportNFSUF.AsString;
        vest        := qrImportNFSEstado.AsString;
        vinsc       := qrImportNFSInscricao_Estadual.AsString;
        vinscm      := qrImportNFSInscricao_municipal.AsString;
        vtel        := qrImportNFStelefone.AsString;
        vemail      := qrImportNFSemail.AsString;

        vmsg := v_usuario+', Deseja Utilizar estes parâmetros para esta Nota Fiscal?'+#13#10+#13#10;
        vmsg := vmsg+'Razão Social: '+vrazao+#13#10;
        vmsg := vmsg+'CNPJ: '+vCNPJ+#13#10;
        vmsg := vmsg+'Endereço: '+vend+','+vnum+#13#10;
        vmsg := vmsg+'Complemento: '+vcom+#13#10;
        vmsg := vmsg+'Bairro: '+vbai+#13#10;
        vmsg := vmsg+'Cidade: '+vcid+#13#10;
        vmsg := vmsg+'Cep: '+vcep+#13#10;
        vmsg := vmsg+'UF: '+vuf+#13#10;
        vmsg := vmsg+'Estado: '+vest+#13#10;
        vmsg := vmsg+'Inscrição Estadual: '+vinsc+#13#10;
        vmsg := vmsg+'Inscrição Municipal: '+vinscm+#13#10;
        vmsg := vmsg+'Telefone: '+vtel+#13#10;
        vmsg := vmsg+'Email: '+vemail+#13#10+#13#10;

        if MessageDlg(vmsg, mtConfirmation, [mbYes, mbNo], 0) = mrYes
         then begin
           vok := true;

           tbNFSImportador.AsString          := vImportador;
           tbNFSRazao_Social.AsString        := vrazao;
           tbNFSCGC_CPF.AsString             := vcnpj;
           tbNFSEndereco.AsString            := vend;
           tbNFSNumero.AsString              := vnum;
           tbNFSComplemento.AsString         := vcom;
           tbNFSBairro.AsString              := vbai;
           tbNFSCidade.AsString              := vcid;
           tbNFSCEP.AsString                 := vcep;
           tbNFSUF.AsString                  := vuf;
           tbNFSEstado.AsString              := vest;
           tbNFSInscricao_Estadual.AsString  := vinsc;
           tbNFSInscricao_Municipal.AsString := vinscm;
           tbNFSemail.AsString               := vemail;
           tbNFStelefone.AsString            := vtel;
         end;

        qrImportNFS.Next;
      end;
   end;

  if not vok
   then begin
     with qrImport do
      begin
        Params[2].AsString := qrProcImportador.AsString;
        Open;

        if RecordCount <> 0
         then begin
           vCNPJ                             := qrImportCNPJ_CPF_COMPLETO.AsString;
           tbNFSImportador.AsString          := qrImportCodigo.AsString;
           tbNFSRazao_Social.AsString        := qrImportRazao_Social.AsString;
           tbNFSCGC_CPF.AsString             := Copy(vCNPJ,1,2)+'.'+Copy(vCNPJ,3,3)+'.'+Copy(vCNPJ,6,3)+'/'+Copy(vCNPJ,9,4)+'-'+Copy(vCNPJ,13,2);
           tbNFSEndereco.AsString            := qrImportEndereco.AsString;
           tbNFSNumero.AsString              := qrImportNumero.AsString;
           tbNFSComplemento.AsString         := qrImportComplemento.AsString;
           tbNFSBairro.AsString              := qrImportBairro.AsString;
           tbNFSCidade.AsString              := qrImportCidade.AsString;
           tbNFSCEP.AsString                 := qrImportCEP.AsString;
           tbNFSUF.AsString                  := qrImportUF.AsString;
           tbNFSEstado.AsString              := qrImportEstado.AsString;
           tbNFSInscricao_Estadual.AsString  := qrImportInscricao_Estadual.AsString;
           tbNFSInscricao_Municipal.AsString := qrImportInscricao_Municipal.AsString;
           tbNFSemail.AsString               := qrImportemail.AsString;
           tbNFStelefone.AsString            := qrImporttelefone.AsString;
         end;

        Close;
      end;
   end;

  tbNFSDet.Close;
  
  with qrDelNFSDet do
   begin
     Params[2].AsString := tbNFSNFiscal.AsString;
     ExecSQL;
   end;

  tbNFSDet.Open;

  with qrNum do
   begin
     Params[2].AsString := tbNFSProcesso.AsString;
     Open;

     if qrNum.RecordCount <> 0
      then begin
        tbNFSDet.Insert;
        tbNFSDetDescricao.AsString     := 'DESEMBARAÇO ADUANEIRO';//'HONORARIOS';
        tbNFSDetQuantidade.AsString    := '1';
        tbNFSDetValor_unitario.AsFloat := qrNumValor_Registrado.AsFloat;
        tbNFSDetValor_total.AsFloat    := qrNumValor_Registrado.AsFloat;
        tbNFSDet.Post;
      end;

     Close;
   end;

  with tbNFSDet do
   begin
     Insert;
     FieldByName('Descricao').Value := 'REF.MS.: '+ qrProcCod.AsString +' - REF.EMPRESA: '+ qrProcCodCli.AsString;
     Post;
   end;

  with qrLocais do
   begin
     Params[2].AsString := qrProcImportador.AsString;
     Params[3].AsString := qrProcContrato.AsString;
     Params[4].AsString := qrProcLocal_Inventario.AsString;
     Open;

     if RecordCount <> 0
      then with tbNFSDet do
            begin
              Insert;
              FieldByName('Descricao').Value := 'DESTINACAO: '+ qrLocaisDescricao.AsString;
              Post;
            end;

     Close;
   end;

  if qrProcNR_DECLARACAO_IMP.AsString <> ''
   then with tbNFSDet do
         begin
           Insert;
           FieldByName('Descricao').Value := 'DI: '+qrProcNR_DECLARACAO_IMP.AsString;
           Post;
         end;

  qLinha := '';

  if t_tipodoccargadescricao.AsString <> ''
   then qlinha := trim(t_tipodoccargadescricao.AsString);
   
  if t_conhecimentoNumerodoccarga.AsString <> ''
   then qlinha := qlinha +' : '+t_conhecimentoNumerodoccarga.AsString;

  if t_conhecimentoNumeromaster.AsString <> ''
   then qlinha := qlinha +'  MASTER: '+t_conhecimentonumeromaster.AsString;

  if qLinha <> ''
   then with tbNFSDet do
         begin
           Insert;
           FieldByName('Descricao').Value := qLinha;
           Post;
         end;

  tbNFSDet.close;
  tbNFSDet.open;
  qrProc.Close;
end;

procedure Tf_nfservicos.tbNFSNFiscalSetText(Sender: TField;
  const Text: String);
var
  novaNF: String;
begin
  novaNF := Text;

  if dbEdtNFS.Text = ''
   then begin
     MessageDlg('Informe o número da Nota Fiscal!', mtWarning, [mbOk], 0);
     tbNFSNFiscal.AsString := vNFS;
     dbEdtNFS.SetFocus;
     Exit;
   end;

  {***** LOCALIZAR A NOTA PARA SABER SE JÁ EXISTE *****}
  with qrTestaNFS do
   begin
     Params[2].AsString := vNFS;
     Open;

     if Locate('NFiscal', novaNF, [])
      then begin
        MessageDlg('Nota Fiscal já existe!', mtWarning, [mbOk], 0);
        tbNFSNFiscal.AsString := vNFS;
        dbEdtNFS.SetFocus;
      end
      else begin
        tbNFSDet.Close;

        with qrAltNFSDet do
         begin
           Params[0].AsString := novaNF;
           Params[3].AsString := tbNFSNFiscal.AsString;
           ExecSQL;
         end;

        tbNFSNFiscal.AsString := novaNF;
        tbNFSDet.Open;
        dbEdtProc.SetFocus;
      end;

     Close;
   end;
end;

procedure Tf_nfservicos.btnItensClick(Sender: TObject);
begin
  pnlItens.left := 9;
  
  pnlItens.Visible     := True;
  pnlPrincipal.Enabled := False;
  pnlMenu.Enabled      := False;

  dbGrdItens.SetFocus;
end;

procedure Tf_nfservicos.btnFecharItensClick(Sender: TObject);
begin
  pnlItens.Visible     := False;
  pnlPrincipal.Enabled := True;
  pnlMenu.Enabled      := True;
end;

procedure Tf_nfservicos.btnNovoItensClick(Sender: TObject);
begin
  dbGrdItens.Enabled := False;
  dbEdtUnid.Enabled  := True;
  dbEdtQuant.Enabled := True;
  dbEdtDisc.Enabled  := True;
  dbEdtUnit.Enabled  := True;

  btnNovoItens.Enabled     := False;
  btnAlterarItens.Enabled  := False;
  btnExcluirItens.Enabled  := False;
  btnFecharItens.Enabled   := False;
  btnSalvarItens.Enabled   := True;
  btnCancelarItens.Enabled := True;

  tbNFSDet.Append;
  dbEdtUnid.SetFocus;
end;

procedure Tf_nfservicos.btnAlterarItensClick(Sender: TObject);
begin
  dbGrdItens.Enabled := False;
  dbEdtUnid.Enabled  := True;
  dbEdtQuant.Enabled := True;
  dbEdtDisc.Enabled  := True;
  dbEdtUnit.Enabled  := True;

  btnNovoItens.Enabled     := False;
  btnAlterarItens.Enabled  := False;
  btnExcluirItens.Enabled  := False;
  btnFecharItens.Enabled   := False;
  btnSalvarItens.Enabled   := True;
  btnCancelarItens.Enabled := True;

  tbNFSDet.Edit;
  dbEdtUnid.SetFocus;
end;

procedure Tf_nfservicos.btnExcluirItensClick(Sender: TObject);
begin
  if MessageDlg('Confirma exclusão do Item da Nota Fiscal?', mtConfirmation, [mbYes, mbNo], 0) = mrNo
   then Exit;

  tbNFSDet.Delete;
end;

procedure Tf_nfservicos.btnSalvarItensClick(Sender: TObject);
begin
  tbNFSDet.Post;

  dbGrdItens.Enabled := True;
  dbEdtUnid.Enabled  := False;
  dbEdtQuant.Enabled := False;
  dbEdtDisc.Enabled  := False;
  dbEdtUnit.Enabled  := False;

  btnNovoItens.Enabled     := True;
  btnAlterarItens.Enabled  := True;
  btnExcluirItens.Enabled  := True;
  btnFecharItens.Enabled   := True;
  btnSalvarItens.Enabled   := False;
  btnCancelarItens.Enabled := False;

  dbGrdItens.SetFocus;
end;

procedure Tf_nfservicos.btnCancelarItensClick(Sender: TObject);
begin
  tbNFSDet.Cancel;

  dbGrdItens.Enabled := True;
  dbEdtUnid.Enabled  := False;
  dbEdtQuant.Enabled := False;
  dbEdtDisc.Enabled  := False;
  dbEdtUnit.Enabled  := False;

  btnNovoItens.Enabled     := True;
  btnAlterarItens.Enabled  := True;
  btnExcluirItens.Enabled  := True;
  btnFecharItens.Enabled   := True;
  btnSalvarItens.Enabled   := False;
  btnCancelarItens.Enabled := False;

  dbGrdItens.SetFocus;
end;

procedure Tf_nfservicos.tbNFSDetAfterOpen(DataSet: TDataSet);
begin
  if tbNFSDet.RecordCount <> 0
   then begin
     btnAlterarItens.Enabled := True;
     btnExcluirItens.Enabled := True;
     btnImprimir.Enabled     := True;
   end
   else begin
     btnAlterarItens.Enabled := False;
     btnExcluirItens.Enabled := False;
     btnImprimir.Enabled     := False;
   end
end;

procedure Tf_nfservicos.dbEdtUnidKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0'..'9',#8])
   then Key := #0;
end;

procedure Tf_nfservicos.dbEdtQuantKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0'..'9',#8])
   then Key := #0;
end;

procedure Tf_nfservicos.dbEdtUnitKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0'..'9',',','.',#8])
   then Key := #0;
   
  if Key = '.'
   then Key := ',';

  if (Key = ',') and (Pos(',', dbEdtUnit.Text) > 0)
   then Key := #0;
end;

procedure Tf_nfservicos.tbNFSDetQuantidadeSetText(Sender: TField;
  const Text: String);
begin
  tbNFSDetQuantidade.AsString := Text;

  if tbNFSDet.State in [dsInsert, dsEdit]
   then tbNFSDetValor_total.AsFloat := tbNFSDetValor_unitario.AsFloat * tbNFSDetQuantidade.AsFloat;
end;

procedure Tf_nfservicos.tbNFSDetValor_unitarioSetText(Sender: TField;
  const Text: String);
begin
  tbNFSDetValor_unitario.AsFloat := StrToFloat(Text);

  if tbNFSDet.State in [dsInsert, dsEdit]
   then tbNFSDetValor_total.AsFloat := tbNFSDetValor_unitario.AsFloat * tbNFSDetQuantidade.AsFloat;
end;

procedure Tf_nfservicos.SomaItensExecute(Sender: TObject);
var
  totServico: Double;
  iss, sub, irrf, pcc: Double;
begin
  totServico := 0;

  if tbNFS.State in [dsInsert, dsEdit]
   then with qrSomaItens do
         begin
           Params[2].AsString := tbNFSNFiscal.AsString;
           Open;

           if RecordCount <> 0
            then totServico := qrSomaItensSomaValor_total.AsFloat;

           Close;
         end
         else totServico := tbNFSValServico.AsFloat;

  with qrProc do
   begin
     close;
     Params[2].AsString := dbEdtProc.Text;
     Open;
   end;

  vFATURA_ISS := qrProcFATURA_ISS.asinteger;

  if vfatura_iss = 1
   then iss := strtofloat(floattostrf(totServico * (tbNFSPercentual_ISS.AsFloat/100),fffixed,10,2))
   else iss := 0;
        
  sub  := strtofloat(floattostrf(totServico + iss,fffixed,10,2));
  irrf := strtofloat(floattostrf(sub * (tbNFSPercentual_IRRF.AsFloat/100),fffixed,10,2));/// + 0.001;
  pcc  := strtofloat(floattostrf(sub * (tbNFSPercentual_PCC.AsFloat/100),fffixed,10,2));/// + 0.001;

  if tbNFS.State In [dsInsert, dsEdit]
   then begin
     tbNFSVatotnota.AsString := FloatToStrF(sub - irrf - pcc, ffFixed, 15, 2);
     tbNFSValServico.AsFloat := totServico;
   end;

  me_iss.Text      := floattostrf(iss,fffixed,10,2);
  me_subtotal.Text := floattostrf(sub,fffixed,10,2);
  me_irrf.Text     := floattostrf(irrf,fffixed,10,2);
  me_PCC.Text      := floattostrf(pcc,fffixed,10,2);
end;

procedure Tf_nfservicos.tbNFSAfterScroll(DataSet: TDataSet);
begin
  HabCanc.Execute;
  SomaItens.Execute;
end;

procedure Tf_nfservicos.dbEdtDtEmissaoChange(Sender: TObject);
begin
  if tbNFS.State in [dsInsert, dsEdit]
   then if dbEdtDtEmissao.Text = '  /  /    '
         then tbNFSData_emissao.AsString := ''
end;

procedure Tf_nfservicos.tbNFSPercentual_ISSSetText(Sender: TField;
  const Text: String);
begin
  tbNFSPercentual_ISS.AsString := Text;
  SomaItens.Execute;
end;

procedure Tf_nfservicos.tbNFSPercentual_IRRFSetText(Sender: TField;
  const Text: String);
begin
  tbNFSPercentual_IRRF.AsString := Text;
  SomaItens.Execute;
end;

procedure Tf_nfservicos.btnHabCancClick(Sender: TObject);
begin
  if MessageDlg('Deseja '+ btnHabCanc.Hint +'?', mtConfirmation, [mbYes, mbNo], 0) = mrNo
   then Exit;

  tbNFS.Edit;

  if btnHabCanc.Tag <> 0
   then tbNFSCancelada.AsInteger := 1
   else tbNFSCancelada.AsInteger := 0;

  tbNFSData_Recebimento.asstring := '';
  tbNFS.Post;

  HabCanc.Execute;
end;

procedure Tf_nfservicos.HabCancExecute(Sender: TObject);
begin
  if tbNFS.State = dsInsert
   then begin
     btnAlterar.Enabled := False;
     btnExcluir.Enabled := False;
     btnItens.Enabled   := False;
     Exit;
   end;

  btnHabCanc.Glyph := nil;

  if tbNFSCancelada.Asinteger = 1
   then begin
     with lblHabCanc do
      begin
        Caption := 'CANCELADA';
        Font.Color := clMaroon;
      end;

     with btnHabCanc do
      begin
        Tag := 0;
        Caption := '&Habilitar';
        Hint := 'Habilitar Nota Fiscal de Serviço';
        ilHabCanc.GetBitmap(1, Glyph);
      end;

     btnAlterar.Enabled := False;
     btnExcluir.Enabled := False;
     btnItens.Enabled   := False;
   end
   else begin
     with lblHabCanc do
      begin
        Caption := 'HABILITADA';
        Font.Color := clNavy;
      end;

     with btnHabCanc do
      begin
        Tag := 1;
        Caption := '&Cancelar';
        Hint    := 'Cancelar Nota Fiscal de Serviço';
        ilHabCanc.GetBitmap(0, Glyph);
      end;

     btnAlterar.Enabled := True;
     btnExcluir.Enabled := True;
     btnItens.Enabled   := True;
   end;
end;

procedure Tf_nfservicos.tbNFSBeforeDelete(DataSet: TDataSet);
begin
  logusu('E','Excluiu a Nota Fiscal de Serviço: '+ tbNFSNFiscal.AsString);
end;

procedure Tf_nfservicos.tbNFSDetBeforeDelete(DataSet: TDataSet);
begin
  logusu('E','Excluiu o Item da Nota Fiscal de Serviço: '+ tbNFSNFiscal.AsString);
end;

procedure Tf_nfservicos.qr_empAfterScroll(DataSet: TDataSet);
begin
  pnlprincipal.Visible := true;
  pnlmenu.Visible      := true;

  vEmp2 := qr_empempresa.asstring;
  vFil2 := qr_empfilial.asstring;

  qrParam.Open;

  vEmp := qrParamEmpresa.AsString;
  vFil := qrParamFilial.AsString;

  tbParamNFS.Open;
  tbNFS.Open;
  dbLcbNFS.KeyValue := tbNFSNFiscal.AsString;
  tbNFSDet.Open;

  with qrProc do
   begin
     Params[0].AsString := vEmp;
     Params[1].AsString := vFil;
   end;

  with qrImport do
   begin
     Params[0].AsString := vEmp;
     Params[1].AsString := vFil;
   end;
   
  with qrImportNFS do
   begin
     Params[0].AsString := vEmp;
     Params[1].AsString := vFil;
   end;

  with qrDelNFSDet do
   begin
     Params[0].AsString := vEmp2;
     Params[1].AsString := vFil2;
   end;

  with qrNum do
   begin
     Params[0].AsString := vEmp;
     Params[1].AsString := vFil;
   end;

  with qrLocais do
   begin
     Params[0].AsString := vEmp;
     Params[1].AsString := vFil;
   end;

  with qrProSNF do
   begin
     Params[0].AsString := vEmp;
     Params[1].AsString := vFil;
   end;

  with qrTestaNFS do
   begin
     Params[0].AsString := vEmp2;
     Params[1].AsString := vFil2;
   end;

  with qrSomaItens do
   begin
     Params[0].AsString := vEmp2;
     Params[1].AsString := vFil2;
   end;

  with qrAltNFSDet do
   begin
     Params[1].AsString := vEmp2;
     Params[2].AsString := vFil2;
   end;
end;

procedure Tf_nfservicos.bb_cancellocproClick(Sender: TObject);
begin
  p_locpro.Visible     := False;
  pnlPrincipal.Enabled := True;
  pnlMenu.Enabled      := True;
end;

procedure Tf_nfservicos.me_processoChange(Sender: TObject);
begin
  if rbProcesso.Checked
   then begin
     if Length(edtLoc.Text) <> 8
      then begin
        qlocpro.Close;
        Exit;
      end;  

     qlocpro.Close;
     qlocpro.SQL.Clear;
     qlocpro.SQL.add('SELECT NFS.NFISCAL,                                                                                              ');
     qlocpro.SQL.add('       CASE NFS.PROCESSO WHEN :p1                                                                                ');
     qlocpro.SQL.add('         then NFS.PROCESSO                                                                                       ');
     qlocpro.SQL.add('         else NFSP.PROCESSO                                                                                      ');
     qlocpro.SQL.add('       END AS PROCESSO,                                                                                          ');
     qlocpro.SQL.add('                   NFSP.NFISCAL, NFS.Data_emissao, NFS.Razao_Social, NFS.Vatotnota, NFS.NFiscal_e, NFS.Cancelada ');
     qlocpro.SQL.add('  FROM NOTAS_FISCAIS_SERVICOS NFS LEFT JOIN Notas_Fiscais_SERVICOS_PROCESSOS NFSP                                ');
     qlocpro.SQL.add('    ON NFS.NFISCAL = NFSP.NFISCAL                                                                                ');
     qlocpro.SQL.add(' WHERE NFS.PROCESSO = :p1 OR NFSP.PROCESSO = :p1                                                                 ');
     qlocpro.Params[0].AsString := trim(edtLoc.Text);
     qlocpro.Open;

     Exit;
   end;

  if rbRps.Checked
   then begin
     if Length(edtLoc.Text) <> 6
      then begin
        qlocpro.Close;
        Exit;
      end;

     qlocpro.Close;
     qlocpro.SQL.Clear;
     qlocpro.SQL.add('SELECT TOP 1 NFS.NFISCAL,                                                          ');
     qlocpro.SQL.add('       CASE NFS.Processo WHEN NFS.Processo                                         ');
     qlocpro.SQL.add('         then NFS.Processo                                                         ');
     qlocpro.SQL.add('         else NFSP.Processo                                                        ');
     qlocpro.SQL.add('       END AS PROCESSO,                                                            ');
     qlocpro.SQL.add('                   NFSP.NFISCAL, NFS.Data_emissao, NFS.Razao_Social, NFS.Vatotnota, NFS.NFiscal_e, NFS.Cancelada ');
     qlocpro.SQL.add('  FROM NOTAS_FISCAIS_SERVICOS NFS LEFT JOIN Notas_Fiscais_SERVICOS_PROCESSOS NFSP  ');
     qlocpro.SQL.add('    ON NFS.NFISCAL = NFSP.NFISCAL                                                  ');
     qlocpro.SQL.add(' WHERE NFS.NFiscal = :p1 OR NFSP.NFiscal = :p1                                     ');
     qlocpro.Params[0].AsString := trim(edtLoc.Text);
     qlocpro.Open;

     //dbLcbNFS.KeyValue := tbNFSNFiscal.AsString;

     Exit;
   end;

  if rbNfe.Checked
   then begin
     if Length(edtLoc.Text) <> 6
      then begin
        qlocpro.Close;
        Exit;
      end;

     qlocpro.Close;
     qlocpro.SQL.Clear;
     qlocpro.SQL.add('SELECT TOP 1 NFS.NFISCAL,                                                          ');
     qlocpro.SQL.add('       CASE NFS.Processo WHEN NFS.Processo                                         ');
     qlocpro.SQL.add('         then NFS.Processo                                                         ');
     qlocpro.SQL.add('         else NFSP.Processo                                                        ');
     qlocpro.SQL.add('       END AS PROCESSO,                                                            ');
     qlocpro.SQL.add('                   NFSP.NFISCAL, NFS.Data_emissao, NFS.Razao_Social, NFS.Vatotnota, NFS.NFiscal_e, NFS.Cancelada ');
     qlocpro.SQL.add('  FROM NOTAS_FISCAIS_SERVICOS NFS LEFT JOIN Notas_Fiscais_SERVICOS_PROCESSOS NFSP  ');
     qlocpro.SQL.add('    ON NFS.NFISCAL = NFSP.NFISCAL                                                  ');
     qlocpro.SQL.add(' WHERE NFS.NFiscal_e = :p1                                                         ');
     qlocpro.Params[0].AsString := trim(edtLoc.Text);
     qlocpro.Open;
   end;
end;

procedure Tf_nfservicos.btnProcClick(Sender: TObject);
begin
  pnlProc.left    := 152;
  pnlProc.Visible := True;
end;

procedure Tf_nfservicos.pnlProcExit(Sender: TObject);
begin
  ed_loc.Clear;

  pnlLocNF.Visible     := False;
  pnlPrincipal.Enabled := True;
  pnlMenu.Enabled      := True;
end;

procedure Tf_nfservicos.BitBtn1Click(Sender: TObject);
begin
  if me_dIni.Text = '  /  /    '
   then me_dIni.Text := '01/01/1900';

  if me_dFin.Text = '  /  /    '
   then me_dFin.Text := '01/01/2010';

  if messagedlg(v_usuario+', confirma processamento?',mtconfirmation,[mbno,mbyes],0)= mryes
   then begin
     qNFS01.Params[0].AsDateTime := strtodate(me_dIni.Text);
     qNFS01.Params[1].AsDateTime := strtodate(me_dFin.Text);
     qNFS01.execsql;
     
     qNFS02.Params[0].AsDateTime := strtodate(me_dIni.Text);
     qNFS02.Params[1].AsDateTime := strtodate(me_dFin.Text);
     qNFS02.execsql;

     Showmessage(v_usuario+', Processamento concluído!');
     pnlProc.Visible := False;
   end;
end;

procedure Tf_nfservicos.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  if Not(Key In ['0'..'9',',','.',#8])
   then Key := #0;

  if Key = '.'
   then Key := ',';

  if (Key = ',') AND (Pos(',', DBEdit12.Text) > 0)
   then Key := #0;
end;

procedure Tf_nfservicos.b_novaClick(Sender: TObject);
begin
  vNFS := me_novanf.text;
  tbNFS.close;
  tbNFS.open;

  if tbNFS.FindKey([vEmp2,vFil2,vNFS])
   then begin
     MessageDlg(v_usuario+', favor verificar esta Nota Fiscal já está incluída!', mtInformation, [mbOk], 0);
     me_novanf.SetFocus;
     Exit;
   end;

  dbLcbNFS.Visible := False;
  dbLcbNFS.Enabled := False;
  dbEdtNFS.Visible := True;
  dbEdtNFS.Enabled := True;

  Inclusao := True;

  tbNFS.Append;
  tbNFSEmpresa.AsString      := vEmp2;
  tbNFSFilial.AsString       := vFil2;
  tbNFSNFiscal.AsString      := vNFS;
  tbNFSData_emissao.asstring := v_dataFollow;
  vNFS := '';

  tbNFSNat_Serv.AsString        := tbParamNFSNat_Serv.AsString;
  tbNFSCodigo_Fiscal.AsString   := tbParamNFSCodigo_Fiscal.AsString;
  tbNFSPercentual_ISS.AsString  := tbParamNFSPercentual_ISS.AsString;
  tbNFSPercentual_IRRF.AsString := tbParamNFSPercentual_IRRF.AsString;
  tbNFSPercentual_PCC.AsString  := tbParamNFSPercentual_PCC.AsString;

  p_nova.Visible := false;

  dbEdtProc.SetFocus;
end;

procedure Tf_nfservicos.p_novaExit(Sender: TObject);
begin
  p_nova.Visible := false;
end;

procedure Tf_nfservicos.B_IMPRPSClick(Sender: TObject);
var
  contitens : integer;
  vund, vQtd, vValU, vValT, vdesc : String;
begin
  QNFPROD.close;
  QNFPROD.Params[0].AsString := tbNFSNFiscal.AsString;
  QNFPROD.open;

  if QNFPROD.RecordCount > 1
   then begin
     if not assigned (qr_RPSvarios)
      then Application.CreateForm(Tqr_RPSvarios, qr_RPSvarios);

     qr_RPSvarios.q_nfs.open;
     qr_RPSvarios.q_det.close;
     qr_RPSvarios.q_det.Params[0].AsString := tbNFSNFiscal.AsString;
     qr_RPSvarios.q_det.open;

     qr_RPSvarios.qrps1.caption       := tbNFSNFiscal.AsString;
     qr_RPSvarios.nat1.caption        := tbNFSNat_Serv.AsString;
     qr_RPSvarios.cod_fis1.caption    := tbNFScodigo_fiscal.AsString;
     qr_RPSvarios.qdtemissao1.caption := DateToStr(tbNFSData_emissao.AsDateTime);
     qr_RPSvarios.qfir1.caption       := tbNFSRazao_Social.AsString;
     qr_RPSvarios.qend1.caption       := Trim(tbNFSEndereco.AsString) +','+ Trim(tbNFSNumero.AsString) +' '+ Trim(tbNFSComplemento.AsString) +' '+ Trim(tbNFSBairro.AsString);
     qr_RPSvarios.qmun1.caption       := Copy(tbNFSCidade.AsString + StringOfChar(' ', 68), 1, 68);
     qr_RPSvarios.qest1.caption       := Copy(tbNFSEstado.AsString + StringOfChar(' ', 25), 1, 25);
     qr_RPSvarios.qcep1.caption       := tbNFSCEP.AsString;
     qr_RPSvarios.qcnpj1.caption      := tbNFSCGC_CPF.AsString;
     qr_RPSvarios.qinsc11.caption     := tbNFSInscricao_Estadual.AsString;
     qr_RPSvarios.qinsc12.caption     := tbNFSInscricao_Municipal.AsString;
     qr_RPSvarios.qcond1.caption      := tbNFSCond_Pagto.AsString;
     qr_RPSvarios.ema1.caption        := tbNFSemail.AsString;

     qr_RPSvarios.qaliq11.caption  := FormatFloat('0', tbNFSPercentual_ISS.AsFloat);
     qr_RPSvarios.qaliq12.caption  := FormatFloat('0.0', tbNFSPercentual_IRRF.AsFloat);
     qr_RPSvarios.qaliq13.caption  := FormatFloat('0.00', tbNFSPercentual_pcc.AsFloat);

     qr_RPSvarios.qval1.caption    := FormatFloat('###,###,##0.00', tbNFSValServico.AsFloat);
     qr_RPSvarios.qiss1.caption    := me_iss.Text;
     qr_RPSvarios.qsub1.caption    := me_subtotal.Text;
     qr_RPSvarios.qirrf1.caption   := me_irrf.Text;
     qr_RPSvarios.qpcc1.caption    := me_pcc.Text;
     qr_RPSvarios.qvaltot1.caption := dbEdtValTot.Text;

     qr_RPSvarios.QR.preview;
   end
   else begin
     if not assigned (qr_RPS)
      then Application.CreateForm(Tqr_RPS, qr_RPS);

     qr_RPS.qrps1.caption       := tbNFSNFiscal.AsString;
     qr_RPS.nat1.caption        := tbNFSNat_Serv.AsString;
     qr_RPS.cod_fis1.caption    := tbNFScodigo_fiscal.AsString;
     qr_RPS.qdtemissao1.caption := DateToStr(tbNFSData_emissao.AsDateTime);
     qr_RPS.qfir1.caption       := tbNFSRazao_Social.AsString;
     qr_RPS.qend1.caption       := Trim(tbNFSEndereco.AsString) +','+ Trim(tbNFSNumero.AsString) +' '+ Trim(tbNFSComplemento.AsString) +' '+ Trim(tbNFSBairro.AsString);
     qr_RPS.qmun1.caption       := Copy(tbNFSCidade.AsString + StringOfChar(' ', 68), 1, 68);
     qr_RPS.qest1.caption       := Copy(tbNFSEstado.AsString + StringOfChar(' ', 25), 1, 25);
     qr_RPS.qcep1.caption       := tbNFSCEP.AsString;
     qr_RPS.qcnpj1.caption      := tbNFSCGC_CPF.AsString;
     qr_RPS.qinsc11.caption     := tbNFSInscricao_Estadual.AsString;
     qr_RPS.qinsc12.caption     := tbNFSInscricao_Municipal.AsString;
     qr_RPS.qcond1.caption      := tbNFSCond_Pagto.AsString;
     qr_RPS.ema1.caption        := tbNFSemail.AsString;

     qr_RPS.qrps2.caption       := tbNFSNFiscal.AsString;
     qr_RPS.nat2.caption        := tbNFSNat_Serv.AsString;
     qr_RPS.cod_fis2.caption    := tbNFScodigo_fiscal.AsString;
     qr_RPS.qdtemissao2.caption := DateToStr(tbNFSData_emissao.AsDateTime);
     qr_RPS.qfir2.caption       := tbNFSRazao_Social.AsString;
     qr_RPS.qend2.caption       := Trim(tbNFSEndereco.AsString) +','+ Trim(tbNFSNumero.AsString) +' '+ Trim(tbNFSComplemento.AsString) +' '+ Trim(tbNFSBairro.AsString);
     qr_RPS.qmun2.caption       := Copy(tbNFSCidade.AsString + StringOfChar(' ', 68), 1, 68);
     qr_RPS.qest2.caption       := Copy(tbNFSEstado.AsString + StringOfChar(' ', 25), 1, 25);
     qr_RPS.qcep2.caption       := tbNFSCEP.AsString;
     qr_RPS.qcnpj2.caption      := tbNFSCGC_CPF.AsString;
     qr_RPS.qinsc21.caption     := tbNFSInscricao_Estadual.AsString;
     qr_RPS.qinsc22.caption     := tbNFSInscricao_Municipal.AsString;
     qr_RPS.qcond2.caption      := tbNFSCond_Pagto.AsString;
     qr_RPS.ema2.caption        := tbNFSemail.AsString;

     vund  := '';
     vQtd  := '';
     vValU := '';
     vValT := '';
     vdesc := '';

     qr_RPS.qund11.caption := vund;
     qr_RPS.qqtd11.caption := vQtd;
     qr_RPS.qdes11.caption := vdesc;
     qr_RPS.qpre11.caption := vvalu;
     qr_RPS.qtot11.caption := vvalt;

     qr_RPS.qund21.caption := vund;
     qr_RPS.qqtd21.caption := vQtd;
     qr_RPS.qdes21.caption := vdesc;
     qr_RPS.qpre21.caption := vvalu;
     qr_RPS.qtot21.caption := vvalt;

     qr_RPS.qund12.caption := vund;
     qr_RPS.qqtd12.caption := vQtd;
     qr_RPS.qdes12.caption := vdesc;
     qr_RPS.qpre12.caption := vvalu;
     qr_RPS.qtot12.caption := vvalt;

     qr_RPS.qund22.caption := vund;
     qr_RPS.qqtd22.caption := vQtd;
     qr_RPS.qdes22.caption := vdesc;
     qr_RPS.qpre22.caption := vvalu;
     qr_RPS.qtot22.caption := vvalt;

     qr_RPS.qund13.caption := vund;
     qr_RPS.qqtd13.caption := vQtd;
     qr_RPS.qdes13.caption := vdesc;
     qr_RPS.qpre13.caption := vvalu;
     qr_RPS.qtot13.caption := vvalt;

     qr_RPS.qund23.caption := vund;
     qr_RPS.qqtd23.caption := vQtd;
     qr_RPS.qdes23.caption := vdesc;
     qr_RPS.qpre23.caption := vvalu;
     qr_RPS.qtot23.caption := vvalt;

     qr_RPS.qund14.caption := vund;
     qr_RPS.qqtd14.caption := vQtd;
     qr_RPS.qdes14.caption := vdesc;
     qr_RPS.qpre14.caption := vvalu;
     qr_RPS.qtot14.caption := vvalt;

     qr_RPS.qund24.caption := vund;
     qr_RPS.qqtd24.caption := vQtd;
     qr_RPS.qdes24.caption := vdesc;
     qr_RPS.qpre24.caption := vvalu;
     qr_RPS.qtot24.caption := vvalt;

     qr_RPS.qund15.caption := vund;
     qr_RPS.qqtd15.caption := vQtd;
     qr_RPS.qdes15.caption := vdesc;
     qr_RPS.qpre15.caption := vvalu;
     qr_RPS.qtot15.caption := vvalt;

     qr_RPS.qund25.caption := vund;
     qr_RPS.qqtd25.caption := vQtd;
     qr_RPS.qdes25.caption := vdesc;
     qr_RPS.qpre25.caption := vvalu;
     qr_RPS.qtot25.caption := vvalt;

     contItens := 0;
     tbNFSDet.First;

     while not tbNFSDet.Eof do
      begin
        Inc(contItens);
        vund  := tbNFSDetUnidade.AsString;
        vQtd  := tbNFSDetQuantidade.AsString;
        vValU := tbNFSDetValor_unitario.AsString;
        vValT := tbNFSDetValor_total.AsString;
        vdesc := Copy(tbNFSDetDescricao.AsString + StringOfChar(' ', 85), 1, 85);

        if vQTD  = ''
         then vQTD  := '0';

        if vValU = ''
         then vValU  := '0';

        if vValT = ''
         then vValT  := '0';

        if StrToFloat(vQtd)  = 0
         then vQtd  := '    ';

        if StrToFloat(vValU) = 0
         then vValU := '    '
         else vValU := FormatFloat('###,###,##0.00', StrToFloat(vValU));

        if StrToFloat(vValT) = 0
         then vValT := '    '
         else vValT := FormatFloat('###,###,##0.00', StrToFloat(vValT));

        if contItens = 1
         then begin
           qr_RPS.qund11.caption := vund;
           qr_RPS.qqtd11.caption := vQtd;
           qr_RPS.qdes11.caption := vdesc;
           qr_RPS.qpre11.caption := vvalu;
           qr_RPS.qtot11.caption := vvalt;

           qr_RPS.qund21.caption := vund;
           qr_RPS.qqtd21.caption := vQtd;
           qr_RPS.qdes21.caption := vdesc;
           qr_RPS.qpre21.caption := vvalu;
           qr_RPS.qtot21.caption := vvalt;
         end;

        if contItens = 2
         then begin
           qr_RPS.qund12.caption := vund;
           qr_RPS.qqtd12.caption := vQtd;
           qr_RPS.qdes12.caption := vdesc;
           qr_RPS.qpre12.caption := vvalu;
           qr_RPS.qtot12.caption := vvalt;

           qr_RPS.qund22.caption := vund;
           qr_RPS.qqtd22.caption := vQtd;
           qr_RPS.qdes22.caption := vdesc;
           qr_RPS.qpre22.caption := vvalu;
           qr_RPS.qtot22.caption := vvalt;
         end;

        if contItens = 3
         then begin
           qr_RPS.qund13.caption := vund;
           qr_RPS.qqtd13.caption := vQtd;
           qr_RPS.qdes13.caption := vdesc;
           qr_RPS.qpre13.caption := vvalu;
           qr_RPS.qtot13.caption := vvalt;

           qr_RPS.qund23.caption := vund;
           qr_RPS.qqtd23.caption := vQtd;
           qr_RPS.qdes23.caption := vdesc;
           qr_RPS.qpre23.caption := vvalu;
           qr_RPS.qtot23.caption := vvalt;
         end;

        if contItens = 4
         then begin
           qr_RPS.qund14.caption := vund;
           qr_RPS.qqtd14.caption := vQtd;
           qr_RPS.qdes14.caption := vdesc;
           qr_RPS.qpre14.caption := vvalu;
           qr_RPS.qtot14.caption := vvalt;
           
           qr_RPS.qund24.caption := vund;
           qr_RPS.qqtd24.caption := vQtd;
           qr_RPS.qdes24.caption := vdesc;
           qr_RPS.qpre24.caption := vvalu;
           qr_RPS.qtot24.caption := vvalt;
         end;

        if contItens = 5
         then begin
           qr_RPS.qund15.caption := vund;
           qr_RPS.qqtd15.caption := vQtd;
           qr_RPS.qdes15.caption := vdesc;
           qr_RPS.qpre15.caption := vvalu;
           qr_RPS.qtot15.caption := vvalt;

           qr_RPS.qund25.caption := vund;
           qr_RPS.qqtd25.caption := vQtd;
           qr_RPS.qdes25.caption := vdesc;
           qr_RPS.qpre25.caption := vvalu;
           qr_RPS.qtot25.caption := vvalt;
         end;

        tbNFSDet.Next;
      end;

     qr_RPS.qaliq11.caption  := FormatFloat('0', tbNFSPercentual_ISS.AsFloat);
     qr_RPS.qaliq12.caption  := FormatFloat('0.0', tbNFSPercentual_IRRF.AsFloat);
     qr_RPS.qaliq13.caption  := FormatFloat('0.00', tbNFSPercentual_pcc.AsFloat);

     qr_RPS.qval1.caption    := FormatFloat('###,###,##0.00', tbNFSValServico.AsFloat);
     qr_RPS.qiss1.caption    := me_iss.Text;
     qr_RPS.qsub1.caption    := me_subtotal.Text;
     qr_RPS.qirrf1.caption   := me_irrf.Text;
     qr_RPS.qpcc1.caption    := me_pcc.Text;
     qr_RPS.qvaltot1.caption := dbEdtValTot.Text;

     qr_RPS.qaliq21.caption := FormatFloat('0', tbNFSPercentual_ISS.AsFloat);
     qr_RPS.qaliq22.caption := FormatFloat('0.0', tbNFSPercentual_IRRF.AsFloat);
     qr_RPS.qaliq23.caption := FormatFloat('0.00', tbNFSPercentual_pcc.AsFloat);

     qr_RPS.qval2.caption    := FormatFloat('###,###,##0.00', tbNFSValServico.AsFloat);
     qr_RPS.qiss2.caption    := me_iss.Text;
     qr_RPS.qsub2.caption    := me_subtotal.Text;
     qr_RPS.qirrf2.caption   := me_irrf.Text;
     qr_RPS.qpcc2.caption    := me_pcc.Text;
     qr_RPS.qvaltot2.caption := dbEdtValTot.Text;

     qr_RPS.QR.preview;
   end;
end;

procedure Tf_nfservicos.b_variosClick(Sender: TObject);
var
  qsql : string;
begin
  { verifica se o processo da nf está nos vários, se não estiver inclui }
  if not tbNFSprocesso.IsNull
   then begin
     qselprod.Close;
     qselprod.sql.clear;

     qselprod.sql.add('SELECT NFSP.PROCESSO, NFSP.NFISCAL, NFS.Cancelada                                  ');
     qselprod.sql.add('  FROM Notas_Fiscais_Servicos_Processos NFSP INNER JOIN Notas_Fiscais_Servicos NFS ');
     qselprod.sql.add('    ON NFSP.NFISCAL = NFS.NFiscal                                                  ');
     qselprod.sql.add(' WHERE NFSP.Processo='+chr(39)+tbNFSprocesso.asstring+chr(39)+' and NFSP.nfiscal='+chr(39)+tbNFSnfiscal.asstring+chr(39));
     qselprod.open;

     if qselprod.recordcount = 0
      then begin
        qupprod.sql.clear;
        qsql := 'INSERT INTO Notas_Fiscais_Servicos_Processos ([NFISCAL],[PROCESSO]) VALUES ( ';
        qsql := qsql+chr(39)+tbNFSnfiscal.asstring+chr(39)+', ';
        qsql := qsql+chr(39)+tbNFSprocesso.asstring+chr(39)+' ';
        qsql := qsql+' )';

        qupprod.sql.add(qsql);
        qupprod.execsql;
        logusu('P','Incluiu Processo na NF Serviços: '+tbNFSnfiscal.asstring +' - Processo: '+tbNFSprocesso.asstring);
        b_prodetalheClick(f_nfservicos);
      end;
   end;

  {recalcula itens conforme processos selecionados}
  QNFPROD.close;
  QNFPROD.Params[0].AsString := tbNFSNFiscal.AsString;
  QNFPROD.open;

  p_varios.Visible := true;

  me_PROVARIOS.text := '';
  me_PROVARIOS.SetFocus;
end;

procedure Tf_nfservicos.fecha_variosClick(Sender: TObject);
begin
  p_varios.Visible     := False;
  pnlPrincipal.Enabled := True;
  pnlMenu.Enabled      := True;
end;

procedure Tf_nfservicos.exclui_variosClick(Sender: TObject);
var
  qsql : string;
begin
  if MessageDlg('Confirma exclusão deste processo para esta Nota Fiscal?', mtConfirmation, [mbYes, mbNo], 0) = mrNo
   then Exit;

  qupprod.sql.clear;
  qsql := 'DELETE Notas_Fiscais_Servicos_Processos where Processo='+chr(39)+QNFPRODPROCESSO.asstring+chr(39)+' and nfiscal='+chr(39)+QNFPRODnfiscal.asstring+chr(39);
  qupprod.sql.add(qsql);

  logusu('P','Excluiu Processo na NF Serviços: '+QNFPRODnfiscal.asstring +' - Processo: '+QNFPRODPROCESSO.asstring);
  qupprod.execsql;
  QNFPROD.close;
  QNFPROD.open;

  b_prodetalheClick(f_nfservicos);
end;

procedure Tf_nfservicos.ME_PROVARIOSChange(Sender: TObject);
var
  qsql : string;
begin
  if Length(me_PROVARIOS.Text) <> 8
   then Exit;

  with qrProc do
   begin
     Close;
     Params[2].AsString := me_PROVARIOS.Text;
     Open;

     if RecordCount = 0
      then begin
        MessageDlg('Processo não cadastrado!', mtInformation, [mbOk], 0);
        me_PROVARIOS.SetFocus;
        Close;
        Exit;
      end;
   end;

  qselprod.Close;
  qselprod.sql.clear;

  qselprod.sql.add('SELECT NFSP.PROCESSO, NFSP.NFISCAL, NFS.Cancelada                                  ');
  qselprod.sql.add('  FROM Notas_Fiscais_Servicos_Processos NFSP INNER JOIN Notas_Fiscais_Servicos NFS ');
  qselprod.sql.add('    ON NFSP.NFISCAL = NFS.NFiscal                                                  ');
  qselprod.sql.add(' where NFSP.Processo='+chr(39)+me_PROVARIOS.text+chr(39));
  qselprod.open;

  if (qselprod.recordcount > 0) and (qselprodcancelada.AsInteger = 0)
   then begin
     MessageDlg(v_usuario+', O Processo já foi inserido na nfs/rps nº: '+qselprodnfiscal.asstring, mtInformation, [mbOk], 0);
     me_PROVARIOS.SetFocus;
     Exit;
   end;

  if (tbNFSprocesso.IsNull) or (tbNFSprocesso.asstring = '')
   then begin
     if tbNFS.State in [dsInsert, dsEdit]
      then
      else tbNFS.Edit;

     tbNFSprocesso.asstring := me_PROVARIOS.text;
     tbNFSProcessoSetText( tbNFSprocesso,  me_PROVARIOS.text);
   end;

  { verifica se o processo da nf está nos vários, se não estiver inclui }
  qselprod.Close;
  qselprod.sql.clear;

  qselprod.sql.add('SELECT NFSP.PROCESSO, NFSP.NFISCAL, NFS.Cancelada                                  ');
  qselprod.sql.add('  FROM Notas_Fiscais_Servicos_Processos NFSP INNER JOIN Notas_Fiscais_Servicos NFS ');
  qselprod.sql.add('    ON NFSP.NFISCAL = NFS.NFiscal                                                  ');
  qselprod.sql.add(' WHERE NFSP.Processo='+chr(39)+me_PROVARIOS.text+chr(39)+' and NFSP.nfiscal='+chr(39)+tbNFSnfiscal.asstring+chr(39));
  qselprod.open;

  if  qselprod.recordcount = 0
   then begin
     qupprod.sql.clear;
     qsql := 'INSERT INTO Notas_Fiscais_Servicos_Processos ([NFISCAL],[PROCESSO]) VALUES ( ';
     qsql := qsql+chr(39)+tbNFSnfiscal.asstring+chr(39)+', ';
     qsql := qsql+chr(39)+me_PROVARIOS.text+chr(39)+' ';
     qsql := qsql+' )';

     qupprod.sql.add(qsql);
     qupprod.execsql;
     logusu('P','Incluiu Processo na NF Serviços: '+tbNFSnfiscal.asstring +' - Processo: '+me_PROVARIOS.text);
   end;

  {recalcula itens conforme processos selecionados}
  QNFPROD.close;
  QNFPROD.Params[0].AsString := tbNFSNFiscal.AsString;
  QNFPROD.open;

  me_PROVARIOS.text := '';
  me_PROVARIOS.SetFocus;

  b_prodetalheClick(f_nfservicos);
end;

procedure Tf_nfservicos.b_prodetalheClick(Sender: TObject);
var
  qvalor, qvaltot : real;
  qlinha : string;
begin
  QNFPROD.close;
  QNFPROD.open;

  if QNFPROD.RecordCount = 1
   then begin
     if tbNFS.State In [dsInsert, dsEdit]
      then
      else tbNFS.Edit;

     tbNFSprocesso.asstring := QNFPRODprocesso.asstring;
     tbNFSProcessoSetText( tbNFSprocesso,  QNFPRODprocesso.asstring);
   end
   else begin
     qvaltot := 0;
     tbNFSDet.Close;

     with qrDelNFSDet do
      begin
        Params[2].AsString := tbNFSNFiscal.AsString;
        ExecSQL;
      end;

     tbNFSDet.Open;

     tbNFSDet.Insert;
     {               1         2         3         4         5         6         7         8
     qlinha := '123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/}

     qlinha := 'DESEMBARAÇO ADUANEIRO';
     tbNFSDetdescricao.asstring := qlinha;
     tbNFSDet.Post;

     tbNFSDet.Insert;
     {               1         2         3         4         5         6         7         8
     {qlinha := '123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/}

     qlinha := 'REF.MS - REF.EMPRESA - DESTINACAO - DI';

     {             12345/12   123456789/123456789/   123456789/123456789/   123456789/}
     tbNFSDetdescricao.asstring := qlinha;
     tbNFSDet.Post;

     qnfprod.First;

     while not qnfprod.Eof do
      begin
        qvalor := 0;

        with qrNum do
         begin
           Params[2].AsString := qnfprodProcesso.AsString;
           Open;

           if qrNum.RecordCount <> 0
            then begin
              qvalor := qrNumValor_Registrado.AsFloat;
              qvaltot := qvaltot+ qrNumValor_Registrado.AsFloat;
            end;

           Close;
         end;

        with qrProc do
         begin
           close;
           Params[2].AsString := qnfprodProcesso.AsString;
           Open;
         end;

        vFATURA_ISS := qrProcFATURA_ISS.asinteger;

        tbNFSDet.Insert;
        qlinha  := qnfprodProcesso.AsString +' - '+ qrProcCodCli.AsString;

        with qrLocais do
         begin
           Params[2].AsString := qrProcImportador.AsString;
           Params[3].AsString := qrProcContrato.AsString;
           Params[4].AsString := qrProcLocal_Inventario.AsString;
           Open;

           if RecordCount <> 0
            then qlinha := qlinha+' - '+qrLocaisDescricao.AsString;

           Close;
         end;

        if qrProcNR_DECLARACAO_IMP.AsString <> ''
         then qlinha := qlinha+' - '+qrProcNR_DECLARACAO_IMP.AsString;

        tbNFSDetdescricao.asstring     := qlinha;
        tbNFSDetQuantidade.AsString    := '1';
        tbNFSDetValor_unitario.AsFloat := qvalor;
        tbNFSDetValor_total.AsFloat    := qvalor;
        tbNFSDet.Post;

        qnfprod.next;
      end;

     tbNFSDet.close;
     tbNFSDet.open;
     qrProc.Close;
   end;
end;

procedure Tf_nfservicos.LancaFollowFaturado;

  procedure LimpaArray;
  var
    i : Integer;
  begin
    for i := 1 to 300 do
     begin
       Processos[i] := '';
     end;
  end;

var
  QrAux : TQuery;
  a : integer;
  qsql, ProcessosFollowIncluidos : String;
begin
  try
    QrAux := TQuery.Create(nil);
    QrAux.DatabaseName := 'DBNMSCOMEX';

    try
      QrAux.SQL.Clear;
      QrAux.SQL.Add('   SELECT NFS.NFISCAL, NFS.PROCESSO, NFSP.NFISCAL, NFSP.PROCESSO                     ');
      QrAux.SQL.Add('     FROM NOTAS_FISCAIS_SERVICOS NFS LEFT JOIN Notas_Fiscais_SERVICOS_PROCESSOS NFSP ');
      QrAux.SQL.Add('       ON NFS.NFISCAL = NFSP.NFISCAL                                                 ');
      QrAux.SQL.Add('    WHERE NFS.PROCESSO <> ''''                                                       ');
      QrAux.SQL.Add('      AND NFS.NFISCAL = :NFISCAL                                                     ');
      QrAux.SQL.Add(' ORDER BY NFSP.PROCESSO DESC                                                         ');
      QrAux.ParamByName('NFISCAL').Value := tbNFSNFiscal.AsString;
      QrAux.Open;

      LimpaArray;

      QtdProcessos := QrAux.RecordCount;

      ProcessosFollowIncluidos := '';

      T_processos.Open;

      QrAux.First;

      if QrAux.RecordCount = 1
       then begin
         if QrAux.Fields[3].AsString <> ''
          then begin
            Processos[1] := QrAux.Fields[3].AsString;

            if T_processos.Locate('Codigo',QrAux.Fields[3].AsString,[])
             then begin
               T_processos.Edit;

               if (T_processosaguardando_medicao.AsInteger = 1)
                then T_processosaguardando_medicao.AsInteger := 0;

               T_processosStatus.AsString    := '3';
               T_processosFaturado.AsInteger := 1;
               T_processosFechado.AsInteger  := 1;

               T_processos.Post;

               AtualizaProcessoVisaoGeral(QrAux.Fields[3].AsString);
             end;
          end
          else begin
            Processos[1] := QrAux.Fields[1].AsString;

            if T_processos.Locate('Codigo',QrAux.Fields[1].AsString,[])
             then begin
               T_processos.Edit;

               if (T_processosaguardando_medicao.AsInteger = 1)
                then T_processosaguardando_medicao.AsInteger := 0;

               T_processosStatus.AsString    := '3';
               T_processosFaturado.AsInteger := 1;
               T_processosFechado.AsInteger  := 1;               

               T_processos.Post;

               AtualizaProcessoVisaoGeral(QrAux.Fields[1].AsString);               
             end;
          end;
       end
       else begin
         for a := 1 to QtdProcessos do
          begin
            if QrAux.Fields[3].AsString <> ''
             then begin
               Processos[a] := QrAux.Fields[3].AsString;

               if T_processos.Locate('Codigo',QrAux.Fields[3].AsString,[])
                then begin
                  T_processos.Edit;

                  if (T_processosaguardando_medicao.AsInteger = 1)
                   then T_processosaguardando_medicao.AsInteger := 0;

                  T_processosStatus.AsString    := '3';
                  T_processosFaturado.AsInteger := 1;
                  T_processosFechado.AsInteger  := 1;

                  T_processos.Post;

                  AtualizaProcessoVisaoGeral(QrAux.Fields[3].AsString);
                end;

               if ProcessosFollowIncluidos = ''
                then ProcessosFollowIncluidos := Processos[a]
                else ProcessosFollowIncluidos := ProcessosFollowIncluidos + ', ' + Processos[a];

               QrAux.Next;
             end
             else QrAux.Next;
          end;
       end;
       
      a := 1;

      while Processos[a] <> '' do
       begin
         if F_MSCOMEX.IncluiFollow( Processos[a], '2250', '1', 'RPS MS: ' + tbNFSNFiscal.AsString, v_usuario, date, time() )
          then logusu('P','Incluiu Follow Up: Faturou o Processo. Processo: '+Processos[a])
          else Application.MessageBox(Pchar('Erro ao incluir Follow Up para o Processo: ' + Processos[a]),'Atenção', MB_OK+MB_ICONWARNING);

         a := a + 1;
       end;

      if ProcessosFollowIncluidos <> ''
       then Showmessage(v_usuario+', ATENÇÃO! Foi INCLUÍDO Follow up de Processo Faturado para os Processos: ' + pchar(ProcessosFollowIncluidos) + '!')
       else Showmessage(v_usuario+', ATENÇÃO! Foi INCLUÍDO Follow up de Processo Faturado para o Processo: ' + pchar(Processos[1]) + '!');
    except
      MessageDlg('Erro ao lançar follow automático "Faturou o Processo.", comunicar ao mssistemas.', mtInformation, [mbOk], 0);
    end;
  finally
    QrAux.Free;

    Inclusao := False;
  end;
end;

procedure Tf_nfservicos.bb_oklocproClick(Sender: TObject);
begin
  if not tbNFS.FindKey([vEmp2,vFil2,qlocpronfiscal.asstring])
   then begin
     MessageDlg('Nota Fiscal não encontrada!', mtInformation, [mbOk], 0);
     edtLoc.SetFocus;
     Exit;
   end;

  p_locpro.Visible     := False;
  pnlPrincipal.Enabled := True;
  pnlMenu.Enabled      := True;

  dbLcbNFS.KeyValue := tbNFSNFiscal.AsString;
  dbLcbNFS.SetFocus;
end;

procedure Tf_nfservicos.ed_locChange(Sender: TObject);
begin
  if rbRps1.Checked
   then begin
     if Length(ed_loc.Text) <> 6
      then Exit;

     if not qryNfse.Locate('NFiscal',ed_loc.text,[])
      then begin
        MessageDlg('Rps não encontrada!', mtInformation, [mbOk], 0);
        ed_loc.SetFocus;
      end;
   end;

  if rbNfe1.Checked
   then begin
     if Length(ed_loc.Text) <> 6
      then Exit;

     if not qryNfse.Locate('NFiscal_e',ed_loc.text,[])
      then begin
        MessageDlg('Nfs-e não encontrada!', mtInformation, [mbOk], 0);
        ed_loc.SetFocus;
      end;
   end;
end;

procedure Tf_nfservicos.dbedNfeKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9',#8,#13])
   then Key := #0;

  if Key = #13
   then btnSalvarPnlRpsClick(btnSalvarPnlRps);
end;

procedure Tf_nfservicos.rbRps1Click(Sender: TObject);
begin
  ed_Loc.Clear;
  ed_Loc.SetFocus;
end;

procedure Tf_nfservicos.btnAlterarPnlRpsClick(Sender: TObject);
begin
  edNfse.Enabled := True;

  btnAlterarPnlRps.Enabled := False;
  btnSalvarPnlRps.Enabled  := True;

  edNfse.SetFocus;
end;

procedure Tf_nfservicos.btnSalvarPnlRpsClick(Sender: TObject);
var
  NFiscal : String;
begin
  if edNfse.Text <> ''
   then begin
     if NfeJaCadastrada
      then begin
        Application.MessageBox('Nota já incluida, favor verificar!','Aviso',MB_ICONWARNING);
        edNfse.SetFocus;
        Exit;
      end
      else begin
        T_Rps.Edit;
        T_RpsNFiscal_e.AsString := FormatFloat('000000', StrToInt(edNfse.Text));
        T_Rps.Post;
      end;
   end
   else begin
     T_Rps.Edit;
     T_RpsNFiscal_e.Clear;
     T_Rps.Post;
     T_Rps.Next;
   end;

  NFiscal := dbedRps.Text;

  AtualizaGridPnlNfiscalRPS;

  qryNfse.Locate('NFiscal',NFiscal,[]);

  edNfse.Enabled           := False;
  btnAlterarPnlRps.Enabled := True;
  btnSalvarPnlRps.Enabled  := False;

  qryNfse.Next;
end;

procedure Tf_nfservicos.ed_locKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9',#8])
   then Key := #0;
end;

function Tf_nfservicos.NfeJaCadastrada: Boolean;
var
  QryAux : TQuery;
begin
  QryAux := TQuery.Create(nil);
  QryAux.DatabaseName := 'DBNMSCOMEX';

  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('SELECT NFiscal_e FROM Notas_Fiscais_Servicos WHERE NFiscal_e = :Nfe ');
    QryAux.Params[0].Value := FormatFloat('000000', StrToInt(edNfse.Text));
    QryAux.Open;

    if QryAux.RecordCount > 0
     then Result := True
     else Result := False;
  finally
    QryAux.Free;
  end;
end;

procedure Tf_nfservicos.AtualizaGridPnlNfiscalRPS;
begin
  qryNfse.Close;
  qryNfse.Open;
end;

procedure Tf_nfservicos.qryNfseAfterScroll(DataSet: TDataSet);
begin
  edNfse.Text := qryNfseNFiscal_e.Text;
end;

procedure Tf_nfservicos.rbProcessoClick(Sender: TObject);
begin
  edtLoc.Clear;
  edtLoc.SetFocus;
end;

procedure Tf_nfservicos.AtualizaProcessoVisaoGeral(Processo : String);
begin
  with qAtuProcessoVisaoGeral do
   begin
     Close;
     ParamByName('pProcesso').value := Processo;
     ExecSQL;
   end;
end;

procedure Tf_nfservicos.BitBtn3Click(Sender: TObject);
begin
  pnlLocNF.left        := 169;
  pnlLocNF.Visible     := True;
  pnlPrincipal.Enabled := False;
  pnlMenu.Enabled      := False;

  qryNfse.Open;
  T_Rps.Open;

  ed_loc.SetFocus;
end;

procedure Tf_nfservicos.btnPSNFClick(Sender: TObject);
begin
  with qrProSNF do
   begin
     Open;
     label27.Caption := IntToStr(RecordCount) +' processos encontrados';
   end;

  pnlProcSNF.left      := 33;
  pnlProcSNF.Visible   := True;
  pnlPrincipal.Enabled := False;
  pnlMenu.Enabled      := False;
end;

procedure Tf_nfservicos.qlocproCanceladaGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if qlocproCancelada.AsInteger = 0
   then Text := 'HABILITADA'
   else Text := 'CANCELADA';
end;

function Tf_nfservicos.ProcessoNaoRecebidoPeloFinanceiro: Boolean;
var
  QryAux : TQuery;
begin
  QryAux := TQuery.Create(nil);
  QryAux.DatabaseName := 'DBNMSCOMEX';

  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('SELECT Codevento FROM Followup WHERE Codevento = ''2446'' and Processo = :p0');
    QryAux.Params[0].Value := dbEdtProc.Text;
    QryAux.Open;

    if QryAux.RecordCount > 0
     then Result := False
     else Result := True;
  finally
    QryAux.Free;
  end;
end;

procedure Tf_nfservicos.btnAdicionarMedicaoClick(Sender: TObject);
begin
  pnl_Medicoes.Visible := True;

  AtualizaGridMedicao;

  AtualizaGridMedicaoItens;
end;

procedure Tf_nfservicos.AtualizaGridMedicao;
begin
  qrControle_Medicao.Close;
  qrControle_Medicao.Open;
end;

procedure Tf_nfservicos.AtualizaGridMedicaoItens;
begin
  qrControle_Medicao_Itens.Close;
  qrControle_Medicao_Itens.ParamByName('pCodigo_Controle').Value := qrControle_MedicaoCodigo.Value;
  qrControle_Medicao_Itens.Open;
end;

procedure Tf_nfservicos.qrControle_MedicaoAfterScroll(DataSet: TDataSet);
begin
  AtualizaGridMedicaoItens;
end;

procedure Tf_nfservicos.btnFecharPnlMedicaoClick(Sender: TObject);
begin
  pnl_Medicoes.Visible := False;
end;

procedure Tf_nfservicos.qrControle_MedicaoStatusGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if qrControle_Medicao.RecordCount > 0
   then begin
     if (qrControle_MedicaoStatus.Value = 1)
      then Text := 'Em aguardo'
   end;
end;

procedure Tf_nfservicos.dbgridMedicaoDblClick(Sender: TObject);
var
  qsql : string;
begin
  if MedicaoIncluida = ''
   then begin
     qrControle_Medicao_Itens.First;

     while not qrControle_Medicao_Itens.Eof do
      begin
        qselprod.Close;
        qselprod.Sql.clear;

        qselprod.Sql.add('SELECT NFSP.PROCESSO, NFSP.NFISCAL, NFS.Cancelada                                  ');
        qselprod.Sql.add('  FROM Notas_Fiscais_Servicos_Processos NFSP INNER JOIN Notas_Fiscais_Servicos NFS ');
        qselprod.Sql.add('    ON NFSP.NFISCAL = NFS.NFiscal                                                  ');
        qselprod.Sql.add(' WHERE NFS.CANCELADA = 0 AND ((NFS.Processo = '+chr(39)+qrControle_Medicao_ItensProcesso.Value+chr(39)+') OR (NFSP.Processo = '+chr(39)+qrControle_Medicao_ItensProcesso.Value+chr(39)+'))');
        qselprod.open;

        if (qselprod.recordcount > 0)
         then begin
           MessageDlg(v_usuario+', O Processo '+qrControle_Medicao_ItensProcesso.AsString+' deve ser excluído da medição, pois já foi inserido na nfs/rps nº: '+qselprodnfiscal.asstring, mtInformation, [mbOk], 0);
           Abort;
         end;

        qrControle_Medicao_Itens.Next;
      end;

     qrControle_Medicao_Itens.First;

     MedicaoIncluida := qrControle_Medicao_ItensCodigo_Controle.AsString;

     try
       while not qrControle_Medicao_Itens.Eof do
        begin
          if (tbNFSprocesso.IsNull) or (tbNFSprocesso.asstring = '')
           then begin
             if tbNFS.State in [dsInsert, dsEdit]
              then
              else tbNFS.Edit;

             tbNFSprocesso.asstring := qrControle_Medicao_ItensProcesso.AsString;
             tbNFSProcessoSetText( tbNFSprocesso,  qrControle_Medicao_ItensProcesso.AsString);
           end;

          { verifica se o processo da nf está nos vários, se não estiver inclui }
          qselprod.Close;
          qselprod.sql.clear;

          qselprod.sql.add('SELECT NFSP.PROCESSO, NFSP.NFISCAL, NFS.Cancelada                                  ');
          qselprod.sql.add('  FROM Notas_Fiscais_Servicos_Processos NFSP INNER JOIN Notas_Fiscais_Servicos NFS ');
          qselprod.sql.add('    ON NFSP.NFISCAL = NFS.NFiscal                                                  ');
          qselprod.sql.add(' WHERE NFSP.Processo='+chr(39)+qrControle_Medicao_ItensProcesso.AsString+chr(39)+' and NFSP.nfiscal='+chr(39)+tbNFSnfiscal.asstring+chr(39));
          qselprod.open;

          if  qselprod.recordcount = 0
           then begin
             qupprod.sql.clear;
             qsql := 'INSERT INTO Notas_Fiscais_Servicos_Processos ([NFISCAL],[PROCESSO]) VALUES ( ';
             qsql := qsql+chr(39)+tbNFSnfiscal.asstring+chr(39)+', ';
             qsql := qsql+chr(39)+qrControle_Medicao_ItensProcesso.AsString+chr(39)+' ';
             qsql := qsql+' )';

             qupprod.sql.add(qsql);
             qupprod.execsql;
             logusu('P','Incluiu Processo na NF Serviços: '+tbNFSnfiscal.asstring +' - Processo: '+qrControle_Medicao_ItensProcesso.AsString);
           end;

          {recalcula itens conforme processos selecionados}
          QNFPROD.close;
          QNFPROD.Params[0].AsString := tbNFSNFiscal.AsString;
          QNFPROD.open;

          b_prodetalheClick(f_nfservicos);

          qrControle_Medicao_Itens.Next;
        end;
     except
       MedicaoIncluida := '';
     end;
   end
   else Application.MessageBox('Já foi incluída uma medição.','Atenção', MB_OK+MB_ICONWARNING);
end;

procedure Tf_nfservicos.SetaStatusFinalizadoMedicao(NFiscal, CodigoMedicao : String);
var
  QryAux : TQuery;
begin
  QryAux := TQuery.Create(nil);
  QryAux.DatabaseName := 'DBNMSCOMEX';

  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('UPDATE CONTROLE_MEDICAO SET STATUS = 2, NFiscal = :pNFiscal WHERE CODIGO = :pCodigoMedicao');
    QryAux.ParamByName('pNFiscal').Value       := NFiscal;
    QryAux.ParamByName('pCodigoMedicao').Value := CodigoMedicao;
    QryAux.ExecSQL;    
  finally
    QryAux.Free;
  end;
end;

end.
