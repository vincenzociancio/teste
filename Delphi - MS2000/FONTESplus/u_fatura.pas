unit u_fatura;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, Mask, DBCtrls;

type
  Tf_fatura = class(TForm)
    T_parametros: TTable;
    T_processos: TTable;
    T_creditos: TTable;
    T_tiponum: TTable;
    T_numerarios: TTable;
    ds_parametros: TDataSource;
    ds_processos: TDataSource;
    ds_parafat: TDataSource;
    ds_tipocre: TDataSource;
    ds_creditos: TDataSource;
    ds_tiponum: TDataSource;
    ds_numerarios: TDataSource;
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Panel6: TPanel;
    Panel7: TPanel;
    b_calculo: TBitBtn;
    b_impdem: TBitBtn;
    dblccred: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    dblcdeb: TDBLookupComboBox;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    me_nossaref: TMaskEdit;
    Label14: TLabel;
    DBText1: TDBText;
    T_importadores: TTable;
    ds_importadores: TDataSource;
    b_novocre: TBitBtn;
    b_excluiproc: TBitBtn;
    b_novodeb: TBitBtn;
    BitBtn4: TBitBtn;
    Q_valores: TQuery;
    ds_qvalores: TDataSource;
    p_hono: TPanel;
    Label15: TLabel;
    b_confhono: TBitBtn;
    b_canchono: TBitBtn;
    b_observa: TBitBtn;
    p_obs: TPanel;
    t_obs: TTable;
    ds_obs: TDataSource;
    DBMemo1: TDBMemo;
    Label18: TLabel;
    b_okobs: TBitBtn;
    Label19: TLabel;
    DBEdit5: TDBEdit;
    me_dta1: TMaskEdit;
    Label16: TLabel;
    t_conhecimento: TTable;
    ds_conhecimento: TDataSource;
    T_doccarga: TTable;
    ds_tipodoccarga: TDataSource;
    t_faturas: TTable;
    ds_faturas: TDataSource;
    t_exportadores: TTable;
    ds_exportadores: TDataSource;
    t_docchegada: TTable;
    ds_docchegada: TDataSource;
    q_certif: TQuery;
    ds_qcertif: TDataSource;
    p_psh: TPanel;
    Label17: TLabel;
    DBGrid3: TDBGrid;
    BitBtn1: TBitBtn;
    b_profat: TBitBtn;
    b_psh: TBitBtn;
    Q_PSH: TQuery;
    ds_qpsh: TDataSource;
    Label22: TLabel;
    q_tiponum: TQuery;
    q_contabil: TQuery;
    sb_contabilizado: TSpeedButton;
    gb_di1: TGroupBox;
    Label20: TLabel;
    DBEdit6: TDBEdit;
    Label21: TLabel;
    DBEdit7: TDBEdit;
    gb_di2: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label23: TLabel;
    sb_contabilizado2: TSpeedButton;
    t_paracon: TTable;
    ds_tparacon: TDataSource;
    sb_debdir: TSpeedButton;
    T_IMP_PRO: TTable;
    Label24: TLabel;
    dbe_detalhes: TDBEdit;
    Label25: TLabel;
    ds_t_imp_pro: TDataSource;
    DBL_fundofixo: TDBLookupComboBox;
    sbLimpa: TSpeedButton;
    b_gravacre: TBitBtn;
    b_gravadeb: TBitBtn;
    q_incFF: TQuery;
    q_excFF: TQuery;
    t_sal: TTable;
    t_proconv: TTable;
    b_processa: TButton;
    qTXBC: TQuery;
    qTXBCexclui: TQuery;
    t_paraconEmpresa: TStringField;
    t_paraconFilial: TStringField;
    t_paraconImportador: TStringField;
    t_paraconNumerario: TStringField;
    t_paraconCredito: TStringField;
    t_proconvEmpresa: TStringField;
    t_proconvFilial: TStringField;
    t_proconvProcesso: TStringField;
    t_proconvMoeda: TStringField;
    t_proconvTaxa_conversao: TFloatField;
    t_proconvTaxa_conversaoc: TFloatField;
    t_salData_Vigencia: TDateTimeField;
    t_salValor: TFloatField;
    q_tiponumPlano_contas: TStringField;
    q_tiponumEmpresa: TStringField;
    q_tiponumFilial: TStringField;
    q_tiponumCodigo: TStringField;
    q_tiponumDescricao: TStringField;
    q_tiponumRateio: TStringField;
    q_tiponumContabilizaCC: TSmallintField;
    T_parametrosEmpresa: TStringField;
    T_parametrosFilial: TStringField;
    T_parametrosNumerador_Processos: TStringField;
    T_parametrosNumerador_Documentos: TStringField;
    T_parametrosEndereco_ftp: TStringField;
    T_parametrosUsuario_ftp: TStringField;
    T_parametrosSenha_ftp: TStringField;
    T_parametrosHost: TStringField;
    T_parametrosVersao: TStringField;
    T_parametroskeycrypt: TStringField;
    T_parametrosHost_smtp: TStringField;
    T_parametrosPorta_smtp: TSmallintField;
    T_parametrosUsuario_smtp: TStringField;
    T_parametrosSenha_smtp: TStringField;
    T_parametrosNumerador_Transmittal: TStringField;
    T_parametrosPATH_SERVER: TStringField;
    T_parametrosAliq_PIS_PASEP: TFloatField;
    T_parametrosAliq_COFINS: TFloatField;
    T_parametrosAliq_ICMS: TFloatField;
    T_parametrosAliq_ICMS_EXTRA: TFloatField;
    T_parametrosNumerador_Sol_Cheques: TStringField;
    T_parametrosNumerador_Sol_Reg: TStringField;
    T_parametrosNumerador_Sol_Tracla: TStringField;
    T_creditosEmpresa: TStringField;
    T_creditosFilial: TStringField;
    T_creditosProcesso: TStringField;
    T_creditosREG: TAutoIncField;
    T_creditosCredito: TStringField;
    T_creditosData_Credito: TDateTimeField;
    T_creditosValor: TFloatField;
    T_creditosConta_Corrente: TIntegerField;
    T_creditosCodigo_mov: TIntegerField;
    T_creditosContabilizado: TStringField;
    T_creditosImpdemfim: TStringField;
    T_creditosContabilizado_cliente: TSmallintField;
    T_creditosREG_numerarios: TIntegerField;
    T_creditosProcesso_FundoFIXO: TStringField;
    T_creditosDetalhe: TStringField;
    T_tiponumEmpresa: TStringField;
    T_tiponumFilial: TStringField;
    T_tiponumCodigo: TStringField;
    T_tiponumDescricao: TStringField;
    T_tiponumPlano_contas: TStringField;
    T_tiponumRateio: TStringField;
    T_tiponumContabilizaCC: TSmallintField;
    Q_valoresEmpresa: TStringField;
    Q_valoresFilial: TStringField;
    Q_valoresProcesso: TStringField;
    Q_valoresMoeda: TStringField;
    Q_valoresDESCRICAO: TStringField;
    Q_valoresTaxa_conversao: TFloatField;
    Q_valoresFOB: TFloatField;
    Q_valoresFOBREAL: TFloatField;
    Q_valoresCIF: TFloatField;
    Q_valoresCIFREAL: TFloatField;
    T_IMP_PROEmpresa: TStringField;
    T_IMP_PROFilial: TStringField;
    T_IMP_PROImportador: TStringField;
    T_IMP_PROProcesso: TStringField;
    Q_PSHCodigo: TStringField;
    Q_PSHData: TDateTimeField;
    Q_PSHRazao_Social: TStringField;
    Q_PSHDESCRICAO: TStringField;
    t_obsEmpresa: TStringField;
    t_obsFilial: TStringField;
    t_obsCodigo: TStringField;
    t_obsObservacoes: TMemoField;
    t_conhecimentoEmpresa: TStringField;
    t_conhecimentoFilial: TStringField;
    t_conhecimentoProcesso: TStringField;
    t_conhecimentoVia: TStringField;
    t_conhecimentoMultimodal: TSmallintField;
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
    t_conhecimentoOperacao_FUNDAP: TSmallintField;
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
    T_doccargavia: TStringField;
    T_doccargacodigo: TStringField;
    T_doccargadescricao: TStringField;
    t_faturasEmpresa: TStringField;
    t_faturasFilial: TStringField;
    t_faturasProcesso: TStringField;
    t_faturasCodigo: TStringField;
    t_faturasExportador: TStringField;
    t_faturasIncoterm: TStringField;
    t_faturasVinculacao: TStringField;
    t_faturasCondicao: TStringField;
    t_faturasValor_Total: TFloatField;
    t_faturasPeso_Total: TFloatField;
    t_faturasPeso_Total_Acertado: TFloatField;
    t_faturasAcrescimos_Reducoes: TSmallintField;
    t_faturasMoeda: TStringField;
    t_faturasCobertura_Cambial: TStringField;
    t_faturasMotivo_Sem_Cobertura: TStringField;
    t_faturasModalidade_de_Pagamento: TStringField;
    t_faturasInstituicao_Financiadora: TStringField;
    t_faturasTipo_Parcela: TStringField;
    t_faturasNumero_de_parcelas: TStringField;
    t_faturasPeriodicidade: TStringField;
    t_faturasValor_das_Parcelas: TFloatField;
    t_faturasIndicador_Periodicidade: TStringField;
    t_faturasTaxa_de_Juros: TSmallintField;
    t_faturasCodigo_Taxa_de_Juros: TStringField;
    t_faturasValor_Taxa_de_Juros: TFloatField;
    t_faturasROF_BACEN: TStringField;
    t_faturasPercentual_ROF: TFloatField;
    t_faturasDT_PREV_PAG_CAMBIO: TDateTimeField;
    t_faturasDT_PAG_CAMBIO: TDateTimeField;
    t_faturasSTATUS_CAMBIO: TStringField;
    t_faturasCONTRATO_CAMBIO: TStringField;
    t_faturasSALDO_CAMBIO: TFloatField;
    t_faturasDtEmissao: TDateTimeField;
    t_faturasPeso_Libra: TSmallintField;
    t_exportadoresEmpresa: TStringField;
    t_exportadoresFilial: TStringField;
    t_exportadoresCodigo: TStringField;
    t_exportadoresRazao_Social: TStringField;
    t_exportadoresPais: TStringField;
    t_exportadoresCGC_CPF: TStringField;
    t_exportadoresEndereco: TStringField;
    t_exportadoresNumero: TStringField;
    t_exportadoresComplemento: TStringField;
    t_exportadoresBairro: TStringField;
    t_exportadoresCidade: TStringField;
    t_exportadoresCEP: TStringField;
    t_exportadoresUF: TStringField;
    t_exportadoresEstado: TStringField;
    t_exportadoresInscricao_Estadual: TStringField;
    t_exportadoresImportador: TStringField;
    t_docchegadacodigo: TStringField;
    t_docchegadadescricao: TStringField;
    q_certifEmpresa: TStringField;
    q_certifFilial: TStringField;
    q_certifProcesso: TStringField;
    q_certifCertificado_Origem: TStringField;
    q_contabilEmpresa: TStringField;
    q_contabilFilial: TStringField;
    q_contabilCodigo: TIntegerField;
    q_contabilqconta: TStringField;
    q_contabilData: TDateTimeField;
    q_contabilTipo: TIntegerField;
    q_contabilqtipo: TStringField;
    q_contabilDoc: TStringField;
    q_contabilHistorico: TStringField;
    q_contabilValor: TFloatField;
    q_contabilCliente: TStringField;
    q_contabilqcliente: TStringField;
    q_contabilCodigo_Mov: TAutoIncField;
    q_contabilPlano_Contas: TStringField;
    T_importadoresEmpresa: TStringField;
    T_importadoresFilial: TStringField;
    T_importadoresCodigo: TStringField;
    T_importadoresRazao_Social: TStringField;
    T_importadoresPais: TStringField;
    T_importadoresCNPJ_CPF_COMPLETO: TStringField;
    T_importadoresCGC_CPF: TStringField;
    T_importadoresTipo_Importador: TStringField;
    T_importadoresEndereco: TStringField;
    T_importadoresNumero: TStringField;
    T_importadoresComplemento: TStringField;
    T_importadoresBairro: TStringField;
    T_importadoresCidade: TStringField;
    T_importadoresCEP: TStringField;
    T_importadoresUF: TStringField;
    T_importadoresEstado: TStringField;
    T_importadoresInscricao_Estadual: TStringField;
    T_importadoresBanco: TStringField;
    T_importadoresAgencia: TStringField;
    T_importadoresConta_Corrente: TStringField;
    T_importadoresConta_Corrente_Registro: TIntegerField;
    T_importadoresConta_Corrente_Deposito: TIntegerField;
    T_importadoreslink: TStringField;
    T_importadoresCAE: TStringField;
    T_importadoresTelefone: TStringField;
    T_importadoresAtivo: TSmallintField;
    T_importadoresAcesso_WEB_MS: TSmallintField;
    T_importadoresAcesso_WEB_CLI: TSmallintField;
    T_importadoresAcesso_WEB_REC: TSmallintField;
    T_importadoresBASE_ICMS: TSmallintField;
    T_processosEmpresa: TStringField;
    T_processosFilial: TStringField;
    T_processosCodigo: TStringField;
    T_processosData: TDateTimeField;
    T_processosImportador: TStringField;
    T_processosCodigo_Cliente: TStringField;
    T_processosTipo_Declaracao: TStringField;
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
    T_processosDT_DISTRIBUICAO: TDateTimeField;
    T_processosCanal: TStringField;
    T_processosFiscal: TStringField;
    T_processosStatus: TStringField;
    T_processosCOD_SIT: TStringField;
    T_processosCD_MOTIVO_TRANS: TStringField;
    T_processosIN_MOEDA_UNICA: TSmallintField;
    T_processosTX_INFO_COMPL: TMemoField;
    T_processosCD_TIPO_PGTO_TRIB: TStringField;
    T_processosNumero_RCR: TStringField;
    T_processosData_Entrada_RCR: TDateTimeField;
    T_processosData_Aprovacao_RCR: TDateTimeField;
    T_processosFundamentacao_RCR: TStringField;
    T_processosProcurador: TStringField;
    T_processosNumero_TR: TStringField;
    T_processosData_Entrada_TR: TDateTimeField;
    T_processosData_vencimento_TR: TDateTimeField;
    T_processosData_Aprovacao_TR: TDateTimeField;
    T_processosData_Baixa_TR: TDateTimeField;
    T_processosData_CI: TDateTimeField;
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
    T_processosResponsavel_Empresa: TStringField;
    T_processosResponsavel_Importador: TStringField;
    T_processosSaldo_Faturamento: TFloatField;
    T_processosNR_DECL_IMP_MICROC: TStringField;
    T_processosNR_DECL_IMP_PROTC: TStringField;
    T_processosNR_DECLARACAO_IMPC: TStringField;
    T_processosDT_PROCESSAMENTOC: TStringField;
    T_processosDT_TRANSMISSAOC: TStringField;
    T_processosDT_REGISTRO_DIC: TStringField;
    T_processosDT_DESEMBARACOC: TDateTimeField;
    T_processosDT_DISTRIBUICAOC: TDateTimeField;
    T_processosCanalC: TStringField;
    T_processosFiscalC: TStringField;
    T_processosCOD_SITC: TStringField;
    T_processosData_CIC: TDateTimeField;
    T_processosValor_FOBC: TFloatField;
    T_processosValor_CIFC: TFloatField;
    T_processosident_meio1: TStringField;
    T_processosident_meio2: TStringField;
    T_processosCodevento: TStringField;
    T_processosCodobs: TStringField;
    T_processosObs_especifica: TStringField;
    T_processosData_ufollowup: TDateTimeField;
    T_processosHora_ufollowup: TStringField;
    T_processosData_liberacao: TDateTimeField;
    T_processosUrgente: TSmallintField;
    T_processosconsolidado: TSmallintField;
    T_processosPag_proporcional: TSmallintField;
    T_processosTR_VAL_FOB_US: TFloatField;
    T_processosTR_VAL_CIF_US: TFloatField;
    T_processosTR_VAL_II: TFloatField;
    T_processosTR_VAL_IPI: TFloatField;
    T_processosDDE: TStringField;
    T_processosProcesso_Adm: TStringField;
    T_processosProc_Adm_Data_Entrada: TDateTimeField;
    T_processosFaturado: TSmallintField;
    T_processosFechado: TSmallintField;
    T_processosCentro_Custo: TStringField;
    T_processosProcurador2: TStringField;
    T_processosTR_VAL_PIS: TFloatField;
    T_processosTR_VAL_COFINS: TFloatField;
    T_processosRCR_LOCAL: TStringField;
    T_processosResponsavel_EmpresaC: TStringField;
    T_processosvinc_processo: TSmallintField;
    T_processosproc_vinc: TStringField;
    qTXBCEmpresa: TStringField;
    qTXBCFilial: TStringField;
    qTXBCProcesso: TStringField;
    qTXBCREG: TAutoIncField;
    qTXBCNumerario: TStringField;
    qTXBCUsuario_Previsao: TStringField;
    qTXBCData_Previsao: TDateTimeField;
    qTXBCValor_Previsao: TFloatField;
    qTXBCPrevisao_solicitada: TStringField;
    qTXBCOk_Previsao_financeiro: TStringField;
    qTXBCUsuario_Financeiro: TStringField;
    qTXBCData_Registro: TDateTimeField;
    qTXBCValor_Registrado: TFloatField;
    qTXBCValor_Contabilizado: TFloatField;
    qTXBCContabilizado: TStringField;
    qTXBCUsuario_Contablizado: TStringField;
    qTXBCConta_Corrente: TIntegerField;
    qTXBCCodigo_mov: TIntegerField;
    qTXBCImpdemfim: TStringField;
    qTXBCDetalhe: TStringField;
    qTXBCDocsis: TStringField;
    qTXBCFatura_mov: TStringField;
    qTXBCFornecedor: TStringField;
    qTXBCCodigo: TStringField;
    qTXBCContabilizado_cliente: TIntegerField;
    qTXBCREG_creditos: TIntegerField;
    qTXBCProcesso_FundoFIXO: TStringField;
    T_numerariosEmpresa: TStringField;
    T_numerariosFilial: TStringField;
    T_numerariosProcesso: TStringField;
    T_numerariosREG: TAutoIncField;
    T_numerariosNumerario: TStringField;
    T_numerariosUsuario_Previsao: TStringField;
    T_numerariosData_Previsao: TDateTimeField;
    T_numerariosValor_Previsao: TFloatField;
    T_numerariosPrevisao_solicitada: TStringField;
    T_numerariosOk_Previsao_financeiro: TStringField;
    T_numerariosUsuario_Financeiro: TStringField;
    T_numerariosData_Registro: TDateTimeField;
    T_numerariosValor_Registrado: TFloatField;
    T_numerariosValor_Contabilizado: TFloatField;
    T_numerariosContabilizado: TStringField;
    T_numerariosUsuario_Contablizado: TStringField;
    T_numerariosConta_Corrente: TIntegerField;
    T_numerariosCodigo_mov: TIntegerField;
    T_numerariosImpdemfim: TStringField;
    T_numerariosDetalhe: TStringField;
    T_numerariosDocsis: TStringField;
    T_numerariosFatura_mov: TStringField;
    T_numerariosFornecedor: TStringField;
    T_numerariosCodigo: TStringField;
    T_numerariosContabilizado_cliente: TIntegerField;
    T_numerariosREG_creditos: TIntegerField;
    T_numerariosProcesso_FundoFIXO: TStringField;
    cb_semnf: TCheckBox;
    T_processossem_nfs: TIntegerField;
    q_tipocred: TQuery;
    q_tipocredCodigo: TStringField;
    q_tipocreddescricao: TStringField;
    q_parafat: TQuery;
    q_parafatEmpresa: TStringField;
    q_parafatFilial: TStringField;
    q_parafatImportador: TStringField;
    q_parafatTipo_Processo: TStringField;
    q_parafatReg: TAutoIncField;
    q_parafatBase_faturamento: TStringField;
    q_parafatValor_fixo: TFloatField;
    q_parafatPercentual: TFloatField;
    q_parafatFaixa_Real_Dolar: TStringField;
    q_parafatFaixa_inicial: TFloatField;
    q_parafatFaixa_final: TFloatField;
    q_parafatValor_minimo: TFloatField;
    q_parafatValor_maximo: TFloatField;
    q_parafatValor_fixoc: TFloatField;
    q_parafatE_Salario_Minimo: TStringField;
    q_parafatQuantidade_Salarios: TFloatField;
    q_parafatData_Referencia_SM: TStringField;
    q_parafatQuantidade_SalariosMAX: TFloatField;
    q_parafatE_Salario_Minimo_TX: TStringField;
    q_parafatValor_taxaexpediente: TFloatField;
    q_parafatValor_LI: TFloatField;
    q_parafatValor_DTA1: TFloatField;
    q_parafatQTD_SM_TAXAEXP: TFloatField;
    q_parafatQTD_SM_DTA1: TFloatField;
    q_parafatQTD_SM_LI: TFloatField;
    q_parafatData_Referencia_SM_TX: TStringField;
    q_parafatATIVO: TIntegerField;
    q_propro: TQuery;
    q_proprocodigo: TStringField;
    q_proproimportador: TStringField;
    T_importadoresMOV_REPETRO: TIntegerField;
    T_importadoresInscricao_Municipal: TStringField;
    T_importadoresEMAIL: TStringField;
    T_importadoresFATURA_ISS: TIntegerField;
    q_proprosaldo_faturamento: TFloatField;
    t_locais: TTable;
    t_locaisDescricao: TStringField;
    t_locaisCentro_Custo: TStringField;
    t_locaisEmpresa: TStringField;
    t_locaisFilial: TStringField;
    t_locaisImportador: TStringField;
    t_locaisContrato: TStringField;
    t_locaisLocal: TStringField;
    btnExcluiZerados: TBitBtn;
    q_parafatTipo_Declaracao: TStringField;
    cb_AgMedicao: TCheckBox;
    T_processosaguardando_medicao: TIntegerField;
    T_numerariosDespesa_Cobrada: TIntegerField;
    T_creditosCredito_Cobrado: TIntegerField;
    btnCancelarProcesso: TBitBtn;
    qCancelaProcesso: TQuery;
    procedure me_nossarefKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure b_excluiprocClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure b_novodebClick(Sender: TObject);
    procedure b_novocreClick(Sender: TObject);
    procedure T_creditosAfterOpen(DataSet: TDataSet);
    procedure T_numerariosAfterOpen(DataSet: TDataSet);
    procedure b_profatClick(Sender: TObject);
    procedure p_honoExit(Sender: TObject);
    procedure b_canchonoClick(Sender: TObject);
    procedure b_calculoClick(Sender: TObject);
    procedure b_confhonoClick(Sender: TObject);
    procedure b_impdemClick(Sender: TObject);
    procedure b_okobsClick(Sender: TObject);
    procedure b_observaClick(Sender: TObject);
    procedure t_obsAfterPost(DataSet: TDataSet);
    procedure T_processosAfterPost(DataSet: TDataSet);
    procedure b_pshClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure me_nossarefChange(Sender: TObject);
    procedure T_numerariosAfterPost(DataSet: TDataSet);
    procedure T_numerariosBeforePost(DataSet: TDataSet);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure T_creditosBeforePost(DataSet: TDataSet);
    procedure T_creditosBeforeDelete(DataSet: TDataSet);
    procedure T_numerariosBeforeDelete(DataSet: TDataSet);
    procedure T_numerariosAfterScroll(DataSet: TDataSet);
    procedure T_creditosAfterScroll(DataSet: TDataSet);
    procedure T_creditosAfterPost(DataSet: TDataSet);
    procedure sb_contabilizadoClick(Sender: TObject);
    procedure sb_contabilizado2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sb_debdirClick(Sender: TObject);
    procedure T_creditosAfterEdit(DataSet: TDataSet);
    procedure sbLimpaClick(Sender: TObject);
    procedure b_gravacreClick(Sender: TObject);
    procedure b_gravadebClick(Sender: TObject);
    procedure b_processaClick(Sender: TObject);
    procedure cb_semnfClick(Sender: TObject);
    procedure T_processosAfterScroll(DataSet: TDataSet);
    procedure btnExcluiZeradosClick(Sender: TObject);
    procedure cb_AgMedicaoClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure btnCancelarProcessoClick(Sender: TObject);
  private
    { Private declarations }
    atualizacaoCampo : integer;
    Parametro : Boolean;
    Empresa, Filial : String;

    {wellington - 31/08/2011-b }
    procedure ExcluiNumerariosZerados;

    function VerificaSeUsuarioEResponsavel : Boolean;

    function TrocarVirgula(valor: double): String;

    function ProcessoRecebidoPeloFinanceiro : Boolean;

    function DetalheAdiantamentosProcesso : String;

    function DetalheAdiantamentoNaoPreenchido : Boolean;

    procedure ExcluiDebito(Reg : String);

    //function FollowPendenteNoDia : Boolean;
  public
    { Public declarations }
  end;

