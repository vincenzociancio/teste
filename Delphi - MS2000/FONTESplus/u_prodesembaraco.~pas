unit u_prodesembaraco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, Db, DBTables, Grids, DBGrids, DBCtrls, Buttons,                                
  ColorGrd, ActnList;

{
NC    Nacionalização
11    Importação - Aéreo
12    Importação - Marítimo
13    Importação - Rodoviário
6     Transferência de Regime
6A    Transferência de Regime - Bem Principal
IT    Importação - Transf. Beneficiário
14    Reimportação - Aéreo
15    Reimportação - Marítimo
5     Destruíção
20    Importação - Bem de Apoio
IB    Importação - Bem Principal
17    Importação - DSI
19    Importação - Fícta
}
const
   cTipoProcesso : array[1..14] of string = ( 'NC','11', '12', '13', '6', '6A', 'IT', '14', '15', '5', '20', 'IB', '17', '19');


type
  TF_proDesembaraco = class(TForm)
    pnlTop: TPanel;
    Label26: TLabel;
    ME_nossaref: TMaskEdit;
    qrProcessos: TQuery;
    dsQrProcessos: TDataSource;
    l_cliente: TLabel;
    tbProcessos: TTable;
    dsProcessos: TDataSource;
    dsSitFis: TDataSource;
    tbTaxaConv: TTable;
    dsTaxaConv: TDataSource;
    dsStatus: TDataSource;
    pnlPrincipal: TPanel;
    Label239: TLabel;
    Label278: TLabel;
    pnlDI: TPanel;
    Label242: TLabel;
    Label243: TLabel;
    Label244: TLabel;
    Label245: TLabel;
    Label237: TLabel;
    Label254: TLabel;
    Label238: TLabel;
    Label240: TLabel;
    Label255: TLabel;
    Label241: TLabel;
    Label247: TLabel;
    Label248: TLabel;
    Label246: TLabel;
    dbEdtDI: TDBEdit;
    dbEdtDtProc: TDBEdit;
    dbEdtDtTrans: TDBEdit;
    dbEdtDtReg: TDBEdit;
    dbLcbCanal: TDBLookupComboBox;
    dbEdtDtDist: TDBEdit;
    dbLcbFiscal: TDBEdit;
    dbEdtDtDes: TDBEdit;
    dbEdtDtCI: TDBEdit;
    dbLcbSitFis : TDBLookupComboBox;
    Panel39: TPanel;
    dbEdtValFOB: TDBEdit;
    dbEdtValCIF: TDBEdit;
    dbEdtQtdLI: TDBEdit;
    pnlDIC: TPanel;
    Label261: TLabel;
    Label262: TLabel;
    Label263: TLabel;
    Label264: TLabel;
    Label265: TLabel;
    Label266: TLabel;
    Label267: TLabel;
    Label268: TLabel;
    Label269: TLabel;
    Label270: TLabel;
    Label286: TLabel;
    Label287: TLabel;
    dbEdtDIC: TDBEdit;
    dbEdtDtProcC: TDBEdit;
    dbEdtDtTransC: TDBEdit;
    dbEdtDtRegC: TDBEdit;
    dbLcbCanalC: TDBLookupComboBox;
    dbEdtDtDistC: TDBEdit;
    dbLcbFiscalC: TDBEdit;
    dbEdtDtDesC: TDBEdit;
    dbEdtDtCIC: TDBEdit;
    dbLcbSitFisC: TDBLookupComboBox;
    Panel38: TPanel;
    dbEdtValFOBC: TDBEdit;
    dbEdtCIFC: TDBEdit;
    dbEdtDtLib: TDBEdit;
    dsCanais: TDataSource;
    qrStatus: TQuery;
    qrStatusCODIGO: TStringField;
    qrStatusDESCRICAO: TStringField;
    qrCanais: TQuery;
    qrCanaisCODIGO: TStringField;
    qrCanaisDESCRICAO: TStringField;
    qrSitFis: TQuery;
    pnlBaixo: TPanel;
    btnAlterar: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    qrSitFisCODIGO: TStringField;
    qrSitFisDESCRICAO: TStringField;
    pnlTaxaConv: TPanel;
    Label288: TLabel;
    dbgTaxaConv: TDBGrid;
    btnIncluirTaxa: TBitBtn;
    btnAlterarTaxa: TBitBtn;
    btnExcluirTaxa: TBitBtn;
    pnlTaxaConvC: TPanel;
    Label289: TLabel;
    dbgTaxaConvC: TDBGrid;
    btnIncluirTaxaC: TBitBtn;
    btnAlterarTaxaC: TBitBtn;
    btnExcluirTaxaC: TBitBtn;
    gb_proregimp: TGroupBox;
    Label292: TLabel;
    Label293: TLabel;
    Label294: TLabel;
    Label295: TLabel;
    Label296: TLabel;
    Label297: TLabel;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    tbproregimp: TTable;
    tbproregimpEmpresa: TStringField;
    tbproregimpFilial: TStringField;
    tbproregimpProcesso: TStringField;
    tbproregimpBanco: TStringField;
    tbproregimpAgencia: TStringField;
    tbproregimpConta_Corrente: TStringField;
    tbproregimpII: TFloatField;
    tbproregimpIPI: TFloatField;
    tbproregimpTaxa_SISCOMEX: TFloatField;
    tbproregimpBancoc: TStringField;
    tbproregimpAgenciac: TStringField;
    tbproregimpConta_Correntec: TStringField;
    tbproregimpIIc: TFloatField;
    tbproregimpIPIc: TFloatField;
    tbproregimpTaxa_SISCOMEXc: TFloatField;
    ds_proregimp: TDataSource;
    T_pagtributos: TTable;
    T_pagtributosNR_DECL_IMP_MICRO: TStringField;
    T_pagtributosNR_SEQ_PGTO_TRIB: TSmallintField;
    T_pagtributosCD_RECEITA_PGTO: TStringField;
    T_pagtributosCD_BANCO_PGTO_TRIB: TStringField;
    T_pagtributosNR_AGENC_PGTO_TRIB: TStringField;
    T_pagtributosVL_TRIBUTO_PAGO: TFloatField;
    T_pagtributosDT_PGTO_TRIBUTO: TStringField;
    T_pagtributosVL_MULTA_PGTO_TRIB: TFloatField;
    T_pagtributosVL_JUROS_PGTO_TRIB: TFloatField;
    qrdisNR_DECL_IMP_MICRO: TStringField;
    qrdisNR_IDENT_USUARIO: TStringField;
    qrdisNR_DECL_IMP_PROT: TStringField;
    qrdisNR_DECLARACAO_IMP: TStringField;
    qrdisDT_PROCESSAMENTO: TStringField;
    qrdisDT_TRANSMISSAO: TStringField;
    qrdisDT_REGISTRO_DI: TStringField;
    qrdisCD_TIPO_DECLARACAO: TStringField;
    qrdisCD_MOTIVO_TRANS: TStringField;
    qrdisCD_TIPO_IMPORTADOR: TStringField;
    qrdisNR_IMPORTADOR: TStringField;
    qrdisCD_PAIS_IMPORTADOR: TStringField;
    qrdisNM_IMPORTADOR: TStringField;
    qrdisNR_TEL_IMPORTADOR: TStringField;
    qrdisED_LOGR_IMPORTADOR: TStringField;
    qrdisED_NR_IMPORTADOR: TStringField;
    qrdisED_COMPL_IMPO: TStringField;
    qrdisED_BA_IMPORTADOR: TStringField;
    qrdisED_MUN_IMPORTADOR: TStringField;
    qrdisED_UF_IMPORTADOR: TStringField;
    qrdisED_CEP_IMPORTADOR: TStringField;
    qrdisNR_CPF_REPR_LEGAL: TStringField;
    qrdisCD_MODALIDADE_DESP: TStringField;
    qrdisIN_OPERACAO_FUNDAP: TBooleanField;
    qrdisCD_URF_ENTR_CARGA: TStringField;
    qrdisCD_URF_DESPACHO: TStringField;
    qrdisCD_TIPO_CONSIG: TStringField;
    qrdisNR_CONSIGNATARIO: TStringField;
    qrdisNM_CONSIGNATARIO: TStringField;
    qrdisCD_PAIS_PROC_CARGA: TStringField;
    qrdisCD_VIA_TRANSP_CARG: TStringField;
    qrdisIN_MULTIMODAL: TBooleanField;
    qrdisNR_VEICULO_TRANSP: TStringField;
    qrdisNM_VEICULO_TRANSP: TStringField;
    qrdisNM_TRANSPORTADOR: TStringField;
    qrdisCD_BANDEIRA_TRANSP: TStringField;
    qrdisCD_TIPO_AG_CARGA: TStringField;
    qrdisNR_AGENTE_CARGA: TStringField;
    qrdisCD_TIPO_DCTO_CARGA: TStringField;
    qrdisNR_DCTO_CARGA: TStringField;
    qrdisNR_DCTO_CARGA_MAST: TStringField;
    qrdisNM_LOCAL_EMBARQUE: TStringField;
    qrdisDT_EMBARQUE: TStringField;
    qrdisCD_UTIL_DCTO_CARGA: TStringField;
    qrdisPB_CARGA: TStringField;
    qrdisPL_CARGA: TStringField;
    qrdisDT_CHEGADA_CARGA: TStringField;
    qrdisCD_TIPO_MANIFESTO: TStringField;
    qrdisNR_MANIFESTO: TStringField;
    qrdisCD_RECINTO_ALFAND: TStringField;
    qrdisCD_SETOR_ARMAZENAM: TStringField;
    qrdisCD_MOEDA_FRETE: TStringField;
    qrdisVL_TOT_FRT_PREPAID: TFloatField;
    qrdisVL_TOT_FRT_COLLECT: TFloatField;
    qrdisVL_FRETE_TNAC_MNEG: TFloatField;
    qrdisVL_TOTAL_FRETE_MN: TFloatField;
    qrdisCD_MOEDA_SEGURO: TStringField;
    qrdisVL_TOT_SEGURO_MNEG: TFloatField;
    qrdisVL_TOTAL_SEG_MN: TFloatField;
    qrdisCD_MOEDA_DESPESAS: TStringField;
    qrdisVL_TOT_DESPS_MNEG: TFloatField;
    qrdisVL_TOT_DESPS_MN: TFloatField;
    qrdisCD_MOEDA_MLE: TStringField;
    qrdisVL_TOT_MLE_MNEG: TFloatField;
    qrdisVL_TOTAL_MLE_MN: TFloatField;
    qrdisIN_MOEDA_UNICA: TBooleanField;
    qrdisTX_INFO_COMPL: TMemoField;
    qrdisCD_TIPO_PGTO_TRIB: TStringField;
    qrdisNR_CONTA_PGTO_TRIB: TStringField;
    qrdis: TQuery;
    alAtuTabelas: TActionList;
    acAtuTabelas: TAction;
    qrsomaqtd: TQuery;
    qrsomaqtdSomaDeQuantidade: TFloatField;
    qrRateioTXsiscomex: TQuery;
    T_itensfaturas: TTable;
    rts: TButton;
    qrMoedas: TQuery;
    qrMoedasCODIGO: TStringField;
    qrMoedasDESCRICAO: TStringField;
    dsMoedas: TDataSource;
    tbTaxaConvEmpresa: TStringField;
    tbTaxaConvFilial: TStringField;
    tbTaxaConvProcesso: TStringField;
    tbTaxaConvMoeda: TStringField;
    tbTaxaConvTaxa_conversao: TFloatField;
    tbTaxaConvTaxa_conversaoc: TFloatField;
    tbProALC: TTable;
    dsProALC: TDataSource;
    dsTransportadores: TDataSource;
    qrTransportadores: TQuery;
    btnALC: TBitBtn;
    pnlDDE: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Panel4: TPanel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    GroupBox2: TGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit17: TDBEdit;
    pnlRES: TPanel;
    Label19: TLabel;
    DBGrid1: TDBGrid;
    btnincluirRE: TBitBtn;
    btnexcluirRE: TBitBtn;
    pnlREINC: TPanel;
    Label27: TLabel;
    Panel5: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    edtRE: TEdit;
    tbProRE: TTable;
    ds_proRE: TDataSource;
    tbProREEmpresa: TStringField;
    tbProREFilial: TStringField;
    tbProREProcesso: TStringField;
    tbProRERE: TStringField;
    pnlALC: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Panel3: TPanel;
    dbEdtdescr_merc: TDBEdit;
    btnSalvarALC: TBitBtn;
    btnFecharALC: TBitBtn;
    dblcbTransportadores: TDBLookupComboBox;
    dbcbalc: TDBCheckBox;
    pnlTaxa: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    dbEdtMoeda: TDBEdit;
    dbEdtTaxa: TDBEdit;
    btnSalvarTaxa: TBitBtn;
    btnCancelarTaxa: TBitBtn;
    dbLcbMoeda: TDBLookupComboBox;
    qrProcessosEmpresa: TStringField;
    qrProcessosFilial: TStringField;
    qrProcessosProcesso: TStringField;
    qrProcessosTipo: TStringField;
    qrProcessosData: TDateTimeField;
    qrProcessosrefcli: TStringField;
    qrProcessosCliente: TStringField;
    qrProcessosqdecl: TStringField;
    qrProcessostipodecla: TStringField;
    qrProcessostipopro: TStringField;
    qrProcessosqcontrato: TStringField;
    qrProcessosqlocal: TStringField;
    qrProcessosqcnpj: TStringField;
    qrProcessosFechado: TIntegerField;
    qrProcessosATIVO: TIntegerField;
    qrProcessosImportador: TStringField;
    qrProcessosResponsavel_empresa: TStringField;
    qrProcessosResponsavel_empresac: TStringField;
    tbProcessosEmpresa: TStringField;
    tbProcessosFilial: TStringField;
    tbProcessosCodigo: TStringField;
    tbProcessosData: TDateTimeField;
    tbProcessosImportador: TStringField;
    tbProcessosCodigo_Cliente: TStringField;
    tbProcessosTipo_Declaracao: TStringField;
    tbProcessosTipo: TStringField;
    tbProcessosContrato: TStringField;
    tbProcessosLocal_Inventario: TStringField;
    tbProcessosNR_DECL_IMP_MICRO: TStringField;
    tbProcessosNR_DECL_IMP_PROT: TStringField;
    tbProcessosNR_DECLARACAO_IMP: TStringField;
    tbProcessosDT_PROCESSAMENTO: TStringField;
    tbProcessosDT_TRANSMISSAO: TStringField;
    tbProcessosDT_REGISTRO_DI: TStringField;
    tbProcessosDT_DESEMBARACO: TDateTimeField;
    tbProcessosDT_DISTRIBUICAO: TDateTimeField;
    tbProcessosCanal: TStringField;
    tbProcessosFiscal: TStringField;
    tbProcessosStatus: TStringField;
    tbProcessosCOD_SIT: TStringField;
    tbProcessosCD_MOTIVO_TRANS: TStringField;
    tbProcessosIN_MOEDA_UNICA: TIntegerField;
    tbProcessosTX_INFO_COMPL: TMemoField;
    tbProcessosCD_TIPO_PGTO_TRIB: TStringField;
    tbProcessosNumero_RCR: TStringField;
    tbProcessosData_Entrada_RCR: TDateTimeField;
    tbProcessosData_Aprovacao_RCR: TDateTimeField;
    tbProcessosFundamentacao_RCR: TStringField;
    tbProcessosProcurador: TStringField;
    tbProcessosNumero_TR: TStringField;
    tbProcessosData_Entrada_TR: TDateTimeField;
    tbProcessosData_vencimento_TR: TDateTimeField;
    tbProcessosData_Aprovacao_TR: TDateTimeField;
    tbProcessosData_Baixa_TR: TDateTimeField;
    tbProcessosData_CI: TDateTimeField;
    tbProcessosTipo_Garantia: TStringField;
    tbProcessosNome_banco_GAR: TStringField;
    tbProcessosAgencia_GAR: TStringField;
    tbProcessosData_deposito_GAR: TDateTimeField;
    tbProcessosNome_titulo_GAR: TStringField;
    tbProcessosnumeros_titulos_GAR: TStringField;
    tbProcessosNome_seguradora_GAR: TStringField;
    tbProcessosapolice_GAR: TStringField;
    tbProcessosnome_fiador_GAR: TStringField;
    tbProcessosCNPJ_fiador_GAR: TStringField;
    tbProcessosendereco_fiador_GAR: TStringField;
    tbProcessosQuantidade_LI: TFloatField;
    tbProcessosValor_FOB: TFloatField;
    tbProcessosValor_CIF: TFloatField;
    tbProcessosResponsavel_Empresa: TStringField;
    tbProcessosResponsavel_Importador: TStringField;
    tbProcessosSaldo_Faturamento: TFloatField;
    tbProcessosNR_DECL_IMP_MICROC: TStringField;
    tbProcessosNR_DECL_IMP_PROTC: TStringField;
    tbProcessosNR_DECLARACAO_IMPC: TStringField;
    tbProcessosDT_PROCESSAMENTOC: TStringField;
    tbProcessosDT_TRANSMISSAOC: TStringField;
    tbProcessosDT_REGISTRO_DIC: TStringField;
    tbProcessosDT_DESEMBARACOC: TDateTimeField;
    tbProcessosDT_DISTRIBUICAOC: TDateTimeField;
    tbProcessosCanalC: TStringField;
    tbProcessosFiscalC: TStringField;
    tbProcessosCOD_SITC: TStringField;
    tbProcessosData_CIC: TDateTimeField;
    tbProcessosValor_FOBC: TFloatField;
    tbProcessosValor_CIFC: TFloatField;
    tbProcessosident_meio1: TStringField;
    tbProcessosident_meio2: TStringField;
    tbProcessosCodevento: TStringField;
    tbProcessosCodobs: TStringField;
    tbProcessosObs_especifica: TStringField;
    tbProcessosData_ufollowup: TDateTimeField;
    tbProcessosHora_ufollowup: TStringField;
    tbProcessosData_liberacao: TDateTimeField;
    tbProcessosUrgente: TIntegerField;
    tbProcessosconsolidado: TIntegerField;
    tbProcessosPag_proporcional: TIntegerField;
    tbProcessosTR_VAL_FOB_US: TFloatField;
    tbProcessosTR_VAL_CIF_US: TFloatField;
    tbProcessosTR_VAL_II: TFloatField;
    tbProcessosTR_VAL_IPI: TFloatField;
    tbProcessosDDE: TStringField;
    tbProcessosProcesso_Adm: TStringField;
    tbProcessosProc_Adm_Data_Entrada: TDateTimeField;
    tbProcessosFaturado: TIntegerField;
    tbProcessosFechado: TIntegerField;
    tbProcessosCentro_Custo: TStringField;
    tbProcessosProcurador2: TStringField;
    tbProcessosTR_VAL_PIS: TFloatField;
    tbProcessosTR_VAL_COFINS: TFloatField;
    tbProcessosRCR_LOCAL: TStringField;
    tbProcessosResponsavel_EmpresaC: TStringField;
    tbProcessosvinc_processo: TIntegerField;
    tbProcessosproc_vinc: TStringField;
    tbProcessossem_nfs: TIntegerField;
    tbProALCEmpresa: TStringField;
    tbProALCFilial: TStringField;
    tbProALCProcesso: TStringField;
    tbProALCEnviou: TIntegerField;
    tbProALCTransportador: TStringField;
    tbProALCDescricao_mercadoria: TStringField;
    qrTransportadoresEmpresa: TStringField;
    qrTransportadoresFilial: TStringField;
    qrTransportadoresCodigo: TStringField;
    qrTransportadoresRazao_Social: TStringField;
    T_itensfaturasEmpresa: TStringField;
    T_itensfaturasFilial: TStringField;
    T_itensfaturasProcesso: TStringField;
    T_itensfaturasFatura: TStringField;
    T_itensfaturasSequencial: TStringField;
    T_itensfaturasPagina: TStringField;
    T_itensfaturasProduto: TStringField;
    T_itensfaturasDescricao_Produto: TMemoField;
    T_itensfaturasFabricante: TStringField;
    T_itensfaturasNCM: TStringField;
    T_itensfaturasUnidade: TStringField;
    T_itensfaturasUnidade_Medida_Estat: TStringField;
    T_itensfaturasDestaque_NCM: TStringField;
    T_itensfaturasNALADI: TStringField;
    T_itensfaturasReferencia: TStringField;
    T_itensfaturasNumero_serie: TStringField;
    T_itensfaturasReferencia_projeto: TStringField;
    T_itensfaturasPO: TStringField;
    T_itensfaturasSeqpo: TStringField;
    T_itensfaturasQuantidade: TFloatField;
    T_itensfaturasValor_Unitario: TFloatField;
    T_itensfaturasValor_Total: TFloatField;
    T_itensfaturasPeso_Unitario: TFloatField;
    T_itensfaturasPeso_Unitario_Acertado: TFloatField;
    T_itensfaturasPeso_Total: TFloatField;
    T_itensfaturasPeso_Total_Acertado: TFloatField;
    T_itensfaturasSaldo_Tributavel: TFloatField;
    T_itensfaturasRateio_Acrescimos: TFloatField;
    T_itensfaturasRateio_Deducoes: TFloatField;
    T_itensfaturasRateio_Embalagem: TFloatField;
    T_itensfaturasRateio_Frete_Interno_imp: TFloatField;
    T_itensfaturasRateio_Seguro_Interno: TFloatField;
    T_itensfaturasRateio_outras_import: TFloatField;
    T_itensfaturasRateio_startup: TFloatField;
    T_itensfaturasRateio_jurosfin: TFloatField;
    T_itensfaturasRateio_montagem: TFloatField;
    T_itensfaturasRateio_Frete_Interno_exp: TFloatField;
    T_itensfaturasRateio_carga_exp: TFloatField;
    T_itensfaturasRateio_outras_export: TFloatField;
    T_itensfaturasRateio_frete_fatura: TFloatField;
    T_itensfaturasRateio_seguro_fatura: TFloatField;
    T_itensfaturasRateio_carga_imp: TFloatField;
    T_itensfaturasRateio_Despesas_ate_FOB: TFloatField;
    T_itensfaturasRateio_Frete_prepaid: TFloatField;
    T_itensfaturasRateio_Frete_collect: TFloatField;
    T_itensfaturasRateio_Frete_ternac: TFloatField;
    T_itensfaturasRateio_Seguro: TFloatField;
    T_itensfaturasValor_Aduaneiro: TFloatField;
    T_itensfaturasValor_mercadoria: TFloatField;
    T_itensfaturasVMLE: TFloatField;
    T_itensfaturasBase_Calc_II: TFloatField;
    T_itensfaturasAcresc_reduc_Valaduan: TFloatField;
    T_itensfaturasCOD_SIT: TStringField;
    T_itensfaturasCNPJ: TStringField;
    T_itensfaturasFiel_nome: TStringField;
    T_itensfaturasFiel_cpf: TStringField;
    T_itensfaturasContrato: TStringField;
    T_itensfaturasLocal_Inventario: TStringField;
    T_itensfaturasRateio_Taxa_Siscomex: TFloatField;
    T_itensfaturasDescricao_Produto_ing: TMemoField;
    T_itensfaturasCodigo_Produto: TStringField;
    T_itensfaturasSequencial_Produto: TIntegerField;
    tbProcessosTR_IMPRESSOES: TIntegerField;
    tbProcessosTR_IMPRESSOES_FECP: TIntegerField;
    tbProcessosAVISO_DESEMBARACO: TIntegerField;
    qrProcessosDT_PROCESSAMENTO: TStringField;
    qrProcessosDT_TRANSMISSAO: TStringField;
    qrProcessosDT_REGISTRO_DI: TStringField;
    edtProcessoAdm: TMaskEdit;
    qrTipo_Processo: TQuery;
    qrTipo_Processotipo: TStringField;
    qryVerificaDoc: TQuery;
    Label23: TLabel;
    qStatusProc: TQuery;
    qStatusProcCODIGO: TStringField;
    qStatusProcDESCRICAO: TStringField;
    dsStatusProc: TDataSource;
    DBText1: TDBText;
    qAtuProcessoVisaoGeral: TQuery;
    qrProcessosCGC_CPF: TStringField;
    qrStatusProc: TQuery;
    qrStatusProcstatus: TStringField;
    qFollow: TQuery;
    qFollowdata: TDateTimeField;
    qInsertTimeLine: TQuery;
    qrConhecimento: TQuery;
    qrConhecimentoEmpresa: TStringField;
    qrConhecimentoFilial: TStringField;
    qrConhecimentoProcesso: TStringField;
    qrConhecimentoVia: TStringField;
    qrConhecimentoMultimodal: TIntegerField;
    qrConhecimentoPLaca: TStringField;
    qrConhecimentoLacre: TStringField;
    qrConhecimentoEmbarcacao: TStringField;
    qrConhecimentoTransportador: TStringField;
    qrConhecimentoTipodoccarga: TStringField;
    qrConhecimentoNumerodoccarga: TStringField;
    qrConhecimentoNumeromaster: TStringField;
    qrConhecimentoLocal: TStringField;
    qrConhecimentoData: TDateTimeField;
    qrConhecimentoUtilizacao: TStringField;
    qrConhecimentoTipomanifesto: TStringField;
    qrConhecimentoNumeromanifesto: TStringField;
    qrConhecimentoCodigo_Presenca_Carga: TStringField;
    qrConhecimentoPeso_Bruto: TFloatField;
    qrConhecimentoPeso_Liquido: TFloatField;
    qrConhecimentoAgente: TStringField;
    qrConhecimentoPais_Procedencia: TStringField;
    qrConhecimentoURF_chegada: TStringField;
    qrConhecimentoData_Chegada_URF_Cheg: TDateTimeField;
    qrConhecimentoURF_Despacho: TStringField;
    qrConhecimentoData_Chegada_URF_Desp: TDateTimeField;
    qrConhecimentoRecinto_Alfandegario: TStringField;
    qrConhecimentoSetor_Alfandegario: TStringField;
    qrConhecimentoArmazem: TStringField;
    qrConhecimentoOperacao_FUNDAP: TIntegerField;
    qrConhecimentoContratante_OPCAMBIAL: TStringField;
    qrConhecimentoMoeda_Frete: TStringField;
    qrConhecimentoFrete_Prepaid: TFloatField;
    qrConhecimentoFrete_Collect: TFloatField;
    qrConhecimentoFrete_Ter_Nac: TFloatField;
    qrConhecimentoMoeda_Seguro: TStringField;
    qrConhecimentoValor_Seguro: TFloatField;
    qrConhecimentoMoeda_Despesas_ate_FOB: TStringField;
    qrConhecimentoValor_Despesas_ate_FOB: TFloatField;
    qrConhecimentoUnidade: TStringField;
    qrConhecimentoQuantidade: TFloatField;
    qrConhecimentoDT_ETA: TDateTimeField;
    qrConhecimentoData_Follow: TStringField;
    qrConhecimentoTX_CE: TFloatField;
    qrConhecimentoMoeda_TXCE: TStringField;
    qrConhecimentoBAF: TFloatField;
    qrConhecimentoMoeda_BAF: TStringField;
    qrConhecimentoOutros_Componentes_Frete: TFloatField;
    qrConhecimentoMoeda_Outros_Componentes: TStringField;
    qrFollowDARJ: TQuery;
    qrInsertFollow: TQuery;
    qDocDI: TQuery;
    qDocDINumero_Doc: TStringField;
    qDocCI: TQuery;
    qDocCINumero_Doc: TStringField;
    procedure ME_nossarefChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbProcessosAfterPost(DataSet: TDataSet);
    procedure btnSairClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnIncluirTaxaClick(Sender: TObject);
    procedure btnIncluirTaxaCClick(Sender: TObject);
    procedure btnAlterarTaxaClick(Sender: TObject);
    procedure btnAlterarTaxaCClick(Sender: TObject);
    procedure btnExcluirTaxaClick(Sender: TObject);
    procedure btnCancelarTaxaClick(Sender: TObject);
    procedure btnSalvarTaxaClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dbEdtDtDistChange(Sender: TObject);
    procedure dbEdtDtDesChange(Sender: TObject);
    procedure dbEdtDtCIChange(Sender: TObject);
    procedure dbEdtDtDistCChange(Sender: TObject);
    procedure dbEdtDtDesCChange(Sender: TObject);
    procedure dbEdtDtCICChange(Sender: TObject);
    procedure dbEdtDtLibChange(Sender: TObject);
    procedure dbEdtDtProcChange(Sender: TObject);
    procedure dbEdtDtTransChange(Sender: TObject);
    procedure dbEdtDtRegChange(Sender: TObject);
    procedure dbEdtDtProcCChange(Sender: TObject);
    procedure dbEdtDtTransCChange(Sender: TObject);
    procedure dbEdtDtRegCChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure tbTaxaConvAfterOpen(DataSet: TDataSet);
    procedure dbEdtDIExit(Sender: TObject);
    procedure dbEdtDICExit(Sender: TObject);
    procedure acAtuTabelasExecute(Sender: TObject);
    procedure rtsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbEdtTaxaKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtDtDesExit(Sender: TObject);
    procedure btnSalvarALCClick(Sender: TObject);
    procedure btnALCClick(Sender: TObject);
    procedure pnlALCExit(Sender: TObject);
    procedure btnFecharALCClick(Sender: TObject);
    procedure btnincluirREClick(Sender: TObject);
    procedure pnlREINCExit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnexcluirREClick(Sender: TObject);
    procedure DBEdit13Change(Sender: TObject);
    procedure tbProcessosAfterScroll(DataSet: TDataSet);
    function isStrDateTime(dateStr:string ): boolean;
    procedure AtualizaProcessoVisaoGeral;
    procedure TimeLine;
    Procedure InsertFollow;
  private
    procedure PreencheComDataAtual;
    function VerificarFollow: Boolean;
    procedure Verifica_DI_Digitalizada;
    procedure Verifica_CI_Digitalizada;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_proDesembaraco: TF_proDesembaraco;
  vEdit : integer;
  vCGC_CPF : String;
  vData_Chegada_Carga : String;
  vData_Liberacao_Doc: String;
  vData_Solicitacao_Numerario : String;
  vData_Numerario_Recebido : String;
  vData_Registro_DI : String;
  vData_TR_Enviado : String;
  vData_TR_Recebido : String;
  vData_ICMS_Entrada : String;
  vData_ICMS_Exonercao : String;
  vData_Desembaraco : String;
  Evento,Obs :string;


