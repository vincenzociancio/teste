unit u_notasfiscais;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, Db, DBTables, Grids, DBGrids, Buttons, DBCtrls, FileCtrl,
  ComCtrls, shellapi;

type
  Tf_notasfiscais = class(TForm)
    Panel1: TPanel;
    Label14: TLabel;
    me_nossaref: TMaskEdit;
    T_parametros: TTable;
    T_parametrosEmpresa: TStringField;
    T_parametrosFilial: TStringField;
    T_parametrosNumerador_Processos: TStringField;
    ds_parametros: TDataSource;
    T_processos: TTable;
    T_processosEmpresa: TStringField;
    T_processosFilial: TStringField;
    T_processosCdigo: TStringField;
    T_processosData: TDateTimeField;
    T_processosImportador: TStringField;
    T_processosCdigo_Cliente: TStringField;
    T_processosTipo_Declarao: TStringField;
    T_processosTipo: TStringField;
    T_processosContrato: TStringField;
    T_processosLocal_Inventario: TStringField;
    T_processosNR_DECL_IMP_MICRO: TStringField;
    T_processosNR_DECL_IMP_PROT: TStringField;
    T_processosNR_DECLARACAO_IMP: TStringField;
    T_processosDT_PROCESSAMENTO: TStringField;
    T_processosDT_TRANSMISSAO: TStringField;
    T_processosDT_REGISTRO_DI: TStringField;
    T_processosDT_DESEMBARACO: TDateTimeField;
    T_processosCanal: TStringField;
    T_processosFiscal: TStringField;
    T_processosStatus: TStringField;
    T_processosCOD_SIT: TStringField;
    T_processosCD_MOTIVO_TRANS: TStringField;
    T_processosIN_MOEDA_UNICA: TBooleanField;
    T_processosTX_INFO_COMPL: TMemoField;
    T_processosCD_TIPO_PGTO_TRIB: TStringField;
    T_processosNumero_RCR: TStringField;
    T_processosData_Entrada_RCR: TDateTimeField;
    T_processosData_Aprovacao_RCR: TDateTimeField;
    T_processosFundamentacao_RCR: TStringField;
    T_processosProcurador: TStringField;
    T_processosNumero_TR: TStringField;
    T_processosData_Entrada_TR: TDateTimeField;
    T_processosData_Aprovacao_TR: TDateTimeField;
    T_processosTipo_Garantia: TStringField;
    T_processosNome_banco_GAR: TStringField;
    T_processosAgencia_GAR: TStringField;
    T_processosData_deposito_GAR: TDateTimeField;
    T_processosNome_titulo_GAR: TStringField;
    T_processosnumeros_titulos_GAR: TStringField;
    T_processosNome_seguradora_GAR: TStringField;
    T_processosapolice_GAR: TStringField;
    T_processosnome_fiador_GAR: TStringField;
    T_processosCNPJ_fiador_GAR: TStringField;
    T_processosendereco_fiador_GAR: TStringField;
    T_processosQuantidade_LI: TFloatField;
    T_processosValor_FOB: TFloatField;
    T_processosValor_CIF: TFloatField;
    ds_processos: TDataSource;
    Q_itens: TQuery;
    ds_qitens: TDataSource;
    dbg_itens: TDBGrid;
    CB_TIPONF: TComboBox;
    Label1: TLabel;
    me_nf: TMaskEdit;
    T_numnotas: TTable;
    ds_numnotas: TDataSource;
    T_numnotasEmpresa: TStringField;
    T_numnotasFilial: TStringField;
    T_numnotasCodigo: TStringField;
    T_numnotasTipo: TStringField;
    T_numnotasNumero: TStringField;
    Label2: TLabel;
    Label3: TLabel;
    cb_layout: TComboBox;
    b_nota: TBitBtn;
    Panel2: TPanel;
    Label18: TLabel;
    DBE_emissao: TDBEdit;
    Label19: TLabel;
    DBE_dtmov: TDBEdit;
    Label20: TLabel;
    DBE_hora: TDBEdit;
    Label4: TLabel;
    DBL_NATOPER: TDBLookupComboBox;
    Label5: TLabel;
    DBE_cfop: TDBEdit;
    Label6: TLabel;
    DBE_inscest1: TDBEdit;
    DBE_da1: TDBEdit;
    DBE_da2: TDBEdit;
    DBE_da3: TDBEdit;
    DBE_da4: TDBEdit;
    DBE_da5: TDBEdit;
    DBE_da6: TDBEdit;
    DBE_da7: TDBEdit;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label7: TLabel;
    DBE_nome: TDBEdit;
    DBE_endereco: TDBEdit;
    DBE_bairro: TDBEdit;
    DBE_municipio: TDBEdit;
    DBE_uf: TDBEdit;
    Label16: TLabel;
    Label13: TLabel;
    DBE_cep: TDBEdit;
    Label10: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    DBE_cnpj: TDBEdit;
    DBE_fone: TDBEdit;
    DBE_inscest2: TDBEdit;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    DBE_placa: TDBEdit;
    DBE_uftrans: TDBEdit;
    DBE_especie: TDBEdit;
    DBE_marca: TDBEdit;
    DBE_numero: TDBEdit;
    DBL_transportador: TDBLookupComboBox;
    DBListBox1: TDBListBox;
    Panel3: TPanel;
    B_grava: TBitBtn;
    B_fecha: TBitBtn;
    T_notasfiscais: TTable;
    ds_notasfiscais: TDataSource;
    t_natoper: TTable;
    t_natoperCdigo: TStringField;
    t_natoperDescrio: TStringField;
    t_natoperCFOP: TStringField;
    ds_natoper: TDataSource;
    T_transportadores: TTable;
    ds_transportadores: TDataSource;
    T_transportadoresEmpresa: TStringField;
    T_transportadoresFilial: TStringField;
    T_transportadoresCodigo: TStringField;
    T_transportadoresRazoSocial: TStringField;
    T_transportadoresPas: TStringField;
    T_transportadoresCGCCPF: TStringField;
    T_transportadoresEndereo: TStringField;
    T_transportadoresNmero: TStringField;
    T_transportadoresComplemento: TStringField;
    T_transportadoresBairro: TStringField;
    T_transportadoresCidade: TStringField;
    T_transportadoresCEP: TStringField;
    T_transportadoresUF: TStringField;
    T_transportadoresEstado: TStringField;
    T_transportadoresInscrioEstadual: TStringField;
    T_importadores: TTable;
    ds_importadores: TDataSource;
    T_importadoresEmpresa: TStringField;
    T_importadoresFilial: TStringField;
    T_importadoresCodigo: TStringField;
    T_importadoresRazoSocial: TStringField;
    T_importadoresPas: TStringField;
    T_importadoresCGCCPF: TStringField;
    T_importadoresTipoImportador: TStringField;
    T_importadoresEndereo: TStringField;
    T_importadoresNmero: TStringField;
    T_importadoresComplemento: TStringField;
    T_importadoresBairro: TStringField;
    T_importadoresCidade: TStringField;
    T_importadoresCEP: TStringField;
    T_importadoresUF: TStringField;
    T_importadoresEstado: TStringField;
    T_importadoresInscrioEstadual: TStringField;
    T_importadoresBanco: TStringField;
    T_importadoresAgencia: TStringField;
    T_importadoresConta_Corrente: TStringField;
    T_exportadores: TTable;
    ds_exportadores: TDataSource;
    T_exportadoresEmpresa: TStringField;
    T_exportadoresFilial: TStringField;
    T_exportadoresCodigo: TStringField;
    T_exportadoresRazoSocial: TStringField;
    T_exportadoresPas: TStringField;
    T_exportadoresCGCCPF: TStringField;
    T_exportadoresEndereo: TStringField;
    T_exportadoresNmero: TStringField;
    T_exportadoresComplemento: TStringField;
    T_exportadoresBairro: TStringField;
    T_exportadoresCidade: TStringField;
    T_exportadoresCEP: TStringField;
    T_exportadoresUF: TStringField;
    T_exportadoresEstado: TStringField;
    T_exportadoresInscrioEstadual: TStringField;
    T_detalhes: TTable;
    ds_detalhes: TDataSource;
    T_unidade: TTable;
    ds_unidade: TDataSource;
    T_unidadeCODIGO: TStringField;
    T_unidadeDESCRICAO: TStringField;
    T_notasfiscaisEmpresa: TStringField;
    T_notasfiscaisFilial: TStringField;
    T_notasfiscaisImportador: TStringField;
    T_notasfiscaisProcesso: TStringField;
    T_notasfiscaisTiponf: TStringField;
    T_notasfiscaisNFiscal: TStringField;
    T_notasfiscaisLayout: TStringField;
    T_notasfiscaisNatOpe: TStringField;
    T_notasfiscaisCFOP: TStringField;
    T_notasfiscaisInscEstadual: TStringField;
    T_notasfiscaisDI: TStringField;
    T_notasfiscaisADICAO: TStringField;
    T_notasfiscaisNomedestrem: TStringField;
    T_notasfiscaisCNPJCPF: TStringField;
    T_notasfiscaisEndereco: TStringField;
    T_notasfiscaisBairrodistrito: TStringField;
    T_notasfiscaisCep: TStringField;
    T_notasfiscaisMunicipio: TStringField;
    T_notasfiscaisFoneFax: TStringField;
    T_notasfiscaisUF: TStringField;
    T_notasfiscaisInscEstDestRem: TStringField;
    T_notasfiscaisDtEmissao: TDateTimeField;
    T_notasfiscaisDtsaidaentrada: TDateTimeField;
    T_notasfiscaisHorasaida: TDateTimeField;
    T_notasfiscaisDuplicataNr: TStringField;
    T_notasfiscaisVencimento: TDateTimeField;
    T_notasfiscaisValor: TFloatField;
    T_notasfiscaisCondEspeciais: TStringField;
    T_notasfiscaisDA1: TStringField;
    T_notasfiscaisDA2: TStringField;
    T_notasfiscaisDA3: TStringField;
    T_notasfiscaisDA4: TStringField;
    T_notasfiscaisDA5: TStringField;
    T_notasfiscaisDA6: TStringField;
    T_notasfiscaisDA7: TStringField;
    T_notasfiscaisBaseCalcICMS: TFloatField;
    T_notasfiscaisValICMS: TFloatField;
    T_notasfiscaisBaseCalcICMSsubst: TFloatField;
    T_notasfiscaisValICMSsubs: TFloatField;
    T_notasfiscaisValtotprodutos: TFloatField;
    T_notasfiscaisValfrete: TFloatField;
    T_notasfiscaisValseguro: TFloatField;
    T_notasfiscaisOutrasdesp: TFloatField;
    T_notasfiscaisValtotIPI: TFloatField;
    T_notasfiscaisVatotnota: TFloatField;
    T_notasfiscaisTransportador: TStringField;
    T_notasfiscaisFrete: TStringField;
    T_notasfiscaisPlaca: TStringField;
    T_notasfiscaisUFVeiculo: TStringField;
    T_notasfiscaisQuantidade: TFloatField;
    T_notasfiscaisEspecie: TStringField;
    T_notasfiscaisMarca: TStringField;
    T_notasfiscaisNumero: TStringField;
    T_notasfiscaisPesoBruto: TFloatField;
    T_notasfiscaisPesoLiquido: TFloatField;
    T_notasfiscaisIncoterm: TStringField;
    T_notasfiscaisTaxaConversao: TFloatField;
    RichEdit1: TRichEdit;
    PrinterSetupDialog1: TPrinterSetupDialog;
    t_taxa: TTable;
    ds_taxa: TDataSource;
    t_taxaEmpresa: TStringField;
    t_taxaFilial: TStringField;
    t_taxaProcesso: TStringField;
    t_taxaMoeda: TStringField;
    t_taxaTaxa_conversao: TFloatField;
    q_custos: TQuery;
    ds_custos: TDataSource;
    q_custosEmpresa: TStringField;
    q_custosFilial: TStringField;
    q_custosProcesso: TStringField;
    q_custosFatura: TStringField;
    q_custosSequencial: TStringField;
    q_custoscustos: TFloatField;
    DBNMSCOMEX: TDatabase;
    Q_itensEmpresa: TStringField;
    Q_itensFilial: TStringField;
    Q_itensProcessosCdigo: TStringField;
    Q_itensProduto: TStringField;
    Q_itensDescricao_Produto: TStringField;
    Q_itensFaturasCdigo: TStringField;
    Q_itensmoeda: TStringField;
    Q_itensExportador: TStringField;
    Q_itensAdicao: TStringField;
    Q_itensqtdtrib: TFloatField;
    Q_itensSeq_Adicao: TSmallintField;
    Q_itensIncoterm: TStringField;
    Q_itensSequencial: TStringField;
    Q_itensNCM: TStringField;
    Q_itensUnidade: TStringField;
    Q_itensQuantidade: TFloatField;
    Q_itensValorUnitrio: TFloatField;
    Q_itensValorTotal: TFloatField;
    Q_itensPesoUnitrio: TFloatField;
    Q_itensPeso_Unitario_Acertado: TFloatField;
    Q_itensPesoTotal: TFloatField;
    Q_itensPeso_Total_Acertado: TFloatField;
    Q_itensSaldo_Tributavel: TFloatField;
    Q_itensRateio_Acrescimos: TFloatField;
    Q_itensRateio_Deducoes: TFloatField;
    Q_itensRateio_Embalagem: TFloatField;
    Q_itensRateio_Frete_Interno_imp: TFloatField;
    Q_itensRateio_Seguro_Interno: TFloatField;
    Q_itensRateio_outras_import: TFloatField;
    Q_itensRateio_startup: TFloatField;
    Q_itensRateio_jurosfin: TFloatField;
    Q_itensRateio_montagem: TFloatField;
    Q_itensRateio_Frete_Interno_exp: TFloatField;
    Q_itensRateio_carga_exp: TFloatField;
    Q_itensRateio_outras_export: TFloatField;
    Q_itensRateio_frete_fatura: TFloatField;
    Q_itensRateio_seguro_fatura: TFloatField;
    Q_itensRateio_carga_imp: TFloatField;
    Q_itensRateio_Despesas_ate_FOB: TFloatField;
    Q_itensRateio_Frete_prepaid: TFloatField;
    Q_itensRateio_Frete_collect: TFloatField;
    Q_itensRateio_Frete_ternac: TFloatField;
    Q_itensRateio_Seguro: TFloatField;
    Q_itensValor_Aduaneiro: TFloatField;
    Q_itensValor_mercadoria: TFloatField;
    Q_itensVMLE: TFloatField;
    Q_itensBase_Calc_II: TFloatField;
    Q_itensAcresc_reduc_Valaduan: TFloatField;
    Q_itensRegime_Tributacao_II: TStringField;
    Q_itensAliq_NCM_II: TFloatField;
    Q_itensValor_II_Devido: TFloatField;
    Q_itensValor_II_a_recolher: TFloatField;
    Q_itensFundamento_Legal_II: TStringField;
    Q_itensNumero_Ato_Legal_II: TStringField;
    Q_itensRegime_Tributacao_IPI: TStringField;
    Q_itensBase_Calc_IPI: TFloatField;
    Q_itensAliq_NCM_IPI: TFloatField;
    Q_itensValor_IPI_Devido: TFloatField;
    Q_itensValor_IPI_a_recolher: TFloatField;
    Q_itensNumero_Ato_Legal_IPI: TStringField;
    Q_itensPercentual_Reducao_II: TFloatField;
    Q_itensPercentual_EX: TFloatField;
    Q_itensPercentual_Reduca_IPI: TFloatField;
    Q_itensSequencial_item: TStringField;
    t_produtos: TTable;
    ds_produtos: TDataSource;
    t_produtosEmpresa: TStringField;
    t_produtosFilial: TStringField;
    t_produtosCdigo: TStringField;
    t_produtosDescrio: TMemoField;
    t_produtosNCM: TStringField;
    t_produtosImportador: TStringField;
    t_produtosFabricante: TStringField;
    t_produtosUnidade: TStringField;
    t_produtosPesoUnitrio: TFloatField;
    t_produtosValorUnitrio: TFloatField;
    t_produtosMoeda: TStringField;
    t_produtosUnidade_Medida_Estat: TStringField;
    t_produtosDestaque_NCM: TStringField;
    t_produtosNALADI: TStringField;
    Edit1: TEdit;
    Button1: TButton;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    T_detalhesEmpresa: TStringField;
    T_detalhesFilial: TStringField;
    T_detalhesImportador: TStringField;
    T_detalhesProcesso: TStringField;
    T_detalhesTiponf: TStringField;
    T_detalhesNFiscal: TStringField;
    T_detalhesSequencial: TStringField;
    T_detalhesCodproduto: TStringField;
    T_detalhesDescricao: TStringField;
    T_detalhesClassificacao: TStringField;
    T_detalhesST: TStringField;
    T_detalhesUnidade: TStringField;
    T_detalhesQuantidade: TFloatField;
    T_detalhesValorMercadoria: TFloatField;
    T_detalhesFreteUnitrio: TFloatField;
    T_detalhesSeguroUnitrio: TFloatField;
    T_detalhesAcrescimoUnitrio: TFloatField;
    T_detalhesDeduoUnitrio: TFloatField;
    T_detalhesTributoUnitrio: TFloatField;
    T_detalhesValorunitrio: TFloatField;
    T_detalhesValortotal: TFloatField;
    T_detalhesAliquotaICMS: TFloatField;
    T_detalhesAliquotaIPI: TFloatField;
    T_detalhesValIPI: TFloatField;
    t_conhecimento: TTable;
    t_conhecimentoEmpresa: TStringField;
    t_conhecimentoFilial: TStringField;
    t_conhecimentoProcesso: TStringField;
    t_conhecimentoVia: TStringField;
    t_conhecimentoMultimodal: TBooleanField;
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
    t_conhecimentoOperacao_FUNDAP: TBooleanField;
    t_conhecimentoContratante_OPCAMBIAL: TStringField;
    t_conhecimentoMoeda_Frete: TStringField;
    t_conhecimentoFrete_Prepaid: TFloatField;
    t_conhecimentoFrete_Collect: TFloatField;
    t_conhecimentoFrete_Ter_Nac: TFloatField;
    t_conhecimentoMoeda_Seguro: TStringField;
    t_conhecimentoValor_Seguro: TFloatField;
    t_conhecimentoMoeda_Despesas_ate_FOB: TStringField;
    t_conhecimentoValor_Despesas_ate_FOB: TFloatField;
    procedure me_nossarefExit(Sender: TObject);
    procedure me_nossarefKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CB_TIPONFChange(Sender: TObject);
    procedure me_nfExit(Sender: TObject);
    procedure CB_TIPONFKeyPress(Sender: TObject; var Key: Char);
    procedure me_nfKeyPress(Sender: TObject; var Key: Char);
    procedure cb_layoutKeyPress(Sender: TObject; var Key: Char);
    procedure cb_layoutChange(Sender: TObject);
    procedure b_notaClick(Sender: TObject);
    procedure B_fechaClick(Sender: TObject);
    procedure dbg_itensExit(Sender: TObject);
    procedure B_gravaClick(Sender: TObject);
    procedure imprimenota(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure t_natoperAfterScroll(DataSet: TDataSet);
    procedure DBL_NATOPERClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_notasfiscais: Tf_notasfiscais;
  v_valacresval: real;
  v_valdeduval: real;
  v_txfreteinter: real;
  v_txsegurointer: real;
  v_txtributoii: real;
  v_txtributoipi: real;
  v_unitario: real;
  v_unitarioH: real;
  v_unitarioF: real;
  v_valtotpro: real;
  v_valtotfrete: real;
  v_valtotseguro: real;
  v_valtotIPI: real;
  v_valtotnota: real;
  vl_empresa: string;
  vl_filial: string;
  vl_usuario: string;
  vl_nfiscal: string;
  v_pesobrutodi    :real;
  v_pesoliquidodi  :real;
  v_pesoliquido    :real;
  v_pesobruto      :real;
  v_txpeso         :real;
  v_pesoliquidoadi :real;
  v_nf: string;
  v_ii: real;
  v_fob: real;
  v_textonota: textfile;
  v_textobat: textfile;
  v_nometrans      :string;
  v_cgctrans       :string;
  v_endtrans       :string;
  v_baitrans       :string;
  v_cidtrans       :string;
  v_ceptrans       :string;
  v_uftrans        :string;
  v_instrans       :string;
  v_itens          :integer;
  v_itens2         :integer;
  v_notas          :integer;
  v_qnota          :integer;
    v_Empresa: string;
    v_Filial: string;
    v_importador:string;
    v_processo:string;
    v_NFiscal: string;
    v_tinponf:string;
    v_layout:string;
    v_NatOpe:string;
    v_CFOP: string;
    v_InscEstadual: string;
    v_DI: string;
    v_ADICAO: string;
    v_Nomedestrem: string;
    v_CNPJCPF: string;
    v_Endereco: string;
    v_Bairrodistrito: string;
    v_Cep: string;
    v_Municipio: string;
    v_FoneFax: string;
    v_UF: string;
    v_InscEstDestRem: string;
    v_DtEmissao: TDate;
    v_Dtsaidaentrada: TDate;
    v_Horasaida: TDate;
    v_DuplicataNr: string;
    v_Vencimento: TDate;
    v_CondEspeciais: string;
    v_Transportador: string;
    v_Frete: string;
    v_Placa: string;
    v_UFVeiculo: string;
    v_Especie: string;
    v_Marca: string;
    v_Numero: string;
    v_Tiponf: string;
    v_taxa:real;
    qitens: integer;
    v_da1:string;
    v_da2:string;
    v_da3:string;
    v_da4:string;
    v_da5:string;
    imprime:boolean;
    v_custos:real;
    v_ncm:string;
    totalitens:integer;
    v_pl_total,v_pb_total:real;



implementation

uses u_extenso;

{$R *.DFM}

procedure Tf_notasfiscais.me_nossarefExit(Sender: TObject);
begin
   if not t_processos.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,ME_nossaref.text]) then begin
      MessageDlg('Processo não cadastrado!', mtInformation,[mbOk], 0);
      ME_nossaref.text    := '';
      ME_nossaref.setfocus;
   end
   else begin
      q_itens.close;
      q_itens.params[0].asstring := t_parametrosempresa.asstring;
      q_itens.params[1].asstring := t_parametrosfilial.asstring;
      q_itens.params[2].asstring := me_nossaref.text;
      q_itens.ExecSQL;
      q_itens.active := true;
      dbg_itens.setfocus;
   end;