var
  f_fatura : Tf_fatura;
  tcred  : real;
  tnum   : real;
  tresu  : real;
  qfob   : real;
  qcif   : real;
  qfobc  : real;
  qcifc  : real;
  qcpmf  : real;
  qcpmf2 : real;

  qfob_uss  : real;
  qcif_uss  : real;
  qfobc_uss : real;
  qcifc_uss : real;
  qdataref, qmemoria : string;
  qsal, qtaxa, qvali, qvdta1, qvtxexp : real;

  hono_cc, hono_cm : integer;
  iss_cc, iss_cm : integer;
  cpmf_cc, cpmf_cm : integer;
  taxe_cc, taxe_cm : integer;
  hono_data, iss_data, cpmf_data, taxe_data : string;
  irrf_cc, irrf_cm : integer;
  CCP_cc, CCP_cm : integer;
  hono_ct, iss_ct, cpmf_ct, taxe_ct, irrf_ct, CCP_ct, COFI_ct, PIS_CT, CSLL_CT, vobstaxas : string;
  hono_vreg, hono_vcon, iss_vreg, iss_vcon, taxe_vreg, taxe_vcon, irrf_vreg, CCP_vreg : real;
  COFI_vreg, PIS_vreg, CSLL_vreg : real;

  COFI_cc, COFI_cm : integer;
  PIS_cc, PIS_cm : integer;
  CSLL_cc, CSLL_cm : integer;
  temHONO, fat_ccp, avisou, semmsg, progeral : boolean;
  temIRR, temCSLL : Boolean;
  contador : integer;

implementation

uses U_MSCOMEX, u_reldemfin;

{$R *.DFM}

procedure calcula_cpmf();
var qvalchq, qperchq, qvalchqc : real;
    qdatchq, qdescchq, qregnum, otipo : string;
begin
  {calcula valor de cpmf por despesa e data}
  qcpmf   := 0;
  qcpmf2  := 0;
  qvalchq := 5000;
  qperchq := 0.11;
  otipo   := '7';

  {ver se o cpmf já está contabilizado}
  f_fatura.t_numerarios.first;

  if qcpmf = 0
   then begin
     f_fatura.t_numerarios.first;

     while not f_fatura.t_numerarios.eof do
      begin
        if not f_fatura.t_numerarioscontabilizado_cliente.asinteger = 1
         then begin
           if ((f_fatura.t_numerariosnumerario.asstring <> 'HONO') and
               (f_fatura.t_numerariosnumerario.asstring <> 'ISS' ) and
               (f_fatura.t_numerariosnumerario.asstring <> 'CPMF') and
               (f_fatura.t_numerariosnumerario.asstring <> 'EXP' ) and
               (f_fatura.t_numerariosnumerario.asstring <> 'CPM2'))
            then begin
              if f_fatura.t_numerariosdata_registro.asdatetime < strtodateTIME('19/03/2001')
               then qcpmf := qcpmf + (f_fatura.t_numerariosvalor_registrado.asfloat*0.003)
               else begin
                 if f_fatura.t_numerariosdata_registro.asdatetime <= strtodateTIME('31/12/2007')
                  then qcpmf := qcpmf + (f_fatura.t_numerariosvalor_registrado.asfloat*0.0038);
               end;
            end;
         end;

        f_fatura.t_numerarios.next;
      end;
   end
   else begin
     f_fatura.t_numerarios.first;

     while not f_fatura.t_numerarios.eof do
      begin
        if not f_fatura.t_numerarioscontabilizado_cliente.asinteger = 1
         then begin
           if ((f_fatura.t_numerariosnumerario.asstring <> 'HONO') and
               (f_fatura.t_numerariosnumerario.asstring <> 'ISS' ) and
               (f_fatura.t_numerariosnumerario.asstring <> 'CPMF') and
               (f_fatura.t_numerariosnumerario.asstring <> 'EXP' ) and
               (f_fatura.t_numerariosnumerario.asstring <> 'CPM2'))
            then begin
              if f_fatura.t_numerariosdata_registro.asdatetime < strtodateTIME('19/03/2001')
               then qcpmf2 := qcpmf2+(f_fatura.t_numerariosvalor_registrado.asfloat*0.003)
               else begin
                 if f_fatura.t_numerariosdata_registro.asdatetime <= strtodateTIME('31/12/2007')
                  then qcpmf2 := qcpmf2+(f_fatura.t_numerariosvalor_registrado.asfloat*0.0038);
               end;
            end;

           if ((f_fatura.t_numerarioscontabilizado.asstring = 'SIM' ) and
               (f_fatura.t_numerariosnumerario.asstring     = 'CPM2'))
            then qcpmf2 := (qcpmf2-f_fatura.t_numerariosvalor_registrado.asfloat);
         end; 
          f_fatura.t_numerarios.next;
      end;
   end;

  qcpmf  := (strtofloat(floattostrf(qcpmf,fffixed,10,2)));
  qcpmf2 := (strtofloat(floattostrf(qcpmf2-qcpmf,fffixed,10,2)));
end;

procedure resultado();
begin
  try
    { alterei em 16/03/2005 }
    tresu := (tcred-tnum);
    tresu := strtofloat(floattostrf(tresu,fffixed	,10,2));

    f_fatura.t_processos.edit;
    f_fatura.t_processossaldo_faturamento.asfloat := tresu;

    { Retirado para entrar em vigor a nova regra definida }
    {if int(tresu) <> 0
     then begin
       // se saldo em aberto E ESTA FINALIZADO NO Operacional, entao esta em andamento no Financeiro
       if (f_fatura.t_processosstatus.asstring >= '1') and (f_fatura.t_processosstatus.asstring <> '4')
        then f_fatura.t_processosstatus.asstring := '2';
     end
     else begin
       // se tem HONORARIOS E ESTA FINALIZADO NO Operacional, entao finaliza no Financeiro
       if temHONO
        then begin
          if (f_fatura.t_processosstatus.asstring >= '1') and (f_fatura.t_processosstatus.asstring <> '4')
           then f_fatura.t_processosstatus.asstring := '3';
        end;
     end;}

    f_fatura.t_processos.post;

    {coloquei em 29062007 NFS}
    if not avisou
     then avisou := true;

    if tresu < 0
     then f_fatura.label13.caption := 'Resultado (SALDO A PAGAR) = '   + floattostrf((tresu*(-1)),fffixed	,10,2)
     else f_fatura.label13.caption := 'Resultado (SALDO A RECEBER) = ' + floattostrf(tresu,fffixed	,10,2);

    f_fatura.label13.refresh;
  Except
    On E:Exception do
     begin
       if contador = 3
        then Abort;

       contador := contador + 1; 

       resultado();
     end;
  end;
end;

procedure totalcred();{totaliza os créditos}
begin
  contador := 1;

  tcred := 0;
  f_fatura.t_creditos.close;
  f_fatura.t_creditos.open;
  f_fatura.t_creditos.first;

  while not f_fatura.t_creditos.eof do
   begin
     tcred := tcred + f_fatura.t_creditosvalor.asfloat;
     f_fatura.t_creditos.next;
   end;

  f_fatura.label7.caption := 'Total = ' + floattostrf(tcred+0.001,fffixed	,10,2);
  f_fatura.label7.refresh;
  resultado();
end;

procedure totalnum();{totaliza os numerários}
begin
  contador := 1;

  tnum := 0;
  temHONO := false;
  temIRR  := false;
  temCSLL := false;

  f_fatura.t_numerarios.close;
  f_fatura.t_numerarios.open;
  f_fatura.t_numerarios.first;

  while not f_fatura.t_numerarios.eof do
   begin
     if (f_fatura.T_numerariosNumerario.asstring = 'HONO')
      then temHONO := true;

     if (f_fatura.t_processosimportador.asstring = '2') and ((f_fatura.T_processosTipo.asstring = 'BT') or (f_fatura.T_processosTipo.asstring = '8')) 
      then begin
        if (f_fatura.T_numerariosNumerario.asstring = 'IRR')
         then temIRR := true;

        if (f_fatura.T_numerariosNumerario.asstring = 'CSLL')
         then temCSLL := true;
      end;

     tnum := tnum + f_fatura.t_numerariosvalor_registrado.asfloat;
     f_fatura.t_numerarios.next;
   end;

  f_fatura.label6.caption := 'Total = '+floattostrf(tnum+0.001,fffixed	,10,2);
  f_fatura.label6.refresh;
  resultado();
end;

procedure apagachono();{apaga calculos de honorários}
var
  achoucred : boolean;
begin
  irrf_cc := 0;
  irrf_cm := 0;
  irrf_ct := 'NÃO';

  CCP_cc := 0;
  CCP_cm := 0;
  CCP_ct := 'NÃO';

  COFI_cc := 0;
  COFI_cm := 0;
  COFI_ct := 'NÃO';

  PIS_cc := 0;
  PIS_cm := 0;
  PIS_ct := 'NÃO';

  CSLL_cc := 0;
  CSLL_cm := 0;
  CSLL_ct := 'NÃO';

  f_fatura.t_creditos.first;

  while not f_fatura.t_creditos.eof do
   begin
     achoucred := false;

     if (f_fatura.t_creditoscredito.asstring = 'IRRF')
      then begin
        if f_fatura.t_creditoscontabilizado.asstring = 'SIM'
         then begin
           irrf_cc   := f_fatura.t_creditosconta_corrente.asinteger;
           irrf_cm   := f_fatura.t_creditoscodigo_mov.asinteger;
           irrf_ct   := f_fatura.t_creditoscontabilizado.asstring;
           irrf_vreg := f_fatura.t_creditosvalor.asfloat;
         end;

        achoucred := true;
      end;

     if (f_fatura.t_creditoscredito.asstring = 'CCP')
      then begin
        if f_fatura.t_creditoscontabilizado.asstring = 'SIM'
         then begin
           CCP_cc   := f_fatura.t_creditosconta_corrente.asinteger;
           CCP_cm   := f_fatura.t_creditoscodigo_mov.asinteger;
           CCP_ct   := f_fatura.t_creditoscontabilizado.asstring;
           CCP_vreg := f_fatura.t_creditosvalor.asfloat;
         end;

        achoucred := true;
      end;

     if (f_fatura.t_creditoscredito.asstring = 'COFI')
      then begin
        if f_fatura.t_creditoscontabilizado.asstring = 'SIM'
         then begin
           COFI_cc   := f_fatura.t_creditosconta_corrente.asinteger;
           COFI_cm   := f_fatura.t_creditoscodigo_mov.asinteger;
           COFI_ct   := f_fatura.t_creditoscontabilizado.asstring;
           COFI_vreg := f_fatura.t_creditosvalor.asfloat;
         end;

        achoucred := true;
      end;

     if (f_fatura.t_creditoscredito.asstring = 'PIS')
      then begin
        if f_fatura.t_creditoscontabilizado.asstring = 'SIM'
         then begin
           PIS_cc   := f_fatura.t_creditosconta_corrente.asinteger;
           PIS_cm   := f_fatura.t_creditoscodigo_mov.asinteger;
           PIS_ct   := f_fatura.t_creditoscontabilizado.asstring;
           PIS_vreg := f_fatura.t_creditosvalor.asfloat;
         end;

        achoucred := true;
      end;

     if (f_fatura.t_creditoscredito.asstring = 'CSLL')
      then begin
        if f_fatura.t_creditoscontabilizado.asstring = 'SIM'
         then begin
           CSLL_CC   := f_fatura.t_creditosconta_corrente.asinteger;
           CSLL_cm   := f_fatura.t_creditoscodigo_mov.asinteger;
           CSLL_ct   := f_fatura.t_creditoscontabilizado.asstring;
           CSLL_vreg := f_fatura.t_creditosvalor.asfloat;
         end;

        achoucred := true;
      end;

     if achoucred
      then begin
        f_fatura.t_creditos.delete;
        f_fatura.t_creditos.first;
      end
      else f_fatura.t_creditos.next;
   end;

  hono_cc := 0;
  hono_cm := 0;
  hono_ct := 'NÃO';

  iss_cc  := 0;
  iss_cm  := 0;
  iss_ct  := 'NÃO';

  cpmf_cc := 0;
  cpmf_cm := 0;
  cpmf_ct := 'NÃO';

  taxe_cc := 0;
  taxe_cm := 0;
  taxe_ct := 'NÃO';

  calcula_cpmf();
  f_fatura.t_numerarios.first;

  while not f_fatura.t_numerarios.eof do
   begin
     if ((f_fatura.t_numerariosnumerario.asstring = 'HONO') or
         (f_fatura.t_numerariosnumerario.asstring = 'ISS' ) or
         (f_fatura.t_numerariosnumerario.asstring = 'CPMF') or
         (f_fatura.t_numerariosnumerario.asstring = 'EXP' ))
      then begin
        if f_fatura.t_numerarioscontabilizado.asstring = 'SIM'
         then begin
           if f_fatura.t_numerariosnumerario.asstring = 'HONO'
            then begin
              hono_data := f_fatura.t_numerariosdata_registro.asstring;
              hono_cc   := f_fatura.t_numerariosconta_corrente.asinteger;
              hono_cm   := f_fatura.t_numerarioscodigo_mov.asinteger;
              hono_ct   := f_fatura.t_numerarioscontabilizado.asstring;
              hono_vreg := f_fatura.t_numerariosvalor_registrado.asfloat;
              hono_vcon := f_fatura.t_numerariosvalor_contabilizado.asfloat;
            end;

           if f_fatura.t_numerariosnumerario.asstring = 'ISS'
            then begin
              iss_data := f_fatura.t_numerariosdata_registro.asstring;
              iss_cc   := f_fatura.t_numerariosconta_corrente.asinteger;
              iss_cm   := f_fatura.t_numerarioscodigo_mov.asinteger;
              iss_ct   := f_fatura.t_numerarioscontabilizado.asstring;
              iss_vreg := f_fatura.t_numerariosvalor_registrado.asfloat;
              iss_vcon := f_fatura.t_numerariosvalor_contabilizado.asfloat;
            end;

           if f_fatura.t_numerariosnumerario.asstring = 'CPMF'
            then begin
              cpmf_data := f_fatura.t_numerariosdata_registro.asstring;
              cpmf_cc   := f_fatura.t_numerariosconta_corrente.asinteger;
              cpmf_cm   := f_fatura.t_numerarioscodigo_mov.asinteger;
              cpmf_ct   := f_fatura.t_numerarioscontabilizado.asstring;
            end;

           if f_fatura.t_numerariosnumerario.asstring = 'EXP'
            then begin
              taxe_data := f_fatura.t_numerariosdata_registro.asstring;
              taxe_cc   := f_fatura.t_numerariosconta_corrente.asinteger;
              taxe_cm   := f_fatura.t_numerarioscodigo_mov.asinteger;
              taxe_ct   := f_fatura.t_numerarioscontabilizado.asstring;
              taxe_vreg := f_fatura.t_numerariosvalor_registrado.asfloat;
              taxe_vcon := f_fatura.t_numerariosvalor_contabilizado.asfloat;
            end;
         end;

        f_fatura.t_numerarios.delete;
        f_fatura.t_numerarios.first;
     end
     else f_fatura.t_numerarios.next;
   end;

  totalcred();
  totalnum();