implementation

uses U_MSCOMEX;

{$R *.DFM}
procedure TF_proDesembaraco.ME_nossarefChange(Sender: TObject);
var cnpj: String;
begin
     If Length( F_MSCOMEX.LRTrim( me_nossaref.Text ) ) <> 8 Then
      Exit;

     Screen.Cursor := crHourGlass;
     {eduardo.souza 20/07/2011 Obs: Que porra é essa, aqui!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!}
     {
     With qrProcessos Do Begin
         Close;  Open;
     End;
     If qrProcessos.Locate('Processo', me_nossaref.Text, [loCaseInsensitive]) Then Begin
     }
     qrProcessos.ParamByName( 'Processo' ).Value := me_nossaref.Text;
     qrProcessos.Close;
     qrProcessos.Open;

     If ( Not qrProcessos.IsEmpty ) Then Begin
     {Fim eduardo.souza 20/07/2011}

        { REFRESH NAS TABELAS }
        acAtuTabelas.Execute;

        If tbProcessos.State = dsInactive Then tbProcessos.Open;

       {Leandro Serra 12/12/2011 - Ticket 1168}
        with  qStatusProc do
        begin
          close;
          ParamByName('pCodigo').asstring := tbProcessosStatus.Value;
          open;
        end;
        {Fim Ticket 1168}

        {Leandro Serra 07/12/2011 - Ticket 1154}
        if tbProcessosNR_DECLARACAO_IMP.value <> '' then dbEdtDI.Enabled := false else  dbEdtDI.Enabled := true;
        {Fim Ticket 1168}

        //Leonardo.Alabarce 19/01/2012 - ticket 1534
        if ((v_usuario = 'DUDA') Or (v_usuario = 'ODILMA')) then begin
           dbEdtDI.Enabled := true;
        end;
        If tbProRE.State = dsInactive Then tbProRE.Open;
        If qrtransportadores.State = dsInactive Then qrtransportadores.Open;
        If tbProALC.State = dsInactive Then tbProALC.Open;

        try
        If tbproregimp.State = dsInactive Then tbProregimp.Open;
        except
        showmessage('REG IMP');
        end;
        If qrMoedas.State = dsInactive Then qrMoedas.Open;
        If tbtaxaconv.State = dsInactive Then tbtaxaconv.Open;
        If qrdis.State = dsInactive Then qrdis.Open;

        v_AlteraPRO := 1;
        //If (not qrprocessosAtivo.asboolean) then begin
        If (not qrprocessosAtivo.asinteger = 1) then begin
           //If (not v_Edita_cliente_inativo)  then begin
           If (not v_Edita_cliente_inativo = 1)  then begin
              Showmessage(v_usuario+', este Cliente está Inativo. Somente usuários habilitados para editar clientes inativos poderão alterar as informações do processo.');
              v_AlteraPRO := 0;
           end;
        end;
        //If (qrprocessosFechado.asboolean) then begin
        If (qrprocessosFechado.asinteger = 1) then begin
           If (not v_Edita_Processo_Fechado = 1)  then begin
                Showmessage(v_usuario+', este Processo está Fechado. Somente usuários habilitados em editar processos fechados poderão alterar as informações do processo.');
                v_AlteraPRO := 0;
           end
           else v_AlteraPRO := 1;
        end;

        if F_MSCOMEX.AcessaPasta(ME_nossaref.Text, qrprocessosTipo.AsString, F_proDesembaraco)
         then if F_MSCOMEX.TotalFatura(ME_nossaref.Text) < 300000
               then v_AlteraPRO := 1
               else if F_MSCOMEX.DIAutorizada(ME_nossaref.Text)
                     then v_AlteraPRO := 1
                     else v_AlteraPRO := 0;

         //btnAlterar.Enabled := v_AlteraPRO;
         if v_AlteraPRO = 1 then
           btnAlterar.Enabled := true
         else
           btnAlterar.Enabled := false;

        //mm 24/07/2006 - usuariosclientes
        if f_mscomex.q_usucli.recordcount>0 then begin
           if f_mscomex.q_usucli.locate('Importador',qrProcessosimportador.asstring,[]) then begin
              v_autorizadocli := 1;
           end
           else begin
              v_autorizadocli := 0;
           end;
        end
        else begin
              v_autorizadocli := 1;
        end;
        F_MSCOMEX.atualizacpastas(ME_nossaref.text);
        If v_autorizadocli = 1 Then Begin


           cnpj := qrprocessosqcnpj.asstring;
           cnpj := Copy(cnpj,1,2)+'.'+Copy(cnpj,3,3)+'.'+Copy(cnpj,6,3)+'/'+Copy(cnpj,9,4)+'-'+Copy(cnpj,13,2);

           l_cliente.Caption := qrProcessosCliente.AsString+' - CNPJ: '+cnpj;
           pnlPrincipal.Visible := True;
           pnlBaixo.Visible := True;

       If tbProcessosTipo_Declaracao.AsString = '12' Then
           pnlTaxaConvC.Enabled := True
        Else
           pnlTaxaConvC.Enabled := False;


        pnlDDE.Visible := False;
        pnlRES.Visible := False;
        pnlDI.Visible  := False;
        pnlDIC.Visible := False;
        pnlTaxaConv.Visible := False;
        pnlTaxaConvC.Visible := False;

        ////é exportação
       { 21	Exportação
        22	Reexportação
        23	Exportação Fícta
        24	Exportação Temporária
        26	Exportação Aérea
        27	Exportação Marítima
        28	Exportação Rodoviária
        29	Exportação Aérea - Courrier
        }
        If (qrProcessosTipo.asstring='21') or
           (qrProcessosTipo.asstring='22') or
           (qrProcessosTipo.asstring='23') or
           (qrProcessosTipo.asstring='24') or
           (qrProcessosTipo.asstring='26') or
           (qrProcessosTipo.asstring='27') or
           (qrProcessosTipo.asstring='28') or
           (qrProcessosTipo.asstring='29') or
           (qrProcessosTipo.asstring='DV') then begin    {Leandro Serra - 14/12/2011 Ticket 1240}
           pnlDDE.Visible := True;
           pnlTaxaConv.Left := 227;

           {Autor: Wellington Medeiros
            Data: 27/05/2011
            Solicitação: Jefferson Lemos
            Motivo: Panel de Taxa de Conversão ficava na frente quando o pnlDDE era mostrado}

           //pnlTaxaConv.Left := 427;
           pnlRES.Visible := True;
           pnlTaxaConv.Visible := True;
        end
        else begin
           pnlDI.Visible := True;
           pnlDIC.Visible := True;
           pnlTaxaConv.Visible := True;

           {Autor: Wellington Medeiros
            Data: 27/05/2011
            Solicitação: Jefferson Lemos
            Motivo: Panel de Taxa de Conversão ficava na frente quando o pnlDDE era mostrado}

           pnlTaxaConv.Left := 227;
           pnlTaxaConvC.Visible := True;
        end;

        pnlPrincipal.Visible := True;
        pnlBaixo.Visible     := True;
        pnlBaixo.Enabled     := True;

        // eduardo.souza 01/02/2012 - Para processos fechados - Exibi mensagem e fecha a tela
        If (IsClosedProcess( me_nossaref.Text, F_proDesembaraco )) Then begin
                //Abort;
                btnAlterar.Enabled := false;
                btnSalvar.Enabled := false;
                btnCancelar.Enabled := false;
                rts.Enabled := false;
                btnALC.Enabled := false;
                btnIncluirTaxa.Enabled := false;
                btnAlterarTaxa.Enabled := false;
                btnExcluirTaxa.Enabled := false;
                btnIncluirTaxaC.Enabled  := false;
                btnAlterarTaxaC.Enabled := false;
                btnExcluirTaxaC.Enabled := false;
        end;
        //--

        End
        Else Begin
           l_cliente.Caption := '';
           pnlPrincipal.Visible := False;
           pnlBaixo.Visible := false;
           pnlTaxaConv.Visible := false;
           pnlTaxaConvC.Visible := false;

           Showmessage(v_usuario+', este Processo pertence a um Cliente que seu acesso não está permitido!');
        End;

     End
     Else Begin
        MessageDlg('Processo não encontrado!', mtInformation,[mbOk], 0);
        l_cliente.Caption := '';
        me_nossaref.Clear;
        pnlPrincipal.Visible := False;
        pnlTaxaConv.Visible := False;
        pnlTaxaConvC.Visible := False;
        pnlBaixo.Visible := False;
        me_nossaref.SetFocus
     End;

     Screen.Cursor := crDefault;