end;

procedure Tf_notasfiscais.me_nossarefKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = chr(13) then dbg_itens.setfocus;
end;

procedure Tf_notasfiscais.FormActivate(Sender: TObject);
begin
f_notasfiscais.left := 0;
f_notasfiscais.top  := 0;
end;

procedure Tf_notasfiscais.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
{action   := cafree;
f_notasfiscais := nil;
f_mscomex.notasfiscais2.enabled := true;
 }
end;

procedure Tf_notasfiscais.CB_TIPONFChange(Sender: TObject);
begin
if t_numnotas.findkey([t_processosempresa.asstring,t_processosfilial.asstring,t_processosimportador,copy(CB_TIPONF.text,1,1)]) then begin
   me_nf.text := inttostr(strtoint(t_numnotasnumero.asstring)+1);
end
else begin
   t_numnotas.append;
   T_numnotasEmpresa.asstring := t_processosempresa.asstring;
   T_numnotasFilial.asstring  := t_processosfilial.asstring;
   T_numnotasCodigo.asstring  := t_processosimportador.asstring;
   T_numnotasTipo.asstring    := copy(CB_TIPONF.text,1,1);
   T_numnotasNumero.asstring  := '0';
   t_numnotas.post;
   me_nf.text := inttostr(strtoint(t_numnotasnumero.asstring)+1);
end;
end;

procedure Tf_notasfiscais.me_nfExit(Sender: TObject);
begin
if t_numnotas.findkey([t_processosempresa.asstring,t_processosfilial.asstring,t_processosimportador,copy(CB_TIPONF.text,1,1)]) then begin
   if strtoint(t_numnotasnumero.asstring) >= strtoint(me_nf.text) then begin
      MessageDlg('Próxima Nota Fiscal não pode ser menor que Notas Fiscais já Emitidas!', mtInformation,[mbOk], 0);
      me_nf.text := inttostr(strtoint(t_numnotasnumero.asstring)+1);
      ME_nf.setfocus;
   end;
end;
end;

procedure Tf_notasfiscais.CB_TIPONFKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = chr(13) then me_nf.setfocus;
end;

procedure Tf_notasfiscais.me_nfKeyPress(Sender: TObject; var Key: Char);
begin
   if key = chr(13) then cb_layout.setfocus;
end;

procedure Tf_notasfiscais.cb_layoutKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = chr(13) then begin
      b_nota.enabled := true;
      b_nota.setfocus;
   end;
end;

procedure Tf_notasfiscais.cb_layoutChange(Sender: TObject);
begin
b_nota.enabled := true;
end;

procedure Tf_notasfiscais.b_notaClick(Sender: TObject);
var i:integer;
    qfor:string;
    qfat:string;
    qncm:string;
    qitens:integer;
    qnotas:integer;
    vitens:integer;
    qtamanho:integer;

begin

if t_notasfiscais.findkey([t_processosempresa.asstring,t_processosfilial.asstring,t_processosimportador.asstring,t_processoscdigo.asstring,copy(cb_tiponf.text,1,1),me_nf.text]) then begin
   MessageDlg('Nota Fiscal já gravada para este Importador!', mtInformation,[mbOk], 0);
   panel2.visible     := false;
   ME_nf.setfocus;