end;

procedure versalario_tx();
begin
  with f_fatura do
   begin
     {verificar a data de referencia}
     qdataref := '';

     if trim(q_parafatData_Referencia_SM_TX.asstring) = 'Abertura do Processo'
      then qdataref := t_processosdata.asstring;

     if (trim(q_parafatData_Referencia_SM_TX.asstring) = 'Registro da DI')
      then begin
        if (not t_processosDT_REGISTRO_DI.IsNull)
         then qdataref := copy(t_processosDT_REGISTRO_DI.asstring,1,2) + '/' + copy(t_processosDT_REGISTRO_DI.asstring,3,2) + '/' + copy(t_processosDT_REGISTRO_DI.asstring,5,4)
         else begin
           qdataref := '';
           showmessage(v_usuario + ', a data de Registro deste Processo encontra-se vazia. É necessária para o faturamento deste tipo de Processo.');
         end;
      end;

     if trim(q_parafatData_Referencia_SM_TX.asstring) = 'Desembaraço'
      then begin
        if (not t_processosDT_DESEMBARACO.IsNull)
         then qdataref := t_processosDT_DESEMBARACO.asstring
         else begin
           qdataref := '';
           showmessage(v_usuario+', a data de Desembaraço deste Processo encontra-se vazia. É necessária para o faturamento deste tipo de Processo.');
         end;
      end;

     if trim(q_parafatData_Referencia_SM_TX.asstring) = 'Chegada da Carga'
      then begin
        if (not t_conhecimentoData_Chegada_URF_CHEG.IsNull)
         then qdataref := t_conhecimentoData_Chegada_URF_CHEG.asstring
         else begin
           qdataref := '';
           showmessage(v_usuario+', a data de Desembaraço deste Processo encontra-se vazia. É necessária para o faturamento deste tipo de Processo.');
         end;
      end;

     qsal := 0;

     if qdataref <> ''
      then begin
        t_sal.last;

        while not t_sal.bof do
         begin
           if t_saldata_vigencia.asdatetime <= strtodate(qdataref)
            then begin
              qsal := t_salvalor.asfloat;
              t_sal.first;
            end
            else t_sal.MoveBy(-1);
         end;
      end
      else begin
        showmessage(v_usuario+', não foram encontradas datas de referência será calculado com base no último Salário Mínimo Cadastrado.');
        t_sal.last;
        qsal := t_salvalor.asfloat;
      end;
   end;
end;

procedure Tf_fatura.me_nossarefKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13)
   then b_observa.setfocus;
end;

procedure Tf_fatura.FormClose(Sender: TObject; var Action: TCloseAction);
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

  action   := cafree;
  f_fatura := nil;
  f_mscomex.processos2.enabled := true;
end;

procedure Tf_fatura.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_fatura.b_excluiprocClick(Sender: TObject);
begin
  if messagedlg('Confirma exclusão deste crédito?',mtconfirmation,[mbno,mbyes],0)= mryes
   then begin
     logusu('P','Excluiu crédito: '+t_creditoscredito.asstring +' valor: '+floattostr(t_creditosvalor.asfloat) + ' no processo: '+t_processoscodigo.asstring);
     t_creditos.delete;
     totalcred();
     messagedlg('Crédito Excluído!',mtcustom,[mbok],0);
   end;
end;

procedure Tf_fatura.BitBtn4Click(Sender: TObject);
begin
  if messagedlg('Confirma exclusão deste numerário?',mtconfirmation,[mbno,mbyes],0)= mryes
   then begin
     logusu('P','Excluiu débito: '+T_numerariosNumerario.asstring +' valor: '+floattostr(T_numerariosValor_Registrado.asfloat) + ' no processo: '+t_processoscodigo.asstring);
     t_numerarios.delete;
     totalnum();
     messagedlg('Numerário Excluído!',mtcustom,[mbok],0);
   end;
end;

procedure Tf_fatura.b_novodebClick(Sender: TObject);
begin
  T_numerarios.append;
  T_numerariosData_Previsao.asdatetime    := date();
  T_numerariosData_Registro.asdatetime    := date();
  T_numerariosusuario_previsao.asstring   := v_usuario;
  T_numerariosusuario_financeiro.asstring := v_usuario;

  dbedit3.enabled := true;
  dblcdeb.enabled := true;
  dbedit4.enabled := true;
  bitbtn4.Enabled := true;
end;

procedure Tf_fatura.b_novocreClick(Sender: TObject);
begin
  t_creditos.append;
  t_creditosdata_credito.asdatetime := date();
  
  dbedit1.enabled  := true;
  dblccred.enabled := true;
  dbedit2.enabled  := true;
  b_excluiproc.Enabled := true;
end;

procedure Tf_fatura.T_creditosAfterOpen(DataSet: TDataSet);
begin
  totalcred();
end;

procedure Tf_fatura.T_numerariosAfterOpen(DataSet: TDataSet);
begin
  try
    totalnum();
    logusu('A','Acessou faturamento do processo: '+t_processoscodigo.asstring);
  except
    On E : Exception do
     begin
       T_numerariosAfterOpen(t_numerarios);
     end;
  end;
end;

procedure Tf_fatura.b_profatClick(Sender: TObject);
begin
  try
    if b_profat.tag = 0
     then begin
       if messagedlg(v_usuario+', Confirma Faturamento deste Processo',mtconfirmation,[mbno,mbyes],0)= mryes
        then begin
          t_processos.edit;
          t_processosFaturado.asinteger := 1;
          t_processos.post;

          totalcred();
          totalnum();

          b_profat.caption  := 'Cancela Faturamento';
          b_profat.tag      := 1;
          logusu('P','Faturou processo:'+t_processoscodigo.asstring);

          if not semmsg
           then messagedlg(v_usuario+', Processo Faturado!',mtcustom,[mbok],0);
        end;
     end
     else begin
       if messagedlg(v_usuario+', Cancela Faturamento deste Processo',mtconfirmation,[mbno,mbyes],0)= mryes
        then begin
          t_processos.edit;
          t_processosFaturado.asinteger := 0;
          t_processos.post;

          b_profat.tag := 0;
          b_profat.caption := 'Confirma Faturamento';
          b_profat.tag := 0;

          logusu('P','Cancelou Faturamento Processo:' + t_processoscodigo.asstring);
          messagedlg(v_usuario+', Cancelado Faturamento deste Processo!',mtcustom,[mbok],0);
        end;
     end;
  except
    On E : Exception do
     begin
       b_profatClick(f_fatura);
     end;
  end;
end;

procedure Tf_fatura.p_honoExit(Sender: TObject);
begin
  p_hono.Visible := false;
end;

procedure Tf_fatura.b_canchonoClick(Sender: TObject);
begin
  p_hono.Visible := false;
end;

procedure Tf_fatura.b_calculoClick(Sender: TObject);
begin
  if (T_importadoresCGC_CPF.AsString = '0809110200') {ODEBRECHT}
   then if DetalheAdiantamentoNaoPreenchido
         then begin
           showmessage(v_usuario+', os detalhes dos adiantamentos obrigatoriamente deverão estar informados para esse importador.');
           Exit;
         end;

  fat_ccp:=false;

  if messagedlg('Calcula CCP - CSLL/COFINS/PIS?',mtconfirmation,[mbno,mbyes],0)= mrYes
   then fat_ccp := true;

  {calcular _uss}
  qtaxa := 1;

  if t_proconv.FindKey([t_processosempresa.asstring,t_processosfilial.asstring,t_processoscodigo.asstring,'220'])
   then qtaxa := t_proconvTaxa_conversao.asfloat
   else showmessage(v_usuario+', não foram encontradas Taxas de Conversão. Serão utilizados os valores em Reais.');

  qfob := t_processosvalor_fob.asfloat;
  qcif := t_processosvalor_cif.asfloat;

  qfob_uss := (qfob/qtaxa);
  qcif_uss := (qcif/qtaxa);

  qfobc := t_processosvalor_fobc.asfloat;
  qcifc := t_processosvalor_cifc.asfloat;

  qfobc_uss := (qfobc/qtaxa);
  qcifc_uss := (qcifc/qtaxa);

  me_dta1.text := '';

  if t_conhecimentotipomanifesto.asstring = '3'
   then me_dta1.text := t_conhecimentonumeromanifesto.asstring;

  p_hono.left   := 108;
  p_hono.top    := 100;
  p_hono.height := 205;
  p_hono.width  := 613;

  if t_processosnr_declaracao_impc.asstring = ''
   then gb_di2.enabled := false
   else gb_di2.enabled := true;

  p_hono.Visible := true;
  b_confhono.setfocus;
end;

procedure Tf_fatura.b_confhonoClick(Sender: TObject);
var
  achouparam : boolean;
  qvalor  : real;
  qvalorc : real;
  qhono   : real;
  qhonoc  : real;
  qdi, di : integer;