end;

procedure TF_proDesembaraco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     f_mscomex.Desembarao1.Enabled := True;
     f_prodesembaraco := Nil;
     Action := caFree;
end;

procedure TF_proDesembaraco.tbProcessosAfterPost(DataSet: TDataSet);
var qsql,qtag1,qtag2,qtiposprocessos:string;

begin
     logusu('P','Alterou Desembaraço do Processo: '+tbProcessosCodigo.AsString);
     qtag1 := ' CLASS="celulatitulo" ';
     qtag2 := ' CLASS="estilocelula" ';
     qtiposprocessos := '|5|IT|NC|22|6|TT|';
     ///incluido 08/10/2010 - inserindo follows 98 recebimento de numerarios
     if (pos('|'+trim(tbprocessostipo.asstring)+'|',qtiposprocessos) > 0 ) then begin
     if (tbProcessosdt_desembaraco.asstring<>'') and (tbProcessosaviso_desembaraco.asinteger=0) then begin
            F_MSCOMEX.qfol1up.sql.clear;
            qsql := 'INSERT INTO [Email_auto]([Programa],[Assunto],[Titulo],[De],[Para],[Body],[HTML],[Data],[Hora]) VALUES ( ';
            qsql := qsql+chr(39)+'DESEM'+chr(39)+', ';
            qsql := qsql+chr(39)+'MS LOGÍSTICA - AVISO DESEMBARAÇO REF.MS.: '+tbprocessoscodigo.asstring+' - DI: '+tbprocessosnr_declaracao_imp.asstring+chr(39)+', ';
            qsql := qsql+chr(39)+'MS LOGÍSTICA - AVISO DESEMBARAÇO REF.MS.: '+tbprocessoscodigo.asstring+' - DI: '+tbprocessosnr_declaracao_imp.asstring+chr(39)+', ';
            qsql := qsql+chr(39)+'auditoria@mslogistica.com.br'+chr(39)+', ';
            qsql := qsql+chr(39)+'repetro@mslogistica.com.br'+chr(39)+', ';
            qsql := qsql+chr(39)+'<BR><TABLE align="center" ><TR><TD colspan="2" nowrap '+qtag1+' >Aviso Desembaraço:<BR></TD></TR>';
            qsql := qsql+'<TR><TD nowrap '+qtag1+'  >Empresa</TD><TD nowrap '+qtag2+'  >'+qrprocessoscliente.asstring+'</TD></TR>';
            qsql := qsql+'<TR><TD nowrap '+qtag1+'  >Contrato</TD><TD nowrap '+qtag2+'  >'+qrprocessosqcontrato.asstring+'</TD></TR>';
            qsql := qsql+'<TR><TD nowrap '+qtag1+'  >Local</TD><TD nowrap '+qtag2+'  >'+qrprocessosqlocal.asstring+'</TD></TR>';
            qsql := qsql+'<TR><TD nowrap '+qtag1+'  >Ref.Empresa</TD><TD nowrap '+qtag2+'  >'+qrprocessosrefcli.asstring+'</TD></TR>';

            qsql := qsql+'<TR><TD nowrap '+qtag1+'  ><br>Ref.MS.<br></TD><TD nowrap '+qtag2+' >'+tbprocessoscodigo.asstring+'</TD></TR>';
            qsql := qsql+'<TR><TD nowrap '+qtag1+'  >Tipo de Processo</TD><TD nowrap '+qtag2+'  >'+qrprocessostipopro.asstring+'</TD></TR>';

            qsql := qsql+'<TR><TD nowrap '+qtag1+'  ><br>DI<br></TD><TD nowrap '+qtag2+' >'+tbprocessosnr_declaracao_imp.asstring+'</TD></TR>';
            qsql := qsql+'<TR><TD nowrap '+qtag1+'  >Tipo de Declaração</TD><TD nowrap '+qtag2+'  >'+qrprocessostipodecla.asstring+'</TD></TR>';

            qsql := qsql+'</TABLE><br><br>'+chr(39)+', ';

            qsql := qsql+'1, ';
            qsql := qsql+chr(39)+datetostr(date())+chr(39)+', ';
            qsql := qsql+chr(39)+timetostr(time())+chr(39)+' ';
            qsql := qsql+' )';

            F_MSCOMEX.qfol1up.sql.add(qsql);
            F_MSCOMEX.qfol1up.execsql;

            QSQL := 'UPDATE PROCESSOS SET AVISO_DESEMBARACO=1 WHERE CODIGO='''+tbprocessoscodigo.asstring+'''';
            F_MSCOMEX.qfol1up.sql.clear;
            F_MSCOMEX.qfol1up.sql.add(qsql);
            F_MSCOMEX.qfol1up.execsql;


            Showmessage(v_usuario+',ATENÇÃO! foi enviado email de aviso de desembaraço!');
     end;
     end;
     TBPROCESSOS.Refresh;
     f_mscomex.MSPGP(me_nossaref.text);

end;

procedure TF_proDesembaraco.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure TF_proDesembaraco.btnAlterarClick(Sender: TObject);
begin
  if (v_AlteraPRO = 1) then begin
     pnlTop.Enabled := False;
     pnlPrincipal.Enabled := True;

     If tbProcessosTipo_Declaracao.AsString = '12' Then
        pnlDIC.Enabled := True
     Else
        pnlDIC.Enabled := False;

     btnAlterar.Enabled := False;
     btnSair.Enabled := False;
     btnSalvar.Enabled := True;
     btnCancelar.Enabled := True;

     if (Trim(dbEdtDtProc.Text) <> '') then
        if (v_usuario = 'ODILMA') or (v_usuario = 'DUDA') or (v_usuario = 'FERREIRA') or
        (v_usuario = 'ANDRE') then begin
                dbEdtDtProc.ReadOnly  := False;
                dbEdtDtProc.TabStop   := True;
                dbEdtDtTrans.ReadOnly := False;
                dbEdtDtTrans.TabStop  := True;
                dbEdtDtReg.ReadOnly   := False;
                dbEdtDtReg.TabStop    := True;
                DBEdit13.ReadOnly  := False;
                DBEdit13.TabStop   := True;
                DBEdit8.ReadOnly  := False;
                DBEdit8.TabStop   := True;
                DBEdit9.ReadOnly  := False;
                DBEdit9.TabStop   := True;
                DBEdit10.ReadOnly  := False;
                DBEdit10.TabStop   := True;
                dbEdtDtDes.ReadOnly  := False;
                dbEdtDtDes.TabStop   := True;
                dbEdtDtDesC.ReadOnly  := False;
                dbEdtDtDesC.TabStop   := True;
                dbEdtDtProcC.ReadOnly  := False;
                dbEdtDtProcC.TabStop   := True;
                dbEdtDtTransC.ReadOnly  := False;
                dbEdtDtTransC.TabStop   := True;
                dbEdtDtRegC.ReadOnly  := False;
                dbEdtDtRegC.TabStop   := True;
        end else begin
                if (v_usuario = 'FERREIRA') or (v_usuario = 'ANDRE')
                 then begin
                   dbEdtDtProc.ReadOnly  := False;
                   dbEdtDtProc.TabStop   := True;
                   dbEdtDtTrans.ReadOnly := False;
                   dbEdtDtTrans.TabStop  := True;
                   dbEdtDtReg.ReadOnly   := False;
                   dbEdtDtReg.TabStop    := True;
                 end
                 else begin
                   dbEdtDtProc.ReadOnly  := True;
                   dbEdtDtProc.TabStop   := False;
                   dbEdtDtTrans.ReadOnly := True;
                   dbEdtDtTrans.TabStop  := False;
                   dbEdtDtReg.ReadOnly   := True;
                   dbEdtDtReg.TabStop    := False;
                 end;
        end;
      //Leonardo.alabarce 07/12/2011 ticket 1150
      if ((qrProcessosqcnpj.asstring = '11437203000166') or (qrProcessosqcnpj.asstring = '11437203000247')) then
        if (v_usuario = 'ODILMA') or (v_usuario = 'DUDA') or (v_usuario = 'FERREIRA') or (v_usuario = 'ANDRE') then begin
                dbEdtDtProc.ReadOnly  := False;
                dbEdtDtProc.TabStop   := True;
                dbEdtDtTrans.ReadOnly := False;
                dbEdtDtTrans.TabStop  := True;
                dbEdtDtReg.ReadOnly   := False;
                dbEdtDtReg.TabStop    := True;
        end else begin
                dbEdtDtProc.ReadOnly  := True;
                dbEdtDtProc.TabStop   := False;
                dbEdtDtTrans.ReadOnly := True;
                dbEdtDtTrans.TabStop  := False;
                dbEdtDtReg.ReadOnly   := True;
                dbEdtDtReg.TabStop    := False;
        end;
      // fim-----------------------------------

     tbProcessos.Edit;
     vEdit := 1;
     dbEdtDtLib.Enabled := false;
     If (tbProcessosTipo.AsString = '1' ) or
        (tbProcessosTipo.AsString = '11') or
        (tbProcessosTipo.AsString = '12') or
        (tbProcessosTipo.AsString = '13') or
        (tbProcessosTipo.AsString = '14') or
        (tbProcessosTipo.AsString = '15') or
        (tbProcessosTipo.AsString = '16') or
        (tbProcessosTipo.AsString = '17') or
        (tbProcessosTipo.AsString = '18') or
        (tbProcessosTipo.AsString = '19') or
        (tbProcessosTipo.AsString = '20') or
        (tbProcessosTipo.AsString = '21') or
        (tbProcessosTipo.AsString = '22') or
        (tbProcessosTipo.AsString = '23') or
        (tbProcessosTipo.AsString = '24') or
        (tbProcessosTipo.AsString = '25') or
        (tbProcessosTipo.AsString = '26') or
        (tbProcessosTipo.AsString = '27') or
        (tbProcessosTipo.AsString = '28') or
        (tbProcessosTipo.AsString = '29') or
        (tbProcessosTipo.AsString = 'BA') or
        (tbProcessosTipo.AsString = 'BD') or
        (tbProcessosTipo.AsString = 'IB') or
        (tbProcessosTipo.AsString = 'NC') Then begin

        // EDUARDO SOUZA 15/09/2011     
        if ( v_usuario = 'ODILMA' ) or (v_usuario = 'DUDA')  or (v_usuario = 'FERREIRA') or (v_usuario = 'ANDRE') then
          dbEdtDtLib.Enabled := true;
     end;

/// Duda 05/07/2005 - Por favor só solicitar ALC importação, exportação, DTA, nacionalização. os outros casos não precisam de ALC.

     {
     CODIGO	DESCRICAO
1	Importação
11	Importação - Aéreo
12	Importação - Marítimo
13	Importação - Rodoviário
14	Reimportação - Aéreo
15	Reimportação - Marítimo
16	Importação - DTA III
17	Importação - DSI
18	Importação - COLI POSTAL
21	Exportação
22	Reexportação
23	Exportação Fícta
24	Exportação Temporária
25	DTA - Passagem Comum
NC	Nacionalização

3	Inventário Inicial
5	Destruíção
6	Transferência
7	Compras Locais
8	Prorrogação de TR
9	Trânsito Aduaneiro
AA	Assessoria Aduaneira
AC	Ato Concessório
AD	Ato Declaratório
AP	Atendimento / Passageiro
BA	Bagagem Acompanhada
BD	Bagagem Desacompanhada
BP	Baixa PAD - Pedido de Aut. Desemb.
BT	Baixa de TR
CO	Consultoria
DV	Devolução
ED	Comunicados Embarque/Desembarque
IN	Intimação
LI	Licença de Importação

NC	Nacionalização

PA	Pré-Análise
PR	Prorrogação de AFRMM
RB	Retirada de Bordo
RT	Retificação
US	Utilização do Sistema

     }

     tbproregimp.edit;
end

else begin
     Showmessage(v_usuario+', este processo está fechado e/ou o Cliente está Inativo. Somente usuários habilitados para editar clientes inativos e/ou editar processos fechados, poderão alterar as informações do processo.');
end;     
end;

procedure TF_proDesembaraco.btnCancelarClick(Sender: TObject);
begin
     pnlTop.Enabled := True;
     pnlPrincipal.Enabled := False;
     btnAlterar.Enabled := True;
     btnSair.Enabled := True;
     btnSalvar.Enabled := False;
     btnCancelar.Enabled := False;
     edtProcessoAdm.Text := tbProcessosProcesso_Adm.AsString;
     tbProcessos.Cancel;
     tbproregimp.Cancel;
end;

procedure TF_proDesembaraco.btnSalvarClick(Sender: TObject);
var
   aux, auxAnt: String;
   tm, tmAnt: Integer;
   dt, dtAnt: TDate;
   qsql: string;
begin
  with qrTipo_Processo do
  begin
      close;
      ParamByName('pProcesso').asString:=ME_nossaref.Text;
      open;
  end;

  if tbProcessos.State <> dsEdit then
    tbprocessos.edit;
    f_mscomex.MSPGP(me_nossaref.text);
    {Leandro Serra - 12/12/2011 Ticket 1163}
     if (tbProcessosNR_DECLARACAO_IMP.IsNull = false) then
     begin
         if (tbProcessosStatus.Value = '0') then begin
             tbProcessosStatus.Value := '01';
             AtualizaProcessoVisaoGeral;
         End;
     end;
     if (tbProcessosDDE.IsNull = False) then
     begin
         if (tbProcessosStatus.Value = '0') then begin
             tbProcessosStatus.Value := '01';
             AtualizaProcessoVisaoGeral;
         End;
     end;
     {Fim Ticket 1163}

     {Leandro Serra - 12/12/2011 Ticket 1165}
     {if (tbProcessosData_liberacao.isnull = False) or (isStrDateTime(tbProcessosData_liberacao.AsString)=true)  then
     begin
         if(tbProcessosStatus.Value = '01') then Begin
            tbProcessosStatus.Value := '1';
            AtualizaProcessoVisaoGeral;
         End;
     end;}
     {Fim Ticket 1165}

     {
      Modificação na linha
      If ((tbProcessostIPO_DECLARACAO.ASSTRING='05') OR (tbProcessostIPO_DECLARACAO.ASSTRING='12')) And (Not pnlDDE.Visible) THEN BEGIN
      Para atender o ticket 1797.
      Onde os processos do tipo "PA" - Pre analise não será cobrado o TR.
     }
     {Leandro Serra - 24/06/2103}
     if dbEdtDI.Text <> '' then
     begin
         Verifica_DI_Digitalizada;
         Verifica_CI_Digitalizada;
     end;


     If ((tbProcessostIPO_DECLARACAO.ASSTRING='05') OR (tbProcessostIPO_DECLARACAO.ASSTRING='12')) And (Not pnlDDE.Visible) And (tbProcessosTipo.AsString <> 'PA')THEN BEGIN
       If dbEdtDtDes.Text <> '' Then Begin
        If (tbProcessosNUMERO_TR.IsNull) OR (tbProcessosNUMERO_TR.asstring='') Then begin
           MessageDlg(v_usuario+', não foi possível salvar data de desembaraço! deverá preencher o numero do TR e Vigências! na opção de TR', mtWarning, [mbOk], 0);
           Exit;
        End;
        If (tbProcessosdata_entrada_tr.IsNull) OR (tbProcessosdata_entrada_tr.asstring='') Then begin
           MessageDlg(v_usuario+', não foi possível salvar data de desembaraço! deverá preencher o numero do TR e Vigências! na opção de TR', mtWarning, [mbOk], 0);
           Exit;
        End;
        If (tbProcessosdata_vencimento_tr.IsNull) OR (tbProcessosdata_vencimento_tr.asstring='') Then begin
           MessageDlg(v_usuario+', não foi possível salvar data de desembaraço! deverá preencher o numero do TR e Vigências! na opção de TR', mtWarning, [mbOk], 0);
           Exit;
        End;
       end;

       If dbEdtDtreg.Text <> ''
        then Begin
          if tbProcessosData.AsDateTime >= StrToDateTime('25/05/2013')
           then if F_MSCOMEX.TrazNumeroRAT(tbProcessosCodigo.AsString) = ''
                 then begin
                   MessageDlg(v_usuario+', não foi possível salvar data de registro! deverá preencher o número do RAT! na tela de RAT', mtWarning, [mbOk], 0);
                   Exit;
                 end;
        end;
     End;

     //Leonardo.alabarce 14/03/2012 ticket 2255
    if pnlDDE.Visible = false then begin
     if (Trim(dbLcbCanal.Text) <> '') then begin
        if (Trim(dbEdtDI.Text)= '') then begin
            MessageDlg('Favor informar a DI', mtWarning, [mbOk], 0);
            exit;
        end;
     end;
    end;
     //Fim----------------------------------------------------------

    //Leonardo.alabarce 20/09/2012 ticket 3636

  If ((qrProcessosqdecl.AsString = '01')  or (qrProcessosqdecl.AsString = '12')) then begin
    If ((qrProcessosTipo.AsString = '11') or  (qrProcessosTipo.AsString = '12')) then begin
        if pnlDDE.Visible = false then begin
          if (Trim(dbLcbCanal.Text) <> '') then begin
            with qrFollowDARJ do
            begin
                close;
                ParamByName('proc').asString:=ME_nossaref.Text;
                open;
            end;
            If qrFollowDARJ.RecordCount = 0 then begin
                MessageDlg('Não é possível gravar com o "Canal", pois não existe o follow-up referente ao DARJ/ICMS ou DUA.', mtWarning, [mbOk], 0);
                Exit;
            end;
          end;
        end;
     end;
   end; 
   //Fim----------------------------------------------------------

     //Leonardo.Alabarce 29/12/2011  ticket 1347
     {If (qrProcessosTipo.AsString <> '11') AND (qrProcessosTipo.AsString <> '12') AND
        (qrProcessosTipo.AsString <> '21') AND (qrProcessosTipo.AsString <> '22') Then Begin
        If (dbEdtDtDes.text <> '') then begin
           if (tbProcessosStatus.Value = '0') or (tbProcessosStatus.Value = '01') then begin
              tbProcessosStatus.Value := '1';
              AtualizaProcessoVisaoGeral;

           End;
        End;
     End;}
     // Fim-----------------------------------------------

     //Leonardo.Alabarce 20/06/2012  ticket 3093
     IF (qrProcessosTipo.AsString = '11') then begin
       if pnlDDE.Visible = false then begin
         if (Trim(dbEdtDI.Text) <> '') then begin
          with qrConhecimento do
          begin
            Close;
            ParamByName('pProcesso').value:= ME_nossaref.text;
            Open;
          end;
           If( Trim(qrConhecimentoNumeromanifesto.AsString) = '' )Then Begin
            ShowMessage(v_usuario+', Favor preencher o número de identificação na tela de registro de chegada.');
            exit;
          End;
        End;
       End;
     End
     Else
     if(qrProcessosTipo.AsString = '12') then begin
       if pnlDDE.Visible = false then begin
         if (Trim(dbEdtDI.Text) <> '') then begin
           with qrConhecimento do
           begin
            Close;
            ParamByName('pProcesso').value:= ME_nossaref.text;
            Open;
          end;
          If(( Trim(qrConhecimentoNumeromanifesto.AsString) = '' )or( Trim(qrConhecimentoCodigo_Presenca_Carga.AsString) = '' ))Then Begin
            ShowMessage(v_usuario+', Favor preencher o número de identificação e  Código de presença de carga na tela de registro de chegada.');
            exit;
          End;
         End;
       End;
     End;
   // Fim-----------------------------------------------


     If((qrProcessosTipo.AsString = '12') or
        (qrProcessosTipo.AsString = '11') or
        (qrProcessosTipo.AsString = '14') or
        (qrProcessosTipo.AsString = '15') or
        (qrProcessosTipo.AsString = 'TT'))  then begin
       if pnlDDE.Visible = false then begin
         if (Trim(dbEdtDtDes.Text) <> '') then begin
           with qrConhecimento do
           begin
            Close;
            ParamByName('pProcesso').value:= ME_nossaref.text;
            Open;
          end;
          If qrConhecimentoURF_Despacho.AsString <> ''  Then Begin
            If qrConhecimentoURF_Despacho.AsString = '0710203' then begin
               Evento := '2418';
               Obs := '1105';
               if VerificarFollow = False then begin
                  InsertFollow();
                  logusu('P','Incluiu Follow Up: DRFB / Aeroporto de Cabo Frio -  Desembaraçou a DI - Declaração de Importação. - Processo: '+me_nossaref.text);
                  Showmessage(v_usuario+', ATENÇÃO! Foi INCLUÍDO follow up RFB / Aeroporto de Cabo Frio -  Desembaraçou a DI - Declaração de Importação.!');
               End;
             End
             Else
              If qrConhecimentoURF_Despacho.AsString = '0717700' then begin
                Evento := '2426';
                Obs := '1104';
               if VerificarFollow = False then begin
                  InsertFollow();
                  logusu('P','Incluiu Follow Up: RFB / Alfândega do Aeroporto do Rio de Janeiro - Desembaraçou a DI - Declaração de Importação. - Processo: '+me_nossaref.text);
                  Showmessage(v_usuario+', ATENÇÃO! Foi INCLUÍDO follow up RFB / Alfândega do Aeroporto do Rio de Janeiro - Desembaraçou a DI - Declaração de Importação.!');
               End;
              End
             Else
               If qrConhecimentoURF_Despacho.AsString = '0817700' then begin
                 Evento := '2425';
                 Obs := '1105';
                 if VerificarFollow = False then begin
                  InsertFollow();
                  logusu('P','Incluiu Follow Up: ALF/RFB Aeroporto Internacional de Viracopos (São Paulo) - Desembaraçou a Declaração de Importação. - Processo: '+me_nossaref.text);
                  Showmessage(v_usuario+', ATENÇÃO! Foi INCLUÍDO follow up ALF/RFB Aeroporto Internacional de Viracopos (São Paulo) - Desembaraçou a Declaração de Importação!');
                 End;
               End
             Else
               If qrConhecimentoURF_Despacho.AsString = '0517600' then begin
                 Evento := '2436';
                 Obs := '1107';
                 if VerificarFollow = False then begin
                  InsertFollow();
                  logusu('P','Incluiu Follow Up: RFB / Alfândega de Salvador - Desembaraçou a DI - Declaração de Importação. - Processo: '+me_nossaref.text);
                  Showmessage(v_usuario+', ATENÇÃO! Foi INCLUÍDO follow up RFB / Alfândega de Salvador - Desembaraçou a DI - Declaração de Importação.!');
                 End;
               End
             Else
               If qrConhecimentoURF_Despacho.AsString = '0717600' then begin
                   Evento := '2422';
                   Obs := '1103';
                   if VerificarFollow = False then begin
                    InsertFollow();
                    logusu('P','Incluiu Follow Up: RFB / Alfândega do Porto do Rio de Janeiro - Desembaraçou a DI - Declaração de Importação. - Processo: '+me_nossaref.text);
                    Showmessage(v_usuario+', ATENÇÃO! Foi INCLUÍDO follow up RFB / Alfândega do Porto do Rio de Janeiro - Desembaraçou a DI - Declaração de Importação.!');
                   End;
               End
             Else
               If qrConhecimentoURF_Despacho.AsString = '0710200' then begin
                   Evento := '2417';
                   Obs := '1105';
                   if VerificarFollow = False then begin
                    InsertFollow();
                    logusu('P','Incluiu Follow Up: RFB / DRF - Niterói - Desembaraçou a DI - Declaração de Importação. - Processo: '+me_nossaref.text);
                    Showmessage(v_usuario+', ATENÇÃO! Foi INCLUÍDO follow up RFB / DRF - Niterói - Desembaraçou a DI - Declaração de Importação.!');
                   End;
               End
             Else
               If qrConhecimentoURF_Despacho.AsString = '0727600' then begin
                   Evento := '2389';
                   Obs := '0';
                   if VerificarFollow = False then begin
                     InsertFollow();
                     logusu('P','Incluiu Follow Up: Alfândega do Porto de Vitória. - Processo: '+me_nossaref.text);
                     Showmessage(v_usuario+', ATENÇÃO! Foi INCLUÍDO follow up Alfândega do Porto de Vitória!');
                   End;
               End
             Else
               If qrConhecimentoURF_Despacho.AsString = '0717800' then begin
                   Evento := '2399';
                   Obs := '1106';
                   if VerificarFollow = False then begin
                    InsertFollow();
                    logusu('P','Incluiu Follow Up: RFB/ Alfândega do Porto de Sepetiba - Desembaraçou a DI - Declaração de Importação. - Processo: '+me_nossaref.text);
                    Showmessage(v_usuario+', ATENÇÃO! Foi INCLUÍDO follow up RFB/ Alfândega do Porto de Sepetiba - Desembaraçou a DI - Declaração de Importação. !');
                   End;
               End
             Else
               If qrConhecimentoURF_Despacho.AsString = '0710300' then begin
                   Evento := '2464';
                   Obs := '0';
                   if VerificarFollow = False then begin
                    InsertFollow();
                    logusu('P','Incluiu Follow Up: RFB / Alfândega de Nova Iguaçú. - Processo: '+me_nossaref.text);
                    Showmessage(v_usuario+', ATENÇÃO! Foi INCLUÍDO follow up RFB / Alfândega de Nova Iguaçú!');
                   End;
              End;
           End;
         End;
       End;
     End;

     If tbProcessosstatus.asstring < '1' Then begin
        dbEdtDtDes.OnExit(Self);
        btnSalvar.SetFocus;
     End;

  If (qrProcessosTipo.AsString <> 'BT') AND (qrProcessosTipo.AsString <> '8') AND
     (qrProcessosTipo.AsString <> 'IN') AND (qrProcessosTipo.AsString <> 'PA') Then Begin
  If (dbEdtDI.Text <> '') Then Begin
     { TESTA DATA PROCESSAMENTO }
     Try
        aux := dbEdtDtProc.Text;
        If aux <> '        ' Then Begin
           dt := StrToDate(Copy(aux,1,2)+'/'+Copy(aux,3,2)+'/'+Copy(aux,5,4));

           {24/05/2011-a - Alteração incluída por solicitação do financeiro - Wellington Medeiros}
           if (qrProcessosDT_PROCESSAMENTO.AsString = '')
            then begin
              if (dt <> Date) and (v_usuario <> 'ODILMA') and (v_usuario <> 'DUDA') and (v_usuario <> 'FABIANO')
                then begin
                  MessageDlg('"Data Processamento" não pode ser diferente da Data atual!', mtWarning, [mbOk], 0);
                  Exit;
                end;
            end;

           dbEdtDtProc.Text := FormatDateTime('ddmmyyyy',dt);
        End;
     Except
        MessageDlg('"Data Processamento" Inválida!', mtWarning, [mbOk], 0);
        dbEdtDtProc.SetFocus;
        Exit;
     End;
     { TESTA DATA TRANSMISSÃO }
     if dbEdtDtTrans.Text<>'' then begin
     Try
        auxAnt := aux;
        aux := dbEdtDtTrans.Text;
        If aux <> '        ' Then Begin
           If auxAnt = '        ' Then Begin
              MessageDlg('"Data Processamento" está em branco!', mtWarning, [mbOk], 0);
              dbEdtDtProc.SetFocus;
              Exit;
           End
           Else
              dtAnt := dt;
           dt := StrToDate(Copy(aux,1,2)+'/'+Copy(aux,3,2)+'/'+Copy(aux,5,4));
           dbEdtDtTrans.Text := FormatDateTime('ddmmyyyy',dt);
           If dtAnt > dt Then Begin
              MessageDlg('"Data Transmissão" é menor que a "Data Processamento"!', mtWarning, [mbOk], 0);
              dbEdtDtTrans.SetFocus;
              Exit;
           End;
        End;
     Except
        MessageDlg('"Data Transmissão" Inválida!', mtWarning, [mbOk], 0);
        dbEdtDtTrans.SetFocus;
        Exit;
     End;
     end;
     { TESTA DATA REGISTRO }
     if dbEdtDtReg.Text<>'' then begin
     Try
        auxAnt := aux;
        aux := dbEdtDtReg.Text;
        If aux <> '        ' Then Begin
           If auxAnt = '        ' Then Begin
              MessageDlg('"Data Transmissão" está em branco!', mtWarning, [mbOk], 0);
              dbEdtDtTrans.SetFocus;
              Exit;
           End
           Else
              dtAnt := dt;
           dt := StrToDate(Copy(aux,1,2)+'/'+Copy(aux,3,2)+'/'+Copy(aux,5,4));
           dbEdtDtReg.Text := FormatDateTime('ddmmyyyy',dt);
           If dtAnt > dt Then Begin
              MessageDlg('"Data Registro" é menor que a "Data Transmissão"!', mtWarning, [mbOk], 0);
              dbEdtDtReg.SetFocus;
              Exit;
           End;
        End;
     Except
        MessageDlg('"Data Registro" Inválida!', mtWarning, [mbOk], 0);
        dbEdtDtReg.SetFocus;
        Exit;
     End;
     end;
     { TESTA DATA DISTRIBUIÇÃ0 }
     if dbEdtDtDist.Text<>'' then begin
     Try
        auxAnt := aux;
        aux := dbEdtDtDist.Text;
        If aux <> '  /  /    ' Then Begin
           If auxAnt = '        ' Then Begin
              MessageDlg('"Data Registro" está em branco!', mtWarning, [mbOk], 0);
              dbEdtDtReg.SetFocus;
              Exit;
           End
           Else
              dtAnt := dt;
           dt := StrToDate(aux);
           If dtAnt > dt Then Begin
              MessageDlg('"Data Distribuição" é menor que a "Data Registro"!', mtWarning, [mbOk], 0);
              dbEdtDtDist.SetFocus;
              Exit;
           End;
        End;
     Except
        MessageDlg('"Data Distribuição" Inválida!', mtWarning, [mbOk], 0);
        dbEdtDtDist.SetFocus;
        Exit;
     End;
     end;
     { TESTA DATA DESEMBARAÇO }
     if dbEdtDtDes.Text<>'' then begin
     Try
        auxAnt := aux;
        aux := dbEdtDtDes.Text;
       // MessageDlg('"Data Distribuição" está em branco!'+dbEdtDtDes.Text, mtWarning, [mbOk], 0);
        If aux <> '  /  /    ' Then Begin
           If auxAnt = '  /  /    ' Then Begin
              MessageDlg('"Data Desembaraço" está em branco!', mtWarning, [mbOk], 0);
              dbEdtDtDist.SetFocus;
              Exit;
           End
           Else
              dtAnt := dt;
           dt := StrToDate(aux);
           If dtAnt > dt Then Begin
              MessageDlg('"Data Desembaraço" é menor que a "Data Distribuição"!', mtWarning, [mbOk], 0);
              dbEdtDtDes.SetFocus;
              Exit;
           End;
        End;
     Except
        MessageDlg('"Data Desembaraço" Inválida!', mtWarning, [mbOk], 0);
        dbEdtDtDes.SetFocus;
        Exit;
     End;
     end;
     { TESTA DATA CI }
     if dbEdtDtci.Text <> '' then begin
     Try
        auxAnt := aux;
        aux := dbEdtDtCI.Text;
        If aux <> '  /  /    ' Then Begin
           If auxAnt = '  /  /    ' Then Begin
              MessageDlg('"Data Desembaraço" está em branco!', mtWarning, [mbOk], 0);
              dbEdtDtDes.SetFocus;
              Exit;
           End
           Else
              dtAnt := dt;
           dt := StrToDate(aux);
           If dtAnt > dt Then Begin
              MessageDlg('"Data CI" é menor que a "Data Desembaraço"!', mtWarning, [mbOk], 0);
              dbEdtDtDes.SetFocus;
              Exit;
           End;
           // Autor: eduardo.souza
           // Data : 23/08/2011 solicitado por: Odilma
           If ( qrProcessosTipo.AsString = 'NC' ) Or
             ( qrProcessosTipo.AsString = '11' ) Or
             ( qrProcessosTipo.AsString = '6' ) Or
             ( qrProcessosTipo.AsString = '6A' ) Or
             ( qrProcessosTipo.AsString = 'IT' ) Or
             ( qrProcessosTipo.AsString = '14' ) Or
             ( qrProcessosTipo.AsString = '15' ) Or
             ( qrProcessosTipo.AsString = '5' ) Or
             ( qrProcessosTipo.AsString = '20' ) Or
             ( qrProcessosTipo.AsString = 'IB' ) Or
             ( qrProcessosTipo.AsString = '17' ) Or
             ( qrProcessosTipo.AsString = '19' ) Then Begin
             qryVerificaDoc.ParamByName('Processo').Value := qrProcessosProcesso.AsString;
             qryVerificaDoc.Close;
             qryVerificaDoc.Open;
             if ( qryVerificaDoc.IsEmpty ) then begin
               MessageDlg('Não é possível gravar com a "Data CI", pois o documento da "CI" ainda não foi scaneado!', mtWarning, [mbOk], 0);
               dbEdtDtCI.SetFocus;
               Exit;
             end;
             qryVerificaDoc.Close;
           End;
           //
        End;
     Except
        MessageDlg('"Data CI" Inválida!', mtWarning, [mbOk], 0);
        dbEdtDtCI.SetFocus;
        Exit;
     End;
     End;
     { TESTA DATA LIBERAÇÃO DA CARGA }
     if dbEdtDtLib.Text<>'' then begin
     Try
        auxAnt := aux;
        aux := dbEdtDtLib.Text;
        If aux <> '  /  /    ' Then Begin
           If MessageDlg('A carga é de entrega antecipada?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then Begin
              If auxAnt <> '  /  /    ' Then
                 dtAnt := dt
              Else
                 dtAnt := StrToDate(aux);
              dt := StrToDate(aux);
              If dtAnt < dt Then
                 If MessageDlg('"Data Liberação da Carga" é maior que a "Data CI"!'+#13#10+#13#10+'Processo com Entrega Antecipada?', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then Begin
                    dbEdtDtLib.SetFocus;
                    Exit;
                 End;
           End
           Else Begin
              If auxAnt = '  /  /    ' Then Begin
                 MessageDlg('"Data CI" está em branco!', mtWarning, [mbOk], 0);
                 dbEdtDtCI.SetFocus;
                 Exit;
              End
              Else
                 dtAnt := dt;
              dt := StrToDate(aux);
              If dtAnt > dt Then
                 If MessageDlg('"Data Liberação da Carga" é menor que a "Data CI"!'+#13#10+#13#10+'Processo com Entrega Antecipada?', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then Begin
                    dbEdtDtLib.SetFocus;
                    Exit;
                 End;
           End;
           If StrToDate(aux) > date() then begin
              showmessage(v_usuario+', a data de liberação da carga não pode ser posterior a data de hoje.');
              dbEdtDtLib.text := '  /  /    ';
              dbEdtDtLib.SetFocus;
              Exit;
           end;

        End;
     Except
        MessageDlg('"Data Liberação da Carga" Inválida!', mtWarning, [mbOk], 0);
        dbEdtDtLib.SetFocus;
        Exit;
     End;
     end;
  End;

  If dbEdtDIC.Text <> '' Then Begin
     If dbEdtDIC.Text = dbEdtDI.Text Then Begin
        MessageDlg('"DI de Consumo" não pode ser igual a "DI de Admissão"!', mtWarning, [mbOk], 0);
        dbEdtDIC.SetFocus;
        Exit;
     End;
     { SE FOR ADMISSÃO E CONSUMO }
     { TESTA DATA PROCESSAMENTO CONSUMO }
     Try
        aux := dbEdtDtProcC.Text;
        If aux <> '        ' Then Begin
           dt := StrToDate(Copy(aux,1,2)+'/'+Copy(aux,3,2)+'/'+Copy(aux,5,4));
           dbEdtDtProcC.Text := FormatDateTime('ddmmyyyy',dt);
        End;
     Except
        MessageDlg('"Data Processamento Consumo" Inválida!', mtWarning, [mbOk], 0);
        dbEdtDtProcC.SetFocus;
        Exit;
     End;
     { TESTA DATA TRANSMISSÃO CONSUMO }
     Try
        auxAnt := aux;
        aux := dbEdtDtTransC.Text;
        If aux <> '        ' Then Begin
           If auxAnt = '        ' Then Begin
              MessageDlg('"Data Processamento Consumo" está em branco!', mtWarning, [mbOk], 0);
              dbEdtDtProcC.SetFocus;
              Exit;
           End
           Else
              dtAnt := dt;
           dt := StrToDate(Copy(aux,1,2)+'/'+Copy(aux,3,2)+'/'+Copy(aux,5,4));
           dbEdtDtTransC.Text := FormatDateTime('ddmmyyyy',dt);
           If dtAnt > dt Then Begin
              MessageDlg('"Data Transmissão Consumo" é menor que a "Data Processamento Consumo"!', mtWarning, [mbOk], 0);
              dbEdtDtTransC.SetFocus;
              Exit;
           End;
        End;
     Except
        MessageDlg('"Data Transmissão Consumo" Inválida!', mtWarning, [mbOk], 0);
        dbEdtDtTransC.SetFocus;
        Exit;
     End;
     { TESTA DATA REGISTRO CONSUMO }
     Try
        auxAnt := aux;
        aux := dbEdtDtRegC.Text;
        If aux <> '        ' Then Begin
           If auxAnt = '        ' Then Begin
              MessageDlg('"Data Transmissão Consumo" está em branco!', mtWarning, [mbOk], 0);
              dbEdtDtTransC.SetFocus;
              Exit;
           End
           Else
              dtAnt := dt;
           dt := StrToDate(Copy(aux,1,2)+'/'+Copy(aux,3,2)+'/'+Copy(aux,5,4));
           dbEdtDtRegC.Text := FormatDateTime('ddmmyyyy',dt);
           If dtAnt > dt Then Begin
              MessageDlg('"Data Registro Consumo" é menor que a "Data Transmissão Consumo"!', mtWarning, [mbOk], 0);
              dbEdtDtRegC.SetFocus;
              Exit;
           End;
        End;
     Except
        MessageDlg('"Data Registro Consumo" Inválida!', mtWarning, [mbOk], 0);
        dbEdtDtRegC.SetFocus;
        Exit;
     End;
     { TESTA DATA DISTRIBUIÇÃ0 CONSUMO }
     Try
        auxAnt := aux;
        aux := dbEdtDtDistC.Text;
        If aux <> '  /  /    ' Then Begin
           If auxAnt = '        ' Then Begin
              MessageDlg('"Data Registro Consumo" está em branco!', mtWarning, [mbOk], 0);
              dbEdtDtRegC.SetFocus;
              Exit;
           End
           Else
              dtAnt := dt;
           dt := StrToDate(aux);
           If dtAnt > dt Then Begin
              MessageDlg('"Data Distribuição Consumo" é menor que a "Data Registro Consumo"!', mtWarning, [mbOk], 0);
              dbEdtDtDistC.SetFocus;
              Exit;
           End;
        End;
     Except
        MessageDlg('"Data Distribuição Consumo" Inválida!', mtWarning, [mbOk], 0);
        dbEdtDtDistC.SetFocus;
        Exit;
     End;
     { TESTA DATA DESEMBARAÇO CONSUMO }
     Try
        auxAnt := aux;
        aux := dbEdtDtDesC.Text;
        If aux <> '  /  /    ' Then Begin
           If auxAnt = '  /  /    ' Then Begin
              MessageDlg('"Data Distribuição Consumo" está em branco!', mtWarning, [mbOk], 0);
              dbEdtDtDistC.SetFocus;
              Exit;
           End
           Else
              dtAnt := dt;
           dt := StrToDate(aux);
           If dtAnt > dt Then Begin
              MessageDlg('"Data Desembaraço Consumo" é menor que a "Data Distribuição Consumo"!', mtWarning, [mbOk], 0);
              dbEdtDtDesC.SetFocus;
              Exit;
           End;
        End;
     Except
        MessageDlg('"Data Desembaraço Consumo" Inválida!', mtWarning, [mbOk], 0);
        dbEdtDtDesC.SetFocus;
        Exit;
     End;
     { TESTA DATA CI CONSUMO }
     Try
        auxAnt := aux;
        aux := dbEdtDtCIC.Text;
        If aux <> '  /  /    ' Then Begin
           If auxAnt = '  /  /    ' Then Begin
              MessageDlg('"Data Desembaraço Consumo" está em branco!', mtWarning, [mbOk], 0);
              dbEdtDtDesC.SetFocus;
              Exit;
           End
           Else
              dtAnt := dt;
           dt := StrToDate(aux);
           If dtAnt > dt Then Begin
              MessageDlg('"Data CI Consumo" é menor que a "Data Desembaraço Consumo"!', mtWarning, [mbOk], 0);
              dbEdtDtDesC.SetFocus;
              Exit;
           End;
        End;
     Except
        MessageDlg('"Data CI Consumo" Inválida!', mtWarning, [mbOk], 0);
        dbEdtDtCIC.SetFocus;
        Exit;
     End;
  End;
      
  if (TRIM(dbEdtDI.Text) <> '')  then
  begin
     //Leonardo.Alabarce 27/12/2011 ticket 1328
     if qrProcessosCGC_CPF.AsString = '1143720300' then begin
       dt := StrToDate(Copy(dbEdtDtReg.Text,1,2)+'/'+Copy(dbEdtDtReg.Text,3,2)+'/'+Copy(dbEdtDtReg.Text,5,4));
       F_MSCOMEX.qfol1.close;
       F_MSCOMEX.qfol1.sql.clear;
       F_MSCOMEX.qfol1.sql.add('select processo from Followup where Processo='+chr(39)+me_nossaref.text+chr(39)+' and Codevento='+chr(39)+'1021'+chr(39)+' and codobs='+chr(39)+'1224'+chr(39));
       F_MSCOMEX.qfol1.open;
     end
     else begin
       dt := StrToDate(Copy(dbEdtDtReg.Text,1,2)+'/'+Copy(dbEdtDtReg.Text,3,2)+'/'+Copy(dbEdtDtReg.Text,5,4));
       F_MSCOMEX.qfol1.close;
       F_MSCOMEX.qfol1.sql.clear;
       // F_MSCOMEX.qfol1.sql.add('select processo from Followup where Processo='+chr(39)+me_nossaref.text+chr(39)+' and Codevento='+chr(39)+'1021'+chr(39)+' and codobs='+chr(39)+'1117'+chr(39)+' and Data='+chr(39)+datetostr(dt)+chr(39));
       F_MSCOMEX.qfol1.sql.add('select processo from Followup where Processo='+chr(39)+me_nossaref.text+chr(39)+' and Codevento='+chr(39)+'1021'+chr(39)+' and codobs='+chr(39)+'1117'+chr(39));
       F_MSCOMEX.qfol1.open;
     end;

     if  F_MSCOMEX.qfol1.recordcount= 0 then
     begin
          //Leonardo.Alabarce 27/12/2011 ticket 1328
          if qrProcessosCGC_CPF.AsString = '1143720300' then begin
            F_MSCOMEX.qfol1up.sql.clear;
            qsql := 'INSERT INTO Followup ([Processo],[Codevento], [Codobs] ,[Data] ,[Hora] ,[Usuario]) VALUES ( ';
            qsql := qsql + chr(39) + me_nossaref.text + chr(39) + ', ';
            qsql := qsql + chr(39) + '1021' + chr(39) + ', ';
            qsql := qsql + chr(39) + '1224' + chr(39) + ', ';
            qsql := qsql + chr(39) + datetostr(dt) + chr(39) + ', ';
            qsql := qsql + chr(39) + copy(timetostr(time()),1,5) + chr(39) + ', ';
            qsql := qsql + chr(39) + v_usuario + chr(39) + ' ';
            qsql := qsql + ' )';
            F_MSCOMEX.qfol1up.sql.add(qsql);
            F_MSCOMEX.qfol1up.execsql;
            logusu('P','Incluiu Follow Up: Recebeu DI registrada pelo cliente. - Processo: '+me_nossaref.text);
            Showmessage(v_usuario+',ATENÇÃO! foi INCLUÍDO Follow up de Recebeu DI registrada pelo cliente.!');
          end
          else begin
            F_MSCOMEX.qfol1up.sql.clear;
            qsql := 'INSERT INTO Followup ([Processo],[Codevento], [Codobs] ,[Data] ,[Hora] ,[Usuario]) VALUES ( ';
            qsql := qsql + chr(39) + me_nossaref.text + chr(39) + ', ';
            qsql := qsql + chr(39) + '1021' + chr(39) + ', ';
            qsql := qsql + chr(39) + '1117' + chr(39) + ', ';
            qsql := qsql + chr(39) + datetostr(dt) + chr(39) + ', ';
            qsql := qsql + chr(39) + copy(timetostr(time()),1,5) + chr(39) + ', ';
            qsql := qsql + chr(39) + v_usuario + chr(39) + ' ';
            qsql := qsql + ' )';
            F_MSCOMEX.qfol1up.sql.add(qsql);
            F_MSCOMEX.qfol1up.execsql;
            logusu('P','Incluiu Follow Up: Registrou a Declaração de Importação. - Processo: '+me_nossaref.text);
            Showmessage(v_usuario+',ATENÇÃO! foi INCLUÍDO Follow up de Registrou a Declaração de Importação.!');
          end;
     end;
  end;{Leandro Serra - 14/10/2011 Sra. Odilma Reclamou Que o Follow não estava automático
   Provavelmente este código era o Vilão na época não lembro por que criei ele kkkkkkkk foi mal
   else begin
     F_MSCOMEX.qfol1.close;
     F_MSCOMEX.qfol1.sql.clear;
     F_MSCOMEX.qfol1.sql.add('select processo from Followup where Processo='+chr(39)+me_nossaref.text+chr(39)+' and Codevento='+chr(39)+'1021'+chr(39)+' and codobs='+chr(39)+'1117'+chr(39));
     F_MSCOMEX.qfol1.open;

     if  F_MSCOMEX.qfol1.recordcount>0
      then begin
        F_MSCOMEX.qfol1up.sql.clear;
        F_MSCOMEX.qfol1up.sql.add('delete Followup where Processo='+chr(39)+me_nossaref.text+chr(39)+' and Codevento='+chr(39)+'1021'+chr(39)+' and codobs='+chr(39)+'1117'+chr(39));
        F_MSCOMEX.qfol1up.execsql;
        logusu('E','Excluiu Follow Up:  Registrou a Declaração de Importação. - Processo: '+me_nossaref.text);
        Showmessage(v_usuario+',ATENÇÃO! foi EXCLUÍDO Follow up de Registrou a Declaração de Importação.!');
      end;
   end;  }

  {Inserindo Follow Up Automático quando informada a Data de Desembaraço}
{  if (TRIM(dbEdtDtDes.Text) <> '') and (pnlDI.Visible)
   then begin
     F_MSCOMEX.qfol1.close;
     F_MSCOMEX.qfol1.sql.clear;
     F_MSCOMEX.qfol1.sql.add('select processo from Followup where Processo='+chr(39)+me_nossaref.text+chr(39)+' and Codevento='+chr(39)+'982'+chr(39)+' and codobs='+chr(39)+'1139'+chr(39));
     F_MSCOMEX.qfol1.open;

     if  F_MSCOMEX.qfol1.recordcount = 0 then
     begin
        if qrTipo_Processo.RecordCount > 0 then    { Leandro Serra - 22/08/2011}
      {  begin
              //Eduardo Souza 12/09/2011 - Alterado para função follow-up.
              //Alteração na data do follow-up para data do desenbaraço - Solicitado por: Odilma.
              {
              F_MSCOMEX.qfol1up.sql.clear;
              qsql := 'INSERT INTO Followup ([Processo],[Codevento], [Codobs] ,[Data] ,[Hora] ,[Usuario]) VALUES ( ';
              qsql := qsql + chr(39) + me_nossaref.text + chr(39) + ', ';
              qsql := qsql + chr(39) + '982' + chr(39) + ', ';
              qsql := qsql + chr(39) + '1139' + chr(39) + ', ';
              qsql := qsql + chr(39) + datetostr(Date) + chr(39) + ', ';
              qsql := qsql + chr(39) + copy(timetostr(time()),1,5) + chr(39) + ', ';
              qsql := qsql + chr(39) + v_usuario + chr(39) + ' ';
              qsql := qsql + ' )';
              F_MSCOMEX.qfol1up.sql.add(qsql);
              F_MSCOMEX.qfol1up.execsql;
              logusu('P','Incluiu Follow Up: Desembaraçou a Declaração de Importação. - Processo: '+me_nossaref.text);
              Showmessage(v_usuario+', ATENÇÃO! Foi INCLUÍDO follow up Desembaraçou a Declaração de Importação!');
              }
            {  dt := StrToDate( dbEdtDtDes.Text );//StrToDate(Copy(dbEdtDtDes.Text,1,2)+'/'+Copy(dbEdtDtDes.Text,4,2)+'/'+Copy(dbEdtDtDes.Text,5,4));
              vData_Desembaraco := dbEdtDtDes.Text;
              If ( Not F_MSCOMEX.IncluiFollow( qrProcessosProcesso.AsString, '982','1139', '', v_usuario, dt, Now ) ) Then
                Application.MessageBox( 'Não foi possível incluir o Follow Automático de Desembaraço.','Aviso', MB_OK+MB_ICONWARNING );
              End
              Else Begin
                logusu('P','Incluiu Follow Up: Desembaraçou a Declaração de Importação. - Processo: '+me_nossaref.text);
                Showmessage(v_usuario+', ATENÇÃO! Foi INCLUÍDO follow up Desembaraçou a Declaração de Importação!');
              End;
              {Insere o Time Line};
             { if (qrProcessosTipo.value = '11') or (qrProcessosTipo.value = '12') then
              begin
                TimeLine;
                logusu('P','Incluiu Time Line. Processo: '+me_nossaref.text);
              end;
     end;
   end
   else begin
     F_MSCOMEX.qfol1.close;
     F_MSCOMEX.qfol1.sql.clear;
     F_MSCOMEX.qfol1.sql.add('select processo from Followup where Processo='+chr(39)+me_nossaref.text+chr(39)+' and Codevento='+chr(39)+'982'+chr(39)+' and codobs='+chr(39)+'1139'+chr(39));
     F_MSCOMEX.qfol1.open;

     if  F_MSCOMEX.qfol1.recordcount > 0
      then begin
        F_MSCOMEX.qfol1up.sql.clear;
        F_MSCOMEX.qfol1up.sql.add('delete Followup where Processo='+chr(39)+me_nossaref.text+chr(39)+' and Codevento='+chr(39)+'982'+chr(39)+' and codobs='+chr(39)+'1139'+chr(39));
        F_MSCOMEX.qfol1up.execsql;
        logusu('E','Excluiu Follow Up: Desembaraçou a Declaração de Importação. - Processo: '+me_nossaref.text);
        Showmessage(v_usuario+', ATENÇÃO! Foi EXCLUÍDO Follow up Desembaraçou a Declaração de Importação!');
      end;
   end; }
   
End;
     // eduardo.souza 20/07/2011
     if ( Length(F_MSCOMEX.LRTrim(edtProcessoAdm.Text)) = 20 )Or
       ( edtProcessoAdm.Text = '     .      /    -  ' )then
      tbProcessosProcesso_Adm.AsString := edtProcessoAdm.Text;
     // fim 20/07/2011
     if tbProcessos.State <> dsEdit then
      tbprocessos.edit;
     tbProcessos.Post;

     if ((dbedtdtlib.text <> '  /  /    ' ) And (dbedtdtlib.text <> '')) then begin

           //mm is colocar em 28052008
           //tbProcessosCOD_SIT.AsString := '2';
           //tbProcessosStatus.AsString  := '1';
           //MessageDlg('Processo Desembaraçado e Finalizado no Operacional!', mtInformation, [mbOk], 0);

        btnSalvarALCClick(f_prodesembaraco);
     end
     else begin
          if not tbproalc.eof then begin
             if tbproalcenviou.asinteger=0  then begin
                tbproalc.delete;
             end;
          end;
     end;

     tbproregimp.Edit;
     tbproregimp.Post;

     if (tbproregimpbanco.asstring <>'') or
        (tbproregimpagencia.asstring <>'') or
        (tbproregimpconta_corrente.asstring <>'') or
        (tbproregimpbancoc.asstring <>'') or
        (tbproregimpagenciac.asstring <>'') or
        (tbproregimpconta_correntec.asstring <>'') then begin



     /// Rateio da taxa Siscomex               alterei em 31102005 - mm
     if (qrprocessosqdecl.asstring <> '12') or (tbproregimptaxa_siscomexc.asfloat=0) then begin
        qrsomaqtd.close;
        qrsomaqtd.params[0].asstring := '*';
        qrsomaqtd.params[1].asstring := '*';
        qrsomaqtd.params[2].asstring := me_nossaref.text;
        qrsomaqtd.open;

        if qrsomaqtdsomadequantidade.asfloat >0 then begin
        qrRateioTXsiscomex.params[0].asfloat := (tbproregimptaxa_siscomex.asfloat/qrsomaqtdsomadequantidade.asfloat);
        qrRateioTXsiscomex.params[1].asstring := me_nossaref.text;
        qrRateioTXsiscomex.params[2].asstring := '*';
        qrRateioTXsiscomex.params[3].asstring := '*';
        qrRateioTXsiscomex.execsql;
        end;
     end
     else begin

        ///admissão
        qrsomaqtd.close;
        qrsomaqtd.params[0].asstring := '5';
        qrsomaqtd.params[1].asstring := '5';
        qrsomaqtd.params[2].asstring := me_nossaref.text;
        qrsomaqtd.open;

        if qrsomaqtdsomadequantidade.asfloat >0 then begin
        qrRateioTXsiscomex.params[0].asfloat := (tbproregimptaxa_siscomex.asfloat/qrsomaqtdsomadequantidade.asfloat);
        qrRateioTXsiscomex.params[1].asstring := me_nossaref.text;
        qrRateioTXsiscomex.params[2].asstring := '5';
        qrRateioTXsiscomex.params[3].asstring := '5';
        qrRateioTXsiscomex.execsql;
        end;
        ///consumo
        qrsomaqtd.close;
        qrsomaqtd.params[0].asstring := '1';
        qrsomaqtd.params[1].asstring := '4';
        qrsomaqtd.params[2].asstring := me_nossaref.text;
        qrsomaqtd.open;

        if qrsomaqtdsomadequantidade.asfloat >0 then begin
        qrRateioTXsiscomex.params[0].asfloat := (tbproregimptaxa_siscomexc.asfloat/qrsomaqtdsomadequantidade.asfloat);
        qrRateioTXsiscomex.params[1].asstring := me_nossaref.text;
        qrRateioTXsiscomex.params[2].asstring := '1';
        qrRateioTXsiscomex.params[3].asstring := '4';
        qrRateioTXsiscomex.execsql;
        end;
     end;

     ///atualizar itensfaturas

    /// AtuNet('ItensFaturas',[qrprocessosEmpresa.asstring,qrprocessosFilial.asstring,qrprocessosprocesso.asstring],'U');
    
     {t_itensfaturas.open;
     t_itensfaturas.first;
     if t_itensfaturas.findkey([qrprocessosempresa.asstring,qrprocessosfilial.asstring,me_nossaref.text]) then begin
        processamento('Aguarde... Rateio Taxa Siscomex nos itens das Faturas... ',100,FALSE);
        while ((not t_itensfaturas.eof) and
              (qrprocessosempresa.asstring=t_itensfaturasempresa.asstring) and
              (qrprocessosfilial.asstring=t_itensfaturasfilial.asstring) and
              (me_nossaref.text=t_itensfaturasprocesso.asstring)) do begin
              processamento('Aguarde... Rateio Taxa Siscomex nos itens das Faturas... ',100,FALSE);
              AtuNet('ItensFaturas',[T_itensfaturasEmpresa.asstring,T_itensfaturasFilial.asstring,T_itensfaturasprocesso.asstring,T_itensfaturasfatura.asstring,T_itensfaturassequencial.asstring],'P');
              t_itensfaturas.next;
        end;
        processamento('Aguarde... Rateio Taxa Siscomex nos itens das Faturas... ',100,true);
      end;
     t_itensfaturas.close;
     }
     end;

     pnlTop.Enabled := True;
     pnlPrincipal.Enabled := False;
     btnAlterar.Enabled := True;
     btnSair.Enabled := True;
     btnSalvar.Enabled := False;
     btnCancelar.Enabled := False;

     //Leonardo.Alabarce  29/12/2011  ticket 1347
     with qrStatusProc do
     begin
         Close;
          ParamByName('pprocesso').asstring := ME_nossaref.text;
         open;
     end;
     with  qStatusProc do
      begin
        close;
        ParamByName('pCodigo').asstring := qrStatusProcstatus.Value;
        open;
      end;
      //Fim-------------------------------------------------------------
end;

procedure TF_proDesembaraco.btnIncluirTaxaClick(Sender: TObject);
begin
     dbEdtTaxa.DataField := 'Taxa_conversao';

     pnlPrincipal.Enabled := False;
     pnlTaxaConv.Enabled := False;
     pnlTaxaConvC.Enabled := False;
     pnlBaixo.Enabled := False;
     With pnlTaxa Do Begin
         Left := 272;
         Top  := 152;
         Visible := True;
     End;

     tbTaxaConv.Append;
end;

procedure TF_proDesembaraco.btnIncluirTaxaCClick(Sender: TObject);
begin
     dbEdtTaxa.DataField := 'Taxa_conversaoc';

     pnlPrincipal.Enabled := False;
     pnlTaxaConv.Enabled := False;
     pnlTaxaConvC.Enabled := False;
     pnlBaixo.Enabled := False;
     With pnlTaxa Do Begin
         Left := 272;
         Top  := 152;
         Visible := True;
     End;

     tbTaxaConv.Append;
end;

procedure TF_proDesembaraco.btnAlterarTaxaClick(Sender: TObject);
begin
     dbEdtTaxa.DataField := 'Taxa_conversao';

     pnlPrincipal.Enabled := False;
     pnlTaxaConv.Enabled := False;
     pnlTaxaConvC.Enabled := False;
     pnlBaixo.Enabled := False;
     With pnlTaxa Do Begin
         Left := 272;
         Top  := 152;
         Visible := True;
     End;

     tbTaxaConv.Edit;
end;

procedure TF_proDesembaraco.btnAlterarTaxaCClick(Sender: TObject);
begin
     dbEdtTaxa.DataField := 'Taxa_conversaoc';

     pnlPrincipal.Enabled := False;
     pnlTaxaConv.Enabled := False;
     pnlTaxaConvC.Enabled := False;
     pnlBaixo.Enabled := False;
     With pnlTaxa Do Begin
         Left := 272;
         Top  := 152;
         Visible := True;
     End;

     tbTaxaConv.Edit;
end;

procedure TF_proDesembaraco.btnExcluirTaxaClick(Sender: TObject);
begin
     If MessageDlg('Confirma exclusão da Taxa de Conversão?', mtConfirmation,[mbYes, mbNo], 0) = mrYes Then
        tbTaxaConv.Delete;
end;

procedure TF_proDesembaraco.btnCancelarTaxaClick(Sender: TObject);
begin
     tbTaxaConv.Cancel;

     pnlPrincipal.Enabled := True;
     pnlTaxaConv.Enabled := True;
     If tbProcessosTipo_Declaracao.AsString = '12' Then
        pnlTaxaConvC.Enabled := True
     Else
        pnlTaxaConvC.Enabled := False;
     pnlBaixo.Enabled := True;
     pnlTaxa.Visible := False;
end;

procedure TF_proDesembaraco.btnSalvarTaxaClick(Sender: TObject);
begin
     If dbEdtMoeda.Text = '' Then Begin
        MessageDlg('Informe a Moeda da Taxa de Conversão!', mtWarning, [mbOk], 0);
        dbEdtMoeda.SetFocus;
        Exit;
     End
     Else If dbLcbMoeda.Text = '' Then Begin
        MessageDlg('Código da Moeda inválido!', mtWarning, [mbOk], 0);
        dbEdtMoeda.SetFocus;
        Exit;
     End;
     If dbEdtTaxa.Text = '' Then Begin
        MessageDlg('A Taxa de Conversão não pode estar em branco!', mtWarning, [mbOk], 0);
        dbEdtTaxa.SetFocus;
        Exit;
     End
     Else If StrTofloat(dbEdtTaxa.Text) <= 0 Then Begin
        MessageDlg('O valor da Taxa de Conversão deve ser maior que zero!', mtWarning, [mbOk], 0);
        dbEdtTaxa.SetFocus;
        Exit;
     End;

     Try
        tbTaxaConv.Post;
     Except
        MessageDlg('Erro na gravação da Taxa de Conversão! Não pode haver Moedas iguais.', mtInformation, [mbOk], 0);
        dbEdtMoeda.SetFocus;
        Exit;
     End;

     pnlPrincipal.Enabled := True;
     pnlTaxaConv.Enabled := True;
     If tbProcessosTipo_Declaracao.AsString = '12' Then
        pnlTaxaConvC.Enabled := True
     Else
        pnlTaxaConvC.Enabled := False;
     pnlBaixo.Enabled := True;
     pnlTaxa.Visible := False;
end;

procedure TF_proDesembaraco.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     If tbProcessos.State In [dsEdit] Then Begin
        MessageDlg('O Processo está em edição!', mtInformation,[mbOk], 0);
        CanClose := False;
     End
     Else
        CanClose := True;
end;

procedure TF_proDesembaraco.dbEdtDtDistChange(Sender: TObject);
begin
     if tbProcessos.State in [dsEdit] then
        If dbEdtDtDist.Text = '  /  /    ' Then
           tbProcessosDT_DISTRIBUICAO.AsString := ''
end;

procedure TF_proDesembaraco.dbEdtDtDesChange(Sender: TObject);
begin
     if tbProcessos.State in [dsEdit] then
        If dbEdtDtDes.Text = '  /  /    ' Then
           tbProcessosDT_DESEMBARACO.AsString := ''
end;

procedure TF_proDesembaraco.dbEdtDtCIChange(Sender: TObject);
begin
     if tbProcessos.State in [dsEdit] then
        If dbEdtDtCI.Text = '  /  /    ' Then
           tbProcessosData_CI.AsString := ''
end;

procedure TF_proDesembaraco.dbEdtDtDistCChange(Sender: TObject);
begin
     if tbProcessos.State in [dsEdit] then
        If dbEdtDtDistC.Text = '  /  /    ' Then
           tbProcessosDT_DISTRIBUICAOC.AsString := ''
end;

procedure TF_proDesembaraco.dbEdtDtDesCChange(Sender: TObject);
begin
     if tbProcessos.State in [dsEdit] then
        If dbEdtDtDesC.Text = '  /  /    ' Then
           tbProcessosDT_DESEMBARACOC.AsString := ''
end;

procedure TF_proDesembaraco.dbEdtDtCICChange(Sender: TObject);
begin
     if tbProcessos.State in [dsEdit] then
        If dbEdtDtCIC.Text = '  /  /    ' Then
           tbProcessosData_CIC.AsString := ''
end;

procedure TF_proDesembaraco.dbEdtDtLibChange(Sender: TObject);
begin
     if tbProcessos.State in [dsEdit] then
        If dbEdtDtLib.Text = '  /  /    ' Then
           tbProcessosData_liberacao.AsString := ''
end;

procedure TF_proDesembaraco.dbEdtDtProcChange(Sender: TObject);
begin
     if tbProcessos.State in [dsEdit] then
        If dbEdtDtProc.Text = '        ' Then
           tbProcessosDT_PROCESSAMENTO.AsString := ''
end;

procedure TF_proDesembaraco.dbEdtDtTransChange(Sender: TObject);
begin
     if tbProcessos.State in [dsEdit] then
        If dbEdtDtTrans.Text = '        ' Then
           tbProcessosDT_TRANSMISSAO.AsString := ''
end;

procedure TF_proDesembaraco.dbEdtDtRegChange(Sender: TObject);
begin
     if tbProcessos.State in [dsEdit] then
        If dbEdtDtReg.Text = '        ' Then
           tbProcessosDT_REGISTRO_DI.AsString := ''
end;

procedure TF_proDesembaraco.dbEdtDtProcCChange(Sender: TObject);
begin
     if tbProcessos.State in [dsEdit] then
        If dbEdtDtProcC.Text = '        ' Then
           tbProcessosDT_PROCESSAMENTOC.AsString := ''
end;

procedure TF_proDesembaraco.dbEdtDtTransCChange(Sender: TObject);
begin
     if tbProcessos.State in [dsEdit] then
        If dbEdtDtTransC.Text = '        ' Then
           tbProcessosDT_TRANSMISSAOC.AsString := ''
end;

procedure TF_proDesembaraco.dbEdtDtRegCChange(Sender: TObject);
begin
     if tbProcessos.State in [dsEdit] then
        If dbEdtDtRegC.Text = '        ' Then
           tbProcessosDT_REGISTRO_DIC.AsString := ''
end;

procedure TF_proDesembaraco.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;

  if v_nivel = '0'
   then rts.Visible := true;
end;

procedure TF_proDesembaraco.tbTaxaConvAfterOpen(DataSet: TDataSet);
begin
     If tbTaxaConv.RecordCount <> 0 Then Begin
        btnAlterarTaxa.Enabled := True;
        btnExcluirTaxa.Enabled := True;
        btnAlterarTaxaC.Enabled := True;
        btnExcluirTaxaC.Enabled := True;
     End
     Else Begin
        btnAlterarTaxa.Enabled := False;
        btnExcluirTaxa.Enabled := False;
        btnAlterarTaxaC.Enabled := False;
        btnExcluirTaxaC.Enabled := False;
     End;
end;

procedure TF_proDesembaraco.dbEdtDIExit(Sender: TObject);
begin
if qrdis.locate('nr_declaracao_imp',DBEdtdi.text,[]) then begin
   if t_pagtributos.state = dsinactive then t_pagtributos.open;
   if t_pagtributos.findkey([qrdisNR_DECL_IMP_MICRO.asstring]) then begin
      tbproregimp.edit;
      while ((not t_pagtributos.eof) and (t_pagtributosNR_DECL_IMP_MICRO.asstring = qrdisNR_DECL_IMP_MICRO.asstring)) do begin

              tbproregimpbanco.asstring          := T_pagtributosCD_BANCO_PGTO_TRIB.asstring;
              tbproregimpagencia.asstring        := T_pagtributosNR_AGENC_PGTO_TRIB.asstring;
              tbproregimpconta_corrente.asstring := qrdisNR_CONTA_PGTO_TRIB.asstring;

              ///ii
              if T_pagtributosCD_RECEITA_PGTO.asstring = '0086' then
                 tbproregimpii.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat;
              ///ipi
              if T_pagtributosCD_RECEITA_PGTO.asstring = '1038' then
                 tbproregimpipi.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat;
              ///taxa siscomex
              if T_pagtributosCD_RECEITA_PGTO.asstring = '7811' then
                 tbproregimptaxa_siscomex.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat;

              t_pagtributos.next;
      end;
      tbproregimp.post
   end;
end
else begin
   showmessage(v_usuario+', esta DI não foi registrada nesta estação. Favor preencher oa valores de registro manualmente.');
end;

  {Autor: Wellington Medeiros
   Data: 24/05/2011
   Solicitação: Fabiano Souza
   Motivo: Impedir a informação das Datas de Processamento, Transmissão, Registro posterior ou anterior ao dia que a Di é informada}
  if (Trim(dbEdtDI.Text) <> '')
   then begin
     if (Trim(dbEdtDtProc.Text) = '')
      then PreencheComDataAtual;
   end;
end;

procedure TF_proDesembaraco.dbEdtDICExit(Sender: TObject);
begin
if qrdis.locate('nr_declaracao_imp',DBEdtdic.text,[]) then begin
   if t_pagtributos.state = dsinactive then t_pagtributos.open;
   if t_pagtributos.findkey([qrdisNR_DECL_IMP_MICRO.asstring]) then begin
      tbproregimp.edit;
      while ((not t_pagtributos.eof) and (t_pagtributosNR_DECL_IMP_MICRO.asstring = qrdisNR_DECL_IMP_MICRO.asstring)) do begin

              tbproregimpbancoc.asstring          := T_pagtributosCD_BANCO_PGTO_TRIB.asstring;
              tbproregimpagenciac.asstring        := T_pagtributosNR_AGENC_PGTO_TRIB.asstring;
              tbproregimpconta_correntec.asstring := qrdisNR_CONTA_PGTO_TRIB.asstring;

              ///ii
              if T_pagtributosCD_RECEITA_PGTO.asstring = '0086' then
                 tbproregimpiic.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat;
              ///ipi
              if T_pagtributosCD_RECEITA_PGTO.asstring = '1038' then
                 tbproregimpipic.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat;
              ///taxa siscomex
              if T_pagtributosCD_RECEITA_PGTO.asstring = '7811' then
                 tbproregimptaxa_siscomexc.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat;

              t_pagtributos.next;
      end;
      tbproregimp.post
   end;
end
else begin
   showmessage(v_usuario+', esta DI não foi registrada nesta estação. Favor preencher oa valores de registro manualmente.');
end;
end;

procedure TF_proDesembaraco.acAtuTabelasExecute(Sender: TObject);
begin
     With qrCanais Do Begin
         Close;  Open;
     End;
     With qrSitFis Do Begin
         Close;  Open;
     End;

     qrStatus.close;
     //IMPLEMENTADO PARA APARECER STATUS CANCELADO SOMENTE PARA DUDA - 02122009
     if v_usuario='DUDA' THEN         qrStatus.params[0].asstring := 'X'
     ELSE qrStatus.params[0].asstring := '4';
     qrStatus.Open;

end;

procedure TF_proDesembaraco.rtsClick(Sender: TObject);
begin
qrprocessos.first;
processamento('Aguarde...'+qrprocessosprocesso.asstring+'... Rateio Taxa Siscomex nos itens das Faturas... ',qrprocessos.recordcount,FALSE);
while not qrprocessos.eof do begin
      processamento('Aguarde...'+qrprocessosprocesso.asstring+'... Rateio Taxa Siscomex nos itens das Faturas... ',qrprocessos.recordcount,FALSE);
      if (tbproregimpbanco.asstring <>'') or
        (tbproregimpagencia.asstring <>'') or
        (tbproregimpconta_corrente.asstring <>'') or
        (tbproregimpbancoc.asstring <>'') or
        (tbproregimpagenciac.asstring <>'') or
        (tbproregimpconta_correntec.asstring <>'') then begin

     /// Rateio da taxa Siscomex                ///alterei em 31102005
     if ((qrprocessosqdecl.asstring) <> '12') or (tbproregimptaxa_siscomexc.asfloat=0) then begin
        qrsomaqtd.close;
        qrsomaqtd.params[0].asstring := '*';
        qrsomaqtd.params[1].asstring := '*';
        qrsomaqtd.params[2].asstring := qrprocessosprocesso.asstring;;
        qrsomaqtd.open;

        if qrsomaqtdsomadequantidade.asfloat >0 then begin
        qrRateioTXsiscomex.params[0].asfloat := (tbproregimptaxa_siscomex.asfloat/qrsomaqtdsomadequantidade.asfloat);
        qrRateioTXsiscomex.params[1].asstring := qrprocessosprocesso.asstring;;
        qrRateioTXsiscomex.params[2].asstring := '*';
        qrRateioTXsiscomex.params[3].asstring := '*';
        qrRateioTXsiscomex.execsql;
        end;
     end
     else begin

        ///admissão
        qrsomaqtd.close;
        qrsomaqtd.params[0].asstring := '5';
        qrsomaqtd.params[1].asstring := '5';
        qrsomaqtd.params[2].asstring := qrprocessosprocesso.asstring;
        qrsomaqtd.open;

        if qrsomaqtdsomadequantidade.asfloat >0 then begin
        qrRateioTXsiscomex.params[0].asfloat := (tbproregimptaxa_siscomex.asfloat/qrsomaqtdsomadequantidade.asfloat);
        qrRateioTXsiscomex.params[1].asstring := qrprocessosprocesso.asstring;;
        qrRateioTXsiscomex.params[2].asstring := '5';
        qrRateioTXsiscomex.params[3].asstring := '5';
        qrRateioTXsiscomex.execsql;
        end;

        ///consumo
        qrsomaqtd.close;
        qrsomaqtd.params[0].asstring := '1';
        qrsomaqtd.params[1].asstring := '4';
        qrsomaqtd.params[2].asstring := qrprocessosprocesso.asstring;
        qrsomaqtd.open;

        if qrsomaqtdsomadequantidade.asfloat >0 then begin
        qrRateioTXsiscomex.params[0].asfloat := (tbproregimptaxa_siscomexc.asfloat/qrsomaqtdsomadequantidade.asfloat);
        qrRateioTXsiscomex.params[1].asstring := qrprocessosprocesso.asstring;;
        qrRateioTXsiscomex.params[2].asstring := '1';
        qrRateioTXsiscomex.params[3].asstring := '4';
        qrRateioTXsiscomex.execsql;
        end;
     end;
     end;
      qrprocessos.next;
      F_MSCOMEX.delay(1000);
end;
processamento('Aguarde...'+qrprocessosprocesso.asstring+'... Rateio Taxa Siscomex nos itens das Faturas... ',qrprocessos.recordcount,true);

end;

procedure TF_proDesembaraco.FormCreate(Sender: TObject);
begin
     With pnlTaxa Do Begin
         Left := 248;
         Top  := 150;
     End;
end;

procedure TF_proDesembaraco.dbEdtTaxaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Not(Key In ['0'..'9',',','.',#8]) Then
        Key := #0;
     If Key = '.' Then  Key := ',';
     If (Key = ',') AND (Pos(',', dbEdtTaxa.Text) > 0) Then
        Key := #0;
end;

procedure TF_proDesembaraco.dbEdtDtDesExit(Sender: TObject);
begin
     If Not (tbProcessos.State In [dsEdit]) Then Exit;

     If tbProcessosTipo_declaracao.AsString = '12' Then
        If ((tbProcessosDT_DESEMBARACOC.AsString <> '') and
           (tbProcessosDT_DESEMBARACO.AsString <> ''))  Then Begin
         //mm tirei em 28052008
         //  tbProcessosCOD_SIT.AsString := '2';
         //  tbProcessosStatus.AsString := '1';
         //  MessageDlg('Processo Desembaraçado e Finalizado no Operacional!', mtInformation, [mbOk], 0);
           If MessageDlg('Carga Liberada para o transportador na data do Desembaraço da DI?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
              If dbEdtDtLib.Enabled Then Begin
                 If tbProcessosDT_DESEMBARACOC.AsString = '' Then
                    tbProcessosData_liberacao.AsString := tbProcessosDT_DESEMBARACO.AsString
                 Else
                    tbProcessosData_liberacao.AsString := tbProcessosDT_DESEMBARACOC.AsString;
              End;
        End
        Else Begin
//           tbProcessosCOD_SIT.AsString := '1';
//           tbProcessosStatus.AsString := '01';
        End
     Else
        If tbProcessosDT_DESEMBARACO.AsString <> '' Then Begin
           //mm tirei em 28052008
           //tbProcessosCOD_SIT.AsString := '2';
           //tbProcessosStatus.AsString := '1';
           //MessageDlg('Processo Desembaraçado e Finalizado no Operacional!', mtInformation, [mbOk], 0);
           If dbEdtDtLib.Enabled Then Begin
              If MessageDlg('Carga Liberada para o transportador na data do Desembaraço da DI?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
                 tbProcessosData_liberacao.AsString := tbProcessosDT_DESEMBARACO.AsString
           End;
        End
        Else Begin
           if tbProcessosTipo_Declaracao.asstring <>'' then begin
              tbProcessosCOD_SIT.AsString := '1';
//              tbProcessosStatus.AsString := '01';
           end;
        End;
end;

procedure TF_proDesembaraco.btnSalvarALCClick(Sender: TObject);
begin
tbProALC.edit;
tbProALC.post;
pnlALC.Visible := false;
end;

procedure TF_proDesembaraco.btnALCClick(Sender: TObject);
begin 
  {Ticket 3105 - Serra 25/06/2012}
  {Todas as informações respectivas a esta tela deverão estar preenchidas}
  if tbProcessosDT_DESEMBARACO.IsNull then
  begin
      ShowMessage('Por favor, informe a data do desembaraço para continuar.');
      Exit;
  end;
  if tbProcessosNR_DECLARACAO_IMP.IsNull then
  begin
      ShowMessage('Por favor, informe o número da DI para continuar.');
      Exit;
  end;
  if tbProcessosDT_PROCESSAMENTO.IsNull then
  begin
      ShowMessage('Por favor, informe a data do processamento para continuar.');
      Exit;
  end;
  if tbProcessosDT_TRANSMISSAO.IsNull then
  begin
      ShowMessage('Por favor, informe a data de transmissão para continuar.');
      Exit;
  end;
  if tbProcessosDT_registro_di.IsNull then
  begin
      ShowMessage('Por favor, informe a data de registro para continuar.');
      Exit;
  end;
  if tbProcessosCanal.isNull then
  begin
      ShowMessage('Por favor, informe o canal para continuar.');
      Exit;
  end;
  if tbProcessosDT_DISTRIBUICAO.isNull then
  begin
      ShowMessage('Por favor, informe a data de distribuição para continuar.');
      Exit;
  end;
  if tbProcessosFiscal.isNull then
  begin
      ShowMessage('Por favor, informe o fiscal para continuar.');
      Exit;
  end;
  if tbProcessosData_CI.isNull then
  begin
      ShowMessage('Por favor, informe a data do CI para continuar.');
      Exit;
  end;
  if tbproregimpBanco.isNull then
  begin
      ShowMessage('Por favor, informe o Banco para continuar.');
      Exit;
  end;
  if tbproregimpAgencia.isNull then
  begin
      ShowMessage('Por favor, informe a Agência para continuar.');
      Exit;
  end;

  if tbproregimpConta_Corrente.isNull then
  begin
      ShowMessage('Por favor, informe a conta corrente para continuar.');
      Exit;
  end;
  if tbproregimpII.isNull then
  begin
      ShowMessage('Por favor, informe o II para continuar.');
      Exit;
  end;
  if tbproregimpIPI.isNull then
  begin
      ShowMessage('Por favor, informe o IPI para continuar.');
      Exit;
  end;
  if tbproregimpTaxa_SISCOMEX.isNull then
  begin
      ShowMessage('Por favor, informe a Taxa SISCOMEX para continuar.');
      Exit;
  end;
  {Ticket 3105}
  //Leonardo.Alabarce 02/02/2012 ticket 1682
  if dbedtdtlib.text <> '' then begin
     pnlALC.Visible := true;
     dblcbtransportadores.Enabled := false;
     dbedtdescr_merc.Enabled := false;
     btnsalvaralc.Enabled := false;
     dbcbalc.Visible := false;
     btnfecharalc.SetFocus;
       if tbproalcenviou.asinteger=0 then begin
          dblcbtransportadores.Enabled := true;
          dbedtdescr_merc.Enabled := true;
          btnsalvaralc.Enabled := true;
          dblcbtransportadores.setfocus;
       end
       else begin
          dbcbalc.Visible := true;
       end;
   end
   else begin
     showmessage(v_usuario+', Favor verificar se o Follow "Documentos entregue para a Transportadora - Retirar a carga" foi cadastrado.');
  end;
 //Fim--------------------------------------------------------------- 
end;

procedure TF_proDesembaraco.pnlALCExit(Sender: TObject);
begin
pnlALC.Visible := false;
end;

procedure TF_proDesembaraco.btnFecharALCClick(Sender: TObject);
begin
tbproalc.cancel;
pnlALC.Visible := false;
end;

procedure TF_proDesembaraco.btnincluirREClick(Sender: TObject);
begin
//     pnlPrincipal.Enabled := False;
//     pnlRES.Enabled := False;
//     pnlBaixo.Enabled := False;
     pnlREINC.Visible := True;

end;

procedure TF_proDesembaraco.pnlREINCExit(Sender: TObject);
begin
pnlREINC.Visible :=false;
end;

procedure TF_proDesembaraco.BitBtn4Click(Sender: TObject);
begin

   if not tbProRE.findkey([v_empresa,v_filial,me_nossaref.text,edtRE.TEXT]) then begin
      if tbProRE.recordcount = 0 then tbProRE.edit
      else tbProRE.Append;
      tbProRERE.asstring := edtRE.TEXT;
      tbProRE.Post;
      If MessageDlg(v_usuario+', deseja incluir outra RE?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then Begin
         edtRE.TEXT := '';
         edtRE.setfocus;
      End
      else begin
        pnlREINC.Visible := false;
      end;


   end
   else begin
      showmessage(v_usuario+', esta RE já está cadastrada.');
      edtRE.TEXT := '';
      edtRE.setfocus;
   end;

   end;

procedure TF_proDesembaraco.btnexcluirREClick(Sender: TObject);
begin
    If MessageDlg('Confirma exclusão da RE?', mtConfirmation,[mbYes, mbNo], 0) = mrYes Then
       tbProRE.Delete;
end;

procedure TF_proDesembaraco.DBEdit13Change(Sender: TObject);
begin
if tbProcessos.State in [dsEdit] then
        If DBEdit13.Text = '  /  /    ' Then
           tbProcessosDT_DESEMBARACO.AsString := ''
end;

procedure TF_proDesembaraco.PreencheComDataAtual;
var
  Data : String;
begin
  Data := DateToStr(Date);
  Data := Copy(Data,1,2)+Copy(Data,4,2)+Copy(Data,7,4);

  tbProcessosDT_PROCESSAMENTO.AsString := Data;
  tbProcessosDT_TRANSMISSAO.AsString   := Data;
  tbProcessosDT_REGISTRO_DI.AsString   := Data;
end;

procedure TF_proDesembaraco.tbProcessosAfterScroll(DataSet: TDataSet);
begin
  edtProcessoAdm.Text := tbProcessosProcesso_Adm.AsString;
end;

function TF_proDesembaraco.isStrDateTime(dateStr:string ): boolean;
{Lserra 13/12/2011}
begin
  try
    strToDateTime(dateStr);
    result := true;
  except
   result := false;
  end;
end;

procedure TF_proDesembaraco.AtualizaProcessoVisaoGeral;
begin
        with qAtuProcessoVisaoGeral do
        begin
             Close;
             ParamByName('pProcesso').value := ME_nossaref.text;
             ExecSQL;
        end;
end;

procedure TF_proDesembaraco.TimeLine;
var
  vSQL : String;
  vChegadaDaCarga : String;
  vLiberacaoDoc : String;
  vSolNumerarios : String;
  vNumerariosRecebidos : String;
  vRegistroDI : String;
  vTREnviado : String;
  vTRRecebido : String;
  vICMSEntrada : String;
  vICMSExoneracao : String;
  i, j : Integer;

begin
 vChegadaDaCarga := 'select data from FollowUp where Codevento = '+chr(39)+'3'+chr(39) +' and processo = '+chr(39)+ME_nossaref.text+chr(39);
 vLiberacaoDoc := 'select data from FollowUp where Codevento = '+chr(39)+'290'+chr(39)+' and processo = '+chr(39)+ME_nossaref.text+chr(39);
 vSolNumerarios := 'select data from FollowUp where Codevento = '+chr(39)+'1021'+chr(39)+' and Codobs = '+chr(39)+'1147'+chr(39)+' and processo = '+chr(39)+ME_nossaref.text+chr(39);
 vNumerariosRecebidos := 'select data from FollowUp where Codevento = '+chr(39)+'98'+chr(39)+' and processo = '+chr(39)+ME_nossaref.text+chr(39);
 vRegistroDI := 'select data from FollowUp where Codevento = '+chr(39)+'1021'+chr(39)+' and Codobs = '+chr(39)+'1117'+chr(39)+' and processo = '+chr(39)+ME_nossaref.text+chr(39);
 vTREnviado := 'select data from FollowUp where Codevento = '+chr(39)+'1021' +chr(39)+' and Codobs = '+chr(39)+'1165'+chr(39)+' and processo = '+chr(39)+ME_nossaref.text+chr(39);
 vTRRecebido := 'select data from FollowUp where Codevento = '+chr(39)+'1021'+chr(39)+' and Codobs = '+chr(39)+'1110'+chr(39)+' and processo = '+chr(39)+ME_nossaref.text+chr(39);
 vICMSEntrada  := 'select data from FollowUp where Codevento = '+chr(39)+'1021'+chr(39)+' and Codobs = '+chr(39)+'1155'+chr(39)+' and processo = '+chr(39)+ME_nossaref.text+chr(39);
 vICMSExoneracao := 'select data from FollowUp where Codevento = '+chr(39)+'2259'+chr(39)+' and Codobs = '+chr(39)+'1101'+chr(39)+' and processo = '+chr(39)+ME_nossaref.text+chr(39);
   j := 0;
   for i:= 0 to 8 do
   begin
       vSQL := '';
       case  j of
          0 : vSQL := vChegadaDaCarga;
          1 : vSQL := vLiberacaoDoc;
          2 : vSQL := vSolNumerarios;
          3 : vSQL := vNumerariosRecebidos;
          4 : vSQL := vRegistroDI;
          5 : vSQL := vTREnviado;
          6 : vSQL := vTRRecebido;
          7 : vSQL := vICMSEntrada;
          8 : vSQL := vICMSExoneracao;
       end;
       with qFollow do
       begin
           Close;
           sql.clear;
           sql.add(vSQL);
           Open;
       end;
       if qFollow.recordcount > 0 then
       begin
          case j of
              0 : vData_Chegada_Carga := DateToStr(qFollowdata.value);
              1 : vData_Liberacao_Doc := DateToStr(qFollowdata.value);
              2 : vData_Solicitacao_Numerario := DateToStr(qFollowdata.value);
              3 : vData_Numerario_Recebido  := DateToStr(qFollowdata.value);
              4 : vData_Registro_DI := DateToStr(qFollowdata.value);
              5 : vData_TR_Enviado := DateToStr(qFollowdata.value);
              6 : vData_TR_Recebido := DateToStr(qFollowdata.value);
              7 : vData_ICMS_Entrada := DateToStr(qFollowdata.value);
              8 : vData_ICMS_Exonercao := DateToStr(qFollowdata.value);
          end;
       end
       else
           Exit;
       j := j + 1;
   end;
   if j = 9 then
   begin
       try
           with qInsertTimeLine do
           begin
             Close;
             ParamByName('pProcesso').value := ME_nossaref.text;
             ParamByName('pImportador').value := qrProcessosImportador.Value;
             ParamByName('pCGC_CPF').value := qrProcessosCGC_CPF.Value;
             ParamByName('pData_Chegada_Carga').value := strToDate(vData_Chegada_Carga);
             ParamByName('pData_Liberacao_Doc').Value := strToDate(vData_Liberacao_Doc);
             ParamByName('pData_Solicitacao_Numerario').Value := strToDate(vData_Solicitacao_Numerario);
             ParamByName('pData_Numerario_Recebido').Value := strToDate(vData_Numerario_Recebido);
             ParamByName('pData_Registro_DI').Value := strToDate(vData_Registro_DI);
             if qrProcessosqdecl.Value = '05' then
             begin
                ParamByName('pData_TR_Enviado').Value := strToDate(vData_TR_Enviado);
                ParamByName('pData_TR_Recebido').Value := strToDate(vData_TR_Recebido);
             end;
{             else
             begin
                ParamByName('pData_TR_Enviado').Value := '';
                ParamByName('pData_TR_Recebido').Value := '';
             end;}
             ParamByName('pData_ICMS_Entrada').Value := strToDate(vData_ICMS_Entrada);
             ParamByName('pData_ICMS_Exonercao').Value := strToDate(vData_ICMS_Exonercao);
             ParamByName('pData_Desembaraco').Value := strToDate(vData_Desembaraco);
             ExecSQL;
           end;
       except
           on E:Exception do
           begin
               showmessage(v_usuario+' Erro ao gravar registro na tabela Processos_Timeline.');
           end;
       end;
   end;
end;

procedure TF_proDesembaraco.InsertFollow;
begin
         qrInsertFollow.ParamByName('Processo').Value := ME_nossaref.text;
         qrInsertFollow.ParamByName('codevento').Value := Evento ;
         qrInsertFollow.ParamByName('codobs').Value := Obs;
         qrInsertFollow.ParamByName('coddet').Value := '';
         qrInsertFollow.ParamByName('data').Value := v_dataFollow;
         qrInsertFollow.ParamByName('hora').Value := FormatDateTime('hh:nn',Now());
         qrInsertFollow.ParamByName('Usuario').Value := v_usuario;
         qrInsertFollow.ExecSQL;
end;
function TF_proDesembaraco.VerificarFollow: Boolean;
var
  QrAux1 : TQuery;
begin
  try
    QrAux1 := TQuery.Create(nil);
    QrAux1.DatabaseName := 'DBNMSCOMEX';

    QrAux1.SQL.Clear;
    QrAux1.SQL.Add(' select * from Followup where Codevento = :pEvento and Codobs = :pObs and Processo = :pProcesso ');
    QrAux1.ParamByName('pEvento').Value  := Evento;
    QrAux1.ParamByName('pObs').Value  := Obs;
    QrAux1.ParamByName('pProcesso').Value := me_nossaref.Text;
    QrAux1.Open;

    if QrAux1.RecordCount > 0
     then Result := True
     else Result := False;
  finally
    FreeAndNil(QrAux1);
  end;
end;

procedure TF_proDesembaraco.Verifica_DI_Digitalizada;
begin
 qDocDI.Close;
 qDocDI.ParamByName('pProcesso').asString:=ME_nossaref.text;
 qDocDI.Open;

 if (qDocDI.isEmpty) then
 begin
     showmessage('Só é possível informar o número da DI se o documento estiver digitalizado.');
     Exit;
 end;
 if (qDocDINumero_Doc.isNull) or (qDocDINumero_Doc.asString = '') then
 begin
     showmessage('Só é possível informar o número da DI se o documento estiver digitalizado.');
     Exit;
 end;

 qDocDI.Close;
end;

procedure TF_proDesembaraco.Verifica_CI_Digitalizada;
begin
 qDocCI.Close;
 qDocCI.ParamByName('pProcesso').asString := ME_nossaref.text;
 qDocCI.Open;

 qDocCI.RecordCount;

 if (qDocCI.isEmpty) then
 begin
     showmessage('Só é possível informar o número da CI se o documento estiver digitalizado.');
     Exit;
 end;

 if (qDocCINumero_Doc.isNull) or (qDocCINumero_Doc.asString = '') then
 begin
     showmessage('Só é possível informar o número da CI se o documento estiver digitalizado.');
     Exit;
 end;

 qDocCI.Close;
end;

end.