end
else begin
     qitens := 5;
     if copy(cb_layout.text,1,1) = '1' then qitens := 25;
     if copy(cb_layout.text,1,1) = '2' then qitens := 25;
     if copy(cb_layout.text,1,1) = '3' then qitens := 22;
     if copy(cb_layout.text,1,1) = '4' then qitens := 18;

     if dbg_itens.SelectedRows.Count>0 then
        with dbg_itens.DataSource.DataSet do GotoBookmark(pointer(dbg_itens.SelectedRows.Items[0]));
        qfor := dbg_itens.fields[0].asstring;
        qfat := dbg_itens.fields[1].asstring;
        qncm := dbg_itens.fields[8].asstring;
        qnotas := 1;
        vitens := 0;
        with dbg_itens.DataSource.DataSet do
        for i:=0 to dbg_itens.SelectedRows.Count-1 do
        begin
           GotoBookmark(pointer(dbg_itens.SelectedRows.Items[i]));
           if ((qfor <> dbg_itens.fields[0].asstring) or
               ////alterado marcelo 22/03/2002
               ////((qfat <> dbg_itens.fields[1].asstring) and (copy(cb_layout.text,1,1) = '3')) or
               ((qncm <> dbg_itens.fields[8].asstring) and (copy(cb_layout.text,1,1) = '4')) or
               (vitens=qitens)) then begin
               qfor := dbg_itens.fields[0].asstring;
               qfat := dbg_itens.fields[1].asstring;
               qncm := dbg_itens.fields[8].asstring;
               qnotas := qnotas+1;
               vitens := 1;
               end
          else begin
               vitens := vitens+1;
          end;
          {verificar produtos}
          T_produtos.findkey([T_parametrosEmpresa.asstring,T_parametrosFilial.asstring,dbg_itens.fields[5].asstring]);
          qtamanho := 58;
          vitens := vitens+ (strtoint(floattostr(int(length(TRIM(t_produtosdescrio.asstring))/qtamanho)))-1);
          totalitens := vitens;
        end;

    if MessageDlg('Confirma geração de'+ inttostr(qnotas)+' nota(s) fiscai(s)?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
        if MessageDlg('Imprime as Notas Fiscais após a geração?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then imprime:=true
        else imprime:=false;
        panel2.visible     := true;
        if t_notasfiscais.state = dsedit then t_notasfiscais.post;
        with dbg_itens.DataSource.DataSet do GotoBookmark(pointer(dbg_itens.SelectedRows.Items[0]));
        qfor := dbg_itens.fields[0].asstring;
        t_exportadores.findkey([t_processosempresa.asstring,t_processosfilial.asstring,qfor]);

    T_notasfiscais.append;
    T_notasfiscaisEmpresa.asstring := t_processosempresa.asstring;
    T_notasfiscaisFilial.asstring := t_processosfilial.asstring;
    T_notasfiscaisImportador.asstring := t_processosimportador.asstring;
    T_notasfiscaisProcesso.asstring := t_processoscdigo.asstring;
    T_notasfiscaisTiponf.asstring := copy(cb_tiponf.text,1,1);
    T_notasfiscaisNFiscal.asstring := me_nf.text;
    T_notasfiscaislayout.asstring := copy(cb_layout.text,1,1);
    {T_notasfiscaisNatOpe.asstring :=
    T_notasfiscaisCFOP.asstring :=}
    T_notasfiscaisInscEstadual.asstring := T_exportadoresInscrioEstadual.asstring;
    {T_notasfiscaisDI.asstring :=
    T_notasfiscaisADICAO.asstring :=}
    T_notasfiscaisNomedestrem.asstring :=  T_exportadoresRazoSocial.asstring;
    T_notasfiscaisCNPJCPF.asstring :=  T_exportadoresCGCCPF.asstring;
    T_notasfiscaisEndereco.asstring := T_exportadoresEndereo.asstring;
    T_notasfiscaisBairrodistrito.asstring := T_exportadoresBairro.asstring;
    T_notasfiscaisCep.asstring :=  T_exportadoresCEP.asstring;
    T_notasfiscaisMunicipio.asstring := T_exportadoresCidade.asstring;
    {T_notasfiscaisFoneFax.asstring :=}
    T_notasfiscaisUF.asstring := T_exportadoresUF.asstring;
    {T_notasfiscaisInscEstDestRem.asstring :=}
    T_notasfiscaisDtEmissao.asdatetime := date();
    T_notasfiscaisDtsaidaentrada.asdatetime := date();
    {T_notasfiscaisHorasaida: TDateTimeField;}
    {T_notasfiscaisDuplicataNr.asstring :=
    T_notasfiscaisVencimento: TDateTimeField;
    T_notasfiscaisValor: TFloatField;
    T_notasfiscaisCondEspeciais.asstring :=}

    {verificar os termos por importador}
    T_notasfiscaisDA1.asstring := 'ICMS diferido conforme Termo de Acordo nr 1594/98 A53';
    T_notasfiscaisDA2.asstring := 'Fatura Nr '+ dbg_itens.fields[1].asstring;
    T_notasfiscaisDA3.asstring := 'DI Nr '+ T_processosNR_DECLARACAO_IMP.asstring +' - DI DATA '+ copy(T_processosDT_REGISTRO_DI.asstring,1,2)+'/'+copy(T_processosDT_REGISTRO_DI.asstring,3,2)+'/'+copy(T_processosDT_REGISTRO_DI.asstring,5,4);

    {T_notasfiscaisDA4.asstring :=
    T_notasfiscaisDA5.asstring :=
    T_notasfiscaisDA6.asstring :=
    T_notasfiscaisDA7.asstring :=
    T_notasfiscaisBaseCalcICMS: TFloatField;
    T_notasfiscaisValICMS: TFloatField;
    T_notasfiscaisBaseCalcICMSsubst: TFloatField;
    T_notasfiscaisValICMSsubs: TFloatField;
    T_notasfiscaisValtotprodutos: TFloatField;
    T_notasfiscaisValfrete: TFloatField;
    T_notasfiscaisValseguro: TFloatField;
    T_notasfiscaisOutrasdesp: TFloatField;
    T_notasfiscaisValtotIPI: TFloatField;
    T_notasfiscaisVatotnota: TFloatField;
    T_notasfiscaisTransportador.asstring :=
    T_notasfiscaisFrete.asstring :=
    T_notasfiscaisPlaca.asstring :=
    T_notasfiscaisUFVeiculo.asstring :=
    T_notasfiscaisQuantidade: TFloatField;
    T_notasfiscaisEspecie.asstring :=
    T_notasfiscaisMarca.asstring :=
    T_notasfiscaisNumero.asstring :=
    T_notasfiscaisPesoBruto: TFloatField;
    T_notasfiscaisPesoLiquido: TFloatField;
    T_notasfiscaisIncoterm.asstring :=}
    if t_taxa.findkey([t_notasfiscaisempresa.asstring,t_notasfiscaisfilial.asstring,t_notasfiscaisprocesso.asstring,dbg_itens.fields[58].asstring]) then
       T_notasfiscaisTaxaConversao.asfloat   := t_taxataxa_conversao.asfloat
    else T_notasfiscaisTaxaConversao.asfloat := 1 ;
    T_notasfiscais.post;

end;

end;

end;

procedure Tf_notasfiscais.B_fechaClick(Sender: TObject);
begin
panel2.visible := false;
t_notasfiscais.delete;
end;

procedure Tf_notasfiscais.dbg_itensExit(Sender: TObject);
begin
if ((dbg_itens.SelectedRows.Count=0) and (q_itens.recordcount>0)) then begin
   MessageDlg('Selecione os itens para emissão da Nota Fiscal!', mtInformation,[mbOk], 0);
   dbg_itens.setfocus;
end
else cb_tiponf.SetFocus;

end;

procedure Tf_notasfiscais.B_gravaClick(Sender: TObject);
var i:integer;
    qfor:string;
    qfat:string;
    qncm:string;
    qitens:integer;
    vitens:integer;
    vquebra:integer;    
    qpega:integer;
    qtamanho:integer;

begin
        v_pl_total := t_conhecimentopeso_liquido.asfloat;
        v_pb_total := t_conhecimentopeso_bruto.asfloat;
        
        if t_numnotas.findkey([t_notasfiscaisempresa.asstring,t_notasfiscaisfilial.asstring,t_notasfiscaisimportador.asstring,t_notasfiscaistiponf.asstring]) then begin
           t_numnotas.edit;
           T_numnotasNumero.asstring  := t_notasfiscaisnfiscal.asstring;
           t_numnotas.post;
        end;
{        MessageDlg('Notas fiscais nº '+t_notasfiscaisnfiscal.asstring, mtInformation,[mbOk], 0);}

        v_Empresa       := T_notasfiscaisEmpresa       .asstring;
        v_Filial        := T_notasfiscaisFilial        .asstring;
        v_importador    := t_notasfiscaisimportador    .asstring;
        v_processo      := t_notasfiscaisprocesso      .asstring;
        v_tiponf        := t_notasfiscaistiponf.asstring;
        v_layout        := t_notasfiscaislayout.asstring;
        v_NFiscal       := T_notasfiscaisNFiscal       .asstring;
        v_NatOpe        := T_notasfiscaisNatOpe        .asstring;
        v_CFOP          := T_notasfiscaisCFOP          .asstring;
        v_InscEstadual  := T_notasfiscaisInscEstadual  .asstring;
        v_DI            := T_notasfiscaisDI            .asstring;
        v_ADICAO        := T_notasfiscaisADICAO        .asstring;
        v_Nomedestrem   := T_notasfiscaisNomedestrem   .asstring;
        v_CNPJCPF       := T_notasfiscaisCNPJCPF       .asstring;
        v_Endereco      := T_notasfiscaisEndereco      .asstring;
        v_Bairrodistrito:= T_notasfiscaisBairrodistrito.asstring;
        v_Cep           := T_notasfiscaisCep           .asstring;
        v_Municipio     := T_notasfiscaisMunicipio     .asstring;
        v_FoneFax       := T_notasfiscaisFoneFax       .asstring;
        v_UF            := T_notasfiscaisUF            .asstring;
        v_InscEstDestRem:= T_notasfiscaisInscEstDestRem.asstring;
        v_DtEmissao     := T_notasfiscaisDtEmissao     .asdatetime;
        v_Dtsaidaentrada:= T_notasfiscaisDtsaidaentrada.asdatetime;
        v_Horasaida     := T_notasfiscaisHorasaida     .asdatetime;
        v_DuplicataNr   := T_notasfiscaisDuplicataNr   .asstring;
        v_Vencimento    := T_notasfiscaisVencimento    .asdatetime;
        v_CondEspeciais := T_notasfiscaisCondEspeciais .asstring;
        v_Transportador := T_notasfiscaisTransportador .asstring;
        v_Frete         := T_notasfiscaisFrete         .asstring;
        v_Placa         := T_notasfiscaisPlaca         .asstring;
        v_UFVeiculo     := T_notasfiscaisUFVeiculo     .asstring;
        v_Especie       := T_notasfiscaisEspecie       .asstring;
        v_Marca         := T_notasfiscaisMarca         .asstring;
        v_Numero        := T_notasfiscaisNumero        .asstring;
        v_Tiponf        := T_notasfiscaisTiponf        .asstring;
        v_da1           := T_notasfiscaisDA1.asstring;
        v_da2           := 'Fatura Nr '+ dbg_itens.fields[1].asstring;
        v_da3           := T_notasfiscaisDA3.asstring;
        v_da4           := T_notasfiscaisDA4.asstring;
        v_da5           := T_notasfiscaisDA5.asstring;

        v_valtotpro    := 0;
        v_valtotfrete  := 0;
        v_valtotseguro := 0;
        v_valtotIPI    := 0;
        v_valtotnota   := 0;
        v_fob          := 0;
        v_ii           := 0;
        qitens := 5;
        if copy(cb_layout.text,1,1) = '1' then qitens := 25;
        if copy(cb_layout.text,1,1) = '2' then qitens := 25;
        if copy(cb_layout.text,1,1) = '3' then qitens := 22;
        if copy(cb_layout.text,1,1) = '4' then qitens := 18;

        if dbg_itens.SelectedRows.Count>0 then
        with dbg_itens.DataSource.DataSet do GotoBookmark(pointer(dbg_itens.SelectedRows.Items[0]));
        qfor := dbg_itens.fields[0].asstring;
        qfat := dbg_itens.fields[1].asstring;
        qncm := dbg_itens.fields[8].asstring;
        vitens := 0;
        with dbg_itens.DataSource.DataSet do
        for i:=0 to dbg_itens.SelectedRows.Count-1 do
        begin
           GotoBookmark(pointer(dbg_itens.SelectedRows.Items[i]));
{           showmessage('Nota fiscal: '+v_nfiscal+#13#10+
           'Fornecedor: '+qfor+' - '+dbg_itens.fields[0].asstring+#13#10+
           'Fatura: '+qfat+' - '+dbg_itens.fields[1].asstring+#13#10+
           'Ncm: '+qncm+' - '+dbg_itens.fields[8].asstring+#13#10+
           'Itens por página: '+inttostr(qitens)+' - atual: '+inttostr(vitens));
}
           {verificar produtos}
           qtamanho := 58;
           T_produtos.findkey([v_empresa,v_filial,dbg_itens.fields[5].asstring]);
           vquebra := strtoint(floattostr(int(length(trim(t_produtosdescrio.asstring ))/qtamanho)));
           if (vitens+vquebra)>qitens then vitens := qitens;

           if ((qfor <> dbg_itens.fields[0].asstring) or
               ////alterado marcelo 22/03/2002
               ////((qfat <> dbg_itens.fields[1].asstring) and (copy(cb_layout.text,1,1) = '3')) or
               ((qncm <> dbg_itens.fields[8].asstring) and (copy(cb_layout.text,1,1) = '4')) or
               (vitens=qitens)) then begin
               qfor := dbg_itens.fields[0].asstring;
               qfat := dbg_itens.fields[1].asstring;
               qncm := dbg_itens.fields[8].asstring;
               vitens := 1;
               t_notasfiscais.edit;

               {v_pesobrutodi    := strtofloat(copy(T_diPB_CARGA.asstring,1,10)+','+copy(T_diPB_CARGA.asstring,11,5));
               v_pesoliquidodi  := strtofloat(copy(T_diPL_CARGA.asstring,1,10)+','+copy(T_diPL_CARGA.asstring,11,5));
               v_txpeso         := (v_pesobrutodi/v_pesoliquidodi);
               v_pesoliquidoadi := strtofloat(COPY(T_adicaoPL_MERCADORIA.asstring,1,10)+','+COPY(T_adicaoPL_MERCADORIA.asstring,11,5));}

               {T_notasfiscaisPesoBruto.asfloat      := (v_pesoliquidoadi*v_txpeso);
               T_notasfiscaisPesoLiquido.asfloat    := v_pesoliquidoadi;}

               T_notasfiscaisPesoBruto.asfloat      := ((v_pb_total*((100*v_pesoliquido)/v_pl_total))/100);
               T_notasfiscaisPesoLiquido.asfloat    := v_pesoliquido;

               T_notasfiscaisValtotprodutos.asfloat := v_valtotpro;
               {T_nfiscaisValfrete.asfloat          := v_valtotfrete;
               T_nfiscaisValseguro.asfloat          := v_valtotseguro;}
               T_notasfiscaisValtotIPI.asfloat      := v_valtotIPI;
               T_notasfiscaisVatotnota.asfloat      := v_valtotnota;
               T_notasfiscaisDA4.asstring           := 'FOB    R$ '+ floattostrf(v_fob,ffNumber,15,2);
               T_notasfiscaisDA5.asstring           := 'II     R$ '+ floattostrf(v_ii,ffNumber,15,2);
               T_notasfiscaisDA6.asstring           := 'FRETE  R$ '+ floattostrf(v_valtotfrete,ffNumber,15,2);
               T_notasfiscaisDA7.asstring           := 'SEGURO R$ '+ floattostrf(v_valtotseguro,ffNumber,15,2);

               if t_notasfiscaistiponf.asstring = 'S' then begin
                  T_notasfiscaisBaseCalcICMS.asfloat   := (T_notasfiscaisValtotprodutos.asfloat);
                  T_notasfiscaisValICMS.asfloat        := (T_notasfiscaisBaseCalcICMS.asfloat*(T_detalhesAliquotaICMS.asfloat/100));
               end
               else begin
                  if T_notasfiscaisCFOP.asstring = '397' then begin
                     T_notasfiscaisBaseCalcICMS.asfloat   := (T_notasfiscaisVatotnota.asfloat/0.82);
                     T_notasfiscaisValICMS.asfloat        := (T_notasfiscaisBaseCalcICMS.asfloat-T_notasfiscaisVatotnota.asfloat);
                  end
                  else begin
                     T_notasfiscaisBaseCalcICMS.asfloat   := 0;
                     T_notasfiscaisValICMS.asfloat        := 0;
                  end;
               end;

               t_notasfiscais.post;
               imprimenota(f_notasfiscais);

               {nova nota}
               v_nfiscal  := inttostr(strtoint(v_nfiscal)+1);

               {MessageDlg('Notas fiscais nº '+v_nfiscal, mtInformation,[mbOk], 0);}

                t_notasfiscais.append;
                T_notasfiscaisEmpresa       .asstring:=        v_Empresa       ;
                T_notasfiscaisFilial        .asstring:=        v_Filial        ;
                t_notasfiscaisimportador    .asstring:=        v_importador    ;
                t_notasfiscaisprocesso      .asstring:=        v_processo      ;
                t_notasfiscaistiponf        .asstring:=        v_tiponf        ;
                t_notasfiscaislayout        .asstring:=        v_layout        ;
                T_notasfiscaisNFiscal       .asstring:=        v_nfiscal       ;
                T_notasfiscaisNatOpe        .asstring:=        v_NatOpe        ;
                T_notasfiscaisCFOP          .asstring:=        v_CFOP          ;
                T_notasfiscaisInscEstadual  .asstring:=        v_InscEstadual  ;
                T_notasfiscaisDI            .asstring:=        v_DI            ;
                T_notasfiscaisADICAO        .asstring:=        v_ADICAO        ;
                T_notasfiscaisNomedestrem   .asstring:=        v_Nomedestrem   ;
                T_notasfiscaisCNPJCPF       .asstring:=        v_CNPJCPF       ;
                T_notasfiscaisEndereco      .asstring:=        v_Endereco      ;
                T_notasfiscaisBairrodistrito.asstring:=        v_Bairrodistrito;
                T_notasfiscaisCep           .asstring:=        v_Cep           ;
                T_notasfiscaisMunicipio     .asstring:=        v_Municipio     ;
                T_notasfiscaisFoneFax       .asstring:=        v_FoneFax       ;
                T_notasfiscaisUF            .asstring:=        v_UF            ;
                T_notasfiscaisInscEstDestRem.asstring:=        v_InscEstDestRem;
                T_notasfiscaisDtEmissao     .asdatetime:=        v_DtEmissao     ;
                T_notasfiscaisDtsaidaentrada.asdatetime:=        v_Dtsaidaentrada;
                T_notasfiscaisHorasaida     .asdatetime:=        v_Horasaida     ;
                T_notasfiscaisDuplicataNr   .asstring:=        v_DuplicataNr   ;
                T_notasfiscaisVencimento    .asdatetime:=        v_Vencimento    ;
                T_notasfiscaisCondEspeciais .asstring:=        v_CondEspeciais ;
                T_notasfiscaisTransportador .asstring:=        v_Transportador ;
                T_notasfiscaisFrete         .asstring:=        v_Frete         ;
                T_notasfiscaisPlaca         .asstring:=        v_Placa         ;
                T_notasfiscaisUFVeiculo     .asstring:=        v_UFVeiculo     ;
                T_notasfiscaisEspecie       .asstring:=        v_Especie       ;
                T_notasfiscaisMarca         .asstring:=        v_Marca         ;
                T_notasfiscaisNumero        .asstring:=        v_Numero        ;
                T_notasfiscaisTiponf        .asstring:=        v_Tiponf        ;
                T_notasfiscaisDA1           .asstring:=        v_da1           ;
                T_notasfiscaisDA2.asstring := 'Fatura Nr '+ dbg_itens.fields[1].asstring;
                T_notasfiscaisDA3           .asstring:=        v_da3           ;
                T_notasfiscaisDA4           .asstring:=        v_da4           ;
                T_notasfiscaisDA5           .asstring:=        v_da5           ;
                if t_taxa.findkey([t_notasfiscaisempresa.asstring,t_notasfiscaisfilial.asstring,t_notasfiscaisprocesso.asstring,dbg_itens.fields[58].asstring]) then
                   T_notasfiscaisTaxaConversao.asfloat   := t_taxataxa_conversao.asfloat
                else T_notasfiscaisTaxaConversao.asfloat := 1 ;

                t_notasfiscais.post;
                {MessageDlg('Notas fiscais nº '+t_notasfiscaisnfiscal.asstring, mtInformation,[mbOk], 0);}

                if t_numnotas.findkey([t_notasfiscaisempresa.asstring,t_notasfiscaisfilial.asstring,t_notasfiscaisimportador.asstring,t_notasfiscaistiponf.asstring]) then begin
                   t_numnotas.edit;
                   T_numnotasNumero.asstring  := t_notasfiscaisnfiscal.asstring;
                   t_numnotas.post;
                end;

               v_valtotpro    := 0;
               v_valtotfrete  := 0;
               v_valtotseguro := 0;
               v_valtotIPI    := 0;
               v_valtotnota   := 0;
               v_fob          := 0;
               v_ii           := 0;
               v_pesoliquido  := 0;

               end

          else vitens := vitens+1;

               T_detalhes.append;
               T_detalhesEmpresa.asstring := v_empresa;
               T_detalhesFilial.asstring := v_filial;
               T_detalhesImportador.asstring := v_importador;
               T_detalhesProcesso.asstring := v_processo;
               T_detalhesTiponf.asstring := v_tiponf;
               T_detalhesNFiscal.asstring := v_nfiscal;
               T_detalhesSequencial.asstring := inttostr(vitens);////dbg_itens.fields[60].asstring;
               T_detalhesCodproduto.asstring := dbg_itens.fields[5].asstring;

               {verificar produtos}
               T_produtos.findkey([T_detalhesEmpresa.asstring,T_detalhesFilial.asstring,T_detalhesCodproduto.asstring]);

               qtamanho := 58;
               T_detalhesDescricao.asstring := TRIM(COPY(t_produtosdescrio.asstring,1,qtamanho));
               v_ncm := dbg_itens.fields[8].asstring;
               if copy(cb_layout.text,1,1) = '4' then T_detalhesClassificacao.asstring := '(*)'
               else T_detalhesClassificacao.asstring := dbg_itens.fields[8].asstring;
               T_detalhesST.asstring := '  ';
               t_unidade.findkey([dbg_itens.fields[9].asstring]);
               T_detalhesUnidade.asstring := t_unidadedescricao.asstring;
               T_detalhesQuantidade.asfloat := dbg_itens.fields[10].asfloat;
              {T_detalhesValorMercadoria.asfloat :=
               T_detalhesFreteUnitrio.asfloat :=
               T_detalhesSeguroUnitrio.asfloat :=
               T_detalhesAcrescimoUnitrio.asfloat :=
               T_detalhesDeduoUnitrio.asfloat :=
               T_detalhesTributoUnitrio.asfloat :=
               T_detalhesValorunitrio.asfloat :=
               T_detalhesValortotal.asfloat :=
               T_detalhesAliquotaICMS.asfloat :=
               T_detalhesAliquotaIPI.asfloat :=
               T_detalhesValIPI.asfloat :=}

               {nota fiscal de entrada}
               if t_notasfiscaisTiponf.asstring = 'E' then begin
               v_unitario  := 0;
               v_unitarioH := 0;
               v_unitarioF := 0;
               v_unitario  := ((dbg_itens.fields[41].asfloat+dbg_itens.fields[46].asfloat)/dbg_itens.fields[59].asfloat)*T_notasfiscaisTaxaConversao.asfloat;
               T_detalhesValorunitrio.asfloat     := v_unitario;
               T_detalhesFreteUnitrio.asfloat     := (dbg_itens.fields[34].asfloat+dbg_itens.fields[35].asfloat-dbg_itens.fields[36].asfloat)*T_notasfiscaisTaxaConversao.asfloat;
               T_detalhesSeguroUnitrio.asfloat    := dbg_itens.fields[37].asfloat*T_notasfiscaisTaxaConversao.asfloat;
               T_detalhesAcrescimoUnitrio.asfloat := dbg_itens.fields[18].asfloat*T_notasfiscaisTaxaConversao.asfloat;
               T_detalhesDeduoUnitrio.asfloat     := dbg_itens.fields[19].asfloat*T_notasfiscaisTaxaConversao.asfloat;
               T_detalhesTributoUnitrio.asfloat   := (dbg_itens.fields[46].asfloat/dbg_itens.fields[59].asfloat)*T_notasfiscaisTaxaConversao.asfloat;
               T_detalhesValorMercadoria.asfloat  :=  v_unitario;

               {v_fob := v_fob + (T_detalhesQuantidade.asfloat*(v_unitario+T_detalhesAcrescimoUnitrio.asfloat-T_detalhesDeduoUnitrio.asfloat));}
               v_fob := v_fob + (T_detalhesQuantidade.asfloat*(v_unitario-T_detalhesFreteUnitrio.asfloat-T_detalhesSeguroUnitrio.asfloat-T_detalhesTributoUnitrio.asfloat));

               T_detalhesValortotal.asfloat     := (T_detalhesValorunitrio.asfloat * T_detalhesQuantidade.asfloat );
               T_detalhesAliquotaICMS.asfloat   := 0;
               T_detalhesAliquotaIPI.asfloat    := dbg_itens.fields[51].asfloat;
               {T_detalhesValIPI.asfloat         := ((v_unitario*T_detalhesQuantidade.asfloat)*(dbg_itens.fields[51].asfloat/100));}
               T_detalhesValIPI.asfloat         := (((dbg_itens.fields[53].asfloat/dbg_itens.fields[59].asfloat)*T_notasfiscaisTaxaConversao.asfloat)*T_detalhesQuantidade.asfloat);
               t_detalhes.post;
               v_valtotpro    :=  ( v_valtotpro    +(T_detalhesValortotal.asfloat));
               v_valtotfrete  :=  ( v_valtotfrete  +(T_detalhesFreteUnitrio.asfloat *T_detalhesQuantidade.asfloat));
               v_valtotseguro :=  ( v_valtotseguro +(T_detalhesSeguroUnitrio.asfloat*T_detalhesQuantidade.asfloat));
               v_valtotIPI    :=  ( v_valtotIPI    +(T_detalhesValIPI.asfloat));
               v_valtotnota   :=  ( v_valtotnota   +((T_detalhesValortotal.asfloat+T_detalhesValIPI.asfloat)));
               v_ii  := v_ii + (T_detalhesQuantidade.asfloat*T_detalhesTributoUnitrio.asfloat);

               v_pesoliquido  := v_pesoliquido + dbg_itens.fields[16].asfloat;
               end;

               {nota fiscal de transferencia}
               if t_notasfiscaisTiponf.asstring = 'T' then begin
               v_unitario  := 0;
               v_unitarioH := 0;
               v_unitarioF := 0;
               v_unitario  := ((dbg_itens.fields[41].asfloat+dbg_itens.fields[46].asfloat)/dbg_itens.fields[59].asfloat)*T_notasfiscaisTaxaConversao.asfloat;
               T_detalhesValorunitrio.asfloat     := v_unitario;
               T_detalhesFreteUnitrio.asfloat     := (dbg_itens.fields[34].asfloat+dbg_itens.fields[35].asfloat-dbg_itens.fields[36].asfloat)*T_notasfiscaisTaxaConversao.asfloat;
               T_detalhesSeguroUnitrio.asfloat    := dbg_itens.fields[37].asfloat*T_notasfiscaisTaxaConversao.asfloat;
               T_detalhesAcrescimoUnitrio.asfloat := dbg_itens.fields[18].asfloat*T_notasfiscaisTaxaConversao.asfloat;
               T_detalhesDeduoUnitrio.asfloat     := dbg_itens.fields[19].asfloat*T_notasfiscaisTaxaConversao.asfloat;
               T_detalhesTributoUnitrio.asfloat   := (dbg_itens.fields[46].asfloat/dbg_itens.fields[59].asfloat)*T_notasfiscaisTaxaConversao.asfloat;
               T_detalhesValorMercadoria.asfloat  :=  v_unitario;
               {v_fob := v_fob + (T_detalhesQuantidade.asfloat*(v_unitario+T_detalhesAcrescimoUnitrio.asfloat-T_detalhesDeduoUnitrio.asfloat));}
               v_fob := v_fob + (T_detalhesQuantidade.asfloat*(v_unitario-T_detalhesFreteUnitrio.asfloat-T_detalhesSeguroUnitrio.asfloat-T_detalhesTributoUnitrio.asfloat));

               T_detalhesValortotal.asfloat     := (T_detalhesValorunitrio.asfloat * T_detalhesQuantidade.asfloat );
               T_detalhesAliquotaICMS.asfloat   := 0;
               T_detalhesAliquotaIPI.asfloat    := dbg_itens.fields[51].asfloat;
               T_detalhesValIPI.asfloat         := (((dbg_itens.fields[53].asfloat/dbg_itens.fields[59].asfloat)*T_notasfiscaisTaxaConversao.asfloat)*T_detalhesQuantidade.asfloat);
               t_detalhes.post;
               v_valtotpro    :=  ( v_valtotpro    +(T_detalhesValortotal.asfloat));
               v_valtotfrete  :=  ( v_valtotfrete  +(T_detalhesFreteUnitrio.asfloat *T_detalhesQuantidade.asfloat));
               v_valtotseguro :=  ( v_valtotseguro +(T_detalhesSeguroUnitrio.asfloat*T_detalhesQuantidade.asfloat));
               v_valtotIPI    :=  ( v_valtotIPI    +(T_detalhesValIPI.asfloat));
               v_valtotnota   :=  ( v_valtotnota   +((T_detalhesValortotal.asfloat+T_detalhesValIPI.asfloat)));
               v_ii  := v_ii + (T_detalhesQuantidade.asfloat*T_detalhesTributoUnitrio.asfloat);

               v_pesoliquido  := v_pesoliquido + dbg_itens.fields[16].asfloat;
               end;

               {nota fiscal de saida}
               if t_notasfiscaisTiponf.asstring = 'S' then begin
               q_custos.close;
               q_custos.params[0].asstring := t_notasfiscaisempresa.asstring;
               q_custos.params[1].asstring := t_notasfiscaisfilial.asstring;
               q_custos.params[2].asstring := t_notasfiscaisprocesso.asstring;
               q_custos.params[3].asstring := dbg_itens.fields[1].asstring;
               q_custos.params[4].asstring := dbg_itens.fields[60].asstring;
               q_custos.open;
               q_custos.active := true;
               v_custos := 0;
               if not q_custos.eof then v_custos := q_custoscustos.asfloat;
               v_unitario  := 0;
               v_unitarioH := 0;
               v_unitarioF := 0;
               ////v_unitario  := ((((((dbg_itens.fields[41].asfloat+dbg_itens.fields[46].asfloat-dbg_itens.fields[53].asfloat)/dbg_itens.fields[59].asfloat)*T_notasfiscaisTaxaConversao.asfloat)+v_custos)/0.99)/0.8435);
               ////alteracao Marcelo 22/03/2002
               v_unitario  := ((((((dbg_itens.fields[41].asfloat+dbg_itens.fields[46].asfloat)/dbg_itens.fields[59].asfloat)*T_notasfiscaisTaxaConversao.asfloat)+v_custos)/0.99)/0.8435);
               T_detalhesValorunitrio.asfloat     := v_unitario;
               T_detalhesFreteUnitrio.asfloat     := (dbg_itens.fields[34].asfloat+dbg_itens.fields[35].asfloat-dbg_itens.fields[36].asfloat)*T_notasfiscaisTaxaConversao.asfloat;
               T_detalhesSeguroUnitrio.asfloat    := dbg_itens.fields[37].asfloat*T_notasfiscaisTaxaConversao.asfloat;
               T_detalhesAcrescimoUnitrio.asfloat := dbg_itens.fields[18].asfloat*T_notasfiscaisTaxaConversao.asfloat;
               T_detalhesDeduoUnitrio.asfloat     := dbg_itens.fields[19].asfloat*T_notasfiscaisTaxaConversao.asfloat;
               T_detalhesTributoUnitrio.asfloat   := (dbg_itens.fields[46].asfloat/dbg_itens.fields[59].asfloat)*T_notasfiscaisTaxaConversao.asfloat;
               T_detalhesValorMercadoria.asfloat  :=  v_unitario;

               {v_fob := v_fob + (T_detalhesQuantidade.asfloat*(v_unitario+T_detalhesAcrescimoUnitrio.asfloat-T_detalhesDeduoUnitrio.asfloat));}
               v_fob := v_fob + (T_detalhesQuantidade.asfloat*(v_unitario-T_detalhesFreteUnitrio.asfloat-T_detalhesSeguroUnitrio.asfloat-T_detalhesTributoUnitrio.asfloat));

               T_detalhesValortotal.asfloat     := (T_detalhesValorunitrio.asfloat * T_detalhesQuantidade.asfloat );
               T_detalhesAliquotaICMS.asfloat   := 12;
               T_detalhesAliquotaIPI.asfloat    := dbg_itens.fields[51].asfloat;
               T_detalhesValIPI.asfloat         := (T_detalhesValortotal.asfloat*(T_detalhesAliquotaIPI.asfloat/100));
               t_detalhes.post;
               v_valtotpro    :=  ( v_valtotpro    +(T_detalhesValortotal.asfloat));
               v_valtotfrete  :=  ( v_valtotfrete  +(T_detalhesFreteUnitrio.asfloat *T_detalhesQuantidade.asfloat));
               v_valtotseguro :=  ( v_valtotseguro +(T_detalhesSeguroUnitrio.asfloat*T_detalhesQuantidade.asfloat));
               v_valtotIPI    :=  ( v_valtotIPI    +(T_detalhesValIPI.asfloat));
               v_valtotnota   :=  ( v_valtotnota   +((T_detalhesValortotal.asfloat+T_detalhesValIPI.asfloat)));
               v_ii  := v_ii + (T_detalhesQuantidade.asfloat*T_detalhesTributoUnitrio.asfloat);

               v_pesoliquido  := v_pesoliquido + dbg_itens.fields[16].asfloat;
               end;

               {joga o restante da descrição dos itens}
               for qpega := 1 to strtoint(floattostr(int(length(trim(t_produtosdescrio.asstring ))/qtamanho))) do begin
                   T_detalhes.append;
                   T_detalhesEmpresa.asstring    := v_empresa;
                   T_detalhesFilial.asstring     := v_filial;
                   T_detalhesImportador.asstring := v_importador;
                   T_detalhesProcesso.asstring   := v_processo;
                   T_detalhesTiponf.asstring     := v_tiponf;
                   T_detalhesNFiscal.asstring    := v_nfiscal;
                   T_detalhesSequencial.asstring := inttostr(vitens)+chr(64+qpega);////dbg_itens.fields[60].asstring;
                   T_detalhesDescricao.asstring  := TRIM(COPY(t_produtosdescrio.asstring,(qpega*qtamanho)+1,qtamanho));
                   T_detalhes.post;
////                   SHOWMESSAGE('FAT:'+v_nfiscal+' item: '+TRIM(COPY(t_produtosdescrio.asstring,(qpega*qtamanho)+1,qtamanho)));
                   vitens := vitens+1;
               end;

        end;

               t_notasfiscais.edit;
{               MessageDlg('ultima nota gerada nº '+t_notasfiscaisnfiscal.asstring, mtInformation,[mbOk], 0);}

               {v_pesobrutodi    := strtofloat(copy(T_diPB_CARGA.asstring,1,10)+','+copy(T_diPB_CARGA.asstring,11,5));
               v_pesoliquidodi  := strtofloat(copy(T_diPL_CARGA.asstring,1,10)+','+copy(T_diPL_CARGA.asstring,11,5));
               v_txpeso         := (v_pesobrutodi/v_pesoliquidodi);
               v_pesoliquidoadi := strtofloat(COPY(T_adicaoPL_MERCADORIA.asstring,1,10)+','+COPY(T_adicaoPL_MERCADORIA.asstring,11,5));}

               {T_notasfiscaisPesoBruto.asfloat      := (v_pesoliquidoadi*v_txpeso);
               T_notasfiscaisPesoLiquido.asfloat    := v_pesoliquidoadi;}

               T_notasfiscaisPesoBruto.asfloat      := ((v_pb_total*((100*v_pesoliquido)/v_pl_total))/100);
               T_notasfiscaisPesoLiquido.asfloat    := v_pesoliquido;

               T_notasfiscaisValtotprodutos.asfloat := v_valtotpro;
               {T_nfiscaisValfrete.asfloat          := v_valtotfrete;
               T_nfiscaisValseguro.asfloat          := v_valtotseguro;}
               T_notasfiscaisValtotIPI.asfloat      := v_valtotIPI;
               T_notasfiscaisVatotnota.asfloat      := v_valtotnota;
               T_notasfiscaisDA4.asstring           := 'FOB    R$ '+ floattostrf(v_fob,ffNumber,15,2);
               T_notasfiscaisDA5.asstring           := 'II     R$ '+ floattostrf(v_ii,ffNumber,15,2);
               T_notasfiscaisDA6.asstring           := 'FRETE  R$ '+ floattostrf(v_valtotfrete,ffNumber,15,2);
               T_notasfiscaisDA7.asstring           := 'SEGURO R$ '+ floattostrf(v_valtotseguro,ffNumber,15,2);

               if t_notasfiscaistiponf.asstring = 'S' then begin
                  T_notasfiscaisBaseCalcICMS.asfloat   := (T_notasfiscaisValtotprodutos.asfloat);
                  T_notasfiscaisValICMS.asfloat        := (T_notasfiscaisBaseCalcICMS.asfloat*(T_detalhesAliquotaICMS.asfloat/100));
               end
               else begin
                  if T_notasfiscaisCFOP.asstring = '397' then begin
                     T_notasfiscaisBaseCalcICMS.asfloat   := (T_notasfiscaisVatotnota.asfloat/0.82);
                     T_notasfiscaisValICMS.asfloat        := (T_notasfiscaisBaseCalcICMS.asfloat-T_notasfiscaisVatotnota.asfloat);
                  end
                  else begin
                     T_notasfiscaisBaseCalcICMS.asfloat   := 0;
                     T_notasfiscaisValICMS.asfloat        := 0;
                  end;
               end;

               t_notasfiscais.post;
               if t_numnotas.findkey([t_notasfiscaisempresa.asstring,t_notasfiscaisfilial.asstring,t_notasfiscaisimportador.asstring,t_notasfiscaistiponf.asstring]) then begin
                  t_numnotas.edit;
                  T_numnotasNumero.asstring  := t_notasfiscaisnfiscal.asstring;
                  t_numnotas.post;
               end;

               imprimenota(f_notasfiscais);

               panel2.visible := false;
               MessageDlg('Nota(s) Fiscai(s) geradas com sucesso!', mtInformation,[mbOk], 0);
               cb_tiponf.text := '';
               me_nf.text     := '';
               cb_layout.text := '';
               b_nota.enabled := false;
               dbg_itens.setfocus;


end;

procedure Tf_notasfiscais.imprimenota(Sender: TObject);
var qitens:integer;
    v_itens:integer;
    q_dir:string;
begin
    qitens := 5;
    if t_notasfiscaislayout.asstring = '1' then qitens := 25;
    if t_notasfiscaislayout.asstring = '2' then qitens := 25;
    if t_notasfiscaislayout.asstring = '3' then qitens := 22;
    if t_notasfiscaislayout.asstring = '4' then qitens := 18;

//    MessageDlg('NF: '+T_notasfiscaisNFiscal.asstring+' - Valor pot Extenso: '+ extenso(T_notasfiscaisVatotnota.asfloat), mtinformation, [mbOK], 0);

    {gerar diretorio e arquivo de nf por importador}
    q_dir := 'nfiscais';
    if not DirectoryExists(q_dir) then
       if not CreateDir(q_dir) then
       MessageDlg('NÃO FOI POSSÍVEL CRIAR DIRETÓRIO!', mtinformation, [mbOK], 0);

    q_dir := q_dir+'\'+t_notasfiscaisimportador.asstring;
    if not DirectoryExists(q_dir) then
       if not CreateDir(q_dir) then
       MessageDlg('NÃO FOI POSSÍVEL CRIAR DIRETÓRIO!', mtinformation, [mbOK], 0);
    if t_notasfiscaisTiponf.asstring = 'E' then  q_dir := q_dir+'\entrada';
    if t_notasfiscaisTiponf.asstring = 'T' then  q_dir := q_dir+'\transfe';
    if t_notasfiscaisTiponf.asstring = 'S' then  q_dir := q_dir+'\saida';
    if not DirectoryExists(q_dir) then
       if not CreateDir(q_dir) then
       MessageDlg('NÃO FOI POSSÍVEL CRIAR DIRETÓRIO!', mtinformation, [mbOK], 0);

   {raise Exception.Create('Cannot create c:\temp');}

    assignfile(v_textonota,q_dir+'\'+t_notasfiscaisTiponf.asstring+T_notasfiscaisNFiscal.asstring+'.txt');
    rewrite(v_textonota);
           {writeln(v_textonota    ,'         1         2         3         4         5         6         7         8         9        10        11        12        13        14        15        16        17        18        19        20        21        22        23        24');
           writeln(v_textonota    ,'123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');}

   {NOTAS FISCAIS DE ENTRADA}
   if t_notasfiscaisTiponf.asstring = 'E' then begin

{padrão}   if t_notasfiscaislayout.asstring = '1' then begin
              writeln(v_textonota,'                                                                                                                                                                                                                 '+t_notasfiscaisNFiscal.asstring);
              writeln(v_textonota,'                                                                                                                                                                          XX');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA1.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA2.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA3.asstring+'                                                        ',1,68)+'      '+ copy(t_notasfiscaisNatOpe.asstring+'                                     ',1,33)+'   '+ copy(t_notasfiscaisCFOP.asstring+'                   ',1,5)+'              '+copy(t_notasfiscaisInscEstadual.asstring+'                                ',1,20));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA4.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA5.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA6.asstring+'                                                        ',1,68)+'      '+ copy(t_notasfiscaisNomedestrem.asstring+'                                                                                                  ',1,74)+'   '+ copy(t_notasfiscaisCNPJCPF.asstring+'                                               ',1,28)            +'       '+ datetostr(t_notasfiscaisDtEmissao.asdatetime));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA7.asstring+'                                                        ',1,68));
              writeln(v_textonota,'                                                                             '+copy(t_notasfiscaisEndereco.asstring +'                                                              ',1,64)+'   '+ copy(t_notasfiscaisBairrodistrito.asstring+'                                                          ',1,23)+ '  '+ copy(t_notasfiscaisCep.asstring+'                                  ',1,12)+ '        '+ datetostr(t_notasfiscaisDtsaidaentrada.asdatetime));
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                             '+copy(t_notasfiscaisMunicipio.asstring+'                            ',1,41)+'         '+ copy(t_notasfiscaisFoneFax.asstring+'                       ',1,17)  + '   '+ copy(t_notasfiscaisUF.asstring+'   ',1,2)+ '    '+ t_notasfiscaisInscEstDestRem.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                             '+t_notasfiscaisCondEspeciais.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

              v_itens := 0;
              t_detalhes.FindKey([t_notasfiscaisEmpresa.asstring,t_notasfiscaisFilial.asstring,t_notasfiscaisimportador.asstring,t_notasfiscaisprocesso.asstring,t_notasfiscaistiponf.asstring,t_notasfiscaisnfiscal.asstring]);
              while ((not t_detalhes.Eof) and
                     (t_notasfiscaisEmpresa.asstring = t_detalhesEmpresa.asstring) and
                     (t_notasfiscaisFilial.asstring = t_detalhesfilial.asstring) and
                     (t_notasfiscaisimportador.asstring = t_detalhesimportador.asstring) and
                     (t_notasfiscaisprocesso.asstring = t_detalhesprocesso.asstring) and
                     (t_notasfiscaistiponf.asstring = t_detalhestiponf.asstring) and
                     (t_notasfiscaisnfiscal.asstring = t_detalhesnfiscal.asstring))do begin
                     v_itens := v_itens+1;
                     if t_detalhescodproduto.asstring<>'' then
                        writeln(v_textonota,'  '+ copy(t_detalhesCodproduto.asstring+'                                 ',1,21) +'    '+ copy(t_detalhesDescricao.asstring+'                                                                          ',1,72)+'  '+copy(t_detalhesClassificacao.asstring+'           ',1,11) +' '+ copy(t_detalhesST.asstring+'     ',1,3) +'    '+ copy(t_detalhesUnidade.asstring+'   ',1,3) +'   '+ copy(floattostrf(t_detalhesQuantidade.asfloat,ffNumber,15,2)+'         ',1,8) +'   '+ copy(floattostrf(t_detalhesValorunitrio.asfloat,ffNumber,15,4)+'                            ',1,17) +'     '+ copy(floattostrf(t_detalhesValortotal.asfloat,ffNumber,15,2)+'                 ',1,17) +'   '+copy(floattostrf(t_detalhesAliquotaICMS.asfloat,ffNumber,15,0)+'            ',1,6) +'   '+copy( floattostrf(t_detalhesAliquotaIPI.asfloat,ffNumber,15,0)+'            ',1,6) +'   '+ copy(floattostrf(t_detalhesValIPI.asfloat,ffNumber,15,2)+'            ',1,14))
                     else writeln(v_textonota,'  '+ copy(t_detalhesCodproduto.asstring+'                                 ',1,21) +'    '+ copy(t_detalhesDescricao.asstring+'                                                                          ',1,72));
                     t_detalhes.next;
              end;
              {imprime linhas em branco}
              while v_itens < qitens do begin
                    v_itens := v_itens + 1;
                    writeln(v_textonota,' ');
              end;

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'       '+ copy(floattostrf(t_notasfiscaisBaseCalcICMS.asfloat,ffNumber,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(t_notasfiscaisValICMS.asfloat,ffNumber,15,2  )+'                      ',1,15)+'           '+copy(floattostrf(t_notasfiscaisBaseCalcICMSsubst.asfloat,ffNumber,15,2)+'                       ',1,15)+'             '+copy(floattostrf(t_notasfiscaisValICMSsubs.asfloat,ffNumber,15,2)+'            ',1,15)+'           '+copy(floattostrf(t_notasfiscaisValtotprodutos.asfloat,ffNumber,15,2)+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,'       '+ copy(floattostrf(t_notasfiscaisValfrete.asfloat,ffNumber    ,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(t_notasfiscaisValseguro.asfloat,ffNumber,15,2)+'                      ',1,15)+'           '+copy(floattostrf(t_notasfiscaisOutrasdesp.asfloat,ffNumber,15,2       )+'                       ',1,15)+'             '+copy(floattostrf(t_notasfiscaisValtotIPI.asfloat,ffNumber,15,2  )+'            ',1,15)+'           '+copy(floattostrf(t_notasfiscaisVatotnota.asfloat,ffNumber,15,2     )+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

             {Localizando Transportador}
              if T_transportadores.FindKey([t_notasfiscaisEmpresa.asstring,t_notasfiscaisFilial.asstring,t_notasfiscaisTransportador.asstring]) then begin
                 v_nometrans := T_transportadoresRazoSocial.asstring;
                 v_cgctrans  := T_transportadoresCGCCPF.asstring;
                 v_endtrans  := T_transportadoresEndereo.asstring;
                 v_baitrans  := T_transportadoresBairro.asstring;
                 v_cidtrans  := T_transportadoresCidade.asstring;
                 v_ceptrans  := T_transportadoresCEP.asstring;
                 v_uftrans   := T_transportadoresUF.asstring;
                 v_instrans  := T_transportadoresInscrioEstadual.asstring;
              end
              else begin
                 v_nometrans := '                                                             ';
                 v_cgctrans  := '                  ';
                 v_endtrans  := '                                                             ';
                 v_baitrans  := '                               ';
                 v_cidtrans  := '                               ';
                 v_ceptrans  := '          ';
                 v_uftrans   := '  ';
                 v_instrans  := '               ';
              end;

              writeln(v_textonota,copy('   '+v_nometrans+'                                                                  ',1,67)+'                  '+copy(t_notasfiscaisFrete.asstring+'   ',1,1)+'   '+ copy(t_notasfiscaisPlaca.asstring+'                          ',1,12)+'      '+copy(t_notasfiscaisUFVeiculo.asstring+'   ',1,2)+'     '+copy(v_cgctrans+'                                ',1,27));
              writeln(v_textonota,' ');
              writeln(v_textonota,copy('   '+v_endtrans +'                                                                  ',1,67)+'      '         +copy(v_cidtrans+'                                              ',1,28)+'      '+copy(v_uftrans+'    ',1,2)+'     '+v_instrans);
              writeln(v_textonota,' ');
              writeln(v_textonota,'   '+copy(floattostrf(t_notasfiscaisQuantidade.asfloat,ffNumber,15,2)+'                      ',1,16)+'     '+ copy(t_notasfiscaisEspecie.asstring+'                                 ',1,20)+'       '+copy(t_notasfiscaisMarca.asstring+'                                  ',1,22) +'  '+copy(t_notasfiscaisNumero.asstring+'                                  ',1,21)+'   '+copy(floattostrf(t_notasfiscaisPesoBruto.asfloat,ffNumber,15,2)+'                           ',1,18)+'   '+copy(floattostrf(t_notasfiscaisPesoLiquido.asfloat,ffNumber,15,2)+'',1,18));
              writeln(v_textonota,' ');

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                                                                                                             '+t_notasfiscaisNFiscal.asstring);

            end;

{SAI}       if t_notasfiscaislayout.asstring = '2' then begin
              writeln(v_textonota,'                                                                                                                                                                                                                 '+t_notasfiscaisNFiscal.asstring);
              writeln(v_textonota,'                                                                                                                                                                          XX');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA1.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA2.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA3.asstring+'                                                        ',1,68)+'      '+ copy(t_notasfiscaisNatOpe.asstring+'                                     ',1,33)+'   '+ copy(t_notasfiscaisCFOP.asstring+'                   ',1,5)+'              '+copy(t_notasfiscaisInscEstadual.asstring+'                                ',1,20));
              writeln(v_textonota,'   '+copy('BASE DE CALCULO DO IPI:                                                        ',1,68));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA4.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA5.asstring+'                                                        ',1,68)+'      '+ copy(t_notasfiscaisNomedestrem.asstring+'                                                                                                  ',1,74)+'   '+ copy(t_notasfiscaisCNPJCPF.asstring+'                                               ',1,28)            +'       '+ datetostr(t_notasfiscaisDtEmissao.asdatetime));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA6.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA7.asstring+'                                                        ',1,68)+'      '+ copy(t_notasfiscaisEndereco.asstring   +'                                                              ',1,64)+'   '+ copy(t_notasfiscaisBairrodistrito.asstring+'                                                          ',1,23)+ '  '+ copy(t_notasfiscaisCep.asstring+'                                  ',1,12)+ '        '+ datetostr(t_notasfiscaisDtsaidaentrada.asdatetime));
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                             '+copy(t_notasfiscaisMunicipio.asstring+'                            ',1,41)+'         '+ copy(t_notasfiscaisFoneFax.asstring+'                       ',1,17)  + '   '+ copy(t_notasfiscaisUF.asstring+'   ',1,2)+ '    '+ t_notasfiscaisInscEstDestRem.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              {writeln(v_textonota,'                                                                             '+copy(t_notasfiscaisDuplicataNr.asstring+'             ',1,10) + '           ' + copy(datetostr(t_notasfiscaisVencimento.asdatetime)+'               ',1,10)+'         '+ floattostrf(t_notasfiscaisValor.asfloat,ffNumber,15,2));}
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                             '+t_notasfiscaisCondEspeciais.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

              v_itens := 0;
              t_detalhes.FindKey([t_notasfiscaisEmpresa.asstring,t_notasfiscaisFilial.asstring,t_notasfiscaisimportador.asstring,t_notasfiscaisprocesso.asstring,t_notasfiscaistiponf.asstring,t_notasfiscaisnfiscal.asstring]);
              while ((not t_detalhes.Eof) and
                     (t_notasfiscaisEmpresa.asstring = t_detalhesEmpresa.asstring) and
                     (t_notasfiscaisFilial.asstring = t_detalhesfilial.asstring) and
                     (t_notasfiscaisimportador.asstring = t_detalhesimportador.asstring) and
                     (t_notasfiscaisprocesso.asstring = t_detalhesprocesso.asstring) and
                     (t_notasfiscaistiponf.asstring = t_detalhestiponf.asstring) and
                     (t_notasfiscaisnfiscal.asstring = t_detalhesnfiscal.asstring))do begin
                     v_itens := v_itens+1;
                     if t_detalhescodproduto.asstring<>'' then
                        writeln(v_textonota,'  '+ copy(t_detalhesCodproduto.asstring+'                                 ',1,21) +'    '+ copy(t_detalhesDescricao.asstring+'                                                                          ',1,72)+'  '+copy(t_detalhesClassificacao.asstring+'           ',1,11) +' '+ copy(t_detalhesST.asstring+'     ',1,3) +'    '+ copy(t_detalhesUnidade.asstring+'   ',1,3) +'   '+ copy(floattostrf(t_detalhesQuantidade.asfloat,ffNumber,15,2)+'         ',1,8) +'   '+ copy(floattostrf(t_detalhesValorunitrio.asfloat,ffNumber,15,4)+'                            ',1,17) +'     '+ copy(floattostrf(t_detalhesValortotal.asfloat,ffNumber,15,2)+'                 ',1,17) +'   '+copy(floattostrf(t_detalhesAliquotaICMS.asfloat,ffNumber,15,0)+'            ',1,6) +'   '+copy( floattostrf(t_detalhesAliquotaIPI.asfloat,ffNumber,15,0)+'            ',1,6) +'   '+ copy(floattostrf(t_detalhesValIPI.asfloat,ffNumber,15,2)+'            ',1,14))
                     else writeln(v_textonota,'  '+ copy(t_detalhesCodproduto.asstring+'                                 ',1,21) +'    '+ copy(t_detalhesDescricao.asstring+'                                                                          ',1,72));
                     t_detalhes.next;
              end;
              {imprime linhas em branco}
              while v_itens < qitens do begin
                    v_itens := v_itens + 1;
                    writeln(v_textonota,' ');
              end;

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'       '+ copy(floattostrf(t_notasfiscaisBaseCalcICMS.asfloat,ffNumber,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(t_notasfiscaisValICMS.asfloat,ffNumber,15,2  )+'                      ',1,15)+'           '+copy(floattostrf(t_notasfiscaisBaseCalcICMSsubst.asfloat,ffNumber,15,2)+'                       ',1,15)+'             '+copy(floattostrf(t_notasfiscaisValICMSsubs.asfloat,ffNumber,15,2)+'            ',1,15)+'           '+copy(floattostrf(t_notasfiscaisValtotprodutos.asfloat,ffNumber,15,2)+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,'       '+ copy(floattostrf(t_notasfiscaisValfrete.asfloat,ffNumber    ,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(t_notasfiscaisValseguro.asfloat,ffNumber,15,2)+'                      ',1,15)+'           '+copy(floattostrf(t_notasfiscaisOutrasdesp.asfloat,ffNumber,15,2       )+'                       ',1,15)+'             '+copy(floattostrf(t_notasfiscaisValtotIPI.asfloat,ffNumber,15,2  )+'            ',1,15)+'           '+copy(floattostrf(t_notasfiscaisVatotnota.asfloat,ffNumber,15,2     )+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

             {Localizando Transportador}
              if T_transportadores.FindKey([t_notasfiscaisEmpresa.asstring,t_notasfiscaisFilial.asstring,t_notasfiscaisTransportador.asstring]) then begin
                 v_nometrans := T_transportadoresRazoSocial.asstring;
                 v_cgctrans  := T_transportadoresCGCCPF.asstring;
                 v_endtrans  := T_transportadoresEndereo.asstring;
                 v_baitrans  := T_transportadoresBairro.asstring;
                 v_cidtrans  := T_transportadoresCidade.asstring;
                 v_ceptrans  := T_transportadoresCEP.asstring;
                 v_uftrans   := T_transportadoresUF.asstring;
                 v_instrans  := T_transportadoresInscrioEstadual.asstring;
              end
              else begin
                 v_nometrans := '                                                             ';
                 v_cgctrans  := '                  ';
                 v_endtrans  := '                                                             ';
                 v_baitrans  := '                               ';
                 v_cidtrans  := '                               ';
                 v_ceptrans  := '          ';
                 v_uftrans   := '  ';
                 v_instrans  := '               ';
              end;

              writeln(v_textonota,copy('   '+v_nometrans+'                                                                  ',1,67)+'                  '+copy(t_notasfiscaisFrete.asstring+'   ',1,1)+'   '+ copy(t_notasfiscaisPlaca.asstring+'                          ',1,12)+'      '+copy(t_notasfiscaisUFVeiculo.asstring+'   ',1,2)+'     '+copy(v_cgctrans+'                                ',1,27));
              writeln(v_textonota,' ');
              writeln(v_textonota,copy('   '+v_endtrans +'                                                                  ',1,67)+'      '         +copy(v_cidtrans+'                                              ',1,28)+'      '+copy(v_uftrans+'    ',1,2)+'     '+v_instrans);
              writeln(v_textonota,' ');
              writeln(v_textonota,'   '+copy(floattostrf(t_notasfiscaisQuantidade.asfloat,ffNumber,15,2)+'                      ',1,16)+'     '+ copy(t_notasfiscaisEspecie.asstring+'                                 ',1,20)+'       '+copy(t_notasfiscaisMarca.asstring+'                                  ',1,22) +'  '+copy(t_notasfiscaisNumero.asstring+'                                  ',1,21)+'   '+copy(floattostrf(t_notasfiscaisPesoBruto.asfloat,ffNumber,15,2)+'                           ',1,18)+'   '+copy(floattostrf(t_notasfiscaisPesoLiquido.asfloat,ffNumber,15,2)+'',1,18));
              writeln(v_textonota,' ');

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                                                                                                             '+t_notasfiscaisNFiscal.asstring);

            end;

{RENAULT}   if t_notasfiscaislayout.asstring = '3' then begin
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                                                                                                                  '+t_notasfiscaisNFiscal.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                                                                                          XX');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'   '+copy('                                                                                                                                                    ',1,49)+'     '+ copy(t_notasfiscaisNatOpe.asstring+'                                     ',1,48)+'       '+ copy(t_notasfiscaisCFOP.asstring+'                   ',1,5)+'   '+copy(t_notasfiscaisInscEstadual.asstring+'                                ',1,20));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA1.asstring+'                                                        ',1,49));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA2.asstring+'                                                        ',1,49));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA3.asstring+'                                                        ',1,49)+'     '+ copy(t_notasfiscaisNomedestrem.asstring+'                                                                                                         ',1,92)+'   '+ copy(t_notasfiscaisCNPJCPF.asstring+'                                               ',1,28)            +'       '+ datetostr(t_notasfiscaisDtEmissao.asdatetime));
              writeln(v_textonota,'   '+copy('BASE DE CALCULO DO IPI:                                                        ',1,49));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA4.asstring+'                                                        ',1,49)+'     '+ copy(t_notasfiscaisEndereco.asstring   +'                                                                           ',1,70)+'   '+ copy(t_notasfiscaisBairrodistrito.asstring+'                                                          ',1,23)+ '             '+ copy(t_notasfiscaisCep.asstring+'                                  ',1,12)+ '         '+ datetostr(t_notasfiscaisDtsaidaentrada.asdatetime));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA5.asstring+'                                                        ',1,49));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA6.asstring+'                                                        ',1,49)+'     '+copy(t_notasfiscaisMunicipio.asstring+'                                                     ',1,50)+'         '+ copy(t_notasfiscaisFoneFax.asstring+'                       ',1,17)  + '               '+ copy(t_notasfiscaisUF.asstring+'   ',1,2)+ '   '+ t_notasfiscaisInscEstDestRem.asstring);
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA7.asstring+'                                                        ',1,49));
              //writeln(v_textonota,'   NOVA RAZÃO SOCIAL: RENAULT DO BRASIL S.A.');
              writeln(v_textonota,'   NOVO ENDEREÇO: AV. RENAULT,1300');
              writeln(v_textonota,'   BORDA DO CAMPO - SÃO JOSÉ DOS PINHAIS/PR.');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              {writeln(v_textonota,'                                                                             '+copy(t_notasfiscaisDuplicataNr.asstring+'             ',1,10) + '           ' + copy(datetostr(t_notasfiscaisVencimento.asdatetime)+'               ',1,10)+'         '+ floattostrf(t_notasfiscaisValor.asfloat,ffNumber,15,2));}
              {writeln(v_textonota,'                                                                             '+t_notasfiscaisCondEspeciais.asstring);}
              writeln(v_textonota,copy('                                                                                                                                                                                                                                   ',1,90)+extenso(t_notasfiscaisVatotnota.asfloat));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

              v_itens := 0;
              t_detalhes.FindKey([t_notasfiscaisEmpresa.asstring,t_notasfiscaisFilial.asstring,t_notasfiscaisimportador.asstring,t_notasfiscaisprocesso.asstring,t_notasfiscaistiponf.asstring,t_notasfiscaisnfiscal.asstring]);
              while ((not t_detalhes.Eof) and
                     (t_notasfiscaisEmpresa.asstring = t_detalhesEmpresa.asstring) and
                     (t_notasfiscaisFilial.asstring = t_detalhesfilial.asstring) and
                     (t_notasfiscaisimportador.asstring = t_detalhesimportador.asstring) and
                     (t_notasfiscaisprocesso.asstring = t_detalhesprocesso.asstring) and
                     (t_notasfiscaistiponf.asstring = t_detalhestiponf.asstring) and
                     (t_notasfiscaisnfiscal.asstring = t_detalhesnfiscal.asstring))do begin
                     v_itens := v_itens+1;
                     if t_detalhescodproduto.asstring<>'' then
                        writeln(v_textonota,'  '+ copy(t_detalhesCodproduto.asstring+'                                 ',1,21) +'    '+ copy(t_detalhesDescricao.asstring+'                                                                          ',1,60)+'  '+copy(t_detalhesClassificacao.asstring+'           ',1,11) +'     '+ copy(t_detalhesST.asstring+'     ',1,3) +' '+ copy(t_detalhesUnidade.asstring+'   ',1,3) +'   '+ copy(floattostrf(t_detalhesQuantidade.asfloat,ffNumber,7,2)+'            ',1,10)+'         '+ copy(floattostrf(t_detalhesValorunitrio.asfloat,ffNumber,15,4)+'                            ',1,17) +'       '+ copy(floattostrf(t_detalhesValortotal.asfloat,ffNumber,15,2)+'                 ',1,17) +'  '+copy(floattostrf(t_detalhesAliquotaICMS.asfloat,ffNumber,15,0)+'            ',1,2) +'   '+copy( floattostrf(t_detalhesAliquotaIPI.asfloat,ffNumber,15,0)+'            ',1,2) +'         '+ copy(floattostrf(t_detalhesValIPI.asfloat,ffNumber,15,2)+'            ',1,14))
                     else writeln(v_textonota,'  '+ copy(t_detalhesCodproduto.asstring+'                                 ',1,21) +'    '+ copy(t_detalhesDescricao.asstring+'                                                                          ',1,60));
                     t_detalhes.next;
              end;
              {imprime linhas em branco}
              while v_itens < qitens do begin
                    v_itens := v_itens + 1;
                    writeln(v_textonota,' ');
              end;

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'       '+ copy(floattostrf(t_notasfiscaisBaseCalcICMS.asfloat,ffNumber,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(t_notasfiscaisValICMS.asfloat,ffNumber,15,2  )+'                      ',1,15)+'           '+copy(floattostrf(t_notasfiscaisBaseCalcICMSsubst.asfloat,ffNumber,15,2)+'                       ',1,15)+'             '+copy(floattostrf(t_notasfiscaisValICMSsubs.asfloat,ffNumber,15,2)+'            ',1,15)+'           '+copy(floattostrf(t_notasfiscaisValtotprodutos.asfloat,ffNumber,15,2)+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,'       '+ copy(floattostrf(t_notasfiscaisValfrete.asfloat,ffNumber    ,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(t_notasfiscaisValseguro.asfloat,ffNumber,15,2)+'                      ',1,15)+'           '+copy(floattostrf(t_notasfiscaisOutrasdesp.asfloat,ffNumber,15,2       )+'                       ',1,15)+'             '+copy(floattostrf(t_notasfiscaisValtotIPI.asfloat,ffNumber,15,2  )+'            ',1,15)+'           '+copy(floattostrf(t_notasfiscaisVatotnota.asfloat,ffNumber,15,2     )+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

             {Localizando Transportador}
              if T_transportadores.FindKey([t_notasfiscaisEmpresa.asstring,t_notasfiscaisFilial.asstring,t_notasfiscaisTransportador.asstring]) then begin
                 v_nometrans := T_transportadoresRazoSocial.asstring;
                 v_cgctrans  := T_transportadoresCGCCPF.asstring;
                 v_endtrans  := T_transportadoresEndereo.asstring;
                 v_baitrans  := T_transportadoresBairro.asstring;
                 v_cidtrans  := T_transportadoresCidade.asstring;
                 v_ceptrans  := T_transportadoresCEP.asstring;
                 v_uftrans   := T_transportadoresUF.asstring;
                 v_instrans  := T_transportadoresInscrioEstadual.asstring;
              end
              else begin
                 v_nometrans := '                                                             ';
                 v_cgctrans  := '                  ';
                 v_endtrans  := '                                                             ';
                 v_baitrans  := '                               ';
                 v_cidtrans  := '                               ';
                 v_ceptrans  := '          ';
                 v_uftrans   := '  ';
                 v_instrans  := '               ';
              end;

              writeln(v_textonota,copy('   '+v_nometrans+'                                                                  ',1,67)+'             '+copy(t_notasfiscaisFrete.asstring+'   ',1,1)+'   '+ copy(t_notasfiscaisPlaca.asstring+'                          ',1,12)+'  '+copy(t_notasfiscaisUFVeiculo.asstring+'   ',1,2)+'   '+copy(v_cgctrans+'                                ',1,27));
              writeln(v_textonota,' ');
              writeln(v_textonota,copy('   '+v_endtrans +'                                                                  ',1,67)+'   '         +copy(v_cidtrans+'                                              ',1,25)+'   '+copy(v_uftrans+'    ',1,2)+'   '+v_instrans);
              writeln(v_textonota,' ');
              writeln(v_textonota,'   '+copy(floattostrf(t_notasfiscaisQuantidade.asfloat,ffNumber,15,2)+'                      ',1,16)+' '+ copy(t_notasfiscaisEspecie.asstring+'                                 ',1,20)+'       '+copy(t_notasfiscaisMarca.asstring+'                                  ',1,22) +'  '+copy(t_notasfiscaisNumero.asstring+'                                  ',1,21)+'       '+copy(floattostrf(t_notasfiscaisPesoBruto.asfloat,ffNumber,15,2)+'                           ',1,18)+'   '+copy(floattostrf(t_notasfiscaisPesoLiquido.asfloat,ffNumber,15,2)+'',1,18));
              writeln(v_textonota,' ');

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                                                                                                             '+t_notasfiscaisNFiscal.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');



            end;

{KOYO}   if t_notasfiscaislayout.asstring = '4' then begin
            //                                 1         2         3         4         5         6         7         8         9        10        11        12        13
            //writeln(v_textonota,'   123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/');
              writeln(v_textonota,'                                                                                                                                   '+t_notasfiscaisNFiscal.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                     XX');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,copy(t_notasfiscaisNatOpe.asstring+'                                                                        ',1,49)+'  '+ copy(t_notasfiscaisCFOP.asstring+'       ',1,5)+'   '+copy(t_notasfiscaisInscEstadual.asstring+'                                ',1,20));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,copy(t_notasfiscaisNomedestrem.asstring+'                                                                                                         ',1,80)+'    '+ copy(t_notasfiscaisCNPJCPF.asstring+'                                     ',1,30)   +'     '+ datetostr(t_notasfiscaisDtEmissao.asdatetime));
              writeln(v_textonota,' ');
              writeln(v_textonota,copy(t_notasfiscaisEndereco.asstring   +'                                                                           ',1,65)+'     '+ copy(t_notasfiscaisBairrodistrito.asstring+'                                                          ',1,30)    + '  '+ copy(t_notasfiscaisCep.asstring+'                                  ',1,12)+ '     '+ datetostr(t_notasfiscaisDtsaidaentrada.asdatetime));
              writeln(v_textonota,' ');
              writeln(v_textonota,copy(t_notasfiscaisMunicipio.asstring+'                                                     ',1,45)+'    '+ copy(t_notasfiscaisFoneFax.asstring+'                       ',1,25)  + '    '+ copy(t_notasfiscaisUF.asstring+'   ',1,2)+ '   '+ t_notasfiscaisInscEstDestRem.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,copy('                                                                                                                                                                                                                                   ',1,11)+COPY(extenso(t_notasfiscaisVatotnota.asfloat), 1,70));
              writeln(v_textonota,copy('                                                                                                                                                                                                                                   ',1,11)+COPY(extenso(t_notasfiscaisVatotnota.asfloat),71,70));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

              v_itens := 0;
              t_detalhes.FindKey([t_notasfiscaisEmpresa.asstring,t_notasfiscaisFilial.asstring,t_notasfiscaisimportador.asstring,t_notasfiscaisprocesso.asstring,t_notasfiscaistiponf.asstring,t_notasfiscaisnfiscal.asstring]);
              while ((not t_detalhes.Eof) and
                     (t_notasfiscaisEmpresa.asstring = t_detalhesEmpresa.asstring) and
                     (t_notasfiscaisFilial.asstring = t_detalhesfilial.asstring) and
                     (t_notasfiscaisimportador.asstring = t_detalhesimportador.asstring) and
                     (t_notasfiscaisprocesso.asstring = t_detalhesprocesso.asstring) and
                     (t_notasfiscaistiponf.asstring = t_detalhestiponf.asstring) and
                     (t_notasfiscaisnfiscal.asstring = t_detalhesnfiscal.asstring))do begin
                     v_itens := v_itens+1;
                     if t_detalhescodproduto.asstring<>'' then
                        writeln(v_textonota,copy(t_detalhesDescricao.asstring+'                                                                          ',1,57)+'   '+copy(t_detalhesClassificacao.asstring+'               ',1,6) +' '+ copy(t_detalhesST.asstring+'     ',1,3) +' '+ copy(t_detalhesUnidade.asstring+'   ',1,3) +'   '+ copy(floattostrf(t_detalhesQuantidade.asfloat,fffixed,7,0)+'            ',1,8)+' '+ copy(floattostrf(t_detalhesValorunitrio.asfloat,ffNumber,15,4)+'                            ',1,11) +'  '+ copy(floattostrf(t_detalhesValortotal.asfloat,ffNumber,15,2)+'                 ',1,13) +'     '+copy(floattostrf(t_detalhesAliquotaICMS.asfloat,ffNumber,15,0)+'            ',1,2) +'  '+copy( floattostrf(t_detalhesAliquotaIPI.asfloat,ffNumber,15,0)+'            ',1,2) +'    '+ copy(floattostrf(t_detalhesValIPI.asfloat,ffNumber,15,2)+'            ',1,10))
                     else writeln(v_textonota,copy(t_detalhesDescricao.asstring+'                                                                          ',1,58));
                     t_detalhes.next;
              end;
              {imprime linhas em branco}
              while v_itens < qitens do begin
                    v_itens := v_itens + 1;
                    writeln(v_textonota,' ');
              end;

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'  '+ copy(floattostrf(t_notasfiscaisBaseCalcICMS.asfloat,ffNumber,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(t_notasfiscaisValICMS.asfloat,ffNumber,15,2  )+'                      ',1,15)+'           '+copy(floattostrf(t_notasfiscaisBaseCalcICMSsubst.asfloat,ffNumber,15,2)+'                       ',1,15)+'             '+copy(floattostrf(t_notasfiscaisValICMSsubs.asfloat,ffNumber,15,2)+'            ',1,15)+'             '+copy(floattostrf(t_notasfiscaisValtotprodutos.asfloat,ffNumber,15,2)+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,'  '+ copy(floattostrf(t_notasfiscaisValfrete.asfloat,ffNumber    ,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(t_notasfiscaisValseguro.asfloat,ffNumber,15,2)+'                      ',1,15)+'           '+copy(floattostrf(t_notasfiscaisOutrasdesp.asfloat,ffNumber,15,2       )+'                       ',1,15)+'             '+copy(floattostrf(t_notasfiscaisValtotIPI.asfloat,ffNumber,15,2  )+'            ',1,15) +'             '+copy(floattostrf(t_notasfiscaisVatotnota.asfloat,ffNumber,15,2     )+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

             {Localizando Transportador}
              if T_transportadores.FindKey([t_notasfiscaisEmpresa.asstring,t_notasfiscaisFilial.asstring,t_notasfiscaisTransportador.asstring]) then begin
                 v_nometrans := T_transportadoresRazoSocial.asstring;
                 v_cgctrans  := T_transportadoresCGCCPF.asstring;
                 v_endtrans  := T_transportadoresEndereo.asstring;
                 v_baitrans  := T_transportadoresBairro.asstring;
                 v_cidtrans  := T_transportadoresCidade.asstring;
                 v_ceptrans  := T_transportadoresCEP.asstring;
                 v_uftrans   := T_transportadoresUF.asstring;
                 v_instrans  := T_transportadoresInscrioEstadual.asstring;
              end
              else begin
                 v_nometrans := '                                                             ';
                 v_cgctrans  := '                  ';
                 v_endtrans  := '                                                             ';
                 v_baitrans  := '                               ';
                 v_cidtrans  := '                               ';
                 v_ceptrans  := '          ';
                 v_uftrans   := '  ';
                 v_instrans  := '               ';
              end;

              writeln(v_textonota,copy(v_nometrans+'                                                                  ',1,67)+'                  '+copy(t_notasfiscaisFrete.asstring+'   ',1,1)+'     '+ copy(t_notasfiscaisPlaca.asstring+'                          ',1,12)+'  '+copy(t_notasfiscaisUFVeiculo.asstring+'   ',1,2)+'   '+copy(v_cgctrans+'                                ',1,27));
              writeln(v_textonota,' ');
              writeln(v_textonota,copy(v_endtrans +'                                                                  ',1,67)+'       '      +copy(v_cidtrans+'                                              ',1,25)+'      '+copy(v_uftrans+'    ',1,2)+'   '+v_instrans);
              writeln(v_textonota,' ');
              writeln(v_textonota,copy('                                                        ',1,16)+' '+ copy(t_notasfiscaisEspecie.asstring+'                                 ',1,20)+'       '+copy(t_notasfiscaisMarca.asstring+'                                  ',1,22) +'     '+copy(t_notasfiscaisNumero.asstring+'                                  ',1,21)+'       '+copy(floattostrf(t_notasfiscaisPesoBruto.asfloat,ffNumber,15,2)+'                           ',1,18)+'   '+copy(floattostrf(t_notasfiscaisPesoLiquido.asfloat,ffNumber,15,2)+'',1,18));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,copy(t_notasfiscaisDA1.asstring+'                                                        ',1,69));
              writeln(v_textonota,copy(t_notasfiscaisDA2.asstring+'                                            ',1,40)+'     '+copy(t_notasfiscaisDA5.asstring+'                           ',1,30));
              writeln(v_textonota,copy(t_notasfiscaisDA3.asstring+'                                            ',1,40)+'     '+copy(t_notasfiscaisDA6.asstring+'                           ',1,30));
              writeln(v_textonota,copy(t_notasfiscaisDA4.asstring+'                                            ',1,40)+'     '+copy(t_notasfiscaisDA7.asstring+'                           ',1,30));
              writeln(v_textonota,'(*) C.F.='+v_ncm);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                                          '+t_notasfiscaisNFiscal.asstring);


            end;

   end;

   {NOTAS FISCAIS DE TRANSFERENCIA}
   if t_notasfiscaisTiponf.asstring = 'T' then begin

{padrão}   if t_notasfiscaislayout.asstring = '1' then begin
              writeln(v_textonota,'                                                                                                                                                                                                                 '+t_notasfiscaisNFiscal.asstring);
              writeln(v_textonota,'                                                                                                                                                                          XX');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA1.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA2.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA3.asstring+'                                                        ',1,68)+'      '+ copy(t_notasfiscaisNatOpe.asstring+'                                     ',1,33)+'   '+ copy(t_notasfiscaisCFOP.asstring+'                   ',1,5)+'              '+copy(t_notasfiscaisInscEstadual.asstring+'                                ',1,20));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA4.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA5.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA6.asstring+'                                                        ',1,68)+'      '+ copy(t_notasfiscaisNomedestrem.asstring+'                                                                                                  ',1,74)+'   '+ copy(t_notasfiscaisCNPJCPF.asstring+'                                               ',1,28)            +'       '+ datetostr(t_notasfiscaisDtEmissao.asdatetime));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA7.asstring+'                                                        ',1,68));
              writeln(v_textonota,'                                                                             '+copy(t_notasfiscaisEndereco.asstring +'                                                              ',1,64)+'   '+ copy(t_notasfiscaisBairrodistrito.asstring+'                                                          ',1,23)+ '  '+ copy(t_notasfiscaisCep.asstring+'                                  ',1,12)+ '        '+ datetostr(t_notasfiscaisDtsaidaentrada.asdatetime));
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                             '+copy(t_notasfiscaisMunicipio.asstring+'                            ',1,41)+'         '+ copy(t_notasfiscaisFoneFax.asstring+'                       ',1,17)  + '   '+ copy(t_notasfiscaisUF.asstring+'   ',1,2)+ '    '+ t_notasfiscaisInscEstDestRem.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                             '+t_notasfiscaisCondEspeciais.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

              v_itens := 0;
              t_detalhes.FindKey([t_notasfiscaisEmpresa.asstring,t_notasfiscaisFilial.asstring,t_notasfiscaisimportador.asstring,t_notasfiscaisprocesso.asstring,t_notasfiscaistiponf.asstring,t_notasfiscaisnfiscal.asstring]);
              while ((not t_detalhes.Eof) and
                     (t_notasfiscaisEmpresa.asstring = t_detalhesEmpresa.asstring) and
                     (t_notasfiscaisFilial.asstring = t_detalhesfilial.asstring) and
                     (t_notasfiscaisimportador.asstring = t_detalhesimportador.asstring) and
                     (t_notasfiscaisprocesso.asstring = t_detalhesprocesso.asstring) and
                     (t_notasfiscaistiponf.asstring = t_detalhestiponf.asstring) and
                     (t_notasfiscaisnfiscal.asstring = t_detalhesnfiscal.asstring))do begin
                     v_itens := v_itens+1;
                     if t_detalhescodproduto.asstring<>'' then
                        writeln(v_textonota,'  '+ copy(t_detalhesCodproduto.asstring+'                                 ',1,21) +'    '+ copy(t_detalhesDescricao.asstring+'                                                                          ',1,72)+'  '+copy(t_detalhesClassificacao.asstring+'           ',1,11) +' '+ copy(t_detalhesST.asstring+'     ',1,3) +'    '+ copy(t_detalhesUnidade.asstring+'   ',1,3) +'   '+ copy(floattostrf(t_detalhesQuantidade.asfloat,ffNumber,15,2)+'         ',1,8) +'   '+ copy(floattostrf(t_detalhesValorunitrio.asfloat,ffNumber,15,4)+'                            ',1,17) +'     '+ copy(floattostrf(t_detalhesValortotal.asfloat,ffNumber,15,2)+'                 ',1,17) +'   '+copy(floattostrf(t_detalhesAliquotaICMS.asfloat,ffNumber,15,0)+'            ',1,6) +'   '+copy( floattostrf(t_detalhesAliquotaIPI.asfloat,ffNumber,15,0)+'            ',1,6) +'   '+ copy(floattostrf(t_detalhesValIPI.asfloat,ffNumber,15,2)+'            ',1,14))
                     else writeln(v_textonota,'  '+ copy(t_detalhesCodproduto.asstring+'                                 ',1,21) +'    '+ copy(t_detalhesDescricao.asstring+'                                                                          ',1,72));                        
                     t_detalhes.next;
              end;
              {imprime linhas em branco}
              while v_itens < qitens do begin
                    v_itens := v_itens + 1;
                    writeln(v_textonota,' ');
              end;

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'       '+ copy(floattostrf(t_notasfiscaisBaseCalcICMS.asfloat,ffNumber,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(t_notasfiscaisValICMS.asfloat,ffNumber,15,2  )+'                      ',1,15)+'           '+copy(floattostrf(t_notasfiscaisBaseCalcICMSsubst.asfloat,ffNumber,15,2)+'                       ',1,15)+'             '+copy(floattostrf(t_notasfiscaisValICMSsubs.asfloat,ffNumber,15,2)+'            ',1,15)+'           '+copy(floattostrf(t_notasfiscaisValtotprodutos.asfloat,ffNumber,15,2)+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,'       '+ copy(floattostrf(t_notasfiscaisValfrete.asfloat,ffNumber    ,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(t_notasfiscaisValseguro.asfloat,ffNumber,15,2)+'                      ',1,15)+'           '+copy(floattostrf(t_notasfiscaisOutrasdesp.asfloat,ffNumber,15,2       )+'                       ',1,15)+'             '+copy(floattostrf(t_notasfiscaisValtotIPI.asfloat,ffNumber,15,2  )+'            ',1,15)+'           '+copy(floattostrf(t_notasfiscaisVatotnota.asfloat,ffNumber,15,2     )+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

             {Localizando Transportador}
              if T_transportadores.FindKey([t_notasfiscaisEmpresa.asstring,t_notasfiscaisFilial.asstring,t_notasfiscaisTransportador.asstring]) then begin
                 v_nometrans := T_transportadoresRazoSocial.asstring;
                 v_cgctrans  := T_transportadoresCGCCPF.asstring;
                 v_endtrans  := T_transportadoresEndereo.asstring;
                 v_baitrans  := T_transportadoresBairro.asstring;
                 v_cidtrans  := T_transportadoresCidade.asstring;
                 v_ceptrans  := T_transportadoresCEP.asstring;
                 v_uftrans   := T_transportadoresUF.asstring;
                 v_instrans  := T_transportadoresInscrioEstadual.asstring;
              end
              else begin
                 v_nometrans := '                                                             ';
                 v_cgctrans  := '                  ';
                 v_endtrans  := '                                                             ';
                 v_baitrans  := '                               ';
                 v_cidtrans  := '                               ';
                 v_ceptrans  := '          ';
                 v_uftrans   := '  ';
                 v_instrans  := '               ';
              end;

              writeln(v_textonota,copy('   '+v_nometrans+'                                                                  ',1,67)+'                  '+copy(t_notasfiscaisFrete.asstring+'   ',1,1)+'   '+ copy(t_notasfiscaisPlaca.asstring+'                          ',1,12)+'      '+copy(t_notasfiscaisUFVeiculo.asstring+'   ',1,2)+'     '+copy(v_cgctrans+'                                ',1,27));
              writeln(v_textonota,' ');
              writeln(v_textonota,copy('   '+v_endtrans +'                                                                  ',1,67)+'      '         +copy(v_cidtrans+'                                              ',1,28)+'      '+copy(v_uftrans+'    ',1,2)+'     '+v_instrans);
              writeln(v_textonota,' ');
              writeln(v_textonota,'   '+copy(floattostrf(t_notasfiscaisQuantidade.asfloat,ffNumber,15,2)+'                      ',1,16)+'     '+ copy(t_notasfiscaisEspecie.asstring+'                                 ',1,20)+'       '+copy(t_notasfiscaisMarca.asstring+'                                  ',1,22) +'  '+copy(t_notasfiscaisNumero.asstring+'                                  ',1,21)+'   '+copy(floattostrf(t_notasfiscaisPesoBruto.asfloat,ffNumber,15,2)+'                           ',1,18)+'   '+copy(floattostrf(t_notasfiscaisPesoLiquido.asfloat,ffNumber,15,2)+'',1,18));
              writeln(v_textonota,' ');

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                                                                                                             '+t_notasfiscaisNFiscal.asstring);

            end;

{SAI}       if t_notasfiscaislayout.asstring = '2' then begin
              writeln(v_textonota,'                                                                                                                                                                                                                 '+t_notasfiscaisNFiscal.asstring);
              writeln(v_textonota,'                                                                                                                                                                          XX');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA1.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA2.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA3.asstring+'                                                        ',1,68)+'      '+ copy(t_notasfiscaisNatOpe.asstring+'                                     ',1,33)+'   '+ copy(t_notasfiscaisCFOP.asstring+'                   ',1,5)+'              '+copy(t_notasfiscaisInscEstadual.asstring+'                                ',1,20));
              writeln(v_textonota,'   '+copy('BASE DE CALCULO DO IPI:                                                        ',1,68));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA4.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA5.asstring+'                                                        ',1,68)+'      '+ copy(t_notasfiscaisNomedestrem.asstring+'                                                                                                  ',1,74)+'   '+ copy(t_notasfiscaisCNPJCPF.asstring+'                                               ',1,28)            +'       '+ datetostr(t_notasfiscaisDtEmissao.asdatetime));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA6.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA7.asstring+'                                                        ',1,68)+'      '+ copy(t_notasfiscaisEndereco.asstring   +'                                                              ',1,64)+'   '+ copy(t_notasfiscaisBairrodistrito.asstring+'                                                          ',1,23)+ '  '+ copy(t_notasfiscaisCep.asstring+'                                  ',1,12)+ '        '+ datetostr(t_notasfiscaisDtsaidaentrada.asdatetime));
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                             '+copy(t_notasfiscaisMunicipio.asstring+'                            ',1,41)+'         '+ copy(t_notasfiscaisFoneFax.asstring+'                       ',1,17)  + '   '+ copy(t_notasfiscaisUF.asstring+'   ',1,2)+ '    '+ t_notasfiscaisInscEstDestRem.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              {writeln(v_textonota,'                                                                             '+copy(t_notasfiscaisDuplicataNr.asstring+'             ',1,10) + '           ' + copy(datetostr(t_notasfiscaisVencimento.asdatetime)+'               ',1,10)+'         '+ floattostrf(t_notasfiscaisValor.asfloat,ffNumber,15,2));}
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                             '+t_notasfiscaisCondEspeciais.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

              v_itens := 0;
              t_detalhes.FindKey([t_notasfiscaisEmpresa.asstring,t_notasfiscaisFilial.asstring,t_notasfiscaisimportador.asstring,t_notasfiscaisprocesso.asstring,t_notasfiscaistiponf.asstring,t_notasfiscaisnfiscal.asstring]);
              while ((not t_detalhes.Eof) and
                     (t_notasfiscaisEmpresa.asstring = t_detalhesEmpresa.asstring) and
                     (t_notasfiscaisFilial.asstring = t_detalhesfilial.asstring) and
                     (t_notasfiscaisimportador.asstring = t_detalhesimportador.asstring) and
                     (t_notasfiscaisprocesso.asstring = t_detalhesprocesso.asstring) and
                     (t_notasfiscaistiponf.asstring = t_detalhestiponf.asstring) and
                     (t_notasfiscaisnfiscal.asstring = t_detalhesnfiscal.asstring))do begin
                     v_itens := v_itens+1;
                     if t_detalhescodproduto.asstring<>'' then
                        writeln(v_textonota,'  '+ copy(t_detalhesCodproduto.asstring+'                                 ',1,21) +'    '+ copy(t_detalhesDescricao.asstring+'                                                                          ',1,72)+'  '+copy(t_detalhesClassificacao.asstring+'           ',1,11) +' '+ copy(t_detalhesST.asstring+'     ',1,3) +'    '+ copy(t_detalhesUnidade.asstring+'   ',1,3) +'   '+ copy(floattostrf(t_detalhesQuantidade.asfloat,ffNumber,15,2)+'         ',1,8) +'   '+ copy(floattostrf(t_detalhesValorunitrio.asfloat,ffNumber,15,4)+'                            ',1,17) +'     '+ copy(floattostrf(t_detalhesValortotal.asfloat,ffNumber,15,2)+'                 ',1,17) +'   '+copy(floattostrf(t_detalhesAliquotaICMS.asfloat,ffNumber,15,0)+'            ',1,6) +'   '+copy( floattostrf(t_detalhesAliquotaIPI.asfloat,ffNumber,15,0)+'            ',1,6) +'   '+ copy(floattostrf(t_detalhesValIPI.asfloat,ffNumber,15,2)+'            ',1,14))
                     else writeln(v_textonota,'  '+ copy(t_detalhesCodproduto.asstring+'                                 ',1,21) +'    '+ copy(t_detalhesDescricao.asstring+'                                                                          ',1,72));                        
                     t_detalhes.next;
              end;
              {imprime linhas em branco}
              while v_itens < qitens do begin
                    v_itens := v_itens + 1;
                    writeln(v_textonota,' ');
              end;

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'       '+ copy(floattostrf(t_notasfiscaisBaseCalcICMS.asfloat,ffNumber,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(t_notasfiscaisValICMS.asfloat,ffNumber,15,2  )+'                      ',1,15)+'           '+copy(floattostrf(t_notasfiscaisBaseCalcICMSsubst.asfloat,ffNumber,15,2)+'                       ',1,15)+'             '+copy(floattostrf(t_notasfiscaisValICMSsubs.asfloat,ffNumber,15,2)+'            ',1,15)+'           '+copy(floattostrf(t_notasfiscaisValtotprodutos.asfloat,ffNumber,15,2)+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,'       '+ copy(floattostrf(t_notasfiscaisValfrete.asfloat,ffNumber    ,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(t_notasfiscaisValseguro.asfloat,ffNumber,15,2)+'                      ',1,15)+'           '+copy(floattostrf(t_notasfiscaisOutrasdesp.asfloat,ffNumber,15,2       )+'                       ',1,15)+'             '+copy(floattostrf(t_notasfiscaisValtotIPI.asfloat,ffNumber,15,2  )+'            ',1,15)+'           '+copy(floattostrf(t_notasfiscaisVatotnota.asfloat,ffNumber,15,2     )+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

             {Localizando Transportador}
              if T_transportadores.FindKey([t_notasfiscaisEmpresa.asstring,t_notasfiscaisFilial.asstring,t_notasfiscaisTransportador.asstring]) then begin
                 v_nometrans := T_transportadoresRazoSocial.asstring;
                 v_cgctrans  := T_transportadoresCGCCPF.asstring;
                 v_endtrans  := T_transportadoresEndereo.asstring;
                 v_baitrans  := T_transportadoresBairro.asstring;
                 v_cidtrans  := T_transportadoresCidade.asstring;
                 v_ceptrans  := T_transportadoresCEP.asstring;
                 v_uftrans   := T_transportadoresUF.asstring;
                 v_instrans  := T_transportadoresInscrioEstadual.asstring;
              end
              else begin
                 v_nometrans := '                                                             ';
                 v_cgctrans  := '                  ';
                 v_endtrans  := '                                                             ';
                 v_baitrans  := '                               ';
                 v_cidtrans  := '                               ';
                 v_ceptrans  := '          ';
                 v_uftrans   := '  ';
                 v_instrans  := '               ';
              end;

              writeln(v_textonota,copy('   '+v_nometrans+'                                                                  ',1,67)+'                  '+copy(t_notasfiscaisFrete.asstring+'   ',1,1)+'   '+ copy(t_notasfiscaisPlaca.asstring+'                          ',1,12)+'      '+copy(t_notasfiscaisUFVeiculo.asstring+'   ',1,2)+'     '+copy(v_cgctrans+'                                ',1,27));
              writeln(v_textonota,' ');
              writeln(v_textonota,copy('   '+v_endtrans +'                                                                  ',1,67)+'      '         +copy(v_cidtrans+'                                              ',1,28)+'      '+copy(v_uftrans+'    ',1,2)+'     '+v_instrans);
              writeln(v_textonota,' ');
              writeln(v_textonota,'   '+copy(floattostrf(t_notasfiscaisQuantidade.asfloat,ffNumber,15,2)+'                      ',1,16)+'     '+ copy(t_notasfiscaisEspecie.asstring+'                                 ',1,20)+'       '+copy(t_notasfiscaisMarca.asstring+'                                  ',1,22) +'  '+copy(t_notasfiscaisNumero.asstring+'                                  ',1,21)+'   '+copy(floattostrf(t_notasfiscaisPesoBruto.asfloat,ffNumber,15,2)+'                           ',1,18)+'   '+copy(floattostrf(t_notasfiscaisPesoLiquido.asfloat,ffNumber,15,2)+'',1,18));
              writeln(v_textonota,' ');

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                                                                                                             '+t_notasfiscaisNFiscal.asstring);

            end;

{RENAULT}   if t_notasfiscaislayout.asstring = '3' then begin
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                                                                                                                  '+t_notasfiscaisNFiscal.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                                                                                          XX');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'   '+copy('                                                                                                                                                    ',1,49)+'     '+ copy(t_notasfiscaisNatOpe.asstring+'                                     ',1,48)+'       '+ copy(t_notasfiscaisCFOP.asstring+'                   ',1,5)+'   '+copy(t_notasfiscaisInscEstadual.asstring+'                                ',1,20));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA1.asstring+'                                                        ',1,49));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA2.asstring+'                                                        ',1,49));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA3.asstring+'                                                        ',1,49)+'     '+ copy(t_notasfiscaisNomedestrem.asstring+'                                                                                                         ',1,92)+'   '+ copy(t_notasfiscaisCNPJCPF.asstring+'                                               ',1,28)            +'       '+ datetostr(t_notasfiscaisDtEmissao.asdatetime));
              writeln(v_textonota,'   '+copy('BASE DE CALCULO DO IPI:                                                        ',1,49));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA4.asstring+'                                                        ',1,49)+'     '+ copy(t_notasfiscaisEndereco.asstring   +'                                                                           ',1,70)+'   '+ copy(t_notasfiscaisBairrodistrito.asstring+'                                                          ',1,23)+ '             '+ copy(t_notasfiscaisCep.asstring+'                                  ',1,12)+ '         '+ datetostr(t_notasfiscaisDtsaidaentrada.asdatetime));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA5.asstring+'                                                        ',1,49));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA6.asstring+'                                                        ',1,49)+'     '+copy(t_notasfiscaisMunicipio.asstring+'                                                     ',1,50)+'         '+ copy(t_notasfiscaisFoneFax.asstring+'                       ',1,17)  + '               '+ copy(t_notasfiscaisUF.asstring+'   ',1,2)+ '   '+ t_notasfiscaisInscEstDestRem.asstring);
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA7.asstring+'                                                        ',1,49));
              //writeln(v_textonota,'   NOVA RAZÃO SOCIAL: RENAULT DO BRASIL S.A.');
              writeln(v_textonota,'   NOVO ENDEREÇO: AV. RENAULT,1300');
              writeln(v_textonota,'   BORDA DO CAMPO - SÃO JOSÉ DOS PINHAIS/PR.');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              {writeln(v_textonota,'                                                                             '+copy(t_notasfiscaisDuplicataNr.asstring+'             ',1,10) + '           ' + copy(datetostr(t_notasfiscaisVencimento.asdatetime)+'               ',1,10)+'         '+ floattostrf(t_notasfiscaisValor.asfloat,ffNumber,15,2));}
              {writeln(v_textonota,'                                                                             '+t_notasfiscaisCondEspeciais.asstring);}
              writeln(v_textonota,copy('                                                                                                                                                                                                                                   ',1,90)+extenso(t_notasfiscaisVatotnota.asfloat));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

              v_itens := 0;
              t_detalhes.FindKey([t_notasfiscaisEmpresa.asstring,t_notasfiscaisFilial.asstring,t_notasfiscaisimportador.asstring,t_notasfiscaisprocesso.asstring,t_notasfiscaistiponf.asstring,t_notasfiscaisnfiscal.asstring]);
              while ((not t_detalhes.Eof) and
                     (t_notasfiscaisEmpresa.asstring = t_detalhesEmpresa.asstring) and
                     (t_notasfiscaisFilial.asstring = t_detalhesfilial.asstring) and
                     (t_notasfiscaisimportador.asstring = t_detalhesimportador.asstring) and
                     (t_notasfiscaisprocesso.asstring = t_detalhesprocesso.asstring) and
                     (t_notasfiscaistiponf.asstring = t_detalhestiponf.asstring) and
                     (t_notasfiscaisnfiscal.asstring = t_detalhesnfiscal.asstring))do begin
                     v_itens := v_itens+1;
                     if t_detalhescodproduto.asstring<>'' then
                        writeln(v_textonota,'  '+ copy(t_detalhesCodproduto.asstring+'                                 ',1,21) +'    '+ copy(t_detalhesDescricao.asstring+'                                                                          ',1,60)+'  '+copy(t_detalhesClassificacao.asstring+'           ',1,11) +'     '+ copy(t_detalhesST.asstring+'     ',1,3) +' '+ copy(t_detalhesUnidade.asstring+'   ',1,3) +'   '+ copy(floattostrf(t_detalhesQuantidade.asfloat,ffNumber,7,2)+'            ',1,10)+'         '+ copy(floattostrf(t_detalhesValorunitrio.asfloat,ffNumber,15,4)+'                            ',1,17) +'       '+ copy(floattostrf(t_detalhesValortotal.asfloat,ffNumber,15,2)+'                 ',1,17) +'  '+copy(floattostrf(t_detalhesAliquotaICMS.asfloat,ffNumber,15,0)+'            ',1,2) +'   '+copy( floattostrf(t_detalhesAliquotaIPI.asfloat,ffNumber,15,0)+'            ',1,2) +'         '+ copy(floattostrf(t_detalhesValIPI.asfloat,ffNumber,15,2)+'            ',1,14))
                     else writeln(v_textonota,'  '+ copy(t_detalhesCodproduto.asstring+'                                 ',1,21) +'    '+ copy(t_detalhesDescricao.asstring+'                                                                          ',1,60));
                     t_detalhes.next;
              end;
              {imprime linhas em branco}
              while v_itens < qitens do begin
                    v_itens := v_itens + 1;
                    writeln(v_textonota,' ');
              end;

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'       '+ copy(floattostrf(t_notasfiscaisBaseCalcICMS.asfloat,ffNumber,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(t_notasfiscaisValICMS.asfloat,ffNumber,15,2  )+'                      ',1,15)+'           '+copy(floattostrf(t_notasfiscaisBaseCalcICMSsubst.asfloat,ffNumber,15,2)+'                       ',1,15)+'             '+copy(floattostrf(t_notasfiscaisValICMSsubs.asfloat,ffNumber,15,2)+'            ',1,15)+'           '+copy(floattostrf(t_notasfiscaisValtotprodutos.asfloat,ffNumber,15,2)+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,'       '+ copy(floattostrf(t_notasfiscaisValfrete.asfloat,ffNumber    ,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(t_notasfiscaisValseguro.asfloat,ffNumber,15,2)+'                      ',1,15)+'           '+copy(floattostrf(t_notasfiscaisOutrasdesp.asfloat,ffNumber,15,2       )+'                       ',1,15)+'             '+copy(floattostrf(t_notasfiscaisValtotIPI.asfloat,ffNumber,15,2  )+'            ',1,15)+'           '+copy(floattostrf(t_notasfiscaisVatotnota.asfloat,ffNumber,15,2     )+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

             {Localizando Transportador}
              if T_transportadores.FindKey([t_notasfiscaisEmpresa.asstring,t_notasfiscaisFilial.asstring,t_notasfiscaisTransportador.asstring]) then begin
                 v_nometrans := T_transportadoresRazoSocial.asstring;
                 v_cgctrans  := T_transportadoresCGCCPF.asstring;
                 v_endtrans  := T_transportadoresEndereo.asstring;
                 v_baitrans  := T_transportadoresBairro.asstring;
                 v_cidtrans  := T_transportadoresCidade.asstring;
                 v_ceptrans  := T_transportadoresCEP.asstring;
                 v_uftrans   := T_transportadoresUF.asstring;
                 v_instrans  := T_transportadoresInscrioEstadual.asstring;
              end
              else begin
                 v_nometrans := '                                                             ';
                 v_cgctrans  := '                  ';
                 v_endtrans  := '                                                             ';
                 v_baitrans  := '                               ';
                 v_cidtrans  := '                               ';
                 v_ceptrans  := '          ';
                 v_uftrans   := '  ';
                 v_instrans  := '               ';
              end;

              writeln(v_textonota,copy('   '+v_nometrans+'                                                                  ',1,67)+'             '+copy(t_notasfiscaisFrete.asstring+'   ',1,1)+'   '+ copy(t_notasfiscaisPlaca.asstring+'                          ',1,12)+'  '+copy(t_notasfiscaisUFVeiculo.asstring+'   ',1,2)+'   '+copy(v_cgctrans+'                                ',1,27));
              writeln(v_textonota,' ');
              writeln(v_textonota,copy('   '+v_endtrans +'                                                                  ',1,67)+'   '         +copy(v_cidtrans+'                                              ',1,25)+'   '+copy(v_uftrans+'    ',1,2)+'   '+v_instrans);
              writeln(v_textonota,' ');
              writeln(v_textonota,'   '+copy(floattostrf(t_notasfiscaisQuantidade.asfloat,ffNumber,15,2)+'                      ',1,16)+' '+ copy(t_notasfiscaisEspecie.asstring+'                                 ',1,20)+'       '+copy(t_notasfiscaisMarca.asstring+'                                  ',1,22) +'  '+copy(t_notasfiscaisNumero.asstring+'                                  ',1,21)+'       '+copy(floattostrf(t_notasfiscaisPesoBruto.asfloat,ffNumber,15,2)+'                           ',1,18)+'   '+copy(floattostrf(t_notasfiscaisPesoLiquido.asfloat,ffNumber,15,2)+'',1,18));
              writeln(v_textonota,' ');

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                                                                                                             '+t_notasfiscaisNFiscal.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');


            end;

{KOYO}   if t_notasfiscaislayout.asstring = '4' then begin
            //                                 1         2         3         4         5         6         7         8         9        10        11        12        13
            //writeln(v_textonota,'   123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/');
              writeln(v_textonota,'                                                                                                                                   '+t_notasfiscaisNFiscal.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                     XX');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,copy(t_notasfiscaisNatOpe.asstring+'                                                                        ',1,49)+'  '+ copy(t_notasfiscaisCFOP.asstring+'       ',1,5)+'   '+copy(t_notasfiscaisInscEstadual.asstring+'                                ',1,20));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,copy(t_notasfiscaisNomedestrem.asstring+'                                                                                                         ',1,80)+'    '+ copy(t_notasfiscaisCNPJCPF.asstring+'                                     ',1,30)   +'     '+ datetostr(t_notasfiscaisDtEmissao.asdatetime));
              writeln(v_textonota,' ');
              writeln(v_textonota,copy(t_notasfiscaisEndereco.asstring   +'                                                                           ',1,65)+'     '+ copy(t_notasfiscaisBairrodistrito.asstring+'                                                          ',1,30)    + '  '+ copy(t_notasfiscaisCep.asstring+'                                  ',1,12)+ '     '+ datetostr(t_notasfiscaisDtsaidaentrada.asdatetime));
              writeln(v_textonota,' ');
              writeln(v_textonota,copy(t_notasfiscaisMunicipio.asstring+'                                                     ',1,45)+'    '+ copy(t_notasfiscaisFoneFax.asstring+'                       ',1,25)  + '    '+ copy(t_notasfiscaisUF.asstring+'   ',1,2)+ '   '+ t_notasfiscaisInscEstDestRem.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

              {
              writeln(v_textonota,'   '+copy('                                                                                                                                                    ',1,49)+'     '+ copy(t_notasfiscaisNatOpe.asstring+'                                     ',1,48)+'       '+ copy(t_notasfiscaisCFOP.asstring+'                   ',1,5)+'   '+copy(t_notasfiscaisInscEstadual.asstring+'                                ',1,20));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA1.asstring+'                                                        ',1,49));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA2.asstring+'                                                        ',1,49));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA3.asstring+'                                                        ',1,49)+'     '+ copy(t_notasfiscaisNomedestrem.asstring+'                                                                                                         ',1,92)+'   '+ copy(t_notasfiscaisCNPJCPF.asstring+'                                               ',1,28)            +'       '+ datetostr(t_notasfiscaisDtEmissao.asdatetime));
              writeln(v_textonota,'   '+copy('BASE DE CALCULO DO IPI:                                                        ',1,49));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA4.asstring+'                                                        ',1,49)+'     '+ copy(t_notasfiscaisEndereco.asstring   +'                                                                           ',1,70)+'   '+ copy(t_notasfiscaisBairrodistrito.asstring+'                                                          ',1,23)+ '  '+ copy(t_notasfiscaisCep.asstring+'                                  ',1,12)+ '                    '+ datetostr(t_notasfiscaisDtsaidaentrada.asdatetime));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA5.asstring+'                                                        ',1,49));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA6.asstring+'                                                        ',1,49)+'     '+copy(t_notasfiscaisMunicipio.asstring+'                                                     ',1,50)+'         '+ copy(t_notasfiscaisFoneFax.asstring+'                       ',1,17)  + '               '+ copy(t_notasfiscaisUF.asstring+'   ',1,2)+ '   '+ t_notasfiscaisInscEstDestRem.asstring);
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA7.asstring+'                                                        ',1,49));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
                      writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              }

              v_itens := 0;
              t_detalhes.FindKey([t_notasfiscaisEmpresa.asstring,t_notasfiscaisFilial.asstring,t_notasfiscaisimportador.asstring,t_notasfiscaisprocesso.asstring,t_notasfiscaistiponf.asstring,t_notasfiscaisnfiscal.asstring]);
              while ((not t_detalhes.Eof) and
                     (t_notasfiscaisEmpresa.asstring = t_detalhesEmpresa.asstring) and
                     (t_notasfiscaisFilial.asstring = t_detalhesfilial.asstring) and
                     (t_notasfiscaisimportador.asstring = t_detalhesimportador.asstring) and
                     (t_notasfiscaisprocesso.asstring = t_detalhesprocesso.asstring) and
                     (t_notasfiscaistiponf.asstring = t_detalhestiponf.asstring) and
                     (t_notasfiscaisnfiscal.asstring = t_detalhesnfiscal.asstring))do begin
                     v_itens := v_itens+1;
                     if t_detalhescodproduto.asstring<>'' then
                        writeln(v_textonota,copy(t_detalhesDescricao.asstring+'                                                                          ',1,57)+'   '+copy(t_detalhesClassificacao.asstring+'               ',1,6) +' '+ copy(t_detalhesST.asstring+'     ',1,3) +' '+ copy(t_detalhesUnidade.asstring+'   ',1,3) +'   '+ copy(floattostrf(t_detalhesQuantidade.asfloat,fffixed,7,0)+'            ',1,8)+' '+ copy(floattostrf(t_detalhesValorunitrio.asfloat,ffNumber,15,4)+'                            ',1,11) +'  '+ copy(floattostrf(t_detalhesValortotal.asfloat,ffNumber,15,2)+'                 ',1,13) +'     '+copy(floattostrf(t_detalhesAliquotaICMS.asfloat,ffNumber,15,0)+'            ',1,2) +'  '+copy( floattostrf(t_detalhesAliquotaIPI.asfloat,ffNumber,15,0)+'            ',1,2) +'    '+ copy(floattostrf(t_detalhesValIPI.asfloat,ffNumber,15,2)+'            ',1,10))
                     else writeln(v_textonota,copy(t_detalhesDescricao.asstring+'                                                                          ',1,58));
                     t_detalhes.next;
              end;
              {imprime linhas em branco}
              while v_itens < qitens do begin
                    v_itens := v_itens + 1;
                    writeln(v_textonota,' ');
              end;

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'  '+ copy(floattostrf(t_notasfiscaisBaseCalcICMS.asfloat,ffNumber,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(t_notasfiscaisValICMS.asfloat,ffNumber,15,2  )+'                      ',1,15)+'           '+copy(floattostrf(t_notasfiscaisBaseCalcICMSsubst.asfloat,ffNumber,15,2)+'                       ',1,15)+'             '+copy(floattostrf(t_notasfiscaisValICMSsubs.asfloat,ffNumber,15,2)+'            ',1,15)+'             '+copy(floattostrf(t_notasfiscaisValtotprodutos.asfloat,ffNumber,15,2)+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,'  '+ copy(floattostrf(t_notasfiscaisValfrete.asfloat,ffNumber    ,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(t_notasfiscaisValseguro.asfloat,ffNumber,15,2)+'                      ',1,15)+'           '+copy(floattostrf(t_notasfiscaisOutrasdesp.asfloat,ffNumber,15,2       )+'                       ',1,15)+'             '+copy(floattostrf(t_notasfiscaisValtotIPI.asfloat,ffNumber,15,2  )+'            ',1,15) +'             '+copy(floattostrf(t_notasfiscaisVatotnota.asfloat,ffNumber,15,2     )+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

             {Localizando Transportador}
              if T_transportadores.FindKey([t_notasfiscaisEmpresa.asstring,t_notasfiscaisFilial.asstring,t_notasfiscaisTransportador.asstring]) then begin
                 v_nometrans := T_transportadoresRazoSocial.asstring;
                 v_cgctrans  := T_transportadoresCGCCPF.asstring;
                 v_endtrans  := T_transportadoresEndereo.asstring;
                 v_baitrans  := T_transportadoresBairro.asstring;
                 v_cidtrans  := T_transportadoresCidade.asstring;
                 v_ceptrans  := T_transportadoresCEP.asstring;
                 v_uftrans   := T_transportadoresUF.asstring;
                 v_instrans  := T_transportadoresInscrioEstadual.asstring;
              end
              else begin
                 v_nometrans := '                                                             ';
                 v_cgctrans  := '                  ';
                 v_endtrans  := '                                                             ';
                 v_baitrans  := '                               ';
                 v_cidtrans  := '                               ';
                 v_ceptrans  := '          ';
                 v_uftrans   := '  ';
                 v_instrans  := '               ';
              end;

              writeln(v_textonota,copy(v_nometrans+'                                                                  ',1,67)+'                  '+copy(t_notasfiscaisFrete.asstring+'   ',1,1)+'     '+ copy(t_notasfiscaisPlaca.asstring+'                          ',1,12)+'  '+copy(t_notasfiscaisUFVeiculo.asstring+'   ',1,2)+'   '+copy(v_cgctrans+'                                ',1,27));
              writeln(v_textonota,' ');
              writeln(v_textonota,copy(v_endtrans +'                                                                  ',1,67)+'       '      +copy(v_cidtrans+'                                              ',1,25)+'      '+copy(v_uftrans+'    ',1,2)+'   '+v_instrans);
              writeln(v_textonota,' ');
              writeln(v_textonota,copy('                                                        ',1,16)+' '+ copy(t_notasfiscaisEspecie.asstring+'                                 ',1,20)+'       '+copy(t_notasfiscaisMarca.asstring+'                                  ',1,22) +'     '+copy(t_notasfiscaisNumero.asstring+'                                  ',1,21)+'       '+copy(floattostrf(t_notasfiscaisPesoBruto.asfloat,ffNumber,15,2)+'                           ',1,18)+'   '+copy(floattostrf(t_notasfiscaisPesoLiquido.asfloat,ffNumber,15,2)+'',1,18));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,copy(t_notasfiscaisDA1.asstring+'                                                        ',1,69));
              writeln(v_textonota,copy(t_notasfiscaisDA2.asstring+'                                            ',1,40)+'     '+copy(t_notasfiscaisDA5.asstring+'                           ',1,30));
              writeln(v_textonota,copy(t_notasfiscaisDA3.asstring+'                                            ',1,40)+'     '+copy(t_notasfiscaisDA6.asstring+'                           ',1,30));
              writeln(v_textonota,copy(t_notasfiscaisDA4.asstring+'                                            ',1,40)+'     '+copy(t_notasfiscaisDA7.asstring+'                           ',1,30));
              writeln(v_textonota,'(*) C.F.='+v_ncm);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                                          '+t_notasfiscaisNFiscal.asstring);


            end;

   end;

   {NOTAS FISCAIS DE SAÍDA}
   if t_notasfiscaisTiponf.asstring = 'S' then begin

{padrão}   if t_notasfiscaislayout.asstring = '1' then begin
              writeln(v_textonota,'                                                                                                                                                                                                                 '+t_notasfiscaisNFiscal.asstring);
              writeln(v_textonota,'                                                                                                                                                                          XX');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA1.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA2.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA3.asstring+'                                                        ',1,68)+'      '+ copy(t_notasfiscaisNatOpe.asstring+'                                     ',1,33)+'   '+ copy(t_notasfiscaisCFOP.asstring+'                   ',1,5)+'              '+copy(t_notasfiscaisInscEstadual.asstring+'                                ',1,20));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA4.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA5.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA6.asstring+'                                                        ',1,68)+'      '+ copy(t_notasfiscaisNomedestrem.asstring+'                                                                                                  ',1,74)+'   '+ copy(t_notasfiscaisCNPJCPF.asstring+'                                               ',1,28)            +'       '+ datetostr(t_notasfiscaisDtEmissao.asdatetime));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA7.asstring+'                                                        ',1,68));
              writeln(v_textonota,'                                                                             '+copy(t_notasfiscaisEndereco.asstring +'                                                              ',1,64)+'   '+ copy(t_notasfiscaisBairrodistrito.asstring+'                                                          ',1,23)+ '  '+ copy(t_notasfiscaisCep.asstring+'                                  ',1,12)+ '        '+ datetostr(t_notasfiscaisDtsaidaentrada.asdatetime));
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                             '+copy(t_notasfiscaisMunicipio.asstring+'                            ',1,41)+'         '+ copy(t_notasfiscaisFoneFax.asstring+'                       ',1,17)  + '   '+ copy(t_notasfiscaisUF.asstring+'   ',1,2)+ '    '+ t_notasfiscaisInscEstDestRem.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                             '+t_notasfiscaisCondEspeciais.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

              v_itens := 0;
              t_detalhes.FindKey([t_notasfiscaisEmpresa.asstring,t_notasfiscaisFilial.asstring,t_notasfiscaisimportador.asstring,t_notasfiscaisprocesso.asstring,t_notasfiscaistiponf.asstring,t_notasfiscaisnfiscal.asstring]);
              while ((not t_detalhes.Eof) and
                     (t_notasfiscaisEmpresa.asstring = t_detalhesEmpresa.asstring) and
                     (t_notasfiscaisFilial.asstring = t_detalhesfilial.asstring) and
                     (t_notasfiscaisimportador.asstring = t_detalhesimportador.asstring) and
                     (t_notasfiscaisprocesso.asstring = t_detalhesprocesso.asstring) and
                     (t_notasfiscaistiponf.asstring = t_detalhestiponf.asstring) and
                     (t_notasfiscaisnfiscal.asstring = t_detalhesnfiscal.asstring))do begin
                     v_itens := v_itens+1;
                     if t_detalhescodproduto.asstring<>'' then
                        writeln(v_textonota,'  '+ copy(t_detalhesCodproduto.asstring+'                                 ',1,21) +'    '+ copy(t_detalhesDescricao.asstring+'                                                                          ',1,72)+'  '+copy(t_detalhesClassificacao.asstring+'           ',1,11) +' '+ copy(t_detalhesST.asstring+'     ',1,3) +'    '+ copy(t_detalhesUnidade.asstring+'   ',1,3) +'   '+ copy(floattostrf(t_detalhesQuantidade.asfloat,ffNumber,15,2)+'         ',1,8) +'   '+ copy(floattostrf(t_detalhesValorunitrio.asfloat,ffNumber,15,4)+'                            ',1,17) +'     '+ copy(floattostrf(t_detalhesValortotal.asfloat,ffNumber,15,2)+'                 ',1,17) +'   '+copy(floattostrf(t_detalhesAliquotaICMS.asfloat,ffNumber,15,0)+'            ',1,6) +'   '+copy( floattostrf(t_detalhesAliquotaIPI.asfloat,ffNumber,15,0)+'            ',1,6) +'   '+ copy(floattostrf(t_detalhesValIPI.asfloat,ffNumber,15,2)+'            ',1,14))
                     else writeln(v_textonota,'  '+ copy(t_detalhesCodproduto.asstring+'                                 ',1,21) +'    '+ copy(t_detalhesDescricao.asstring+'                                                                          ',1,72));
                     t_detalhes.next;
              end;
              {imprime linhas em branco}
              while v_itens < qitens do begin
                    v_itens := v_itens + 1;
                    writeln(v_textonota,' ');
              end;

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'       '+ copy(floattostrf(t_notasfiscaisBaseCalcICMS.asfloat,ffNumber,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(t_notasfiscaisValICMS.asfloat,ffNumber,15,2  )+'                      ',1,15)+'           '+copy(floattostrf(t_notasfiscaisBaseCalcICMSsubst.asfloat,ffNumber,15,2)+'                       ',1,15)+'             '+copy(floattostrf(t_notasfiscaisValICMSsubs.asfloat,ffNumber,15,2)+'            ',1,15)+'           '+copy(floattostrf(t_notasfiscaisValtotprodutos.asfloat,ffNumber,15,2)+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,'       '+ copy(floattostrf(t_notasfiscaisValfrete.asfloat,ffNumber    ,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(t_notasfiscaisValseguro.asfloat,ffNumber,15,2)+'                      ',1,15)+'           '+copy(floattostrf(t_notasfiscaisOutrasdesp.asfloat,ffNumber,15,2       )+'                       ',1,15)+'             '+copy(floattostrf(t_notasfiscaisValtotIPI.asfloat,ffNumber,15,2  )+'            ',1,15)+'           '+copy(floattostrf(t_notasfiscaisVatotnota.asfloat,ffNumber,15,2     )+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

             {Localizando Transportador}
              if T_transportadores.FindKey([t_notasfiscaisEmpresa.asstring,t_notasfiscaisFilial.asstring,t_notasfiscaisTransportador.asstring]) then begin
                 v_nometrans := T_transportadoresRazoSocial.asstring;
                 v_cgctrans  := T_transportadoresCGCCPF.asstring;
                 v_endtrans  := T_transportadoresEndereo.asstring;
                 v_baitrans  := T_transportadoresBairro.asstring;
                 v_cidtrans  := T_transportadoresCidade.asstring;
                 v_ceptrans  := T_transportadoresCEP.asstring;
                 v_uftrans   := T_transportadoresUF.asstring;
                 v_instrans  := T_transportadoresInscrioEstadual.asstring;
              end
              else begin
                 v_nometrans := '                                                             ';
                 v_cgctrans  := '                  ';
                 v_endtrans  := '                                                             ';
                 v_baitrans  := '                               ';
                 v_cidtrans  := '                               ';
                 v_ceptrans  := '          ';
                 v_uftrans   := '  ';
                 v_instrans  := '               ';
              end;

              writeln(v_textonota,copy('   '+v_nometrans+'                                                                  ',1,67)+'                  '+copy(t_notasfiscaisFrete.asstring+'   ',1,1)+'   '+ copy(t_notasfiscaisPlaca.asstring+'                          ',1,12)+'      '+copy(t_notasfiscaisUFVeiculo.asstring+'   ',1,2)+'     '+copy(v_cgctrans+'                                ',1,27));
              writeln(v_textonota,' ');
              writeln(v_textonota,copy('   '+v_endtrans +'                                                                  ',1,67)+'      '         +copy(v_cidtrans+'                                              ',1,28)+'      '+copy(v_uftrans+'    ',1,2)+'     '+v_instrans);
              writeln(v_textonota,' ');
              writeln(v_textonota,'   '+copy(floattostrf(t_notasfiscaisQuantidade.asfloat,ffNumber,15,2)+'                      ',1,16)+'     '+ copy(t_notasfiscaisEspecie.asstring+'                                 ',1,20)+'       '+copy(t_notasfiscaisMarca.asstring+'                                  ',1,22) +'  '+copy(t_notasfiscaisNumero.asstring+'                                  ',1,21)+'   '+copy(floattostrf(t_notasfiscaisPesoBruto.asfloat,ffNumber,15,2)+'                           ',1,18)+'   '+copy(floattostrf(t_notasfiscaisPesoLiquido.asfloat,ffNumber,15,2)+'',1,18));
              writeln(v_textonota,' ');

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                                                                                                             '+t_notasfiscaisNFiscal.asstring);

            end;

{SAI}       if t_notasfiscaislayout.asstring = '2' then begin
              writeln(v_textonota,'                                                                                                                                                                                                                 '+t_notasfiscaisNFiscal.asstring);
              writeln(v_textonota,'                                                                                                                                                                          XX');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA1.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA2.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA3.asstring+'                                                        ',1,68)+'      '+ copy(t_notasfiscaisNatOpe.asstring+'                                     ',1,33)+'   '+ copy(t_notasfiscaisCFOP.asstring+'                   ',1,5)+'              '+copy(t_notasfiscaisInscEstadual.asstring+'                                ',1,20));
              writeln(v_textonota,'   '+copy('BASE DE CALCULO DO IPI:                                                        ',1,68));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA4.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA5.asstring+'                                                        ',1,68)+'      '+ copy(t_notasfiscaisNomedestrem.asstring+'                                                                                                  ',1,74)+'   '+ copy(t_notasfiscaisCNPJCPF.asstring+'                                               ',1,28)            +'       '+ datetostr(t_notasfiscaisDtEmissao.asdatetime));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA6.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA7.asstring+'                                                        ',1,68)+'      '+ copy(t_notasfiscaisEndereco.asstring   +'                                                              ',1,64)+'   '+ copy(t_notasfiscaisBairrodistrito.asstring+'                                                          ',1,23)+ '  '+ copy(t_notasfiscaisCep.asstring+'                                  ',1,12)+ '        '+ datetostr(t_notasfiscaisDtsaidaentrada.asdatetime));
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                             '+copy(t_notasfiscaisMunicipio.asstring+'                            ',1,41)+'         '+ copy(t_notasfiscaisFoneFax.asstring+'                       ',1,17)  + '   '+ copy(t_notasfiscaisUF.asstring+'   ',1,2)+ '    '+ t_notasfiscaisInscEstDestRem.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              {writeln(v_textonota,'                                                                             '+copy(t_notasfiscaisDuplicataNr.asstring+'             ',1,10) + '           ' + copy(datetostr(t_notasfiscaisVencimento.asdatetime)+'               ',1,10)+'         '+ floattostrf(t_notasfiscaisValor.asfloat,ffNumber,15,2));}
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                             '+t_notasfiscaisCondEspeciais.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

              v_itens := 0;
              t_detalhes.FindKey([t_notasfiscaisEmpresa.asstring,t_notasfiscaisFilial.asstring,t_notasfiscaisimportador.asstring,t_notasfiscaisprocesso.asstring,t_notasfiscaistiponf.asstring,t_notasfiscaisnfiscal.asstring]);
              while ((not t_detalhes.Eof) and
                     (t_notasfiscaisEmpresa.asstring = t_detalhesEmpresa.asstring) and
                     (t_notasfiscaisFilial.asstring = t_detalhesfilial.asstring) and
                     (t_notasfiscaisimportador.asstring = t_detalhesimportador.asstring) and
                     (t_notasfiscaisprocesso.asstring = t_detalhesprocesso.asstring) and
                     (t_notasfiscaistiponf.asstring = t_detalhestiponf.asstring) and
                     (t_notasfiscaisnfiscal.asstring = t_detalhesnfiscal.asstring))do begin
                     v_itens := v_itens+1;
                     if t_detalhescodproduto.asstring<>'' then
                        writeln(v_textonota,'  '+ copy(t_detalhesCodproduto.asstring+'                                 ',1,21) +'    '+ copy(t_detalhesDescricao.asstring+'                                                                          ',1,72)+'  '+copy(t_detalhesClassificacao.asstring+'           ',1,11) +' '+ copy(t_detalhesST.asstring+'     ',1,3) +'    '+ copy(t_detalhesUnidade.asstring+'   ',1,3) +'   '+ copy(floattostrf(t_detalhesQuantidade.asfloat,ffNumber,15,2)+'         ',1,8) +'   '+ copy(floattostrf(t_detalhesValorunitrio.asfloat,ffNumber,15,4)+'                            ',1,17) +'     '+ copy(floattostrf(t_detalhesValortotal.asfloat,ffNumber,15,2)+'                 ',1,17) +'   '+copy(floattostrf(t_detalhesAliquotaICMS.asfloat,ffNumber,15,0)+'            ',1,6) +'   '+copy( floattostrf(t_detalhesAliquotaIPI.asfloat,ffNumber,15,0)+'            ',1,6) +'   '+ copy(floattostrf(t_detalhesValIPI.asfloat,ffNumber,15,2)+'            ',1,14))
                     else writeln(v_textonota,'  '+ copy(t_detalhesCodproduto.asstring+'                                 ',1,21) +'    '+ copy(t_detalhesDescricao.asstring+'                                                                          ',1,72));
                     t_detalhes.next;
              end;
              {imprime linhas em branco}
              while v_itens < qitens do begin
                    v_itens := v_itens + 1;
                    writeln(v_textonota,' ');
              end;

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'       '+ copy(floattostrf(t_notasfiscaisBaseCalcICMS.asfloat,ffNumber,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(t_notasfiscaisValICMS.asfloat,ffNumber,15,2  )+'                      ',1,15)+'           '+copy(floattostrf(t_notasfiscaisBaseCalcICMSsubst.asfloat,ffNumber,15,2)+'                       ',1,15)+'             '+copy(floattostrf(t_notasfiscaisValICMSsubs.asfloat,ffNumber,15,2)+'            ',1,15)+'           '+copy(floattostrf(t_notasfiscaisValtotprodutos.asfloat,ffNumber,15,2)+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,'       '+ copy(floattostrf(t_notasfiscaisValfrete.asfloat,ffNumber    ,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(t_notasfiscaisValseguro.asfloat,ffNumber,15,2)+'                      ',1,15)+'           '+copy(floattostrf(t_notasfiscaisOutrasdesp.asfloat,ffNumber,15,2       )+'                       ',1,15)+'             '+copy(floattostrf(t_notasfiscaisValtotIPI.asfloat,ffNumber,15,2  )+'            ',1,15)+'           '+copy(floattostrf(t_notasfiscaisVatotnota.asfloat,ffNumber,15,2     )+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

             {Localizando Transportador}
              if T_transportadores.FindKey([t_notasfiscaisEmpresa.asstring,t_notasfiscaisFilial.asstring,t_notasfiscaisTransportador.asstring]) then begin
                 v_nometrans := T_transportadoresRazoSocial.asstring;
                 v_cgctrans  := T_transportadoresCGCCPF.asstring;
                 v_endtrans  := T_transportadoresEndereo.asstring;
                 v_baitrans  := T_transportadoresBairro.asstring;
                 v_cidtrans  := T_transportadoresCidade.asstring;
                 v_ceptrans  := T_transportadoresCEP.asstring;
                 v_uftrans   := T_transportadoresUF.asstring;
                 v_instrans  := T_transportadoresInscrioEstadual.asstring;
              end
              else begin
                 v_nometrans := '                                                             ';
                 v_cgctrans  := '                  ';
                 v_endtrans  := '                                                             ';
                 v_baitrans  := '                               ';
                 v_cidtrans  := '                               ';
                 v_ceptrans  := '          ';
                 v_uftrans   := '  ';
                 v_instrans  := '               ';
              end;

              writeln(v_textonota,copy('   '+v_nometrans+'                                                                  ',1,67)+'                  '+copy(t_notasfiscaisFrete.asstring+'   ',1,1)+'   '+ copy(t_notasfiscaisPlaca.asstring+'                          ',1,12)+'      '+copy(t_notasfiscaisUFVeiculo.asstring+'   ',1,2)+'     '+copy(v_cgctrans+'                                ',1,27));
              writeln(v_textonota,' ');
              writeln(v_textonota,copy('   '+v_endtrans +'                                                                  ',1,67)+'      '         +copy(v_cidtrans+'                                              ',1,28)+'      '+copy(v_uftrans+'    ',1,2)+'     '+v_instrans);
              writeln(v_textonota,' ');
              writeln(v_textonota,'   '+copy(floattostrf(t_notasfiscaisQuantidade.asfloat,ffNumber,15,2)+'                      ',1,16)+'     '+ copy(t_notasfiscaisEspecie.asstring+'                                 ',1,20)+'       '+copy(t_notasfiscaisMarca.asstring+'                                  ',1,22) +'  '+copy(t_notasfiscaisNumero.asstring+'                                  ',1,21)+'   '+copy(floattostrf(t_notasfiscaisPesoBruto.asfloat,ffNumber,15,2)+'                           ',1,18)+'   '+copy(floattostrf(t_notasfiscaisPesoLiquido.asfloat,ffNumber,15,2)+'',1,18));
              writeln(v_textonota,' ');

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                                                                                                             '+t_notasfiscaisNFiscal.asstring);

            end;

{RENAULT}   if t_notasfiscaislayout.asstring = '3' then begin
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                                                                                                                  '+t_notasfiscaisNFiscal.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                                                                        XX');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'   '+copy('                                                                                                                                                    ',1,49)+'     '+ copy(t_notasfiscaisNatOpe.asstring+'                                     ',1,48)+'       '+ copy(t_notasfiscaisCFOP.asstring+'                   ',1,5)+'   '+copy(t_notasfiscaisInscEstadual.asstring+'                                ',1,20));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA1.asstring+'                                                        ',1,49));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA2.asstring+'                                                        ',1,49));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA3.asstring+'                                                        ',1,49)+'     '+ copy(t_notasfiscaisNomedestrem.asstring+'                                                                                                         ',1,92)+'   '+ copy(t_notasfiscaisCNPJCPF.asstring+'                                               ',1,28)            +'       '+ datetostr(t_notasfiscaisDtEmissao.asdatetime));
              writeln(v_textonota,'   '+copy('                                                                                   ',1,49));
              writeln(v_textonota,'   '+copy('                                                                                   ',1,49)+'     '+ copy(t_notasfiscaisEndereco.asstring   +'                                                                           ',1,70)+'   '+ copy(t_notasfiscaisBairrodistrito.asstring+'                                                          ',1,23)+ '             '+ copy(t_notasfiscaisCep.asstring+'                                  ',1,12)+ '         '+ datetostr(t_notasfiscaisDtsaidaentrada.asdatetime));
              writeln(v_textonota,'   '+copy('                                                                                   ',1,49));
              writeln(v_textonota,'   '+copy('                                                                                   ',1,49)+'     '+copy(t_notasfiscaisMunicipio.asstring+'                                                     ',1,50)+'         '+ copy(t_notasfiscaisFoneFax.asstring+'                       ',1,17)  + '               '+ copy(t_notasfiscaisUF.asstring+'   ',1,2)+ '   '+ t_notasfiscaisInscEstDestRem.asstring);
              writeln(v_textonota,'   '+copy('                                                                                   ',1,49));
              //writeln(v_textonota,'   NOVA RAZÃO SOCIAL: RENAULT DO BRASIL S.A.');
              writeln(v_textonota,'   NOVO ENDEREÇO: AV. RENAULT,1300');
              writeln(v_textonota,'   BORDA DO CAMPO - SÃO JOSÉ DOS PINHAIS/PR.');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              {writeln(v_textonota,'                                                                             '+copy(t_notasfiscaisDuplicataNr.asstring+'             ',1,10) + '           ' + copy(datetostr(t_notasfiscaisVencimento.asdatetime)+'               ',1,10)+'         '+ floattostrf(t_notasfiscaisValor.asfloat,ffNumber,15,2));}
              {writeln(v_textonota,'                                                                             '+t_notasfiscaisCondEspeciais.asstring);}
              writeln(v_textonota,copy('                                                                                                                                                                                                                                   ',1,90)+extenso(t_notasfiscaisVatotnota.asfloat));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

              v_itens := 0;
              t_detalhes.FindKey([t_notasfiscaisEmpresa.asstring,t_notasfiscaisFilial.asstring,t_notasfiscaisimportador.asstring,t_notasfiscaisprocesso.asstring,t_notasfiscaistiponf.asstring,t_notasfiscaisnfiscal.asstring]);
              while ((not t_detalhes.Eof) and
                     (t_notasfiscaisEmpresa.asstring = t_detalhesEmpresa.asstring) and
                     (t_notasfiscaisFilial.asstring = t_detalhesfilial.asstring) and
                     (t_notasfiscaisimportador.asstring = t_detalhesimportador.asstring) and
                     (t_notasfiscaisprocesso.asstring = t_detalhesprocesso.asstring) and
                     (t_notasfiscaistiponf.asstring = t_detalhestiponf.asstring) and
                     (t_notasfiscaisnfiscal.asstring = t_detalhesnfiscal.asstring))do begin
                     v_itens := v_itens+1;
                     if t_detalhescodproduto.asstring<>'' then
                        writeln(v_textonota,'  '+ copy(t_detalhesCodproduto.asstring+'                                 ',1,21) +'    '+ copy(t_detalhesDescricao.asstring+'                                                                          ',1,60)+'  '+copy(t_detalhesClassificacao.asstring+'           ',1,11) +'     '+ copy(t_detalhesST.asstring+'     ',1,3) +' '+ copy(t_detalhesUnidade.asstring+'   ',1,3) +'   '+ copy(floattostrf(t_detalhesQuantidade.asfloat,ffNumber,7,2)+'            ',1,10)+'         '+ copy(floattostrf(t_detalhesValorunitrio.asfloat,ffNumber,15,4)+'                            ',1,17) +'       '+ copy(floattostrf(t_detalhesValortotal.asfloat,ffNumber,15,2)+'                 ',1,17) +'  '+copy(floattostrf(t_detalhesAliquotaICMS.asfloat,ffNumber,15,0)+'            ',1,2) +'   '+copy( floattostrf(t_detalhesAliquotaIPI.asfloat,ffNumber,15,0)+'            ',1,2) +'         '+ copy(floattostrf(t_detalhesValIPI.asfloat,ffNumber,15,2)+'            ',1,14))
                     else writeln(v_textonota,'  '+ copy(t_detalhesCodproduto.asstring+'                                 ',1,21) +'    '+ copy(t_detalhesDescricao.asstring+'                                                                          ',1,60));
                     t_detalhes.next;
              end;
              {imprime linhas em branco}
              while v_itens < qitens do begin
                    v_itens := v_itens + 1;
                    writeln(v_textonota,' ');
              end;

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'       '+ copy(floattostrf(t_notasfiscaisBaseCalcICMS.asfloat,ffNumber,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(t_notasfiscaisValICMS.asfloat,ffNumber,15,2  )+'                      ',1,15)+'           '+copy(floattostrf(t_notasfiscaisBaseCalcICMSsubst.asfloat,ffNumber,15,2)+'                       ',1,15)+'             '+copy(floattostrf(t_notasfiscaisValICMSsubs.asfloat,ffNumber,15,2)+'            ',1,15)+'           '+copy(floattostrf(t_notasfiscaisValtotprodutos.asfloat,ffNumber,15,2)+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,'       '+ copy(floattostrf(t_notasfiscaisValfrete.asfloat,ffNumber    ,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(t_notasfiscaisValseguro.asfloat,ffNumber,15,2)+'                      ',1,15)+'           '+copy(floattostrf(t_notasfiscaisOutrasdesp.asfloat,ffNumber,15,2       )+'                       ',1,15)+'             '+copy(floattostrf(t_notasfiscaisValtotIPI.asfloat,ffNumber,15,2  )+'            ',1,15)+'           '+copy(floattostrf(t_notasfiscaisVatotnota.asfloat,ffNumber,15,2     )+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

             {Localizando Transportador}
              if T_transportadores.FindKey([t_notasfiscaisEmpresa.asstring,t_notasfiscaisFilial.asstring,t_notasfiscaisTransportador.asstring]) then begin
                 v_nometrans := T_transportadoresRazoSocial.asstring;
                 v_cgctrans  := T_transportadoresCGCCPF.asstring;
                 v_endtrans  := T_transportadoresEndereo.asstring;
                 v_baitrans  := T_transportadoresBairro.asstring;
                 v_cidtrans  := T_transportadoresCidade.asstring;
                 v_ceptrans  := T_transportadoresCEP.asstring;
                 v_uftrans   := T_transportadoresUF.asstring;
                 v_instrans  := T_transportadoresInscrioEstadual.asstring;
              end
              else begin
                 v_nometrans := '                                                             ';
                 v_cgctrans  := '                  ';
                 v_endtrans  := '                                                             ';
                 v_baitrans  := '                               ';
                 v_cidtrans  := '                               ';
                 v_ceptrans  := '          ';
                 v_uftrans   := '  ';
                 v_instrans  := '               ';
              end;

              writeln(v_textonota,copy('   '+v_nometrans+'                                                                  ',1,67)+'             '+copy(t_notasfiscaisFrete.asstring+'   ',1,1)+'   '+ copy(t_notasfiscaisPlaca.asstring+'                          ',1,12)+'  '+copy(t_notasfiscaisUFVeiculo.asstring+'   ',1,2)+'   '+copy(v_cgctrans+'                                ',1,27));
              writeln(v_textonota,' ');
              writeln(v_textonota,copy('   '+v_endtrans +'                                                                  ',1,67)+'   '         +copy(v_cidtrans+'                                              ',1,25)+'   '+copy(v_uftrans+'    ',1,2)+'   '+v_instrans);
              writeln(v_textonota,' ');
              writeln(v_textonota,'   '+copy(floattostrf(t_notasfiscaisQuantidade.asfloat,ffNumber,15,2)+'                      ',1,16)+' '+ copy(t_notasfiscaisEspecie.asstring+'                                 ',1,20)+'       '+copy(t_notasfiscaisMarca.asstring+'                                  ',1,22) +'  '+copy(t_notasfiscaisNumero.asstring+'                                  ',1,21)+'       '+copy(floattostrf(t_notasfiscaisPesoBruto.asfloat,ffNumber,15,2)+'                           ',1,18)+'   '+copy(floattostrf(t_notasfiscaisPesoLiquido.asfloat,ffNumber,15,2)+'',1,18));
              writeln(v_textonota,' ');

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                                                                                                             '+t_notasfiscaisNFiscal.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');


            end;

{KOYO}   if t_notasfiscaislayout.asstring = '4' then begin
            //                                 1         2         3         4         5         6         7         8         9        10        11        12        13
            //writeln(v_textonota,'   123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/');
              writeln(v_textonota,'                                                                                                                                   '+t_notasfiscaisNFiscal.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                     XX');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,copy(t_notasfiscaisNatOpe.asstring+'                                                                        ',1,49)+'  '+ copy(t_notasfiscaisCFOP.asstring+'       ',1,5)+'   '+copy(t_notasfiscaisInscEstadual.asstring+'                                ',1,20));
              ///writeln(v_textonota,copy(t_notasfiscaisNatOpe.asstring+'                            ',1,50)+'  '+ copy(t_notasfiscaisCFOP.asstring+'       ',1,5)+'   '+copy(t_notasfiscaisInscEstadual.asstring+'                                ',1,20));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,copy(t_notasfiscaisNomedestrem.asstring+'                                                                                                         ',1,80)+'    '+ copy(t_notasfiscaisCNPJCPF.asstring+'                                     ',1,30)   +'     '+ datetostr(t_notasfiscaisDtEmissao.asdatetime));
              writeln(v_textonota,' ');
              writeln(v_textonota,copy(t_notasfiscaisEndereco.asstring   +'                                                                           ',1,65)+'     '+ copy(t_notasfiscaisBairrodistrito.asstring+'                                                          ',1,30)    + '  '+ copy(t_notasfiscaisCep.asstring+'                                  ',1,12)+ '     '+ datetostr(t_notasfiscaisDtsaidaentrada.asdatetime));
              writeln(v_textonota,' ');
              writeln(v_textonota,copy(t_notasfiscaisMunicipio.asstring+'                                                     ',1,45)+'    '+ copy(t_notasfiscaisFoneFax.asstring+'                       ',1,25)  + '    '+ copy(t_notasfiscaisUF.asstring+'   ',1,2)+ '   '+ t_notasfiscaisInscEstDestRem.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

              {
              writeln(v_textonota,'   '+copy('                                                                                                                                                    ',1,49)+'     '+ copy(t_notasfiscaisNatOpe.asstring+'                                     ',1,48)+'       '+ copy(t_notasfiscaisCFOP.asstring+'                   ',1,5)+'   '+copy(t_notasfiscaisInscEstadual.asstring+'                                ',1,20));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA1.asstring+'                                                        ',1,49));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA2.asstring+'                                                        ',1,49));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA3.asstring+'                                                        ',1,49)+'     '+ copy(t_notasfiscaisNomedestrem.asstring+'                                                                                                         ',1,92)+'   '+ copy(t_notasfiscaisCNPJCPF.asstring+'                                               ',1,28)            +'       '+ datetostr(t_notasfiscaisDtEmissao.asdatetime));
              writeln(v_textonota,'   '+copy('BASE DE CALCULO DO IPI:                                                        ',1,49));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA4.asstring+'                                                        ',1,49)+'     '+ copy(t_notasfiscaisEndereco.asstring   +'                                                                           ',1,70)+'   '+ copy(t_notasfiscaisBairrodistrito.asstring+'                                                          ',1,23)+ '  '+ copy(t_notasfiscaisCep.asstring+'                                  ',1,12)+ '                    '+ datetostr(t_notasfiscaisDtsaidaentrada.asdatetime));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA5.asstring+'                                                        ',1,49));
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA6.asstring+'                                                        ',1,49)+'     '+copy(t_notasfiscaisMunicipio.asstring+'                                                     ',1,50)+'         '+ copy(t_notasfiscaisFoneFax.asstring+'                       ',1,17)  + '               '+ copy(t_notasfiscaisUF.asstring+'   ',1,2)+ '   '+ t_notasfiscaisInscEstDestRem.asstring);
              writeln(v_textonota,'   '+copy(t_notasfiscaisDA7.asstring+'                                                        ',1,49));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
                      writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              }

              v_itens := 0;
              t_detalhes.FindKey([t_notasfiscaisEmpresa.asstring,t_notasfiscaisFilial.asstring,t_notasfiscaisimportador.asstring,t_notasfiscaisprocesso.asstring,t_notasfiscaistiponf.asstring,t_notasfiscaisnfiscal.asstring]);
              while ((not t_detalhes.Eof) and
                     (t_notasfiscaisEmpresa.asstring = t_detalhesEmpresa.asstring) and
                     (t_notasfiscaisFilial.asstring = t_detalhesfilial.asstring) and
                     (t_notasfiscaisimportador.asstring = t_detalhesimportador.asstring) and
                     (t_notasfiscaisprocesso.asstring = t_detalhesprocesso.asstring) and
                     (t_notasfiscaistiponf.asstring = t_detalhestiponf.asstring) and
                     (t_notasfiscaisnfiscal.asstring = t_detalhesnfiscal.asstring))do begin
                     v_itens := v_itens+1;
                     if t_detalhescodproduto.asstring<>'' then
                        writeln(v_textonota,copy(t_detalhesDescricao.asstring+'                                                                          ',1,57)+'   '+copy(t_detalhesClassificacao.asstring+'               ',1,6) +' '+ copy(t_detalhesST.asstring+'     ',1,3) +' '+ copy(t_detalhesUnidade.asstring+'   ',1,3) +'   '+ copy(floattostrf(t_detalhesQuantidade.asfloat,fffixed,7,0)+'            ',1,8)+' '+ copy(floattostrf(t_detalhesValorunitrio.asfloat,ffNumber,15,4)+'                            ',1,11) +'  '+ copy(floattostrf(t_detalhesValortotal.asfloat,ffNumber,15,2)+'                 ',1,13) +'     '+copy(floattostrf(t_detalhesAliquotaICMS.asfloat,ffNumber,15,0)+'            ',1,2) +'  '+copy( floattostrf(t_detalhesAliquotaIPI.asfloat,ffNumber,15,0)+'            ',1,2) +'    '+ copy(floattostrf(t_detalhesValIPI.asfloat,ffNumber,15,2)+'            ',1,10))
                     else writeln(v_textonota,copy(t_detalhesDescricao.asstring+'                                                                          ',1,58));
                     t_detalhes.next;
              end;
              {imprime linhas em branco}
              while v_itens < qitens do begin
                    v_itens := v_itens + 1;
                    writeln(v_textonota,' ');
              end;

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'  '+ copy(floattostrf(t_notasfiscaisBaseCalcICMS.asfloat,ffNumber,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(t_notasfiscaisValICMS.asfloat,ffNumber,15,2  )+'                      ',1,15)+'           '+copy(floattostrf(t_notasfiscaisBaseCalcICMSsubst.asfloat,ffNumber,15,2)+'                       ',1,15)+'             '+copy(floattostrf(t_notasfiscaisValICMSsubs.asfloat,ffNumber,15,2)+'            ',1,15)+'             '+copy(floattostrf(t_notasfiscaisValtotprodutos.asfloat,ffNumber,15,2)+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,'  '+ copy(floattostrf(t_notasfiscaisValfrete.asfloat,ffNumber    ,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(t_notasfiscaisValseguro.asfloat,ffNumber,15,2)+'                      ',1,15)+'           '+copy(floattostrf(t_notasfiscaisOutrasdesp.asfloat,ffNumber,15,2       )+'                       ',1,15)+'             '+copy(floattostrf(t_notasfiscaisValtotIPI.asfloat,ffNumber,15,2  )+'            ',1,15) +'             '+copy(floattostrf(t_notasfiscaisVatotnota.asfloat,ffNumber,15,2     )+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

             {Localizando Transportador}
              if T_transportadores.FindKey([t_notasfiscaisEmpresa.asstring,t_notasfiscaisFilial.asstring,t_notasfiscaisTransportador.asstring]) then begin
                 v_nometrans := T_transportadoresRazoSocial.asstring;
                 v_cgctrans  := T_transportadoresCGCCPF.asstring;
                 v_endtrans  := T_transportadoresEndereo.asstring;
                 v_baitrans  := T_transportadoresBairro.asstring;
                 v_cidtrans  := T_transportadoresCidade.asstring;
                 v_ceptrans  := T_transportadoresCEP.asstring;
                 v_uftrans   := T_transportadoresUF.asstring;
                 v_instrans  := T_transportadoresInscrioEstadual.asstring;
              end
              else begin
                 v_nometrans := '                                                             ';
                 v_cgctrans  := '                  ';
                 v_endtrans  := '                                                             ';
                 v_baitrans  := '                               ';
                 v_cidtrans  := '                               ';
                 v_ceptrans  := '          ';
                 v_uftrans   := '  ';
                 v_instrans  := '               ';
              end;

              writeln(v_textonota,copy(v_nometrans+'                                                                  ',1,67)+'                  '+copy(t_notasfiscaisFrete.asstring+'   ',1,1)+'     '+ copy(t_notasfiscaisPlaca.asstring+'                          ',1,12)+'  '+copy(t_notasfiscaisUFVeiculo.asstring+'   ',1,2)+'   '+copy(v_cgctrans+'                                ',1,27));
              writeln(v_textonota,' ');
              writeln(v_textonota,copy(v_endtrans +'                                                                  ',1,67)+'       '      +copy(v_cidtrans+'                                              ',1,25)+'      '+copy(v_uftrans+'    ',1,2)+'   '+v_instrans);
              writeln(v_textonota,' ');
              writeln(v_textonota,copy('                                                        ',1,16)+' '+ copy(t_notasfiscaisEspecie.asstring+'                                 ',1,20)+'       '+copy(t_notasfiscaisMarca.asstring+'                                  ',1,22) +'     '+copy(t_notasfiscaisNumero.asstring+'                                  ',1,21)+'       '+copy(floattostrf(t_notasfiscaisPesoBruto.asfloat,ffNumber,15,2)+'                           ',1,18)+'   '+copy(floattostrf(t_notasfiscaisPesoLiquido.asfloat,ffNumber,15,2)+'',1,18));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,copy(t_notasfiscaisDA1.asstring+'                                                        ',1,69));
              writeln(v_textonota,copy(t_notasfiscaisDA2.asstring+'                                            ',1,40)+'     '+copy(t_notasfiscaisDA5.asstring+'                           ',1,30));
              writeln(v_textonota,copy(t_notasfiscaisDA3.asstring+'                                            ',1,40)+'     '+copy(t_notasfiscaisDA6.asstring+'                           ',1,30));
              writeln(v_textonota,copy(t_notasfiscaisDA4.asstring+'                                            ',1,40)+'     '+copy(t_notasfiscaisDA7.asstring+'                           ',1,30));
              writeln(v_textonota,'(*) C.F.='+v_ncm);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                                          '+t_notasfiscaisNFiscal.asstring);


            end;


   end;
   
   ////writeln(v_textonota,chr(12));

   closefile(v_textonota);
   if imprime = true then begin
      assignfile(v_textobat,q_dir+'\'+t_notasfiscaisTiponf.asstring+T_notasfiscaisNFiscal.asstring+'.bat');
      rewrite(v_textobat);
      writeln(v_textobat,'copy '+q_dir+'\'+t_notasfiscaisTiponf.asstring+T_notasfiscaisNFiscal.asstring+'.txt lpt1');
      writeln(v_textobat,' ' );
      closefile(v_textobat);
      ShellExecute(handle, 'open', pchar(q_dir+'\'+t_notasfiscaisTiponf.asstring+T_notasfiscaisNFiscal.asstring+'.bat'), nil, nil, 0);
///      DeleteFile(q_dir+'\'+t_notasfiscaisTiponf.asstring+T_notasfiscaisNFiscal.asstring+'.bat');
      //RichEdit1.PlainText := True;
      ///RichEdit1.Lines.LoadFromFile(q_dir+'\'+t_notasfiscaisTiponf.asstring+T_notasfiscaisNFiscal.asstring+'.txt');
      ///RichEdit1.Print('');
   end;
   

end;


procedure Tf_notasfiscais.FormShow(Sender: TObject);
begin
{PrinterSetupDialog1.execute;}
t_parametros.open;
t_processos.open;
t_numnotas.open;
t_notasfiscais.open;
t_natoper.open;
t_transportadores.open;
t_importadores.open;
t_exportadores.open;
t_detalhes.open;
t_unidade.open;
t_taxa.open;
t_produtos.open;
t_conhecimento.open;

end;

procedure Tf_notasfiscais.FormCreate(Sender: TObject);
begin
    DBNMSCOMEX.Params.Values['USER NAME'] := '';
    DBNMSCOMEX.Params.Values['PASSWORD'] := 'lasbrug30';
    DBNMSCOMEX.Connected := true;
end;

procedure Tf_notasfiscais.t_natoperAfterScroll(DataSet: TDataSet);
begin
T_notasfiscais.edit;
T_notasfiscaisCFOP.asstring:= t_natoperCFOP.asstring;
end;

procedure Tf_notasfiscais.DBL_NATOPERClick(Sender: TObject);
begin
T_notasfiscais.edit;
T_notasfiscaisCFOP.asstring:= t_natoperCFOP.asstring;
end;

procedure Tf_notasfiscais.Button1Click(Sender: TObject);
var i:integer;
begin
///MessageDlg(extenso(strtofloat(edit1.text)), mtinformation, [mbOK], 0);

assignfile(v_textobat,'qcaracter.txt');
rewrite(v_textobat);
for i := 1 to 255 do begin
      writeln(v_textobat,inttostr(i)+' - '+chr(i));

end;
closefile(v_textobat);

end;

end.