begin
  try
    qdi := 1;

    if t_processosnr_declaracao_impc.asstring <> ''
     then qdi := 2 ;

    if t_processos.state = dsedit
     then begin
       {3700,7442304}
       t_processos.post;
     end;

    {calcular _uss}
    qtaxa := 1;

    if t_proconv.FindKey([t_processosempresa.asstring,t_processosfilial.asstring,t_processoscodigo.asstring,'220'])
     then begin
       qtaxa := t_proconvTaxa_conversao.asfloat;
     end
     else begin
       showmessage(v_usuario+', não foram encontradas Taxas de Conversão. Serão utilizados os valores em Reais.');
     end;

    qfob := t_processosvalor_fob.asfloat;
    qcif := t_processosvalor_cif.asfloat;

    qfob_uss := (qfob/qtaxa);
    qcif_uss := (qcif/qtaxa);

    qfobc := t_processosvalor_fobc.asfloat;
    qcifc := t_processosvalor_cifc.asfloat;

    qfobc_uss := (qfobc/qtaxa);
    qcifc_uss := (qcifc/qtaxa);

    p_hono.Visible := false;
    achouparam     := false;
    q_parafat.first;

    qvalorc  := 0;
    qhonoc   :=  0;
    qmemoria :='';

    if qdi > 1
     then begin
       while not q_parafat.eof do
        begin
          if q_parafattipo_processo.asstring = t_processostipo.asstring
           then begin
             if (not q_parafatTipo_Declaracao.IsNull)
              then begin
                while (q_parafattipo_processo.asstring = t_processostipo.asstring) and
                      (q_parafatTipo_Declaracao.AsString <> T_processosTipo_Declaracao.AsString) and
                      (not q_parafat.Eof)
                 do begin
                   q_parafat.next;

                   if q_parafat.Eof
                    then Exit;
                 end;

                if q_parafattipo_processo.asstring <> t_processostipo.asstring
                 then Exit;
              end;

             if trim(q_parafatFaixa_Real_Dolar.asstring) = 'Dolar'
              then begin
                if q_parafatbase_faturamento.asstring = 'FOB'
                 then qvalorc := qfobc_uss;

                if q_parafatbase_faturamento.asstring = 'CIF'
                 then qvalorc := qcifc_uss;

                qmemoria := qmemoria+'( Base '+q_parafatbase_faturamento.asstring+' faturamento em DOLAR )'+' = '+floattostrf(qvalorc, fffixed,15,2);
              end
              else begin {real}
                if q_parafatbase_faturamento.asstring = 'FOB'
                 then qvalorc := qfobc;

                if q_parafatbase_faturamento.asstring = 'CIF'
                 then qvalorc := qcifc;

                qmemoria := qmemoria+'( Base '+q_parafatbase_faturamento.asstring+' faturamento em REAIS )'+' = '+floattostrf(qvalorc, fffixed,15,2);
              end;

             {é por percentual e verifica as faixas e valores mínimos e máximos}
             if q_parafatpercentual.asfloat > 0
              then begin
                {se está dentro da faixa}
                if ((q_parafatfaixa_inicial.asfloat <= qvalorc ) and
                    (q_parafatfaixa_final.asfloat   >= qvalorc ))
                 then begin
                   if achouparam = true
                    then messagedlg('Existe mais de um parâmetro de faturamento este processo! este cálculo efetuará com base no último parâmetro.',mtcustom,[mbok],0);

                   qhonoc   := (qvalorc*(q_parafatpercentual.asfloat/100));
                   qmemoria := qmemoria+chr(13)+'(faixa percentual de '+floattostrf(q_parafatpercentual.asfloat, fffixed,15,2)+'%,';
                   qmemoria := qmemoria+' valor mínimo='+floattostrf(q_parafatvalor_minimo.asfloat, fffixed,15,2);
                   qmemoria := qmemoria+' e valor máximo='+floattostrf(q_parafatvalor_maximo.asfloat, fffixed,15,2)+')';
                   {verifica os tetos mínimos e máximos}

                   if q_parafatvalor_minimo.asfloat > qhonoc
                    then qhonoc := q_parafatvalor_minimo.asfloat;

                   if q_parafatvalor_maximo.asfloat < qhonoc
                    then qhonoc := q_parafatvalor_maximo.asfloat;

                   qmemoria := qmemoria + ' = ' + floattostrf(qhonoc, fffixed,15,2);
                 end;
              end;
           end;

          q_parafat.next;
        end;
     end;

    q_parafat.first;
    qvalor := 0;

    while ((not q_parafat.eof) and (not achouparam)) do
     begin
       if q_parafattipo_processo.asstring = t_processostipo.asstring
        then begin
          if (not q_parafatTipo_Declaracao.IsNull)
           then begin
             while (q_parafattipo_processo.asstring = t_processostipo.asstring) and
                   (q_parafatTipo_Declaracao.AsString <> T_processosTipo_Declaracao.AsString) and
                   (not q_parafat.Eof)
              do begin
                q_parafat.next;

                if q_parafat.Eof
                 then Exit;
              end;

             if q_parafattipo_processo.asstring <> t_processostipo.asstring
              then Exit;
           end;

          apagachono();

          if trim(q_parafatFaixa_Real_Dolar.asstring) = 'Dolar'
           then begin
             if q_parafatbase_faturamento.asstring = 'FOB'
              then begin
                qvalor := qfob_uss;

                if qdi > 1
                 then qvalorc := qfobc_uss;
              end;

             if q_parafatbase_faturamento.asstring = 'CIF'
              then begin
                qvalor := qcif_uss;

                if qdi > 1
                 then qvalorc := qcifc_uss;
              end;

             qmemoria := qmemoria+'( Base '+q_parafatbase_faturamento.asstring+' faturamento em DOLAR )'+' = '+floattostrf(qvalor, fffixed,15,2);
           end
           else begin {real}
             if q_parafatbase_faturamento.asstring = 'FOB'
              then begin
                qvalor := qfob;

                if qdi > 1
                 then qvalorc := qfobc;
              end;

             if q_parafatbase_faturamento.asstring = 'CIF'
              then begin
                qvalor := qcif;

                if qdi > 1
                 then qvalorc := qcifc;
              end;

             qmemoria := qmemoria+'( Base '+q_parafatbase_faturamento.asstring+' faturamento em REAIS )'+' = '+floattostrf(qvalor, fffixed,15,2);
           end;

          {é pelo valor fixo}
          if (q_parafatvalor_fixo.asfloat > 0) or (q_parafatvalor_fixoc.asfloat > 0)
           then begin
             if achouparam = true
              then messagedlg('Existe mais de um parâmetro de faturamento este processo! este cálculo efetuará com base no último parâmetro.',mtcustom,[mbok],0);

             qvali  := 0;
             qvdta1 := 0;

             if q_parafatE_salario_Minimo_TX.asstring = 'NÃO'
              then begin
                qvali  := (q_parafatvalor_li.asfloat*t_processosquantidade_li.asfloat);

                if me_dta1.text <> ''
                 then qvdta1 := q_parafatvalor_dta1.asfloat;
              end
              else begin
                versalario_tx();
                qvali := (qsal*q_parafatqtd_sm_li.asfloat)*t_processosquantidade_li.asfloat;

                if me_dta1.text <> ''
                 then qvdta1 := (qsal*q_parafatqtd_sm_dta1.asfloat);
              end;

             if (qdi = 1)
              then qhono := (q_parafatvalor_fixo.asfloat)+qvali;

             if ((T_processosTipo_Declaracao.asstring = '12') and (qdi= 2))
              then begin
                qhono := (q_parafatvalor_fixo.asfloat+q_parafatvalor_fixoc.asfloat)+qvali;

                qmemoria := qmemoria+'( Honorários Valor Fixo, 1ª DI = '+floattostrf(q_parafatvalor_fixo.asfloat, fffixed,15,2);
                qmemoria := qmemoria+', 2ª DI = '+floattostrf(q_parafatvalor_fixoc.asfloat, fffixed,15,2);
              end
              else begin
                if ((T_processosTipo_Declaracao.asstring = '01') and (qdi= 1))
                 then begin
                   qhono    := (q_parafatvalor_fixoc.asfloat)+qvali;
                   qmemoria := qmemoria+'( Honorários Valor Fixo, DI = '+floattostrf(q_parafatvalor_fixoc.asfloat, fffixed,15,2);
                 end;

                if ((T_processosTipo_Declaracao.asstring = '05') and (qdi= 1))
                 then begin
                   qmemoria := qmemoria+'( Honorários Valor Fixo, DI = '+floattostrf(q_parafatvalor_fixo.asfloat, fffixed,15,2);
                   qhono := (q_parafatvalor_fixo.asfloat)+qvali;
                 end;
              end;

             if qvali > 0
              then qmemoria := qmemoria+', Valor LI = '+floattostrf(qvali, fffixed,15,2);

             if qvdta1 > 0
              then qmemoria := qmemoria+', Valor DTA = '+floattostrf(qvdta1, fffixed,15,2);

             qhono    := qhono    + qvdta1;
             qmemoria := qmemoria + ' ) = '+floattostrf(qhono, fffixed,15,2);

             {Se importador for TRANSOCEAN}
             if (t_processosimportador.asstring = '2') and not(temIRR) and not(temCSLL) and
               ((T_processosTipo.asstring       = 'BT') or (T_processosTipo.asstring = '8'))
              then begin
                if not(temIRR)
                 then begin
                   T_numerarios.append;
                   T_numerariosNumerario.asstring              := 'IRR';
                   T_numerariosusuario_previsao.asstring       := v_usuario;
                   T_numerariosUsuario_Financeiro.asstring     := v_usuario;
                   T_numerariosprevisao_solicitada.asstring    := 'SIM';
                   T_numerariosok_previsao_financeiro.asstring := 'SIM';
                   T_numerariosData_Registro.asdatetime        := date();
                   T_numerariosData_Previsao.asdatetime        := T_numerariosData_Registro.asdatetime;
                   T_numerariosvalor_registrado.asfloat        := 3.31;
                   T_numerariosvalor_previsao.asfloat          := T_numerariosvalor_registrado.asfloat;
                   T_numerarios.post;
                 end;

                if not(temCSLL)
                 then begin
                   T_numerarios.append;
                   T_numerariosNumerario.asstring              := 'CCLL';
                   T_numerariosusuario_previsao.asstring       := v_usuario;
                   T_numerariosUsuario_Financeiro.asstring     := v_usuario;
                   T_numerariosprevisao_solicitada.asstring    := 'SIM';
                   T_numerariosok_previsao_financeiro.asstring := 'SIM';
                   T_numerariosData_Registro.asdatetime        := date();
                   T_numerariosData_Previsao.asdatetime        := T_numerariosData_Registro.asdatetime;
                   T_numerariosvalor_registrado.asfloat        := 10.25;
                   T_numerariosvalor_previsao.asfloat          := T_numerariosvalor_registrado.asfloat;
                   T_numerarios.post;
                 end;  
              end;

             T_numerarios.append;
             T_numerariosNumerario.asstring          := 'HONO';
             T_numerariosUsuario_Financeiro.asstring := v_usuario;
             T_numerariosData_Registro.asdatetime    := date();
             T_numerariosData_Previsao.asdatetime    := T_numerariosData_Registro.asdatetime;

             if hono_ct = 'NÃO'
              then begin
                T_numerariosValor_Registrado.asfloat := strtofloat(floattostrf(qhono,fffixed,10,2));

                if fat_ccp
                 then T_numerariosValor_contabilizado.asfloat := (strtofloat(floattostrf(qhono,fffixed,10,2))-strtofloat(floattostrf(((qhono+(qhono*0.05))*0.015),fffixed,10,2)))-strtofloat(floattostrf(((qhono+(qhono*0.05))*0.0465),fffixed,10,2))
                 else T_numerariosValor_contabilizado.asfloat := (strtofloat(floattostrf(qhono,fffixed,10,2))-strtofloat(floattostrf(((qhono+(qhono*0.05))*0.015),fffixed,10,2)));
              end
              else begin
                T_numerariosData_Registro.asstring      := hono_data;
                T_numerariosValor_Registrado.asfloat    := hono_vreg;
                T_numerariosValor_contabilizado.asfloat := hono_vcon;
              end;

             t_numerariosconta_corrente.asinteger := hono_cc;
             t_numerarioscodigo_mov.asinteger     := hono_cm;
             t_numerarioscontabilizado.asstring   := hono_ct;
             t_numerarios.post;

             vobstaxas := '';

             if (qvali<>0) or (qvdta1<>0)
              then begin
                vobstaxas := chr(13)+'Detalhes Faturamento:'+chr(13)+'- Honorários ('+floattostrf(qhono-(qvali+qvdta1),fffixed,10,2)+')';
                if (qvali<>0) then vobstaxas := vobstaxas+chr(13)+'- LI ('+floattostr(t_processosquantidade_li.asfloat)+') = ('+floattostrf(qvali,fffixed,10,2)+')';
                if (qvdta1<>0) then vobstaxas := vobstaxas+chr(13)+'- DTA1 ('+floattostrf(qvdta1,fffixed,10,2)+')';
              end;

             {se fatura iss}
             if (t_importadoresfatura_iss.asinteger = 1)
              then begin
                T_numerarios.append;
                T_numerariosNumerario.asstring := 'ISS';
                T_numerariosUsuario_Financeiro.asstring := v_usuario;
                T_numerariosData_Registro.asdatetime := date();
                T_numerariosData_Previsao.asdatetime := T_numerariosData_Registro.asdatetime;

                if iss_ct = 'NÃO'
                 then begin
                   T_numerariosValor_Registrado.asfloat    := strtofloat(floattostrf((qhono*0.05),fffixed,10,2));
                   T_numerariosValor_Contabilizado.asfloat := strtofloat(floattostrf((qhono*0.05),fffixed,10,2));
                 end
                 else begin
                   T_numerariosData_Registro.asstring      := iss_data;
                   T_numerariosValor_Registrado.asfloat    := iss_vreg;
                   T_numerariosValor_Contabilizado.asfloat := iss_vcon;
                 end;

                t_numerariosconta_corrente.asinteger := iss_cc;
                t_numerarioscodigo_mov.asinteger     := iss_cm;
                t_numerarioscontabilizado.asstring   := iss_ct;
                t_numerarios.post;
              end;

             if qcpmf > 0
              then begin
                T_numerarios.append;
                T_numerariosNumerario.asstring          := 'CPMF';
                T_numerariosUsuario_Financeiro.asstring := v_usuario;
                T_numerariosData_Registro.asdatetime    := date();
                T_numerariosData_Previsao.asdatetime    := T_numerariosData_Registro.asdatetime;
                T_numerariosValor_Registrado.asfloat    := qcpmf;
                T_numerariosValor_contabilizado.asfloat := qcpmf;
                T_numerariosconta_corrente.asinteger    := cpmf_cc;
                T_numerarioscodigo_mov.asinteger        := cpmf_cm;
                T_numerarioscontabilizado.asstring      := cpmf_ct;
                T_numerarios.post;
              end;

             if qcpmf2 > 0
              then begin
                f_fatura.t_numerarios.first;

                while not f_fatura.t_numerarios.eof do
                 begin
                   if ((f_fatura.t_numerariosnumerario.asstring = 'CPM2') and (f_fatura.t_numerarioscontabilizado.asstring = 'NÃO'))
                    then begin
                      f_fatura.t_numerarios.delete;
                    end;

                   f_fatura.t_numerarios.next;
                 end;

                T_numerarios.append;
                T_numerariosNumerario.asstring          := 'CPM2';
                T_numerariosUsuario_Financeiro.asstring := v_usuario;
                T_numerariosData_Registro.asdatetime    := date();
                T_numerariosData_Previsao.asdatetime    := T_numerariosData_Registro.asdatetime;
                T_numerariosValor_Registrado.asfloat    := qcpmf2;
                T_numerariosValor_contabilizado.asfloat := qcpmf2;
                T_numerarios.post;
              end;

             if ((q_parafatvalor_taxaexpediente.asfloat > 0) or (q_parafatQTD_SM_TAXAEXP.asfloat > 0))
              then begin
                T_numerarios.append;
                T_numerariosNumerario.asstring          := 'EXP';
                T_numerariosUsuario_Financeiro.asstring := v_usuario;
                T_numerariosData_Registro.asdatetime    := date();
                T_numerariosData_Previsao.asdatetime    := T_numerariosData_Registro.asdatetime;

                if taxe_ct = 'NÃO'
                 then begin
                   if (q_parafatQTD_SM_TAXAEXP.asfloat > 0)
                    then begin
                      versalario_tx();
                      T_numerariosValor_Registrado.asfloat    := (qsal*q_parafatQTD_SM_TAXAEXP.asfloat);
                      T_numerariosValor_Contabilizado.asfloat := (qsal*q_parafatQTD_SM_TAXAEXP.asfloat);
                    end
                    else begin
                      T_numerariosValor_Registrado.asfloat    := q_parafatvalor_taxaexpediente.asfloat;
                      T_numerariosValor_Contabilizado.asfloat := q_parafatvalor_taxaexpediente.asfloat;
                    end;
                 end
                 else begin
                   T_numerariosData_Registro.asstring      := taxe_data;
                   T_numerariosValor_Registrado.asfloat    := taxe_vreg;
                   T_numerariosValor_Contabilizado.asfloat := taxe_vcon;
                 end;

                t_numerariosconta_corrente.asinteger := taxe_cc;
                t_numerarioscodigo_mov.asinteger     := taxe_cm;
                t_numerarioscontabilizado.asstring   := taxe_ct;
                t_numerarios.post;
              end
              else begin
                {aqui joga exp contabilizado}
                if taxe_ct <> 'NÃO'
                 then begin
                   T_numerarios.append;
                   T_numerariosNumerario.asstring          := 'EXP';
                   T_numerariosUsuario_Financeiro.asstring := v_usuario;
                   T_numerariosData_Registro.asstring      := taxe_data;
                   T_numerariosData_Previsao.asdatetime    := T_numerariosData_Registro.asdatetime;
                   T_numerariosValor_Registrado.asfloat    := taxe_vreg;
                   T_numerariosValor_Contabilizado.asfloat := taxe_vcon;
                   T_numerariosconta_corrente.asinteger    := taxe_cc;
                   T_numerarioscodigo_mov.asinteger        := taxe_cm;
                   T_numerarioscontabilizado.asstring      := taxe_ct;
                   T_numerarios.post;
                 end;
              end;

             if t_creditos.bof
              then t_creditos.edit
              else t_creditos.append;

             T_creditosCredito.asstring := 'IRRF';
             T_creditosData_Credito.asdatetime := date();

             if irrf_ct = 'NÃO'
              then T_creditosValor.asfloat := strtofloat(floattostrf(((qhono+(qhono*0.05))*0.015),fffixed,10,2))
              else T_creditosValor.asfloat := irrf_vreg;

             if hono_ct = 'NÃO'
              then T_creditoscontabilizado.asstring := 'NÃO'
              else T_creditoscontabilizado.asstring := 'SIM';

             t_creditos.post;

             {é SEADRILL}
             if (t_processosimportador.asstring = '226')
              then begin
                if (fat_ccp) and (CCP_ct <> 'NÃO')
                 then begin
                   if t_creditos.bof
                    then t_creditos.edit
                    else t_creditos.append;

                   T_creditosCredito.asstring        := 'CCP';
                   T_creditosData_Credito.asdatetime := date();

                   if CCP_ct = 'NÃO'
                    then T_creditosValor.asfloat := strtofloat(floattostrf(((qhono+(qhono*0.05))*0.0465),fffixed,10,2))
                    else T_creditosValor.asfloat := CCP_vreg;

                   if hono_ct = 'NÃO'
                    then T_creditoscontabilizado.asstring := 'NÃO'
                    else T_creditoscontabilizado.asstring := 'SIM';

                   t_creditos.post;
                 end;

                if (fat_ccp) AND (CCP_ct = 'NÃO')
                 then begin
                   {COFINS SEADRILL}
                   if t_creditos.bof
                    then t_creditos.edit
                    else t_creditos.append;

                   T_creditosCredito.asstring        := 'COFI';
                   T_creditosData_Credito.asdatetime := date();

                   if COFI_ct = 'NÃO'
                    then T_creditosValor.asfloat := strtofloat(floattostrf(((qhono+(qhono*0.05))*0.03),fffixed,10,2))
                    else T_creditosValor.asfloat := COFI_vreg;

                   if hono_ct = 'NÃO'
                    then T_creditoscontabilizado.asstring := 'NÃO'
                    else T_creditoscontabilizado.asstring := 'SIM';

                   t_creditos.post;

                   {PIS SEADRILL}
                   if t_creditos.bof
                    then t_creditos.edit
                    else t_creditos.append;

                   T_creditosCredito.asstring        := 'PIS';
                   T_creditosData_Credito.asdatetime := date();

                   if PIS_ct = 'NÃO'
                    then T_creditosValor.asfloat := strtofloat(floattostrf(((qhono+(qhono*0.05))*0.0065),fffixed,10,2))
                    else T_creditosValor.asfloat := PIS_vreg;

                   if hono_ct = 'NÃO'
                    then T_creditoscontabilizado.asstring := 'NÃO'
                    else T_creditoscontabilizado.asstring := 'SIM';

                   t_creditos.post;

                   {CSLL SEADRILL}
                   if t_creditos.bof
                    then t_creditos.edit
                    else t_creditos.append;

                   T_creditosCredito.asstring        := 'CSLL';
                   T_creditosData_Credito.asdatetime := date();

                   if CSLL_ct = 'NÃO'
                    then T_creditosValor.asfloat := strtofloat(floattostrf(((qhono+(qhono*0.05))*0.01),fffixed,10,2))
                    else T_creditosValor.asfloat := CSLL_vreg;

                   if hono_ct = 'NÃO'
                    then T_creditoscontabilizado.asstring := 'NÃO'
                    else T_creditoscontabilizado.asstring := 'SIM';

                   t_creditos.post;
                 end;
              end
              else begin {NAO É SEADRILL}
                if fat_ccp
                 then begin
                   if t_creditos.bof
                    then t_creditos.edit
                    else t_creditos.append;

                   T_creditosCredito.asstring        := 'CCP';
                   T_creditosData_Credito.asdatetime := date();

                   if CCP_ct = 'NÃO'
                    then T_creditosValor.asfloat := strtofloat(floattostrf(((qhono+(qhono*0.05))*0.0465),fffixed,10,2))
                    else T_creditosValor.asfloat := CCP_vreg;

                   if hono_ct = 'NÃO'
                    then T_creditoscontabilizado.asstring := 'NÃO'
                    else T_creditoscontabilizado.asstring := 'SIM';

                   t_creditos.post;
                 end;
              end;

             achouparam := true;
           end
           else begin
             {é por percentual e verifica as faixas e valores mínimos e máximos}
             if q_parafatpercentual.asfloat > 0
              then begin
               {se está dentro da faixa}
               if ((q_parafatfaixa_inicial.asfloat <= qvalor ) and
                   (q_parafatfaixa_final.asfloat   >= qvalor ))
                then begin
                  if achouparam = true
                   then messagedlg('Existe mais de um parâmetro de faturamento este processo! este cálculo efetuará com base no último parâmetro.',mtcustom,[mbok],0);

                  if q_parafatE_salario_Minimo.asstring = 'NÃO'
                   then begin
                     qhono := (qvalor*(q_parafatpercentual.asfloat/100));

                     {verifica os tetos mínimos e máximos}
                     qmemoria := qmemoria+chr(13)+'(Faixa percentual de '+floattostrf(q_parafatpercentual.asfloat, fffixed,15,2)+'% = '+floattostrf(qhono, fffixed,15,2)+' ';
                     qmemoria := qmemoria+' valor mínimo='+floattostrf(q_parafatvalor_minimo.asfloat, fffixed,15,2);
                     qmemoria := qmemoria+' e valor máximo='+floattostrf(q_parafatvalor_maximo.asfloat, fffixed,15,2)+')';

                     if q_parafatvalor_minimo.asfloat > qhono
                      then qhono := q_parafatvalor_minimo.asfloat;

                     if q_parafatvalor_maximo.asfloat < qhono
                      then qhono := q_parafatvalor_maximo.asfloat;

                     qmemoria := qmemoria+' = '+floattostrf(qhono, fffixed,15,2);

                     qvali  := 0;
                     qvdta1 := 0;

                     if q_parafatE_salario_Minimo_TX.asstring = 'NÃO'
                      then begin
                        qvali  := (q_parafatvalor_li.asfloat*t_processosquantidade_li.asfloat);

                        if me_dta1.text <> ''
                         then qvdta1 := q_parafatvalor_dta1.asfloat;
                      end
                      else begin
                        versalario_tx();
                        qvali := (qsal*q_parafatqtd_sm_li.asfloat)*t_processosquantidade_li.asfloat;

                        if me_dta1.text <> ''
                         then qvdta1 := (qsal*q_parafatqtd_sm_dta1.asfloat);
                      end;

                     if qvali > 0
                      then qmemoria := qmemoria+', Valor LI = '+floattostrf(qvali, fffixed,15,2);

                     if qvdta1 > 0
                      then qmemoria := qmemoria+', Valor DTA = '+floattostrf(qvdta1, fffixed,15,2);

                     qhono := (qhono + qvali + qvdta1);

                     qhono := qhono + qhonoc;

                     qmemoria := qmemoria+') = '+floattostrf(qhono, fffixed,15,2);
                   end
                   else begin  { é por salários mínimos }
                     qhono := (qvalor*(q_parafatpercentual.asfloat/100));

                     {verificar a data de referencia}
                     qdataref := '';

                     if trim(q_parafatData_Referencia_SM.asstring) = 'Abertura do Processo'
                      then qdataref := t_processosdata.asstring;

                     if (trim(q_parafatData_Referencia_SM.asstring) = 'Registro da DI')
                      then begin
                        if (not t_processosDT_REGISTRO_DI.IsNull)
                         then qdataref := copy(t_processosDT_REGISTRO_DI.asstring,1,2)+'/'+copy(t_processosDT_REGISTRO_DI.asstring,3,2)+'/'+copy(t_processosDT_REGISTRO_DI.asstring,5,4)
                         else begin
                           qdataref := '';
                           showmessage(v_usuario+', a data de Registro deste Processo encontra-se vazia. É necessária para o faturamento deste tipo de Processo.');
                         end;
                      end;

                     if trim(q_parafatData_Referencia_SM.asstring) = 'Desembaraço'
                      then begin
                        if (not t_processosDT_DESEMBARACO.IsNull)
                         then qdataref := t_processosDT_DESEMBARACO.asstring
                         else begin
                           qdataref := '';
                           showmessage(v_usuario+', a data de Desembaraço deste Processo encontra-se vazia. É necessária para o faturamento deste tipo de Processo.');
                         end;
                      end;

                     if trim(q_parafatData_Referencia_SM.asstring) = 'Chegada da Carga'
                      then begin
                        if (not t_conhecimentoData_Chegada_URF_CHEG.IsNull)
                         then qdataref := t_conhecimentoData_Chegada_URF_CHEG.asstring
                         else begin
                           qdataref := '';
                           showmessage(v_usuario+', a data de Desembaraço deste Processo encontra-se vazia. É necessária para o faturamento deste tipo de Processo.');
                         end;
                      end;

                     qsal := 0;

                     if qdataref <> ''
                      then begin
                        t_sal.last;

                        while not t_sal.bof do
                         begin
                           if t_saldata_vigencia.asdatetime <= strtodate(qdataref)
                            then begin
                              qsal := t_salvalor.asfloat;
                              t_sal.first;
                            end
                            else t_sal.MoveBy(-1);
                         end;
                      end
                      else begin
                        showmessage(v_usuario+', não foram encontradas datas de referência será calculado com base no último Salário Mínimo Cadastrado.');
                        t_sal.last;
                        qsal := t_salvalor.asfloat;
                      end;

                     qmemoria := qmemoria+chr(13)+'(Faixa percentual de '+floattostrf(q_parafatpercentual.asfloat, fffixed,15,2)+'% = '+floattostrf(qhono, fffixed,15,2)+' ';
                     qmemoria := qmemoria+', por salários mínimos, Salário Mínimo Referencial = '+floattostrf(qsal, fffixed,15,2)+',';
                     qmemoria := qmemoria+chr(13)+'Qtd Salários Mínimos Mínima='+floattostrf(q_parafatQuantidade_Salarios.asfloat, fffixed,15,2);
                     qmemoria := qmemoria+' e Qtd Salários Mínimos Máxima='+floattostrf(q_parafatQuantidade_SalariosMAX.asfloat, fffixed,15,2)+')';

                     {verifica os tetos mínimos e máximos de salarios}
                     if (q_parafatQuantidade_Salarios.asfloat*qsal) > qhono
                      then qhono := (q_parafatQuantidade_Salarios.asfloat*qsal);

                     if (q_parafatQuantidade_SalariosMAX.asfloat*qsal) < qhono
                      then qhono := (q_parafatQuantidade_SalariosMAX.asfloat*qsal);

                     qmemoria := qmemoria+' = '+floattostrf(qhono, fffixed,15,2);

                     qvali  := 0;
                     qvdta1 := 0;

                     if q_parafatE_salario_Minimo_TX.asstring = 'NÃO'
                      then begin
                        qvali  := (q_parafatvalor_li.asfloat*t_processosquantidade_li.asfloat);

                        if me_dta1.text <> ''
                         then qvdta1 := q_parafatvalor_dta1.asfloat;
                      end
                      else begin
                        versalario_tx();
                        qvali := (qsal*q_parafatqtd_sm_li.asfloat)*t_processosquantidade_li.asfloat;

                        if me_dta1.text <>''
                         then qvdta1 := (qsal*q_parafatqtd_sm_dta1.asfloat);
                      end;

                     qhono := qhono + qhonoc;

                     {aqui taxas da observação}
                     vobstaxas := '';

                     if (qvali<>0) or (qvdta1<>0)
                      then begin
                        vobstaxas := chr(13)+'Detalhes Faturamento:'+chr(13)+'- Honorários ('+floattostrf(qhono,fffixed,10,2)+')';

                        if (qvali <> 0)
                         then vobstaxas := vobstaxas+chr(13)+'- LI ('+floattostr(t_processosquantidade_li.asfloat)+') = ('+floattostrf(qvali,fffixed,10,2)+')';

                        if (qvdta1 <> 0)
                         then vobstaxas := vobstaxas+chr(13)+'- DTA1 ('+floattostrf(qvdta1,fffixed,10,2)+')';
                      end;

                     qhono := qhono+qvali+qvdta1;

                     if qvali > 0
                      then qmemoria := qmemoria+' + Valor LI = '+floattostrf(qvali, fffixed,15,2);

                     if qvdta1 > 0
                      then qmemoria := qmemoria+' + Valor DTA = '+floattostrf(qvdta1, fffixed,15,2);

                     qmemoria := qmemoria+' ) = '+floattostrf(qhono, fffixed,15,2);
                   end;

                  T_numerarios.append;
                  T_numerariosNumerario.asstring          := 'HONO';
                  T_numerariosUsuario_Financeiro.asstring := v_usuario;
                  T_numerariosData_Registro.asdatetime    := date();
                  T_numerariosData_Previsao.asdatetime    := T_numerariosData_Registro.asdatetime;

                  if hono_ct = 'NÃO'
                   then begin
                     T_numerariosValor_Registrado.asfloat := strtofloat(floattostrf(qhono,fffixed,10,2));

                     if fat_ccp
                      then T_numerariosValor_contabilizado.asfloat := (strtofloat(floattostrf(qhono,fffixed,10,2))-strtofloat(floattostrf(((qhono+(qhono*0.05))*0.015),fffixed,10,2)))-strtofloat(floattostrf(((qhono+(qhono*0.05))*0.0465),fffixed,10,2))
                      else T_numerariosValor_contabilizado.asfloat := (strtofloat(floattostrf(qhono,fffixed,10,2))-strtofloat(floattostrf(((qhono+(qhono*0.05))*0.015),fffixed,10,2)));
                   end
                   else begin
                     T_numerariosData_Registro.asstring      := hono_data;
                     T_numerariosValor_Registrado.asfloat    := hono_vreg;
                     T_numerariosValor_contabilizado.asfloat := hono_vcon;
                   end;

                  t_numerariosconta_corrente.asinteger := hono_cc;
                  t_numerarioscodigo_mov.asinteger     := hono_cm;
                  t_numerarioscontabilizado.asstring   := hono_ct;
                  t_numerarios.post;

                  {se fatura iss} {Wellington - Ticket 590 - Não gerar ISS para processos da ODEBRECHT}
                  if (t_importadoresfatura_iss.asinteger = 1) and (t_importadoresCodigo.AsString <> '295') and (t_importadoresCodigo.AsString <> '296') and (t_importadoresCodigo.AsString <> '358') 
                   then begin
                     T_numerarios.append;
                     T_numerariosNumerario.asstring          := 'ISS';
                     T_numerariosUsuario_Financeiro.asstring := v_usuario;
                     T_numerariosData_Registro.asdatetime    := date();
                     T_numerariosData_Previsao.asdatetime    := T_numerariosData_Registro.asdatetime;

                     if iss_ct = 'NÃO'
                      then begin
                        T_numerariosValor_Registrado.asfloat    := strtofloat(floattostrf((qhono*0.05),fffixed,10,2));
                        T_numerariosValor_Contabilizado.asfloat := strtofloat(floattostrf((qhono*0.05),fffixed,10,2));
                      end
                      else begin
                        T_numerariosData_Registro.asstring      := iss_data;
                        T_numerariosValor_Registrado.asfloat    := iss_vreg;
                        T_numerariosValor_Contabilizado.asfloat := iss_vcon;
                      end;

                     t_numerariosconta_corrente.asinteger := iss_cc;
                     t_numerarioscodigo_mov.asinteger     := iss_cm;
                     t_numerarioscontabilizado.asstring   := iss_ct;
                     t_numerarios.post;
                   end;

                  if qcpmf > 0
                   then begin
                     T_numerarios.append;
                     T_numerariosNumerario.asstring          := 'CPMF';
                     T_numerariosUsuario_Financeiro.asstring := v_usuario;
                     T_numerariosData_Registro.asdatetime    := date();
                     T_numerariosData_Previsao.asdatetime    := T_numerariosData_Registro.asdatetime;
                     T_numerariosValor_Registrado.asfloat    := qcpmf;
                     T_numerariosValor_contabilizado.asfloat := qcpmf;
                     T_numerariosconta_corrente.asinteger    := cpmf_cc;
                     T_numerarioscodigo_mov.asinteger        := cpmf_cm;
                     T_numerarioscontabilizado.asstring      := cpmf_ct;
                     T_numerarios.post;
                   end;

                  if qcpmf2 > 0
                   then begin
                     f_fatura.t_numerarios.first;

                     while not f_fatura.t_numerarios.eof do
                      begin
                        if ((f_fatura.t_numerariosnumerario.asstring     = 'CPM2') and
                            (f_fatura.t_numerarioscontabilizado.asstring = 'NÃO' ))
                         then begin
                           f_fatura.t_numerarios.delete;
                         end;

                        f_fatura.t_numerarios.next;
                      end;

                     T_numerarios.append;
                     T_numerariosNumerario.asstring          := 'CPM2';
                     T_numerariosUsuario_Financeiro.asstring := v_usuario;
                     T_numerariosData_Registro.asdatetime    := date();
                     T_numerariosData_Previsao.asdatetime    := T_numerariosData_Registro.asdatetime;
                     T_numerariosValor_Registrado.asfloat    := qcpmf2;
                     T_numerariosValor_contabilizado.asfloat := qcpmf2;
                     T_numerarios.post;
                   end;

                  if ((q_parafatvalor_taxaexpediente.asfloat > 0) or (q_parafatQTD_SM_TAXAEXP.asfloat > 0))
                   then begin
                     T_numerarios.append;
                     T_numerariosNumerario.asstring          := 'EXP';
                     T_numerariosUsuario_Financeiro.asstring := v_usuario;
                     T_numerariosData_Registro.asdatetime    := date();
                     T_numerariosData_Previsao.asdatetime    := T_numerariosData_Registro.asdatetime;

                     if taxe_ct = 'NÃO'
                      then begin
                        if (q_parafatQTD_SM_TAXAEXP.asfloat > 0)
                         then begin
                           versalario_tx();
                           T_numerariosValor_Registrado.asfloat    := (qsal*q_parafatQTD_SM_TAXAEXP.asfloat);
                           T_numerariosValor_Contabilizado.asfloat := (qsal*q_parafatQTD_SM_TAXAEXP.asfloat);
                         end
                         else begin
                            T_numerariosValor_Registrado.asfloat    := q_parafatvalor_taxaexpediente.asfloat;
                            T_numerariosValor_Contabilizado.asfloat := q_parafatvalor_taxaexpediente.asfloat;
                         end;
                      end
                      else begin
                        T_numerariosData_Registro.asstring      := taxe_data;
                        T_numerariosValor_Registrado.asfloat    := taxe_vreg;
                        T_numerariosValor_Contabilizado.asfloat := taxe_vcon;
                      end;

                     T_numerariosconta_corrente.asinteger := taxe_cc;
                     T_numerarioscodigo_mov.asinteger     := taxe_cm;
                     T_numerarioscontabilizado.asstring   := taxe_ct;
                     T_numerarios.post;
                   end
                   else begin
                     {aqui joga exp contabilizado}
                     if taxe_ct <> 'NÃO'
                      then begin
                        T_numerarios.append;
                        T_numerariosNumerario.asstring          := 'EXP';
                        T_numerariosUsuario_Financeiro.asstring := v_usuario;
                        T_numerariosData_Registro.asstring      := taxe_data;
                        T_numerariosData_Previsao.asdatetime    := T_numerariosData_Registro.asdatetime;
                        T_numerariosValor_Registrado.asfloat    := taxe_vreg;
                        T_numerariosValor_Contabilizado.asfloat := taxe_vcon;
                        T_numerariosconta_corrente.asinteger    := taxe_cc;
                        T_numerarioscodigo_mov.asinteger        := taxe_cm;
                        T_numerarioscontabilizado.asstring      := taxe_ct;
                        T_numerarios.post;
                      end;
                   end;

                  if t_creditos.bof
                   then t_creditos.edit
                   else t_creditos.append;

                  T_creditosCredito.asstring := 'IRRF';
                  T_creditosData_Credito.asdatetime := date();

                  if irrf_ct = 'NÃO'
                   then begin
                     {Wellington - Ticket 590 - Não gerar ISS para processos da ODEBRECHT}
                     if (t_importadoresCodigo.AsString <> '295') and (t_importadoresCodigo.AsString <> '296') and (t_importadoresCodigo.AsString <> '358') and (t_importadoresCodigo.AsString <> '358')
                      then T_creditosValor.asfloat := strtofloat(floattostrf(((qhono+(qhono*0.05))*0.015),fffixed,10,2))
                      else T_creditosValor.asfloat := strtofloat(floattostrf(((qhono)*0.015),fffixed,10,2));
                   end
                   else T_creditosValor.asfloat := irrf_vreg;

                  if hono_ct = 'NÃO'
                   then T_creditoscontabilizado.asstring := 'NÃO'
                   else T_creditoscontabilizado.asstring := 'SIM';

                  t_creditos.post;

                  {é SEADRILL}
                  if (t_processosimportador.asstring = '226')
                   then begin
                     if (fat_ccp) and (CCP_ct <> 'NÃO')
                      then begin
                        if t_creditos.bof
                         then t_creditos.edit
                         else t_creditos.append;

                        T_creditosCredito.asstring        := 'CCP';
                        T_creditosData_Credito.asdatetime := date();

                        if CCP_ct = 'NÃO'
                         then T_creditosValor.asfloat := strtofloat(floattostrf(((qhono+(qhono*0.05))*0.0465),fffixed,10,2))
                         else T_creditosValor.asfloat := CCP_vreg;

                        if hono_ct = 'NÃO'
                         then T_creditoscontabilizado.asstring := 'NÃO'
                         else T_creditoscontabilizado.asstring := 'SIM';

                        t_creditos.post;
                      end;

                     if (fat_ccp) and (CCP_ct = 'NÃO')
                      then begin
                        {COFINS SEADRILL}
                        if t_creditos.bof
                         then t_creditos.edit
                         else t_creditos.append;

                        T_creditosCredito.asstring        := 'COFI';
                        T_creditosData_Credito.asdatetime := date();

                        if COFI_ct = 'NÃO'
                         then T_creditosValor.asfloat := strtofloat(floattostrf(((qhono+(qhono*0.05))*0.03),fffixed,10,2))
                         else T_creditosValor.asfloat := COFI_vreg;

                        if hono_ct = 'NÃO'
                         then T_creditoscontabilizado.asstring := 'NÃO'
                         else T_creditoscontabilizado.asstring := 'SIM';

                        t_creditos.post;

                        {PIS SEADRILL}
                        if t_creditos.bof
                         then t_creditos.edit
                         else t_creditos.append;

                        T_creditosCredito.asstring        := 'PIS';
                        T_creditosData_Credito.asdatetime := date();

                        if PIS_ct = 'NÃO'
                         then T_creditosValor.asfloat := strtofloat(floattostrf(((qhono+(qhono*0.05))*0.0065),fffixed,10,2))
                         else T_creditosValor.asfloat := PIS_vreg;

                        if hono_ct = 'NÃO'
                         then T_creditoscontabilizado.asstring := 'NÃO'
                         else T_creditoscontabilizado.asstring := 'SIM';

                        t_creditos.post;

                        {CSLL SEADRILL}
                        if t_creditos.bof
                         then t_creditos.edit
                         else t_creditos.append;

                        T_creditosCredito.asstring        := 'CSLL';
                        T_creditosData_Credito.asdatetime := date();

                        if CSLL_ct = 'NÃO'
                         then T_creditosValor.asfloat := strtofloat(floattostrf(((qhono+(qhono*0.05))*0.01),fffixed,10,2))
                         else T_creditosValor.asfloat := CSLL_vreg;

                        if hono_ct = 'NÃO'
                         then T_creditoscontabilizado.asstring := 'NÃO'
                         else T_creditoscontabilizado.asstring := 'SIM';

                        t_creditos.post;
                      end;
                   end
                   else begin {NAO É SEADRILL}
                     if fat_ccp
                      then begin
                        if t_creditos.bof
                         then t_creditos.edit
                         else t_creditos.append;

                        T_creditosCredito.asstring        := 'CCP';
                        T_creditosData_Credito.asdatetime := date();

                        if CCP_ct = 'NÃO'
                         then begin
                           {Wellington - Ticket 590 - Não gerar ISS para processos da ODEBRECHT}
                           if (t_importadoresCodigo.AsString <> '295') and (t_importadoresCodigo.AsString <> '296') and (t_importadoresCodigo.AsString <> '358')
                            then T_creditosValor.asfloat := strtofloat(floattostrf(((qhono+(qhono*0.05))*0.0465),fffixed,10,2))
                            else T_creditosValor.asfloat := strtofloat(floattostrf(((qhono)*0.0465),fffixed,10,2))
                         end  
                         else T_creditosValor.asfloat := CCP_vreg;

                        if hono_ct = 'NÃO'
                         then T_creditoscontabilizado.asstring := 'NÃO'
                         else T_creditoscontabilizado.asstring := 'SIM';

                        t_creditos.post;
                      end;
                   end;

                  achouparam := true;
                end;
             end
             else begin {não é por fixo nem por faixas - por valor de li}
               if achouparam = true
                then messagedlg('Existe mais de um parâmetro de faturamento este processo! este cálculo efetuará com base no último parâmetro.',mtcustom,[mbok],0);

               qhono  := 0;
               qvali  := 0;
               qvdta1 := 0;

               if q_parafatE_salario_Minimo_TX.asstring = 'NÃO'
                then begin
                  qvali  := (q_parafatvalor_li.asfloat*t_processosquantidade_li.asfloat);

                  if me_dta1.text <> ''
                   then qvdta1 := q_parafatvalor_dta1.asfloat;
                end
                else begin
                  versalario_tx();
                  qvali := (qsal*q_parafatqtd_sm_li.asfloat)*t_processosquantidade_li.asfloat;

                  if me_dta1.text <> ''
                   then qvdta1 := (qsal*q_parafatqtd_sm_dta1.asfloat);
                end;

               {aqui taxas da observação}
               vobstaxas := '';

               if (qvali <> 0) or (qvdta1 <> 0)
                then begin
                  vobstaxas := chr(13)+'Detalhes Faturamento:'+chr(13)+'- Honorários ('+floattostrf(qhono,fffixed,10,2)+')';

                  if (qvali <> 0)
                   then vobstaxas := vobstaxas+chr(13)+'- LI ('+floattostr(t_processosquantidade_li.asfloat)+') = ('+floattostrf(qvali,fffixed,10,2)+')';

                  if (qvdta1 <> 0)
                   then vobstaxas := vobstaxas+chr(13)+'- DTA1 ('+floattostrf(qvdta1,fffixed,10,2)+')';
                end;

               qmemoria := qmemoria+'( Honorários = ';

               if qvali > 0
                then qmemoria := qmemoria+' Valor LI = '+floattostrf(qvali, fffixed,15,2);

               if qvdta1 > 0
                then qmemoria := qmemoria+' + Valor DTA = '+floattostrf(qvdta1, fffixed,15,2);

               qhono    := qhono + qvali + qvdta1;
               qmemoria := qmemoria + ' ) = ' + floattostrf(qhono, fffixed,15,2);

               T_numerarios.append;
               T_numerariosNumerario.asstring          := 'HONO';
               T_numerariosUsuario_Financeiro.asstring := v_usuario;
               T_numerariosData_Registro.asdatetime    := date();
               T_numerariosData_Previsao.asdatetime    := T_numerariosData_Registro.asdatetime;

               if hono_ct = 'NÃO'
                then begin
                  T_numerariosValor_Registrado.asfloat := strtofloat(floattostrf(qhono,fffixed,10,2));

                  if fat_ccp
                   then T_numerariosValor_contabilizado.asfloat := (strtofloat(floattostrf(qhono,fffixed,10,2))-strtofloat(floattostrf(((qhono+(qhono*0.05))*0.015),fffixed,10,2)))-strtofloat(floattostrf(((qhono+(qhono*0.05))*0.0465),fffixed,10,2))
                   else T_numerariosValor_contabilizado.asfloat := (strtofloat(floattostrf(qhono,fffixed,10,2))-strtofloat(floattostrf(((qhono+(qhono*0.05))*0.015),fffixed,10,2)));
                end
                else begin
                  T_numerariosValor_Registrado.asfloat    := hono_vreg;
                  T_numerariosValor_contabilizado.asfloat := hono_vcon;
                end;

               t_numerariosconta_corrente.asinteger := hono_cc;
               t_numerarioscodigo_mov.asinteger     := hono_cm;
               t_numerarioscontabilizado.asstring   := hono_ct;
               t_numerarios.post;

               {se fatura iss}
               if (t_importadoresfatura_iss.asinteger = 1)
                then begin
                  T_numerarios.append;
                  T_numerariosNumerario.asstring          := 'ISS';
                  T_numerariosUsuario_Financeiro.asstring := v_usuario;
                  T_numerariosData_Registro.asdatetime    := date();
                  T_numerariosData_Previsao.asdatetime    := T_numerariosData_Registro.asdatetime;

                  if iss_ct = 'NÃO'
                   then begin
                     T_numerariosValor_Registrado.asfloat    := strtofloat(floattostrf((qhono*0.05),fffixed,10,2));
                     T_numerariosValor_Contabilizado.asfloat := strtofloat(floattostrf((qhono*0.05),fffixed,10,2));
                   end
                   else begin
                     T_numerariosValor_Registrado.asfloat    := iss_vreg;
                     T_numerariosValor_Contabilizado.asfloat := iss_vcon;
                   end;

                  t_numerariosconta_corrente.asinteger := iss_cc;
                  t_numerarioscodigo_mov.asinteger     := iss_cm;
                  t_numerarioscontabilizado.asstring   := iss_ct;
                  t_numerarios.post;
                end;

               t_numerarios.append;
               t_numerariosNumerario.asstring          := 'CPMF';
               t_numerariosUsuario_Financeiro.asstring := v_usuario;
               t_numerariosData_Registro.asdatetime    := date();
               t_numerariosData_Previsao.asdatetime    := T_numerariosData_Registro.asdatetime;

               if date() > strtodateTIME('19/03/2001')
                then T_numerariosValor_Registrado.asfloat := ABS(strtofloat(floattostrf(((tnum-qhono-(qhono*0.05))*0.003),fffixed,10,2)))
                else T_numerariosValor_Registrado.asfloat := ABS(strtofloat(floattostrf(((tnum-qhono-(qhono*0.05))*0.0038),fffixed,10,2)));

               T_numerariosValor_contabilizado.asfloat := T_numerariosValor_Registrado.asfloat;
               T_numerariosconta_corrente.asinteger    := cpmf_cc;
               T_numerarioscodigo_mov.asinteger        := cpmf_cm;
               T_numerarioscontabilizado.asstring      := cpmf_ct;
               T_numerarios.post;

               if ((q_parafatvalor_taxaexpediente.asfloat > 0) or (q_parafatQTD_SM_TAXAEXP.asfloat > 0))
                then begin
                  T_numerarios.append;
                  T_numerariosNumerario.asstring          := 'EXP';
                  T_numerariosUsuario_Financeiro.asstring := v_usuario;
                  T_numerariosData_Registro.asdatetime    := date();
                  T_numerariosData_Previsao.asdatetime    := T_numerariosData_Registro.asdatetime;

                  if taxe_ct = 'NÃO'
                   then begin
                     if (q_parafatQTD_SM_TAXAEXP.asfloat > 0)
                      then begin
                        versalario_tx();
                        T_numerariosValor_Registrado.asfloat    := (qsal*q_parafatQTD_SM_TAXAEXP.asfloat);
                        T_numerariosValor_Contabilizado.asfloat := (qsal*q_parafatQTD_SM_TAXAEXP.asfloat);
                      end
                      else begin
                        T_numerariosValor_Registrado.asfloat    := q_parafatvalor_taxaexpediente.asfloat;
                        T_numerariosValor_Contabilizado.asfloat := q_parafatvalor_taxaexpediente.asfloat;
                      end;
                   end
                   else begin
                     T_numerariosValor_Registrado.asfloat    := taxe_vreg;
                     T_numerariosValor_Contabilizado.asfloat := taxe_vcon;
                   end;

                  t_numerariosconta_corrente.asinteger := taxe_cc;
                  t_numerarioscodigo_mov.asinteger     := taxe_cm;
                  t_numerarioscontabilizado.asstring   := taxe_ct;
                  t_numerarios.post;
                end;

               if t_creditos.bof
                then t_creditos.edit
                else t_creditos.append;

               T_creditosCredito.asstring        := 'IRRF';
               T_creditosData_Credito.asdatetime := date();

               if irrf_ct = 'NÃO'
                then T_creditosValor.asfloat := strtofloat(floattostrf(((qhono+(qhono*0.05))*0.015),fffixed,10,2))
                else T_creditosValor.asfloat := irrf_vreg;

               if hono_ct = 'NÃO'
                then T_creditoscontabilizado.asstring := 'NÃO'
                else T_creditoscontabilizado.asstring := 'SIM';

               t_creditos.post;

               {é SEADRILL}
               if (t_processosimportador.asstring = '226')
                then begin
                  if (fat_ccp) and (CCP_ct <> 'NÃO')
                   then begin
                     if t_creditos.bof
                      then t_creditos.edit
                      else t_creditos.append;

                     T_creditosCredito.asstring        := 'CCP';
                     T_creditosData_Credito.asdatetime := date();

                     if CCP_ct = 'NÃO'
                      then T_creditosValor.asfloat := strtofloat(floattostrf(((qhono+(qhono*0.05))*0.0465),fffixed,10,2))
                      else T_creditosValor.asfloat := CCP_vreg;

                     if hono_ct = 'NÃO'
                      then T_creditoscontabilizado.asstring := 'NÃO'
                      else T_creditoscontabilizado.asstring := 'SIM';

                     t_creditos.post;
                   end;

                  if (fat_ccp) and (CCP_ct = 'NÃO')
                   then begin
                     {COFINS SEADRILL}
                     if t_creditos.bof
                      then t_creditos.edit
                      else t_creditos.append;

                     T_creditosCredito.asstring        := 'COFI';
                     T_creditosData_Credito.asdatetime := date();

                     if COFI_ct = 'NÃO'
                      then T_creditosValor.asfloat := strtofloat(floattostrf(((qhono+(qhono*0.05))*0.03),fffixed,10,2))
                      else T_creditosValor.asfloat := COFI_vreg;

                     if hono_ct = 'NÃO'
                      then T_creditoscontabilizado.asstring := 'NÃO'
                      else T_creditoscontabilizado.asstring := 'SIM';

                     t_creditos.post;

                     {PIS SEADRILL}
                     if t_creditos.bof
                      then t_creditos.edit
                      else t_creditos.append;

                     T_creditosCredito.asstring        := 'PIS';
                     T_creditosData_Credito.asdatetime := date();

                     if PIS_ct = 'NÃO'
                      then T_creditosValor.asfloat := strtofloat(floattostrf(((qhono+(qhono*0.05))*0.0065),fffixed,10,2))
                      else T_creditosValor.asfloat := PIS_vreg;

                     if hono_ct = 'NÃO'
                      then T_creditoscontabilizado.asstring := 'NÃO'
                      else T_creditoscontabilizado.asstring := 'SIM';

                     t_creditos.post;

                     {CSLL SEADRILL}
                     if t_creditos.bof
                      then t_creditos.edit
                      else t_creditos.append;

                     T_creditosCredito.asstring := 'CSLL';
                     T_creditosData_Credito.asdatetime := date();

                     if CSLL_ct = 'NÃO'
                      then T_creditosValor.asfloat := strtofloat(floattostrf(((qhono+(qhono*0.05))*0.01),fffixed,10,2))
                      else T_creditosValor.asfloat := CSLL_vreg;

                     if hono_ct = 'NÃO'
                      then T_creditoscontabilizado.asstring := 'NÃO'
                      else T_creditoscontabilizado.asstring := 'SIM';

                     t_creditos.post;
                   end;
                end
                else begin {NAO É SEADRILL}
                  if fat_ccp
                   then begin
                     if t_creditos.bof
                      then t_creditos.edit
                      else t_creditos.append;

                     T_creditosCredito.asstring        := 'CCP';
                     T_creditosData_Credito.asdatetime := date();

                     if CCP_ct = 'NÃO'
                      then T_creditosValor.asfloat := strtofloat(floattostrf(((qhono+(qhono*0.05))*0.0465),fffixed,10,2))
                      else T_creditosValor.asfloat := CCP_vreg;

                     if hono_ct = 'NÃO'
                      then T_creditoscontabilizado.asstring := 'NÃO'
                      else T_creditoscontabilizado.asstring := 'SIM';

                     t_creditos.post;
                   end;
                end;

               achouparam := true;
             end
           end
        end;

       q_parafat.next;
     end;

    totalcred();
    totalnum();

    t_creditos.close;
    t_creditos.open;

    t_numerarios.close;
    t_numerarios.open;

    if vobstaxas <> ''
     then begin
       if messagedlg(v_usuario+', '+#13#10#13#10+'outras taxas foram processadas, deseja inserir:'+#13#10+vobstaxas+#13#10#13#10+'nas Observações do Demostrativo?',mtconfirmation,[mbno,mbyes],0)= mryes
        then begin
          t_obs.edit;
          t_obsobservacoes.asstring := trim(t_obsobservacoes.asstring)+chr(13)+vobstaxas;
          t_obs.post;
        end;
     end;

    if qmemoria <> ''
     then begin
       if messagedlg(v_usuario+', '+#13#10#13#10+' deseja inserir MEMÓRIA DE CÁLCULO DE FATURAMENTO :'+#13#10+qmemoria+#13#10#13#10+'nas Observações do Demostrativo?',mtconfirmation,[mbno,mbyes],0)= mryes
        then begin
          t_obs.edit;
          t_obsobservacoes.asstring := trim(t_obsobservacoes.asstring)+chr(13)+chr(13)+'MEMÓRIA DE CÁLCULO DE FATURAMENTO:'+qmemoria;
          t_obs.post;
        end;
     end;

    if achouparam = false
     then messagedlg('Não foram encontrados parâmetros de faturamento para este Importador.',mtcustom,[mbok],0)
     else showmessage('ATENCÃO! Apartir de 19/03/2001 a taxa de CPMF = 0.38%');
  Except
    On E:Exception do
     begin
       b_confhonoClick(f_fatura);
     end;
  end;
end;

procedure Tf_fatura.b_impdemClick(Sender: TObject);
begin
  if not assigned (qr_demfin)
   then Application.CreateForm(Tqr_demfin, qr_demfin);

  if messagedlg('Emite demostrativo complementar?',mtconfirmation,[mbno,mbyes],0)= mrno
   then begin
     qr_demfin.qrl_complementar.caption := '';
     qr_demfin.bandcpmf.enabled := false;
     qr_demfin.t_numerarios2.filtered := false;
     qr_demfin.t_creditos2.filtered := false;
   end
   else begin
     if (T_processosImportador.AsString = '271') or
        (T_processosImportador.AsString = '295') or
        (T_processosImportador.AsString = '296') or
        (T_processosImportador.AsString = '297') or
        (T_processosImportador.AsString = '298')
      then begin
        if messagedlg('Mostra o texto "(Complementar)"?',mtconfirmation,[mbno,mbyes],0)= mryes
         then begin
           if messagedlg('Mostra o texto "(Complementar)" Normal ?',mtconfirmation,[mbno,mbyes],0)= mryes
            then qr_demfin.qrl_complementar.caption := '(Complementar)'
            else if messagedlg('Mostra o texto "(Complementar1)"?',mtconfirmation,[mbno,mbyes],0)= mryes
                  then qr_demfin.qrl_complementar.caption := '(Complementar1)'
                  else if messagedlg('Mostra o texto "(Complementar2)"?',mtconfirmation,[mbno,mbyes],0)= mryes
                        then qr_demfin.qrl_complementar.caption := '(Complementar2)'
                        else qr_demfin.qrl_complementar.caption := '';
         end
         else qr_demfin.qrl_complementar.caption := '';
      end
      else begin
        if messagedlg('Mostra o texto "(Complementar)"?',mtconfirmation,[mbno,mbyes],0)= mryes
         then qr_demfin.qrl_complementar.caption := '(Complementar)'
         else qr_demfin.qrl_complementar.caption := '';
      end;   

     qr_demfin.bandcpmf.enabled       := true;
     qr_demfin.t_numerarios2.filtered := true;
     qr_demfin.t_creditos2.filtered   := true;
   end;

  {No caso do Importador Spectrum, perguntar se mostra a descrição em inglês} 
  if (T_processosImportador.AsString = '351')
   then begin
     if messagedlg('Mostra a descrição em inglês ?',mtconfirmation,[mbno,mbyes],0)= mryes
      then begin
        qr_demfin.T_tipocre2.TableName := 'Tipos_creditos_ing';
        qr_demfin.T_tiponum2.TableName := 'Tipos_Numerario_Ing';
      end
      else begin
        qr_demfin.T_tipocre2.TableName := 'Tipos_creditos';
        qr_demfin.T_tiponum2.TableName := 'Tipos_Numerario';
      end;
   end
   else begin
     qr_demfin.T_tipocre2.TableName := 'Tipos_creditos';
     qr_demfin.T_tiponum2.TableName := 'Tipos_Numerario';
   end;

  qr_demfin.q_processo.Close;
  qr_demfin.q_processo.Params[0].asstring := t_processosempresa.asstring;
  qr_demfin.q_processo.Params[1].asstring := t_processosfilial.asstring;
  qr_demfin.q_processo.Params[2].asstring := t_processoscodigo.asstring;
  qr_demfin.q_processo.ExecSQL;
  qr_demfin.q_processo.Active := true;

  qr_demfin.Preview;

  qr_demfin.T_tipocre2.close;
  qr_demfin.T_tiponum2.close;
end;

procedure Tf_fatura.b_okobsClick(Sender: TObject);
begin
  if (t_obs.state = dsEdit) or (t_obs.state = dsinsert)
   then t_obs.post;

  p_obs.visible := false;
end;

procedure Tf_fatura.b_observaClick(Sender: TObject);
var
  qobs : string;
  indice : integer;
begin
  if messagedlg(v_usuario+', '+#13#10#13#10+'deseja inserir os números de faturas, conhecimento e outras informações nas Observações do Demostrativo?',mtconfirmation,[mbno,mbyes],0)= mryes
   then begin
     t_locais.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,T_processosImportador.AsString,T_processosLocal_Inventario.AsString]);

     if (T_processosTipo.AsString = 'BT') or (T_processosTipo.AsString = '8') 
      then begin
        if T_processosImportador.AsString = '2'
         then qobs := chr(13) + t_locaisDescricao.AsString + ' / COST CENTER ' + t_locaisCentro_Custo.AsString + ' / ACC CODE# 40.0165' + chr(13) + 'Fatura(s): PROCESSO Nº ' + T_processosNumero_RCR.AsString + ' / TR. Nº ' + T_processosNumero_TR.AsString + chr(13)
         else qobs := chr(13) + 'Fatura(s): PROCESSO Nº ' + T_processosNumero_RCR.AsString + ' / TR. Nº ' + T_processosNumero_TR.AsString + chr(13);
      end
      else qobs := chr(13) + 'Fatura(s): ';

     t_faturas.First;

     if t_faturas.RecordCount > 0
      then begin
        for indice := 1 to t_faturas.RecordCount do
         begin
           if t_faturas.RecordCount = 1
            then qobs := qobs + t_faturascodigo.asstring + ' - ' + t_exportadoresRazao_Social.asstring
            else begin
              if indice = 1
               then qobs := qobs + t_faturascodigo.asstring
               else qobs := qobs + ', ' + t_faturascodigo.asstring;

              if indice = t_faturas.RecordCount
               then qobs := qobs + ' - ' + t_exportadoresRazao_Social.asstring
            end;

           t_faturas.next;
         end;
      end;

     if (t_conhecimentonumerodoccarga.asstring <> '')
      then qobs := qobs + ' / ' + t_doccargadescricao.asstring + ' Nº ' + t_conhecimentonumerodoccarga.asstring;

     if (t_conhecimentonumeromaster.asstring <> '')
      then qobs := qobs + ' / ' + ' Master: ' + t_conhecimentonumeromaster.asstring;

     if (t_conhecimentonumeromanifesto.asstring <> '')
      then qobs := qobs + ' / ' + t_docchegadadescricao.asstring + ' Nº ' + t_conhecimentonumeromanifesto.asstring + chr(13);

     q_certif.close;
     q_certif.Params[0].asstring := t_processosempresa.asstring;
     q_certif.Params[1].asstring := t_processosfilial.asstring;
     q_certif.Params[2].asstring := t_processoscodigo.asstring;
     q_certif.ExecSQL;
     q_certif.active := true;

     if q_certif.recordcount <> 0
      then begin
        qobs := qobs + 'Certificado(s) de Origem: ';

        while not q_certif.Eof do
         begin
           qobs := qobs+q_certifcertificado_origem.asstring+', ';
           q_certif.next;
         end;

        qobs := qobs+chr(13);
      end;
  end;

  t_obs.edit;
  t_obsobservacoes.asstring := t_obsobservacoes.asstring+qobs+DetalheAdiantamentosProcesso;
  t_obs.post;  

  p_obs.left := 13;
  p_obs.top  := 36;
  p_obs.height  := 305;
  p_obs.visible := true;
end;

procedure Tf_fatura.t_obsAfterPost(DataSet: TDataSet);
begin
  logusu('P','Incluiu / Alterou observação de Faturamento do processo:'+t_processoscodigo.asstring);
end;

procedure Tf_fatura.T_processosAfterPost(DataSet: TDataSet);
begin
  try
    if not progeral
     then logusu('P','Alterou Processo: '+t_processoscodigo.asstring);

    f_mscomex.MSPGP(f_fatura.t_processoscodigo.asstring);
  except
    On E:Exception do
     begin
       T_processosAfterPost(t_processos);
     end;
  end;
end;

procedure Tf_fatura.b_pshClick(Sender: TObject);
begin
{  q_psh.close;
  q_psh.open;
  p_psh.top    := 2;
  p_psh.left   := 1;
  p_psh.height := 431;
  p_psh.width  := 769;
  label22.caption := inttostr(q_psh.recordcount)+' processos encontrados';
  p_psh.visible := true;}
end;

procedure Tf_fatura.BitBtn1Click(Sender: TObject);
begin
  p_psh.visible := false;
end;

procedure Tf_fatura.me_nossarefChange(Sender: TObject);
begin
  if ((length(me_nossaref.text) = 8) or (me_nossaref.text = 'CANDEL') or (me_nossaref.text = 'FINANC') or (me_nossaref.text = 'PACKING') or (me_nossaref.text = 'TED'))
   then begin
     avisou := false;
     {Leandro Serra - 08/12/2011 Ticket 1161}
     if ((v_usuario = 'DUDA') or (v_usuario = 'FABIANO'))
      then btnCancelarProcesso.Visible := true
      else btnCancelarProcesso.Visible := false;

     if (ME_nossaref.text <> 'CANDEL') and (ME_nossaref.text <> 'PACKING')
      then begin
        Empresa := '1';
        Filial  := 'RJO';
      end
      else begin
        if (ME_nossaref.text = 'CANDEL')
         then begin
           Empresa := '3';
           Filial  := 'RJ3';
         end
         else begin
           Empresa := '4';
           Filial  := 'RJ4';
         end;
      end;

     if not t_processos.findkey([Empresa,Filial,ME_nossaref.text])
      then begin
        if not semmsg
         then MessageDlg('Processo não cadastrado!', mtInformation,[mbOk], 0);

        Panel4.Enabled := False;
        Panel5.Enabled := False;
        Panel7.Enabled := False;

        dbtext1.visible  := false;
        ME_nossaref.text := '';
        ME_nossaref.setfocus;
      end
      else begin
        Panel4.Enabled := True;
        Panel5.Enabled := True;
        Panel7.Enabled := True;

        cb_AgMedicao.Enabled := (v_usuario = 'JUAN') or (v_usuario = 'BAMARAL') or (v_usuario = 'ANTONIOC') or (v_usuario = 'DUDA') or (v_usuario = 'WMEDEIROS');

        tresu := 0;
        tcred := 0;
        tnum  := 0;

        dbtext1.visible := true;
        b_observa.setfocus;

        totalcred();
        totalnum();

        if t_processosFaturado.asinteger = 1
         then begin
           if not semmsg
            then MessageDlg('Processo Faturado!', mtInformation,[mbOk], 0);

           b_profat.caption := 'Cancela Faturamento';
           b_profat.tag := 1;
         end
         else begin
           b_profat.caption := 'Confirma Faturamento';
           b_profat.tag := 0;
         end;

        if ((v_usuario = 'JUAN') or (v_usuario = 'BAMARAL') or (v_usuario = 'ANTONIOC')) and (T_processosStatus.AsInteger <> 4)
         then begin
           if (T_processosData.AsDateTime > StrToDate('01/07/2012'))
            then begin
              if (ProcessoRecebidoPeloFinanceiro)
               then begin
                 Panel4.Enabled := True;
                 Panel5.Enabled := True;
                 Panel7.Enabled := True;
               end
               else begin
                 Panel4.Enabled := False;
                 Panel5.Enabled := False;
                 Panel7.Enabled := False;

                 MessageDlg('Processo pendente de Follow "Processo recebido para emissão de Nota Fiscal", funções da tela desabilitadas.', mtInformation,[mbOk], 0);
                 Exit;
               end;
            end;   
         end;         
      end;
   end
   else begin
     f_fatura.t_creditos.close;
     f_fatura.T_numerarios.close;
   end;  

  b_novocre.Enabled := false;
  b_novodeb.Enabled := false;

  if (v_usuario = 'DUDA'    ) or (v_usuario = 'JUAN'   ) or (v_usuario = 'BAMARAL') or
     (v_usuario = 'ANTONIOC') or (v_usuario = 'FABIANO') or (v_usuario = 'WMEDEIROS') or (v_usuario = 'EMANUELLE')
   then begin
     b_novocre.Enabled        := true;
     b_novodeb.Enabled        := true;
     btnExcluiZerados.Enabled := true;
   end;
end;

procedure Tf_fatura.T_numerariosAfterPost(DataSet: TDataSet);
begin
  try
    totalnum();
  except
    On E : Exception do
     begin
       T_numerariosAfterPost(t_numerarios);
     end;
  end;
end;

procedure Tf_fatura.T_numerariosBeforePost(DataSet: TDataSet);
begin
  if t_numerarioscontabilizado.asstring = 'SIM'
   //then showmessage('Débito Contabilizado no Conta Corrente!')
   then Exit
   else begin
     t_numerarios.edit;

     if t_numerariosusuario_previsao.asstring = ''
      then t_numerariosusuario_previsao.asstring := v_usuario;

     if t_numerariosvalor_registrado.asfloat > 0
      then begin
        t_numerariosusuario_financeiro.asstring     := v_usuario;
        t_numerariosprevisao_solicitada.asstring    := 'SIM';
        t_numerariosok_previsao_financeiro.asstring := 'SIM';

        if t_numerariosvalor_previsao.asfloat = 0
         then t_numerariosvalor_previsao.asfloat := t_numerariosvalor_registrado.asfloat;

        if t_numerariosdata_previsao.asstring = ''
         then t_numerariosdata_previsao.asstring := t_numerariosdata_registro.asstring;
      end;
   end;
end;

procedure Tf_fatura.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = '.'
   then key := ',';
end;

procedure Tf_fatura.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if key = '.'
   then key := ',';
end;

procedure Tf_fatura.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if key = '.'
   then key := ',';
end;

procedure Tf_fatura.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if key = '.'
   then key := ',';
end;

procedure Tf_fatura.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = '.'
   then key := ',';
end;

procedure Tf_fatura.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = '.'
   then key := ',';
end;

procedure Tf_fatura.T_creditosBeforePost(DataSet: TDataSet);
begin
//  if t_creditoscontabilizado.asstring = 'SIM'
//   then showmessage('Crédito Contabilizado no Conta Corrente!');
end;

procedure Tf_fatura.T_creditosBeforeDelete(DataSet: TDataSet);
var
  valor, codigo_ctrl_num : String;
begin
  if t_creditosProcesso_FundoFIXO.asstring <> ''
   then begin
     {roda sql de exclusao no numerarios processos}

     if (t_creditosreg.asinteger<>0) and (not t_creditosreg.isnull)
      then begin
        q_excFF.Params[0].asinteger := t_creditosreg.asinteger;
        q_excFF.ExecSQL;
      end;

     if t_creditosprocesso_fundofixo.asstring <> 'CREDIPAN'
      then begin
      end;
   end;

  if t_creditoscontabilizado.asstring = 'SIM'
   then showmessage('Crédito Contabilizado no Conta Corrente!');

  valor := TrocarVirgula(T_creditosValor.Asfloat);

  {incluido 08/10/2010 - excluindo follows 98 recebimento de numerarios}
  if (t_creditoscredito.asstring = 'ADIA')
   then begin
     F_MSCOMEX.qfol1up.sql.clear;
     F_MSCOMEX.qfol1up.sql.add('delete Followup where Processo='+chr(39)+t_creditosprocesso.asstring+chr(39)+' and Codevento='+chr(39)+'98'+chr(39)+' and Data='+chr(39)+t_creditosdata_credito.asstring+chr(39));
     F_MSCOMEX.qfol1up.execsql;
     Showmessage(v_usuario+',ATENÇÃO! foi EXCLUÍDO follow up de recebimento de numerários para este processo nesta data!');

     F_MSCOMEX.qfol1.close;
     F_MSCOMEX.qfol1.sql.clear;
     F_MSCOMEX.qfol1.sql.add('select codigo from controle_numerarios where Processo='+chr(39)+t_creditosprocesso.asstring+chr(39)+' and Data_Solicitacao<='+chr(39)+t_creditosdata_credito.asstring+chr(39) + ' and CAST(Total AS MONEY) = '+chr(39)+valor+chr(39));
     F_MSCOMEX.qfol1.open;

     if F_MSCOMEX.qfol1.recordcount > 0
      then begin
        codigo_ctrl_num := F_MSCOMEX.qfol1.Fields[0].AsString;

        if codigo_ctrl_num <> ''
         then begin
           F_MSCOMEX.qfol1.close;
           F_MSCOMEX.qfol1.sql.clear;
           F_MSCOMEX.qfol1.sql.add('update controle_numerarios set status = 0, data_recebimento = null where codigo='+codigo_ctrl_num);
           F_MSCOMEX.qfol1.ExecSQL;
         end;
      end;
   end;
end;

procedure Tf_fatura.T_numerariosBeforeDelete(DataSet: TDataSet);
begin
  if t_numerarioscontabilizado.asstring = 'SIM'
   then showmessage('Débito Contabilizado no Conta Corrente!');
end;

procedure Tf_fatura.T_numerariosAfterScroll(DataSet: TDataSet);
begin
  if T_numerariosContabilizado.asstring = 'SIM'
   then begin
     dbedit3.enabled := false;
     dblcdeb.enabled := false;
     dbedit4.enabled := false;
     bitbtn4.Enabled := false;
     sb_contabilizado.enabled := true;
   end
   else begin
     dbedit3.enabled := true;
     dblcdeb.enabled := true;
     dbedit4.enabled := true;
     bitbtn4.Enabled := true;
     sb_contabilizado.enabled := false;
   end;

  sb_debdir.Enabled := false;

  if ((t_numerariosconta_corrente.asstring = '0') or (t_numerariosconta_corrente.IsNull))
   then begin
    if t_paracon.findkey([t_processosempresa.asstring,t_processosfilial.asstring,t_processosimportador.asstring,t_numerariosnumerario.asstring])
     then sb_debdir.Enabled := true;
   end;
end;

procedure Tf_fatura.T_creditosAfterScroll(DataSet: TDataSet);
begin
  if T_creditosContabilizado.asstring = 'SIM'
   then begin
     dbedit1.enabled           := false;
     dblccred.enabled          := false;
     dbedit2.enabled           := false;
     b_excluiproc.Enabled      := false;
     sb_contabilizado2.enabled := true;
   end
   else begin
     dbedit1.enabled           := true;
     dblccred.enabled          := true;
     dbedit2.enabled           := true;
     b_excluiproc.Enabled      := true;
     sb_contabilizado2.enabled := false;
   end;
end;

procedure Tf_fatura.T_creditosAfterPost(DataSet: TDataSet);
var
  sair : boolean;
  qsql, valor, codigo_ctrl_num : string;
begin
  try
    sair := false;

    if t_creditosdata_credito.asstring = ''
     then begin
       showmessage('Data não pode ser em branco!');
       t_creditos.DELETE;
       sair := true;
     end;

    if t_creditosvalor.asfloat = 0
     then begin
       showmessage('Valor tem que ser diferente de zero!');
       t_creditos.DELETE;
       sair := true;
     end;

    b_gravacre.Enabled := false;

    if sair
     then exit;

    valor := TrocarVirgula(T_creditosValor.Asfloat);

    {incluido 08/10/2010 - inserindo follows 98 recebimento de numerarios}
    if (t_creditoscredito.asstring = 'ADIA')
     then begin
       F_MSCOMEX.qfol1.close;
       F_MSCOMEX.qfol1.sql.clear;
       F_MSCOMEX.qfol1.sql.add('select codigo from controle_numerarios where Processo='+chr(39)+t_creditosprocesso.asstring+chr(39)+' and Data_Solicitacao<='+chr(39)+t_creditosdata_credito.asstring+chr(39) + ' and CAST(Total AS MONEY) = '+chr(39)+valor+chr(39));
       F_MSCOMEX.qfol1.open;

       if F_MSCOMEX.qfol1.recordcount > 0
        then begin
          codigo_ctrl_num := F_MSCOMEX.qfol1.Fields[0].AsString;

          if codigo_ctrl_num <> ''
           then begin
             F_MSCOMEX.qfol1.close;
             F_MSCOMEX.qfol1.sql.clear;
             F_MSCOMEX.qfol1.sql.add('update controle_numerarios set status = 1, data_recebimento = '+chr(39)+t_creditosdata_credito.asstring+chr(39) +' where codigo='+codigo_ctrl_num);
             F_MSCOMEX.qfol1.ExecSQL;
           end;
        end;

       F_MSCOMEX.qfol1.close;
       F_MSCOMEX.qfol1.sql.clear;
       F_MSCOMEX.qfol1.sql.add('select processo from Followup where Processo='+chr(39)+t_creditosprocesso.asstring+chr(39)+' and Codevento='+chr(39)+'98'+chr(39)+' and Data='+chr(39)+t_creditosdata_credito.asstring+chr(39));
       F_MSCOMEX.qfol1.open;

       if F_MSCOMEX.qfol1.recordcount = 0
        then begin
          F_MSCOMEX.qfol1up.sql.clear;
          qsql := 'INSERT INTO Followup ([Processo],[Codevento] ,[Data] ,[Hora] ,[Usuario]) VALUES ( ';
          qsql := qsql+chr(39)+t_creditosprocesso.asstring+chr(39)+', ';
          qsql := qsql+chr(39)+'98'+chr(39)+', ';
          qsql := qsql+chr(39)+t_creditosdata_credito.asstring+chr(39)+', ';
          qsql := qsql+chr(39)+copy(timetostr(time()),1,5)+chr(39)+', ';
          qsql := qsql+chr(39)+v_usuario+chr(39)+' ';
          qsql := qsql+' )';

          F_MSCOMEX.qfol1up.sql.add(qsql);
          F_MSCOMEX.qfol1up.execsql;
          Showmessage(v_usuario+',ATENÇÃO! foi INCLUÍDO follow up de recebimento de numerários para este processo nesta data!');
        end;
     end;

    totalcred();
    logusu('P','Alterou/incluiu crédito: '+t_creditoscredito.asstring +' valor: '+floattostr(t_creditosvalor.asfloat) + ' no processo: '+t_processoscodigo.asstring);

    {ALTEREI EM 26/04/2005 - Marcos}

    {Ticket 837 - Wellington - Inserida verificação para evitar um bug do sistema que excluía a Taxa Siscomex nos Numerários}
    if (T_creditosCredito.AsString <> 'TXS') and (not Parametro)
     then begin
       if (t_creditosreg.asinteger <> 0) and (not t_creditosreg.isnull)
        then begin
          q_excFF.Params[0].asinteger := t_creditosreg.asinteger;
          q_excFF.ExecSQL;
        end;
     end;   

    if (t_creditosProcesso_FundoFIXO.asstring <> '') and (not Parametro)
     then begin
       {roda sql de inclusão no numerarios processos}
       q_incFF.Params[0].asinteger := t_creditosreg.asinteger;
       q_incFF.ExecSQL;

       if t_creditosprocesso_fundofixo.asstring <> 'CREDIPAN'
        then begin
        end;
     end;

    Parametro := False; 
  except
    On E : Exception do
     begin
       T_creditosAfterPost(t_creditos);
     end;
  end;
end;

procedure Tf_fatura.sb_contabilizadoClick(Sender: TObject);
begin
  if t_numerariosprocesso_fundofixo.asstring <> ''
   then begin
     showmessage(v_usuario+','+#13#10+#13#10
                              +'Este Débito é contabilizado em contrapartida ' + #13#10
                              +'com o crédito referente ao fundo fixo do processo REF.MS:' + t_numerariosprocesso_fundofixo.asstring + ','+chr(13)
                              +'para exclusão ou alteração favor editar os créditos do processo. ' + #13#10);
   end
   else begin
     if t_numerarioscontabilizado_cliente.asinteger = 1
      then begin
        showmessage(v_usuario+','+#13#10#13#10
                               +'Débito contabilizado em contrapartida '+#13#10
                               +'com a contabilização de débitos diretos creditados diretamente para o cliente. '+#13#10)
      end
      else begin
        q_contabil.close;
        q_contabil.Params[0].asinteger := t_numerarioscodigo_mov.asinteger;
        q_contabil.open;
        showmessage(v_usuario+','+#13#10#13#10
                                 +'Este débito foi contabilizado em : ' + q_contabildata.asstring + #13#10
                                 +'Conta: '              + q_contabilqconta.asstring    + #13#10
                                 +'Empresa: '            + q_contabilqcliente.asstring  + #13#10
                                 +'Tipo de Lançamento: ' + q_contabilqtipo.asstring     + #13#10
                                 +'Documento: '          + q_contabildoc.asstring       + #13#10
                                  +'Histórico: '          + q_contabilhistorico.asstring + #13#10#13#10);
      end;
   end;
end;

procedure Tf_fatura.sb_contabilizado2Click(Sender: TObject);
begin
  if ((t_creditoscredito.asstring = 'IRRF') or (t_creditoscredito.asstring = 'CCP'))
   then showmessage(v_usuario+','+#13#10#13#10
                                 +'Créditos de IRRF e CCP são contabilizados em contrapartida '+#13#10
                                 +'com a contabilização dos Honorários '+#13#10)

   else begin
     if t_creditoscontabilizado_cliente.asinteger = 1
      then begin
        showmessage(v_usuario+','+#13#10#13#10
                                 +'Crédito contabilizado em contrapartida '+#13#10
                                 +'com a contabilização de débitos diretos pelo cliente. '+#13#10)
      end
      else begin
        q_contabil.close;
        q_contabil.Params[0].asinteger := t_creditoscodigo_mov.asinteger;
        q_contabil.open;
        showmessage(v_usuario+','+#13#10#13#10
                                 +'Este crédito foi contabilizado em : ' + q_contabildata.asstring + #13#10
                                 +'Conta: '              + q_contabilqconta.asstring    + #13#10
                                 +'Empresa: '            + q_contabilqcliente.asstring  + #13#10
                                 +'Tipo de Lançamento: ' + q_contabilqtipo.asstring     + #13#10
                                 +'Documento: '          + q_contabildoc.asstring       + #13#10
                                 +'Histórico: '          + q_contabilhistorico.asstring + #13#10#13#10);
      end;
   end;
end;

procedure Tf_fatura.FormCreate(Sender: TObject);
begin
  t_parametros.open;

  t_processos.open;

  T_processos.RecordCount;  

  t_sal.open;

  t_proconv.open;

  t_creditos.open;

  t_creditos.RecordCount;

  q_tipocred.open;

  t_paracon.Open;

  t_numerarios.open;

  t_tiponum.open;

  q_tiponum.open;

  q_contabil.open;

  t_importadores.open;

  T_IMP_PRO.open;

  q_valores.open;

  t_obs.open;

  t_conhecimento.open;

  t_doccarga.open;

  t_faturas.open;

  t_exportadores.open;

  t_docchegada.open;

  q_certif.open;

  t_locais.open;

  semmsg := false;

  progeral := false;

  if v_nivel = '0'
   then b_Processa.Visible :=true;
end;

procedure Tf_fatura.sb_debdirClick(Sender: TObject);
var
  RegNumerario : String;
begin
  if t_numerarioscontabilizado_cliente.asinteger = 1
   then begin
     if MessageBox(application.handle,pchar(v_usuario+', ATENÇÃO!!! débito contabilizado em contrapartida para crédito do cliente. Confirma EXCLUSÃO do crédito e débito?'),'Confirmação',MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON2) = mrYes
      then begin
        t_numerarios.edit;
        t_numerarioscontabilizado.asstring          := 'NÃO';
        t_numerariosconta_corrente.asstring         := '0';
        t_numerariosvalor_contabilizado.asfloat     := 0;
        t_numerarioscontabilizado_cliente.asinteger := 0;
        t_numerariosdetalhe.asstring                := '';

        t_creditos.First;

        RegNumerario := t_numerariosreg.asstring;

        while not t_creditos.Eof do
         begin
           if ( (t_creditosreg_numerarios.asinteger > 0) and (t_creditosreg_numerarios.asstring = t_numerariosreg.asstring))
            then begin
              t_creditos.delete;
              logusu('P','Excluído crédito vinculado a débito, processo '+me_nossaref.Text+' crédito '+T_creditosCredito.AsString+' valor '+T_creditosValor.AsString);
            end
            else t_creditos.next;
         end;

        t_Numerarios.Post;

        if RegNumerario <> ''
         then begin
           ExcluiDebito(RegNumerario);
           logusu('P','Excluído débito vinculado a crédito, processo '+me_nossaref.Text);           
         end;

        totalcred();
        totalnum();
      end;
   end
   else begin
     if messagedlg(v_usuario+', ATENÇÃO!!! deseja contabilizar este débito em contrapartida para crédito do cliente. Confirma Crédito deste Débito?',mtconfirmation,[mbno,mbyes],0)= mryes
      then begin
        t_numerarios.edit;
        t_numerarioscontabilizado.asstring          := 'SIM';
        t_numerariosvalor_contabilizado.asfloat     := t_numerariosvalor_registrado.asfloat;
        t_numerariosdetalhe.asstring                := 'CONTABILIZADO PELO CLIENTE';
        t_numerarioscontabilizado_cliente.asinteger := 1;
        t_creditos.First;

        while not t_creditos.Eof do
         begin
           if ( (t_creditosreg_numerarios.asinteger > 0) and (t_creditosreg_numerarios.asstring = t_numerariosreg.asstring))
            then begin
              t_creditos.delete;
              logusu('P','Excluído crédito vinculado a débito, processo '+me_nossaref.Text+' crédito '+T_creditosCredito.AsString+' valor '+T_creditosValor.AsString);
            end
            else t_creditos.next;
         end;

        T_creditos.append;
        T_creditosEmpresa.asstring                := t_numerariosempresa.asstring;
        T_creditosFilial.asstring                 := t_numerariosfilial.asstring;
        T_creditosProcesso.asstring               := t_numerariosprocesso.asstring;
        T_creditosCredito.asstring                := t_paraconcredito.asstring;
        T_creditosData_Credito.asstring           := t_numerariosdata_registro.asstring;
        T_creditosValor.asstring                  := t_numerariosvalor_contabilizado.asstring;
        T_creditosConta_Corrente.asstring         := '0';
        T_creditosCodigo_mov.asstring             := '0';
        T_creditosContabilizado.asstring          := 'SIM';
        T_creditosImpdemfim.asstring              := 'SIM';
        T_creditosContabilizado_cliente.asinteger := 1;
        T_creditosREG_numerarios.asstring         := t_numerariosreg.asstring;
        t_creditos.post;
        logusu('P','Incluído crédito vinculado a débito, processo '+me_nossaref.Text+' crédito '+t_paraconcredito.asstring+' valor '+t_numerariosvalor_contabilizado.asstring);
        t_Numerarios.Post;

        totalcred();
        totalnum();
      end;
   end;
end;

procedure Tf_fatura.T_creditosAfterEdit(DataSet: TDataSet);
begin
  b_gravacre.Enabled := true;
end;

procedure Tf_fatura.sbLimpaClick(Sender: TObject);
begin
  t_creditos.edit;
  t_creditosprocesso_fundofixo.clear;
end;

procedure Tf_fatura.b_gravacreClick(Sender: TObject);
begin
  if (T_creditosCredito.AsString = 'ADIA')
   then begin
     {Caso o importador seja ODEBRECHT}
     if T_importadoresCGC_CPF.AsString = '0809110200'
      then begin
        if (Trim(dbe_detalhes.Text) = '')
         then begin
           showmessage(v_usuario+','+' o detalhe do crédito '+dblccred.keyvalue+' é obrigatório para o importador desse processo.');
           dbe_detalhes.SetFocus;
           Exit;
         end;
      end;
   end;

  t_creditos.edit;
  logusu('P','Alterou/incluiu crédito: '+t_creditoscredito.asstring +' valor: '+floattostr(t_creditosvalor.asfloat) + ' detalhe: ' + T_creditosDetalhe.AsString + ' no processo: '+t_processoscodigo.asstring);
  t_creditos.post;
end;

procedure Tf_fatura.b_gravadebClick(Sender: TObject);
begin
  t_numerarios.edit;
  logusu('P','Alterou/incluiu débito: '+T_numerariosNumerario.asstring +' valor: '+floattostr(T_numerariosValor_Registrado.asfloat) + ' no processo: '+t_processoscodigo.asstring);
  t_numerarios.post;
end;

procedure Tf_fatura.b_processaClick(Sender: TObject);
var
  qtdreg : integer;
begin
  if messagedlg('Confirma processamento?',mtconfirmation,[mbno,mbyes],0)= mryes
   then begin
     semmsg := true;
     progeral := true;

     q_propro.close;
     q_propro.params[0].asstring := t_processosimportador.asstring;
     q_propro.open;

     qtdreg := 0;

     while not q_propro.eof do
      begin
        if Q_proPROsaldo_faturamento.asfloat <> 0
         then begin
           me_nossaref.text := q_proprocodigo.asstring;
           me_nossarefChange(f_fatura);
           qtdreg := qtdreg+1;
         end;

        q_propro.next;
      end;
   end;

  progeral := false;
end;

procedure Tf_fatura.cb_semnfClick(Sender: TObject);
begin
  if (cb_semnf.Checked and cb_semnf.Enabled)
   then begin
     if Application.MessageBox(pChar('Após a marcação do check sem Nota Fiscal, não será possível reverter a marcação, confirma ?'),'Confirmação',MB_YESNO+MB_ICONQUESTION) = IDYES
      then begin
        T_processos.edit;
        T_processossem_nfs.asinteger := 1;
        T_processosStatus.AsString   := '3';
        T_processosFechado.AsInteger := 1;
        logusu('P','marcou sem nota fiscal serviço do processo: ' + t_processoscodigo.asstring);
        T_processos.post;

        F_MSCOMEX.AtualizaProcessoVisaoGeral(me_nossaref.Text);
        cb_semnf.Enabled := False;
      end
      else if cb_semnf.Enabled
            then cb_semnf.Checked := False;
   end;
end;

procedure Tf_fatura.T_processosAfterScroll(DataSet: TDataSet);
begin
  q_parafat.Close;
  q_parafat.Params[0].asstring := t_processosimportador.asstring;
  q_parafat.Open;

  if t_processossem_nfs.asinteger = 0
   then begin
     cb_semnf.Enabled := True;
     cb_semnf.Checked := False;
   end
   else begin
     cb_semnf.Enabled := False;
     cb_semnf.Checked := True;
   end;  

  if T_processosaguardando_medicao.asinteger = 0
   then cb_AgMedicao.Checked := false
   else begin
     atualizacaoCampo := 1;

     cb_AgMedicao.Checked := true;
     
     atualizacaoCampo := 0;
   end;  
end;

procedure Tf_fatura.btnExcluiZeradosClick(Sender: TObject);
begin
  if messagedlg('Confirma exclusão destes numerários?',mtconfirmation,[mbno,mbyes],0)= mryes
   then begin
     if (Length(me_nossaref.Text) = 8)
      then begin
        ExcluiNumerariosZerados;
        totalnum();
        messagedlg('Numerários Zerados Excluídos!',mtcustom,[mbok],0);
      end
      else messagedlg('Processo inválido, numerários não poderão ser excluídos!',mtcustom,[mbok],0);
   end;    
end;

procedure Tf_fatura.ExcluiNumerariosZerados;
var
  QrAux : TQuery;
begin
  try
    QrAux := TQuery.Create(nil);
    QrAux.DatabaseName := 'DBNMSCOMEX';

    QrAux.SQL.Clear;
    QrAux.SQL.Add('DELETE FROM NUMERARIOS_PROCESSOS WHERE (CONTABILIZADO = ''NÃO'' OR CONTABILIZADO IS NULL) AND VALOR_REGISTRADO = 0 AND PROCESSO =:PROCESSO ');
    QrAux.ParamByName('PROCESSO').Value := me_nossaref.Text;
    QrAux.ExecSql;

    QrAux.Free;
  except
    messagedlg('Erro na exclusão dos Numerários Zerados!',mtcustom,[mbok],0);
  end;
end;

function Tf_fatura.VerificaSeUsuarioEResponsavel : Boolean;
var
  QrAux2 : TQuery;
begin
  try
    QrAux2 := TQuery.Create(nil);
    QrAux2.DatabaseName := 'DBNMSCOMEX';

    QrAux2.SQL.Clear;
    QrAux2.SQL.Add('SELECT PROCESSO FROM CONTROLE_PASTAS WHERE PROCESSO = :p0 AND USUARIO = :p2 ');
    QrAux2.Params[0].Value := me_nossaref.Text;
    QrAux2.Params[1].Value := v_usuario;
    QrAux2.Open;

    if QrAux2.RecordCount > 0
     then Result := True
     else Result := False;
  finally
    QrAux2.Free;
  end;
end;

procedure Tf_fatura.cb_AgMedicaoClick(Sender: TObject);
var
  num : integer;
begin
  if atualizacaoCampo = 0
   then begin
     if cb_AgMedicao.Checked
      then begin
        num := 1;

        logusu('P','Marcou aguardando medição do processo: ' + t_processoscodigo.asstring);
      end
      else begin
        num := 0;
        
        logusu('P','Desmarcou aguardando medição do processo: ' + t_processoscodigo.asstring);
      end;

     t_processos.edit;
     t_processosaguardando_medicao.asinteger := num;
     t_processos.post;
   end;
end;

{function Tf_fatura.FollowPendenteNoDia: Boolean;
var
  Qr_Aux : TQuery;
begin
  Qr_Aux := TQuery.Create(nil);
  Qr_Aux.DatabaseName := 'DBNMSCOMEX';

  try
    Qr_Aux.SQL.Clear;
    Qr_Aux.SQL.Add('SELECT SEQUENCIAL FROM Followup WHERE Codevento = ''2249'' AND Codobs = ''7'' AND Processo = :p0 AND Data = :p1 ');
    Qr_Aux.Params[0].Value := me_nossaref.Text;
    Qr_Aux.Params[1].Value := Date();
    Qr_Aux.Open;

    if Qr_Aux.RecordCount = 0
     then Result := True
     else Result := False;
  finally
    Qr_Aux.Free;
  end;
end;}

procedure Tf_fatura.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin
  { Desenha um checkbox no dbgrid }
  if Column.FieldName = 'Despesa_Cobrada'
   then begin
     DBGrid2.Canvas.FillRect(Rect);
     Check := 0;

     if (T_numerariosDespesa_Cobrada.AsInteger = 1)
      then Check := DFCS_CHECKED
      else Check := 0;

     R:=Rect;
     InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
     DrawFrameControl(DBGrid2.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
   end;
end;

procedure Tf_fatura.DBGrid2CellClick(Column: TColumn);
begin
  if (Column.FieldName = 'Impdemfim')
   then begin
     t_numerarios.edit;

     if t_numerariosimpdemfim.asstring = 'Sim'
      then t_numerariosimpdemfim.asstring := 'Não'
      else t_numerariosimpdemfim.asstring := 'Sim';

     t_numerarios.post;

     Exit;
   end;

  if (Column.FieldName = 'Despesa_Cobrada')
   then begin
     t_numerarios.edit;

     if (T_numerariosDespesa_Cobrada.AsInteger = 1)
      then T_numerariosDespesa_Cobrada.AsInteger := 0
      else T_numerariosDespesa_Cobrada.AsInteger := 1;

     t_numerarios.post;
   end;
end;

procedure Tf_fatura.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin
  { Desenha um checkbox no dbgrid }
  if Column.FieldName = 'Credito_Cobrado'
   then begin
     DBGrid1.Canvas.FillRect(Rect);
     Check := 0;

     if (T_creditosCredito_Cobrado.AsInteger = 1)
      then Check := DFCS_CHECKED
      else Check := 0;

     R:=Rect;
     InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
     DrawFrameControl(DBGrid1.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
   end;
end;

procedure Tf_fatura.DBGrid1CellClick(Column: TColumn);
begin
  Parametro := False;

  if (Column.FieldName = 'Impdemfim')
   then begin
     Parametro := True;

     t_creditos.edit;

     if t_creditosimpdemfim.asstring = 'Sim'
      then t_creditosimpdemfim.asstring := 'Não'
      else t_creditosimpdemfim.asstring := 'Sim';

     t_creditos.post;

     Exit;
   end;

  if (Column.FieldName = 'Credito_Cobrado')
   then begin
     Parametro := True;

     T_creditos.edit;

     if (T_creditosCredito_Cobrado.AsInteger = 1)
      then T_creditosCredito_Cobrado.AsInteger := 0
      else T_creditosCredito_Cobrado.AsInteger := 1;

     T_creditos.post;
   end;
end;

procedure Tf_fatura.DBGrid2TitleClick(Column: TColumn);
var
  QryAux : TQuery;
begin
  if (Column.FieldName = 'Despesa_Cobrada')
   then begin
     QryAux := TQuery.Create(nil);
     QryAux.DatabaseName := 'DBNMSCOMEX';

     try
       if length(me_nossaref.text) = 8
        then begin
          QryAux.Close;
          QryAux.SQL.Clear;
          QryAux.SQL.Add(' UPDATE NUMERARIOS_PROCESSOS SET Despesa_Cobrada = 1 WHERE Processo = :p1 ');
          QryAux.Params[0].Value := me_nossaref.Text;
          QryAux.ExecSQL;          
        end;

       T_numerarios.Close;
       T_numerarios.Open;        
     finally
       QryAux.Free;
     end;
   end;
end;

procedure Tf_fatura.DBGrid1TitleClick(Column: TColumn);
var
  QryAux : TQuery;
begin
  if (Column.FieldName = 'Credito_Cobrado')
   then begin
     QryAux := TQuery.Create(nil);
     QryAux.DatabaseName := 'DBNMSCOMEX';

     try
       if length(me_nossaref.text) = 8
        then begin
          QryAux.Close;
          QryAux.SQL.Clear;
          QryAux.SQL.Add(' UPDATE Creditos_Processos SET Credito_Cobrado = 1 WHERE Processo = :p1 ');
          QryAux.Params[0].Value := me_nossaref.Text;
          QryAux.ExecSQL;
        end;

       T_creditos.Close;
       T_creditos.Open;
     finally
       QryAux.Free;
     end;
   end;
end;

procedure Tf_fatura.btnCancelarProcessoClick(Sender: TObject);
begin
   {Leandro Serra - 08/12/2011 Ticket 1161}
   with qCancelaProcesso do
   begin
       Close;
       ParamByName('pProcesso').value:= me_nossaref.text;
       ExecSQL;
       showmessage('Processo '+me_nossaref.text+ ' cancelado.');
       logusu('P',v_usuario + ' Cancelou o processo: '+ me_nossaref.text);
   end;
end;

function Tf_fatura.TrocarVirgula(valor: double): String;
begin
  Result := stringReplace(FloatToStr( valor ),',','.',[rfreplaceall]);
end;

function Tf_fatura.ProcessoRecebidoPeloFinanceiro: Boolean;
var
  QryAux : TQuery;
begin
  QryAux := TQuery.Create(nil);
  QryAux.DatabaseName := 'DBNMSCOMEX';

  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('SELECT Codevento FROM Followup WHERE Codevento = ''2446'' and Processo = :p0');
    QryAux.Params[0].Value := me_nossaref.Text;
    QryAux.Open;

    if QryAux.RecordCount > 0
     then Result := True
     else Result := False;
  finally
    QryAux.Free;
  end;
end;

function Tf_fatura.DetalheAdiantamentosProcesso: String;
var
  QrAux : TQuery;
  Detalhe : String;
begin
  try
    QrAux := TQuery.Create(nil);
    QrAux.DatabaseName := 'DBNMSCOMEX';

    Detalhe := '';

    QrAux.SQL.Add('SELECT Detalhe, Valor                                                  ');
    QrAux.SQL.Add('  FROM Creditos_Processos                                              ');
    QrAux.SQL.Add(' WHERE Credito = ''ADIA'' AND Detalhe <> '''' AND Processo = :Processo ');
    QrAux.ParamByName('Processo').AsString := me_nossaref.Text;
    QrAux.Open;

    if QrAux.RecordCount > 0
     then begin
       QrAux.First;

       while not QrAux.Eof do
        begin
          if Detalhe = ''
           then Detalhe := chr(13) + 'Referência do Adiantamento de R$ '+FormatFloat('0.00',QrAux.FieldByName('Valor').AsFloat) +' : '+QrAux.FieldByName('Detalhe').AsString
           else Detalhe := Detalhe + chr(13) + 'Referência do Adiantamento de '+FormatFloat('0.00',QrAux.FieldByName('Valor').AsFloat)+' : '+QrAux.FieldByName('Detalhe').AsString;

          QrAux.Next;
        end;
     end;

    Result := Detalhe;
  finally
    QrAux.Free;
  end;
end;

function Tf_fatura.DetalheAdiantamentoNaoPreenchido: Boolean;
var
  QrAux : TQuery;
begin
  try
    QrAux := TQuery.Create(nil);
    QrAux.DatabaseName := 'DBNMSCOMEX';

    Result := False;

    QrAux.SQL.Add(' SELECT Detalhe                        ');
    QrAux.SQL.Add('   FROM Creditos_Processos             ');
    QrAux.SQL.Add('  WHERE Credito = ''ADIA''             ');
    QrAux.SQL.Add('    AND Data_Credito >= ''23/05/2013'' ');
    QrAux.SQL.Add('    AND Processo = :Processo           ');
    QrAux.ParamByName('Processo').Value := me_nossaref.Text;
    QrAux.Open;

    QrAux.First;

    while not QrAux.Eof do
     begin
       if (Trim(QrAux.FieldByName('Detalhe').AsString) = '')
        then Result := True;

       QrAux.Next;
     end;

    QrAux.Close;
  finally
    QrAux.Free;
  end;
end;

procedure Tf_fatura.ExcluiDebito(Reg : String);
var
  QrAux : TQuery;
begin
  try
    QrAux := TQuery.Create(nil);
    QrAux.DatabaseName := 'DBNMSCOMEX';

    QrAux.Close;
    QrAux.SQL.Clear;
    QrAux.SQL.ADD('DELETE NUMERARIOS_PROCESSOS WHERE REG = :REG ');
    QrAux.Params[0].AsString := Reg; 
    QrAux.ExecSQL;

    ShowMessage('ATENÇÃO!!! Débito excluído.');
  finally
    QrAux.Free;
  end;
end;

end.
