unit U_contascorrentes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, ExtCtrls, DBTables, StdCtrls, Mask, DBCtrls, Buttons,
  ActnList, FileCtrl, shellAPI;

const
  VAZIO = '';
  DIR_IMG = '\\msserver01\Sistemas\MS2000\Docs\';

type
  Tf_contascorrentes = class(TForm)
    T_parametros: TTable;
    DS_parametros: TDataSource;
    Panel1: TPanel;
    t_contascorrentes: TTable;
    ds_contascorrentes: TDataSource;
    DBG_CC: TDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    T_movcc: TTable;
    ds_movcc: TDataSource;
    Panel4: TPanel;
    btnNovo: TBitBtn;
    btnExcluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnLocalizar: TBitBtn;
    b_extrato: TBitBtn;
    btndesmembrar: TBitBtn;
    q_mov: TQuery;
    ds_qmov: TDataSource;
    q_saldo: TQuery;
    p_incluir: TPanel;
    Label3: TLabel;
    l_titulo: TLabel;
    b_gravainclui: TBitBtn;
    b_fechainclui: TBitBtn;
    dblc_tipolanca: TDBLookupComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ds_lancamento: TDataSource;
    b_novaconta: TBitBtn;
    b_gravarconta: TBitBtn;
    b_excluirconta: TBitBtn;
    p_desmcred: TPanel;
    Label18: TLabel;
    q_saldogeral: TQuery;
    t_importadores: TTable;
    ds_importadores: TDataSource;
    DBEdit1: TDBEdit;
    dbl_clientes: TDBLookupComboBox;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    t_creditos: TTable;
    ds_creditos: TDataSource;
    Panel6: TPanel;
    Label4: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit5: TDBEdit;
    DBLookupComboBox5: TDBLookupComboBox;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Panel7: TPanel;
    DBGrid3: TDBGrid;
    Panel8: TPanel;
    Label26: TLabel;
    Label25: TLabel;
    Label24: TLabel;
    b_gravarcred: TBitBtn;
    b_excluidcred: TBitBtn;
    b_fechadesmcred: TBitBtn;
    l_tdesmcred: TLabel;
    t_tiposcreditos: TTable;
    ds_tiposcreditos: TDataSource;
    q_processos2: TQuery;
    ds_qprocessos: TDataSource;
    Q_creditos: TQuery;
    ds_qcreditos: TDataSource;
    q_totaldesmcred: TQuery;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBL_tipos: TDBLookupComboBox;
    p_processos: TPanel;
    Panel9: TPanel;
    DBGrid4: TDBGrid;
    b_okproc: TBitBtn;
    b_fechaprocesso: TBitBtn;
    b_novodcred: TBitBtn;
    p_desmdeb: TPanel;
    Label10: TLabel;
    Panel10: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit11: TDBEdit;
    DBLookupComboBox6: TDBLookupComboBox;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Panel11: TPanel;
    Label23: TLabel;
    DBGrid5: TDBGrid;
    Panel12: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    b_gravadeb: TBitBtn;
    b_excluideb: TBitBtn;
    b_fechadesmdeb: TBitBtn;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBLookupComboBox7: TDBLookupComboBox;
    b_novodeb: TBitBtn;
    p_debito2: TPanel;
    Panel14: TPanel;
    DBGrid6: TDBGrid;
    b_okdebito: TBitBtn;
    b_fechadebito: TBitBtn;
    q_debitos: TQuery;
    p_extrato: TPanel;
    Label31: TLabel;
    Panel5: TPanel;
    DBGrid2: TDBGrid;
    Label30: TLabel;
    cb_contas: TCheckBox;
    Panel15: TPanel;
    me_dataini: TMaskEdit;
    Label33: TLabel;
    Label34: TLabel;
    me_datafin: TMaskEdit;
    Label35: TLabel;
    DBGrid8: TDBGrid;
    cb_tipos: TCheckBox;
    b_fechaextrato: TBitBtn;
    cb_desmembra: TCheckBox;
    cb_resumo: TCheckBox;
    b_imprimirextrato: TBitBtn;
    T_contas_e: TTable;
    ds_contas_e: TDataSource;
    ds_qdebitos: TDataSource;
    q_totaldesmdeb: TQuery;
    t_numerarios: TTable;
    ds_numerarios: TDataSource;
    t_tiposnumerarios: TTable;
    ds_tiposnumerarios: TDataSource;
    q_debitos2: TQuery;
    ds_qdebitos2: TDataSource;
    Label36: TLabel;
    T_numerarios2: TTable;
    ds_numerarios2: TDataSource;
    DBGrid9: TDBGrid;
    Q_extrato: TQuery;
    ds_qextrato: TDataSource;
    q_santerior: TQuery;
    e_proc: TEdit;
    q_doc: TQuery;
    DBEdit18: TDBEdit;
    Label32: TLabel;
    DBLC_TIPOS: TDBLookupComboBox;
    Label37: TLabel;
    b_novodebito: TBitBtn;
    Label38: TLabel;
    b_gravanov: TBitBtn;
    b_cancelanov: TBitBtn;
    q_processo: TEdit;
    t_lancamentof: TTable;
    ds_lancamentof: TDataSource;
    Label39: TLabel;
    dbl_plano: TDBLookupComboBox;
    ds_plano: TDataSource;
    DBEdit19: TDBEdit;
    Label40: TLabel;
    sb_limpa: TSpeedButton;
    q_excluicred: TQuery;
    q_excluideb: TQuery;
    q_importadores: TQuery;
    ds_qimportadores: TDataSource;
    b_clientes: TBitBtn;
    b_saldos: TBitBtn;
    q_saldos: TQuery;
    q_contas: TQuery;
    b_carga: TBitBtn;
    p_carga: TPanel;
    Panel18: TPanel;
    DBGrid10: TDBGrid;
    b_incluirfat: TBitBtn;
    b_fecharfat: TBitBtn;
    Label43: TLabel;
    e_fatura: TEdit;
    t_faturas: TTable;
    t_itens: TTable;
    ds_faturas: TDataSource;
    ds_itens: TDataSource;
    DBGrid11: TDBGrid;
    SpeedButton1: TSpeedButton;
    q_excluifat: TQuery;
    T_faturas2: TTable;
    b_saldosdiarios: TBitBtn;
    p_saldosdiarios: TPanel;
    Label46: TLabel;
    Panel19: TPanel;
    DBGrid12: TDBGrid;
    Panel20: TPanel;
    BitBtn1: TBitBtn;
    b_recalcular: TBitBtn;
    t_saldosdiarios: TTable;
    ds_saldosdiarios: TDataSource;
    q_saldosdiarios: TQuery;
    b_filtrar: TBitBtn;
    q_tiposnumerarios: TQuery;
    me_dtrecalc: TMaskEdit;
    Label50: TLabel;
    cb_geral: TCheckBox;
    q_import: TQuery;
    q_creditosimp: TQuery;
    q_debitosimp: TQuery;
    gbicms: TGroupBox;
    DBEdit21: TDBEdit;
    Label51: TLabel;
    Label52: TLabel;
    DBEdit22: TDBEdit;
    q_cc: TQuery;
    ds_qcontasp: TDataSource;
    p_contasp: TPanel;
    Label41: TLabel;
    Panel16: TPanel;
    Label53: TLabel;
    e_contasp: TEdit;
    DBGrid7: TDBGrid;
    b_okcp: TBitBtn;
    b_fechacp: TBitBtn;
    e_valorapagar: TEdit;
    q_contasp: TQuery;
    t_numerarios3: TTable;
    Label42: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    b_cp: TBitBtn;
    alContas: TActionList;
    acCalculaSaldo: TAction;
    tbContasPag: TTable;
    qrLocCorrecoes: TQuery;
    qrLocPagamentos: TQuery;
    ds_numerarios3: TDataSource;
    Label44: TLabel;
    e_detcp: TEdit;
    QNUM: TQuery;
    q_credpro: TQuery;
    q_debpro: TQuery;
    q_temHONO: TQuery;
    cb_todos: TCheckBox;
    b_cancelcred: TBitBtn;
    t_faturasEmpresa: TStringField;
    t_faturasFilial: TStringField;
    t_faturasFornecedor: TStringField;
    t_faturasFatura: TStringField;
    t_faturasBoleto: TStringField;
    t_faturasVencimento: TDateTimeField;
    t_faturasPeso: TFloatField;
    t_faturasValor: TFloatField;
    t_faturasConta_Corrente: TIntegerField;
    t_faturasCodigo_mov: TIntegerField;
    t_faturasDoc_contabil: TStringField;
    t_itensEmpresa: TStringField;
    t_itensFilial: TStringField;
    t_itensFornecedor: TStringField;
    t_itensFatura: TStringField;
    t_itensreg: TAutoIncField;
    t_itensProcesso: TStringField;
    t_itensDI: TStringField;
    t_itensDTA: TStringField;
    t_itensPeso: TFloatField;
    t_itensValor: TFloatField;
    T_faturas2Empresa: TStringField;
    T_faturas2Filial: TStringField;
    T_faturas2Fornecedor: TStringField;
    T_faturas2Fatura: TStringField;
    T_faturas2Boleto: TStringField;
    T_faturas2Vencimento: TDateTimeField;
    T_faturas2Peso: TFloatField;
    T_faturas2Valor: TFloatField;
    T_faturas2Conta_Corrente: TIntegerField;
    T_faturas2Codigo_mov: TIntegerField;
    T_faturas2Doc_contabil: TStringField;
    q_ccEmpresa: TStringField;
    q_ccFilial: TStringField;
    q_ccCodigo: TAutoIncField;
    q_ccBanco_Caixa: TStringField;
    q_ccDescricao: TStringField;
    q_ccBanco: TStringField;
    q_ccAgencia: TStringField;
    q_ccConta_Corrente: TStringField;
    q_ccSaldo: TFloatField;
    q_ccNivel: TStringField;
    q_ccData: TDateTimeField;
    q_ccQEMPRESA: TStringField;
    q_ccQFILIAL: TStringField;
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
    t_lancamentoCodigo: TAutoIncField;
    t_lancamentoDescricao: TStringField;
    t_lancamentoPositivo: TSmallintField;
    q_movEmpresa: TStringField;
    q_movFilial: TStringField;
    q_movCodigo: TIntegerField;
    q_movData: TDateTimeField;
    q_movTipo: TIntegerField;
    q_movDescricao: TStringField;
    q_movDoc: TStringField;
    q_movHistorico: TStringField;
    q_movValor: TFloatField;
    q_movCliente: TStringField;
    q_movCodigo_Mov: TAutoIncField;
    q_movCodigo_SOLREG: TStringField;
    q_saldoEmpresa: TStringField;
    q_saldoFilial: TStringField;
    q_saldoCodigo: TIntegerField;
    q_saldosaldo: TFloatField;
    q_saldogeralEmpresa: TStringField;
    q_saldogeralFilial: TStringField;
    q_saldogeralsaldo: TFloatField;
    t_importadoresEmpresa: TStringField;
    t_importadoresFilial: TStringField;
    t_importadoresCodigo: TStringField;
    t_importadoresRazao_Social: TStringField;
    t_importadoresPais: TStringField;
    t_importadoresCNPJ_CPF_COMPLETO: TStringField;
    t_importadoresCGC_CPF: TStringField;
    t_importadoresTipo_Importador: TStringField;
    t_importadoresEndereco: TStringField;
    t_importadoresNumero: TStringField;
    t_importadoresComplemento: TStringField;
    t_importadoresBairro: TStringField;
    t_importadoresCidade: TStringField;
    t_importadoresCEP: TStringField;
    t_importadoresUF: TStringField;
    t_importadoresEstado: TStringField;
    t_importadoresInscricao_Estadual: TStringField;
    t_importadoresBanco: TStringField;
    t_importadoresAgencia: TStringField;
    t_importadoresConta_Corrente: TStringField;
    t_importadoresConta_Corrente_Registro: TIntegerField;
    t_importadoresConta_Corrente_Deposito: TIntegerField;
    t_importadoreslink: TStringField;
    t_importadoresCAE: TStringField;
    t_importadoresTelefone: TStringField;
    t_importadoresAtivo: TSmallintField;
    t_importadoresAcesso_WEB_MS: TSmallintField;
    t_importadoresAcesso_WEB_CLI: TSmallintField;
    t_importadoresAcesso_WEB_REC: TSmallintField;
    t_importadoresBASE_ICMS: TSmallintField;
    t_tiposcreditosEmpresa: TStringField;
    t_tiposcreditosFilial: TStringField;
    t_tiposcreditosCodigo: TStringField;
    t_tiposcreditosDescricao: TStringField;
    t_tiposcreditosPlano_contas: TStringField;
    q_totaldesmcredConta_Corrente: TIntegerField;
    q_totaldesmcredCodigo_mov: TIntegerField;
    q_totaldesmcredValor: TFloatField;
    q_debitosEmpresa: TStringField;
    q_debitosFilial: TStringField;
    q_debitosProcesso: TStringField;
    q_debitosREG: TAutoIncField;
    q_debitosNumerario: TStringField;
    q_debitosUsuario_Previsao: TStringField;
    q_debitosData_Previsao: TDateTimeField;
    q_debitosValor_Previsao: TFloatField;
    q_debitosPrevisao_solicitada: TStringField;
    q_debitosOk_Previsao_financeiro: TStringField;
    q_debitosUsuario_Financeiro: TStringField;
    q_debitosData_Registro: TDateTimeField;
    q_debitosValor_Registrado: TFloatField;
    q_debitosValor_Contabilizado: TFloatField;
    q_debitosContabilizado: TStringField;
    q_debitosUsuario_Contablizado: TStringField;
    q_debitosConta_Corrente: TIntegerField;
    q_debitosCodigo_mov: TIntegerField;
    q_debitosDetalhe: TStringField;
    q_debitosDescricao: TStringField;
    q_totaldesmdebConta_Corrente: TIntegerField;
    q_totaldesmdebCodigo_mov: TIntegerField;
    q_totaldesmdebvalor: TFloatField;
    q_totaldesmdebContabilizado: TStringField;
    t_tiposnumerariosEmpresa: TStringField;
    t_tiposnumerariosFilial: TStringField;
    t_tiposnumerariosCodigo: TStringField;
    t_tiposnumerariosDescricao: TStringField;
    t_tiposnumerariosPlano_contas: TStringField;
    t_tiposnumerariosRateio: TStringField;
    t_tiposnumerariosContabilizaCC: TSmallintField;
    q_tiposnumerariosEmpresa: TStringField;
    q_tiposnumerariosFilial: TStringField;
    q_tiposnumerariosCodigo: TStringField;
    q_tiposnumerariosDescricao: TStringField;
    q_tiposnumerariosPlano_contas: TStringField;
    QNUMProcesso: TStringField;
    QNUMNumerario: TStringField;
    QNUMData_Registro: TDateTimeField;
    QNUMValor_Contabilizado: TFloatField;
    Q_extratoEmpresa: TStringField;
    Q_extratoFilial: TStringField;
    Q_extratoDescricao: TStringField;
    Q_extratoCodigo: TIntegerField;
    Q_extratoData: TDateTimeField;
    Q_extratoTipo: TIntegerField;
    Q_extratootipo: TStringField;
    Q_extratoDoc: TStringField;
    Q_extratoHistorico: TStringField;
    Q_extratoValor: TFloatField;
    Q_extratoCliente: TStringField;
    Q_extratoCodigo_Mov: TAutoIncField;
    q_santeriorSaldoanterior: TFloatField;
    q_docCodigo: TIntegerField;
    q_docTipo: TIntegerField;
    q_docDoc: TStringField;
    q_saldosdiariosCodigo: TAutoIncField;
    q_saldosdiariossaldo: TFloatField;
    q_importadoresEmpresa: TStringField;
    q_importadoresFilial: TStringField;
    q_importadoresCodigo: TStringField;
    q_importadoresRazao_Social: TStringField;
    q_importadorescnpj_cpf_completo: TStringField;
    t_saldosdiariosEmpresa: TStringField;
    t_saldosdiariosFilial: TStringField;
    t_saldosdiariosCodigo: TIntegerField;
    t_saldosdiariosData: TDateTimeField;
    t_saldosdiariosSaldo: TFloatField;
    t_saldosdiariosSaldo_sis: TFloatField;
    t_saldosdiariosFechado: TStringField;
    t_saldosdiariosObs: TStringField;
    t_lancamentofCodigo: TAutoIncField;
    t_lancamentofDescricao: TStringField;
    t_lancamentofPositivo: TSmallintField;
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
    qrLocCorrecoesValorTot: TFloatField;
    qrLocCorrecoespositivo: TSmallintField;
    qrLocPagamentosValorTot: TFloatField;
    q_contaspEmpresa: TStringField;
    q_contaspFilial: TStringField;
    q_contaspFornecedor: TStringField;
    q_contaspCodigo: TStringField;
    q_contaspData_Emissao: TDateTimeField;
    q_contaspData_Vencimento: TDateTimeField;
    q_contaspHistorico: TStringField;
    q_contaspPlano_contas: TStringField;
    q_contaspSaldo: TFloatField;
    q_contaspValor: TFloatField;
    q_contaspqfor: TStringField;
    q_importEmpresa: TStringField;
    q_importFilial: TStringField;
    q_importCodigo: TStringField;
    q_importRazao_Social: TStringField;
    q_creditosimpCodigo: TStringField;
    q_creditosimpcreditos: TFloatField;
    q_debitosimpCodigo: TStringField;
    q_debitosimpdebitos: TFloatField;
    q_credproProcesso: TStringField;
    q_credproqvalor: TFloatField;
    q_debproProcesso: TStringField;
    q_debproqvalor: TFloatField;
    q_temHONOProcesso: TStringField;
    q_temHONONumerario: TStringField;
    q_saldosRazao_Social: TStringField;
    q_saldosqvalor: TFloatField;
    t_creditosEmpresa: TStringField;
    t_creditosFilial: TStringField;
    t_creditosProcesso: TStringField;
    t_creditosREG: TAutoIncField;
    t_creditosCredito: TStringField;
    t_creditosData_Credito: TDateTimeField;
    t_creditosValor: TFloatField;
    t_creditosConta_Corrente: TIntegerField;
    t_creditosCodigo_mov: TIntegerField;
    t_creditosContabilizado: TStringField;
    t_creditosImpdemfim: TStringField;
    t_creditosContabilizado_cliente: TSmallintField;
    t_creditosREG_numerarios: TIntegerField;
    t_creditosProcesso_FundoFIXO: TStringField;
    t_creditosDetalhe: TStringField;
    t_contascorrentesEmpresa: TStringField;
    t_contascorrentesFilial: TStringField;
    t_contascorrentesCodigo: TAutoIncField;
    t_contascorrentesBanco_Caixa: TStringField;
    t_contascorrentesDescricao: TStringField;
    t_contascorrentesBanco: TStringField;
    t_contascorrentesAgencia: TStringField;
    t_contascorrentesConta_Corrente: TStringField;
    t_contascorrentesSaldo: TFloatField;
    t_contascorrentesNivel: TStringField;
    t_contascorrentesData: TDateTimeField;
    t_contascorrentesEmpresacc: TStringField;
    t_contascorrentesFilialcc: TStringField;
    t_contascorrentesASCAA: TSmallintField;
    q_processos2Empresa: TStringField;
    q_processos2Filial: TStringField;
    q_processos2Codigo: TStringField;
    q_processos2Codigo_1: TStringField;
    q_processos2Importador: TStringField;
    q_processos2Saldo_Faturamento: TFloatField;
    T_contas_eEmpresa: TStringField;
    T_contas_eFilial: TStringField;
    T_contas_eCodigo: TAutoIncField;
    T_contas_eBanco_Caixa: TStringField;
    T_contas_eDescricao: TStringField;
    T_contas_eBanco: TStringField;
    T_contas_eAgencia: TStringField;
    T_contas_eConta_Corrente: TStringField;
    T_contas_eSaldo: TFloatField;
    T_contas_eNivel: TStringField;
    T_contas_eData: TDateTimeField;
    T_contas_eEmpresacc: TStringField;
    T_contas_eFilialcc: TStringField;
    T_contas_eASCAA: TSmallintField;
    q_contasEmpresa: TStringField;
    q_contasFilial: TStringField;
    q_contasCodigo: TAutoIncField;
    q_contasBanco_Caixa: TStringField;
    q_contasDescricao: TStringField;
    q_contasBanco: TStringField;
    q_contasAgencia: TStringField;
    q_contasConta_Corrente: TStringField;
    q_contasSaldo: TFloatField;
    q_contasNivel: TStringField;
    q_contasData: TDateTimeField;
    q_contasEmpresacc: TStringField;
    q_contasFilialcc: TStringField;
    q_contasASCAA: TSmallintField;
    q_cc_update: TQuery;
    T_movccEmpresa: TStringField;
    T_movccFilial: TStringField;
    T_movccCodigo: TIntegerField;
    T_movccData: TDateTimeField;
    T_movccTipo: TIntegerField;
    T_movccDoc: TStringField;
    T_movccHistorico: TStringField;
    T_movccValor: TFloatField;
    T_movccCliente: TStringField;
    T_movccCodigo_Mov: TAutoIncField;
    T_movccPlano_Contas: TStringField;
    T_movccUsuario: TStringField;
    T_movccData_apuracao_cpmf_inicial: TDateTimeField;
    T_movccData_apuracao_cpmf_final: TDateTimeField;
    T_movccDesmembra: TSmallintField;
    T_movccCodigo_SOLREG: TStringField;
    t_numerariosEmpresa: TStringField;
    t_numerariosFilial: TStringField;
    t_numerariosProcesso: TStringField;
    t_numerariosREG: TAutoIncField;
    t_numerariosNumerario: TStringField;
    t_numerariosUsuario_Previsao: TStringField;
    t_numerariosData_Previsao: TDateTimeField;
    t_numerariosValor_Previsao: TFloatField;
    t_numerariosPrevisao_solicitada: TStringField;
    t_numerariosOk_Previsao_financeiro: TStringField;
    t_numerariosUsuario_Financeiro: TStringField;
    t_numerariosData_Registro: TDateTimeField;
    t_numerariosValor_Registrado: TFloatField;
    t_numerariosValor_Contabilizado: TFloatField;
    t_numerariosContabilizado: TStringField;
    t_numerariosUsuario_Contablizado: TStringField;
    t_numerariosConta_Corrente: TIntegerField;
    t_numerariosCodigo_mov: TIntegerField;
    t_numerariosImpdemfim: TStringField;
    t_numerariosDetalhe: TStringField;
    t_numerariosDocsis: TStringField;
    t_numerariosFatura_mov: TStringField;
    t_numerariosFornecedor: TStringField;
    t_numerariosCodigo: TStringField;
    t_numerariosContabilizado_cliente: TIntegerField;
    t_numerariosREG_creditos: TIntegerField;
    t_numerariosProcesso_FundoFIXO: TStringField;
    q_debitos2Empresa: TStringField;
    q_debitos2Filial: TStringField;
    q_debitos2Processo: TStringField;
    q_debitos2REG: TAutoIncField;
    q_debitos2Numerario: TStringField;
    q_debitos2Usuario_Previsao: TStringField;
    q_debitos2Data_Previsao: TDateTimeField;
    q_debitos2Valor_Previsao: TFloatField;
    q_debitos2Previsao_solicitada: TStringField;
    q_debitos2Ok_Previsao_financeiro: TStringField;
    q_debitos2Usuario_Financeiro: TStringField;
    q_debitos2Data_Registro: TDateTimeField;
    q_debitos2Valor_Registrado: TFloatField;
    q_debitos2Valor_Contabilizado: TFloatField;
    q_debitos2Contabilizado: TStringField;
    q_debitos2Usuario_Contablizado: TStringField;
    q_debitos2Conta_Corrente: TIntegerField;
    q_debitos2Codigo_mov: TIntegerField;
    q_debitos2Impdemfim: TStringField;
    q_debitos2Detalhe: TStringField;
    q_debitos2Docsis: TStringField;
    q_debitos2Fatura_mov: TStringField;
    q_debitos2Fornecedor: TStringField;
    q_debitos2Codigo: TStringField;
    q_debitos2Contabilizado_cliente: TIntegerField;
    q_debitos2REG_creditos: TIntegerField;
    q_debitos2Processo_FundoFIXO: TStringField;
    q_debitos2Descricao: TStringField;
    q_debitos2Importador: TStringField;
    T_numerarios2Empresa: TStringField;
    T_numerarios2Filial: TStringField;
    T_numerarios2Processo: TStringField;
    T_numerarios2REG: TAutoIncField;
    T_numerarios2Numerario: TStringField;
    T_numerarios2Usuario_Previsao: TStringField;
    T_numerarios2Data_Previsao: TDateTimeField;
    T_numerarios2Valor_Previsao: TFloatField;
    T_numerarios2Previsao_solicitada: TStringField;
    T_numerarios2Ok_Previsao_financeiro: TStringField;
    T_numerarios2Usuario_Financeiro: TStringField;
    T_numerarios2Data_Registro: TDateTimeField;
    T_numerarios2Valor_Registrado: TFloatField;
    T_numerarios2Valor_Contabilizado: TFloatField;
    T_numerarios2Contabilizado: TStringField;
    T_numerarios2Usuario_Contablizado: TStringField;
    T_numerarios2Conta_Corrente: TIntegerField;
    T_numerarios2Codigo_mov: TIntegerField;
    T_numerarios2Impdemfim: TStringField;
    T_numerarios2Detalhe: TStringField;
    T_numerarios2Docsis: TStringField;
    T_numerarios2Fatura_mov: TStringField;
    T_numerarios2Fornecedor: TStringField;
    T_numerarios2Codigo: TStringField;
    T_numerarios2Contabilizado_cliente: TIntegerField;
    T_numerarios2REG_creditos: TIntegerField;
    T_numerarios2Processo_FundoFIXO: TStringField;
    t_numerarios3Empresa: TStringField;
    t_numerarios3Filial: TStringField;
    t_numerarios3Processo: TStringField;
    t_numerarios3REG: TAutoIncField;
    t_numerarios3Numerario: TStringField;
    t_numerarios3Usuario_Previsao: TStringField;
    t_numerarios3Data_Previsao: TDateTimeField;
    t_numerarios3Valor_Previsao: TFloatField;
    t_numerarios3Previsao_solicitada: TStringField;
    t_numerarios3Ok_Previsao_financeiro: TStringField;
    t_numerarios3Usuario_Financeiro: TStringField;
    t_numerarios3Data_Registro: TDateTimeField;
    t_numerarios3Valor_Registrado: TFloatField;
    t_numerarios3Valor_Contabilizado: TFloatField;
    t_numerarios3Contabilizado: TStringField;
    t_numerarios3Usuario_Contablizado: TStringField;
    t_numerarios3Conta_Corrente: TIntegerField;
    t_numerarios3Codigo_mov: TIntegerField;
    t_numerarios3Impdemfim: TStringField;
    t_numerarios3Detalhe: TStringField;
    t_numerarios3Docsis: TStringField;
    t_numerarios3Fatura_mov: TStringField;
    t_numerarios3Fornecedor: TStringField;
    t_numerarios3Codigo: TStringField;
    t_numerarios3Contabilizado_cliente: TIntegerField;
    t_numerarios3REG_creditos: TIntegerField;
    t_numerarios3Processo_FundoFIXO: TStringField;
    cbVerificaDesmembramento: TCheckBox;
    q_plano: TQuery;
    q_planoEmpresa: TStringField;
    q_planoFilial: TStringField;
    q_planoCodigo: TStringField;
    q_planoDescricao: TStringField;
    Q_creditosEmpresa: TStringField;
    Q_creditosFilial: TStringField;
    Q_creditosConta_Corrente: TIntegerField;
    Q_creditosCodigo_mov: TIntegerField;
    Q_creditosData_Credito: TDateTimeField;
    Q_creditosContabilizado: TStringField;
    Q_creditosProcesso: TStringField;
    Q_creditosREG: TAutoIncField;
    Q_creditosCredito: TStringField;
    Q_creditosDescricao: TStringField;
    Q_creditosValor: TFloatField;
    cbFixaNumerario: TCheckBox;
    T_movccCodigo_SOLCHEQUE: TStringField;
    t_tiposnumerarios2: TTable;
    ds_tiposnumerarios2: TDataSource;
    q_Num: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    AutoIncField1: TAutoIncField;
    StringField4: TStringField;
    StringField5: TStringField;
    DateTimeField1: TDateTimeField;
    FloatField1: TFloatField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    DateTimeField2: TDateTimeField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    StringField9: TStringField;
    StringField10: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField11: TStringField;
    StringField12: TStringField;
    q_debitosSaldo: TFloatField;
    q_debitosRazao_Social: TStringField;
    tbEmailAuto: TTable;
    tbEmailAutoCodigo: TAutoIncField;
    tbEmailAutoPrograma: TStringField;
    tbEmailAutoAssunto: TStringField;
    tbEmailAutoTitulo: TStringField;
    tbEmailAutoDe: TStringField;
    tbEmailAutoPara: TStringField;
    tbEmailAutoCC: TStringField;
    tbEmailAutoCCO: TStringField;
    tbEmailAutoBody: TMemoField;
    tbEmailAutoAnexo: TStringField;
    tbEmailAutoHTML: TIntegerField;
    tbEmailAutoData: TDateTimeField;
    tbEmailAutoHora: TDateTimeField;
    p_filtrar: TPanel;
    Label48: TLabel;
    b_aplicarfiltro: TBitBtn;
    b_cancelafiltro: TBitBtn;
    t_lancamentocc: TTable;
    q_importadores_grupos: TQuery;
    q_importadores_gruposNome_Grupo: TStringField;
    q_importadores_gruposCodigo: TStringField;
    ds_importadores_grupos: TDataSource;
    GroupBox1: TGroupBox;
    Label47: TLabel;
    Label49: TLabel;
    me_datafinal: TMaskEdit;
    me_datainicial: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    me_valorfinal: TEdit;
    me_valorinicial: TEdit;
    Label54: TLabel;
    dblcTpLancamento: TDBLookupComboBox;
    Label45: TLabel;
    dblcCliente: TDBLookupComboBox;
    sbLimpaCliente: TBitBtn;
    sbLimpaTpLancamento: TBitBtn;
    T_movccCodigo_ContasAPagar: TStringField;
    OP: TOpenDialog;
    btnPdfSd: TBitBtn;
    qryParametro: TQuery;
    qryParametroNumerador_Documentos: TStringField;
    qryIncDocs: TQuery;
    qryUpdateN: TQuery;
    qryDelErro: TQuery;
    qryArquivos: TQuery;
    qryArquivosNumero_Doc: TStringField;
    qryArquivosCodigo: TStringField;
    qryArquivosArquivo: TStringField;
    qryArquivosObservacoes: TStringField;
    qryArquivosData_envio: TDateTimeField;
    ds_Arquivos: TDataSource;
    pnlUploadPdf: TPanel;
    Label56: TLabel;
    Label55: TLabel;
    btnBuscar: TSpeedButton;
    SpeedButton2: TSpeedButton;
    GroupBox2: TGroupBox;
    DBGrid13: TDBGrid;
    edtCaminho: TEdit;
    btnUpload: TBitBtn;
    btnFechaPnlUpload: TBitBtn;
    lblPdfs: TLabel;
    Label57: TLabel;
    edtObservacoesPdf: TEdit;
    btnExcluirPdf: TBitBtn;
    btnPdfDeb: TBitBtn;
    q_debitosArquivo: TStringField;
    cbVerificaDigitalizacao: TCheckBox;
    T_movccDigitaliza: TSmallintField;
    cb_processos_financ: TCheckBox;
    q_creditos_financ: TQuery;
    q_debitos_financ: TQuery;
    q_creditos_financEmpresa: TStringField;
    q_creditos_financFilial: TStringField;
    q_creditos_financConta_Corrente: TIntegerField;
    q_creditos_financCodigo_mov: TIntegerField;
    q_creditos_financData_Credito: TDateTimeField;
    q_creditos_financContabilizado: TStringField;
    q_creditos_financProcesso: TStringField;
    q_creditos_financREG: TAutoIncField;
    q_creditos_financCredito: TStringField;
    q_creditos_financDescricao: TStringField;
    q_creditos_financValor: TFloatField;
    q_debitos_financEmpresa: TStringField;
    q_debitos_financFilial: TStringField;
    q_debitos_financProcesso: TStringField;
    q_debitos_financREG: TAutoIncField;
    q_debitos_financNumerario: TStringField;
    q_debitos_financUsuario_Previsao: TStringField;
    q_debitos_financData_Previsao: TDateTimeField;
    q_debitos_financValor_Previsao: TFloatField;
    q_debitos_financPrevisao_solicitada: TStringField;
    q_debitos_financOk_Previsao_financeiro: TStringField;
    q_debitos_financUsuario_Financeiro: TStringField;
    q_debitos_financData_Registro: TDateTimeField;
    q_debitos_financValor_Registrado: TFloatField;
    q_debitos_financValor_Contabilizado: TFloatField;
    q_debitos_financContabilizado: TStringField;
    q_debitos_financUsuario_Contablizado: TStringField;
    q_debitos_financConta_Corrente: TIntegerField;
    q_debitos_financCodigo_mov: TIntegerField;
    q_debitos_financDetalhe: TStringField;
    q_debitos_financDescricao: TStringField;
    q_debitos_financSALDO: TFloatField;
    q_debitos_financRazao_Social: TStringField;
    q_debitos_financArquivo: TStringField;
    t_lancamento: TTable;
    t_lancamentoccCodigo: TAutoIncField;
    t_lancamentoccDescricao: TStringField;
    t_lancamentoccPositivo: TIntegerField;
    q_processos: TQuery;
    q_processosEmpresa: TStringField;
    q_processosFilial: TStringField;
    q_processosCodigo: TStringField;
    q_processosFaturado: TIntegerField;
    q_processossaldo_faturamento: TFloatField;
    t_tiposnumerarios2Empresa: TStringField;
    t_tiposnumerarios2Filial: TStringField;
    t_tiposnumerarios2Codigo: TStringField;
    t_tiposnumerarios2Descricao: TStringField;
    t_tiposnumerarios2Plano_contas: TStringField;
    t_tiposnumerarios2Rateio: TStringField;
    t_tiposnumerarios2ContabilizaCC: TIntegerField;
    t_tiposnumerarios2Sequencia: TAutoIncField;
    q_incnumerarios: TQuery;
    edtValor_Contabilizado: TEdit;
    edtDetalhe: TEdit;
    q_desmdebatual: TQuery;
    q_desmdebatualREG: TIntegerField;
    dbedtDetalheCredito: TDBEdit;
    Q_creditosDetalhe: TStringField;
    qrEmailsAvisos: TQuery;
    qrEmailsAvisosEmpresa: TStringField;
    qrEmailsAvisosFilial: TStringField;
    qrEmailsAvisosImportador: TStringField;
    qrEmailsAvisosTipo: TStringField;
    qrEmailsAvisosEmail: TStringField;
    qrEmailsAvisosNome_completo: TStringField;
    qrEmailsAvisosParametros: TStringField;
    qrEmailsAvisosHTML: TIntegerField;
    qrEmailsAvisosPlataforma: TStringField;
    qrEmailsAvisosCnpj_Importador: TStringField;
    qrEmailsAvisosPara: TBooleanField;
    qrEmailsAvisosCc: TBooleanField;
    qrEmailsAvisosCCo: TBooleanField;
    qrEmailsAvisosAtivo: TBooleanField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure t_contascorrentesAfterScroll(DataSet: TDataSet);
    procedure btnNovoClick(Sender: TObject);
    procedure b_novacontaClick(Sender: TObject);
    procedure b_gravarcontaClick(Sender: TObject);
    procedure b_excluircontaClick(Sender: TObject);
    procedure b_fechaincluiClick(Sender: TObject);
    procedure b_gravaincluiClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure btndesmembrarClick(Sender: TObject);
    procedure b_okprocClick(Sender: TObject);
    procedure b_fechaprocessoClick(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure b_fechadesmcredClick(Sender: TObject);
    procedure b_excluidcredClick(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure b_novodcredClick(Sender: TObject);
    procedure b_gravarcredClick(Sender: TObject);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure btnLocalizarClick(Sender: TObject);
    procedure b_oklocClick(Sender: TObject);
    procedure b_extratoClick(Sender: TObject);
    procedure b_fechaextratoClick(Sender: TObject);
    procedure b_fechadebitoClick(Sender: TObject);
    procedure b_fechadesmdebClick(Sender: TObject);
    procedure b_novodebClick(Sender: TObject);
    procedure b_okdebitoClick(Sender: TObject);
    procedure b_gravadebClick(Sender: TObject);
    procedure b_excluidebClick(Sender: TObject);
    procedure b_imprimirextratoClick(Sender: TObject);
    procedure me_datafinExit(Sender: TObject);
    procedure Q_extratoAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure b_novodebitoClick(Sender: TObject);
    procedure e_procChange(Sender: TObject);
    procedure b_gravanovClick(Sender: TObject);
    procedure b_cancelanovClick(Sender: TObject);
    procedure q_processoChange(Sender: TObject);
    procedure DBEdit18Change(Sender: TObject);
    procedure posiciona(apos:integer);
    procedure dbl_clientesExit(Sender: TObject);
    procedure ohint(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sb_limpaClick(Sender: TObject);
    procedure T_movccAfterScroll(DataSet: TDataSet);
    procedure T_numerarios2BeforePost(DataSet: TDataSet);
    procedure t_numerariosBeforePost(DataSet: TDataSet);
    procedure b_saldosClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure b_cargaClick(Sender: TObject);
    procedure b_incluirfatClick(Sender: TObject);
    procedure b_fecharfatClick(Sender: TObject);
    procedure t_creditosBeforeDelete(DataSet: TDataSet);
    procedure t_numerariosAfterPost(DataSet: TDataSet);
    procedure T_numerarios2AfterPost(DataSet: TDataSet);
    procedure t_numerariosBeforeDelete(DataSet: TDataSet);
    procedure T_numerarios2BeforeDelete(DataSet: TDataSet);
    procedure T_movccAfterPost(DataSet: TDataSet);
    procedure T_movccBeforeDelete(DataSet: TDataSet);
    procedure DBEdit9Enter(Sender: TObject);
    procedure T_movccBeforePost(DataSet: TDataSet);
    procedure b_saldosdiariosClick(Sender: TObject);
    procedure b_recalcularClick(Sender: TObject);
    procedure DBGrid12DblClick(Sender: TObject);
    procedure p_filtrarExit(Sender: TObject);
    procedure b_filtrarClick(Sender: TObject);
    procedure b_aplicarfiltroClick(Sender: TObject);
    procedure b_cancelafiltroClick(Sender: TObject);
    procedure t_creditosAfterPost(DataSet: TDataSet);
    procedure Q_creditosAfterScroll(DataSet: TDataSet);
    procedure dbl_planoExit(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure DBG_CCDblClick(Sender: TObject);
    procedure q_contaspAfterScroll(DataSet: TDataSet);
    procedure b_okcpClick(Sender: TObject);
    procedure e_contaspChange(Sender: TObject);
    procedure e_contaspEnter(Sender: TObject);
    procedure b_fechacpClick(Sender: TObject);
    procedure b_cpClick(Sender: TObject);
    procedure acCalculaSaldoExecute(Sender: TObject);
    procedure e_valorapagarKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure AtuSaldo_fat(QPRO:STRING);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure q_processoExit(Sender: TObject);
    procedure cb_todosClick(Sender: TObject);
    procedure b_cancelcredClick(Sender: TObject);
    procedure t_saldosdiariosAfterPost(DataSet: TDataSet);
    procedure cbFixaNumerarioClick(Sender: TObject);
    procedure q_debitosSaldoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure sbLimpaTpLancamentoClick(Sender: TObject);
    procedure sbLimpaClienteClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnUploadClick(Sender: TObject);
    procedure btnPdfSdClick(Sender: TObject);
    procedure edtCaminhoChange(Sender: TObject);
    procedure btnFechaPnlUploadClick(Sender: TObject);
    procedure DBGrid13DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnExcluirPdfClick(Sender: TObject);
    procedure DBGrid5DblClick(Sender: TObject);
    procedure dblc_tipolancaExit(Sender: TObject);
    procedure q_creditos_financAfterScroll(DataSet: TDataSet);
    procedure q_debitos2AfterScroll(DataSet: TDataSet);
    procedure DBL_tiposExit(Sender: TObject);
  private
    procedure BuscaCodigoMovimentacao(Doc, Historico, Valor: String);

    procedure AlteraDatasDesmembramento(Codigo_Mov, Positivo : Integer; Data : String);

    procedure EnviaEmailRecebimentoNumerarios;

    procedure AtualizaGridArquivosPDF;

    function RetornaNumeradorDocumentoSaldoDiario : Integer;

    { FUNÇÃO PARA VERIFICAR A FAIXA DO ARQUIVO }
    function verificarFaixa(a: String): String;

    function TrocarVirgula(valor: double): String;

    function AtualizaDataRecebimentoProcessoPlanilhaTransocean : Boolean;

    function AtualizaDataRecebimentoProcessoPlanilhaBrasdril : Boolean;

    procedure LimpaCamposDesmDeb;

    { Private declarations }
  public
    QtdMovimentacoes, Posicao : Integer;
    Movimentacao : array [1..20000] of string;

    { Public declarations }
  end;

var
  f_contascorrentes: Tf_contascorrentes;
  qsaldo : real;
  qpos : integer;
  qdataini,qdatafin, qvalorini, qvalorfin, qimportador : string;
  qregcred, qtplanc : integer;
  Valor_Contabilizado : Double;

  vDe, vPara, vCC, vCCO : String;
  vAssunto : String;
  vUsuario : String;
  vTitulo  : String;
  vBody    : String;
  vHTML    : integer = 1;
  vAnexo   : String = '';
  nome     : string;

implementation

uses u_clientes, U_MSCOMEX, u_relextrato, u_relextrato_financ, u_relsaldos, u_contasp, u_localizarcontascorrentes;

{$R *.DFM}

procedure Tf_contascorrentes.ohint(Sender: TObject);
var
  qplano:string;
begin
  if q_plano.locate('codigo',t_movccplano_contas.asstring,[]) then
    qplano := q_planodescricao.asstring
  else
    qplano := '';

  dbgrid1.hint := 'Empresa/Cliente : ' + t_importadoresrazao_social.asstring + #10#13 + 
                  'Plano de Contas : ' + qplano;
end;

procedure Tf_contascorrentes.posiciona(apos:integer);
begin
  if not q_mov.locate('codigo_mov',apos,[])
   then q_mov.last;
end;

procedure Tf_contascorrentes.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  I: Integer;
begin
  if Assigned(f_localizarcontascorrentes)
   then f_localizarcontascorrentes.Close;

  for I := 0 to pred(ComponentCount) do
   begin
     if Components[I] is TQuery
      then TQuery(Components[I]).Close
      else if Components[I] is TTable
            then TTable(Components[I]).Close;
   end;

  action := cafree;
  f_contascorrentes := nil;
  f_mscomex.Movimentaes1.enabled := true;
end;

procedure Tf_contascorrentes.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_contascorrentes.t_contascorrentesAfterScroll(
  DataSet: TDataSet);
begin
  if qdataini = ''
    then qdataini := '01/01/2000';

  if qdatafin = ''
    then qdatafin := '31/12/2050';

  panel3.Caption := 'Movimentações da Conta Corrente - ' + trim(t_contascorrentesdescricao.asstring);

  if (qdataini <> '01/01/2000') or (qdatafin <> '31/12/2050')
   then begin
     panel3.Caption := 'Movimentações da Conta Corrente - ' + trim(t_contascorrentesdescricao.asstring) + ' - Filtro ';

     if qdataini <> '01/01/2000'
      then panel3.Caption := panel3.caption+'de '+qdataini;

     if qdatafin <> '31/12/2050'
      then panel3.Caption := panel3.caption+'até '+qdatafin;

     panel3.refresh;
   end;
   
  q_mov.close;
  q_mov.SQL.Clear;
  q_mov.SQL.Add(' SELECT Movimentacao_Contas_Correntes.Empresa,      ');
  q_mov.SQL.Add('        Movimentacao_Contas_Correntes.Filial,       ');
  q_mov.SQL.Add('        Movimentacao_Contas_Correntes.Codigo,       ');
  q_mov.SQL.Add('        Movimentacao_Contas_Correntes.Data,         ');
  q_mov.SQL.Add('        Movimentacao_Contas_Correntes.Tipo,         ');
  q_mov.SQL.Add('        Tipos_Lancamento_Ccorrente.Descricao,       ');
  q_mov.SQL.Add('        Movimentacao_Contas_Correntes.Doc,          ');
  q_mov.SQL.Add('        Movimentacao_Contas_Correntes.Historico,    ');
  q_mov.SQL.Add('        Movimentacao_Contas_Correntes.Valor,        ');
  q_mov.SQL.Add('        Movimentacao_Contas_Correntes.Cliente,      ');
  q_mov.SQL.Add('        Movimentacao_Contas_Correntes.Codigo_Mov,   ');
  q_mov.SQL.Add('        Movimentacao_Contas_Correntes.Codigo_SOLREG ');

  q_mov.SQL.Add('   FROM Movimentacao_Contas_Correntes LEFT JOIN Tipos_Lancamento_Ccorrente                                      ');
  q_mov.SQL.Add('     ON Movimentacao_Contas_Correntes.Tipo = Tipos_Lancamento_Ccorrente.Codigo LEFT JOIN Importadores_Agrupados ');
  q_mov.SQL.Add('     ON Movimentacao_Contas_Correntes.Cliente = Importadores_Agrupados.Codigo                                   ');

  if (t_contascorrentesEmpresa.AsString <> '')
   then begin
     q_mov.SQL.Add(' WHERE Movimentacao_Contas_Correntes.Empresa = :QEMPRESA ');
     q_mov.ParamByName('QEMPRESA').asstring := t_contascorrentesempresa.asstring;
   end;

  if (t_contascorrentesfilial.asstring <> '')
   then begin
     q_mov.SQL.Add('   AND Movimentacao_Contas_Correntes.Filial = :QFILIAL ');
     q_mov.ParamByName('QFILIAL').asstring := t_contascorrentesfilial.asstring;
   end;

  if (t_contascorrentescodigo.asinteger > 0)
   then begin
     q_mov.SQL.Add('   AND Movimentacao_Contas_Correntes.Codigo = :QCONTA ');
     q_mov.ParamByName('QCONTA').AsInteger := t_contascorrentescodigo.asinteger;
   end;

  if (qdataini <> '')
   then begin
     q_mov.SQL.Add('   AND Movimentacao_Contas_Correntes.Data >= :qdataini ');
     q_mov.ParamByName('qdataini').asdatetime := strtodate(qdataini);
   end;

  if (qdatafin <> '')
   then begin
     q_mov.SQL.Add('   AND Movimentacao_Contas_Correntes.Data <= :qdatafin ');
     q_mov.ParamByName('qdatafin').asdatetime := strtodate(qdatafin);
   end;

  if (qvalorini <> '')
   then begin
     q_mov.SQL.Add('   AND CAST(Movimentacao_Contas_Correntes.Valor AS MONEY) >= :qvalorini ');
     q_mov.ParamByName('qvalorini').AsFloat := StrToFloat(qvalorini);
   end;

  if (qvalorfin <> '')
   then begin
     q_mov.SQL.Add('   AND CAST(Movimentacao_Contas_Correntes.Valor AS MONEY) <= :qvalorfin ');
     q_mov.ParamByName('qvalorfin').AsFloat := StrToFloat(qvalorfin);
   end;

  if (qtplanc > 0)
   then begin
     q_mov.SQL.Add('   AND Movimentacao_Contas_Correntes.Tipo = :qtplanc ');
     q_mov.ParamByName('qtplanc').Value := qtplanc;
   end;

  if (qimportador <> '')
   then begin
     {Código Cliente}
     if (Length(qimportador) = 3)
      then q_mov.SQL.Add('   AND Importadores_Agrupados.Codigo = :qImportador ');

     {Código Cliente Agrupado}
     if (Length(qimportador) = 4)
      then q_mov.SQL.Add('   AND Importadores_Agrupados.Codigo_AGRUPADO = :qImportador ');

     q_mov.ParamByName('qimportador').Value := qimportador;
   end;

  q_mov.SQL.Add(' ORDER BY Movimentacao_Contas_Correntes.Data DESC, Movimentacao_Contas_Correntes.Codigo_Mov DESC; ');
  q_mov.open;

  q_saldo.close;
  q_saldo.params[0].asstring  := t_contascorrentesempresa.asstring;
  q_saldo.params[1].asstring  := t_contascorrentesfilial.asstring;
  q_saldo.params[2].asinteger := t_contascorrentescodigo.asinteger;
  q_saldo.open;

  q_cc_update.close;
  q_cc_update.Params[0].asfloat  := q_saldosaldo.asfloat;
  q_cc_update.Params[1].AsString := t_contascorrentescodigo.asstring;
  q_cc_update.ExecSQL;

  if Assigned(f_localizarcontascorrentes)
   then f_localizarcontascorrentes.e_chave.Clear;
end;

procedure Tf_contascorrentes.btnNovoClick(Sender: TObject);
begin
  if (t_movcccodigo_solreg.asstring <> '') and (not t_movcccodigo_solreg.IsNull) and (sender <> btnnovo)
   then begin
     showmessage(v_usuario+', Lançamento CONTABILIZADO pelo Controle de Solicitações de Autorização de Registros,'+#13#10+' não pode ser excluído/alterado pelo conta corrente.'+#13#10+' Deverá ser DESCONTABILIZADO no Controle de Solicitações de Registro.');
     Exit;
   end;

  if (T_movccTipo.AsInteger = 7) and (Length(T_movccCodigo_SOLCHEQUE.AsString) = 8) and (sender <> btnnovo)
   then begin
     showmessage(v_usuario+', Lançamento CONTABILIZADO pelo Controle de Solicitações de Cheques,'+#13#10+' não pode ser excluído/alterado pelo conta corrente.'+#13#10+' Deverá ser DESCONTABILIZADO no Controle de Solicitações de Cheques.');
     Exit;
   end;

  if (T_movccTipo.AsInteger = 7) and (not T_movccCodigo_ContasAPagar.IsNull) and (sender <> btnnovo)
   then begin
     showmessage(v_usuario+', Lançamento CONTABILIZADO pelo Contas a Pagar,'+#13#10+' não pode ser excluído/alterado pelo conta corrente.'+#13#10+' Deverá ser DESCONTABILIZADO no Contas a Pagar.');
     Exit;
   end;

  p_incluir.top    := 26;
  p_incluir.left   := 140;
  p_incluir.width  := 474;
  p_incluir.height := 279;

  DBEdit4.Enabled := true;

  if sender = btnnovo
   then begin
     l_titulo.caption  := 'Inclusão de Movimentação';
     b_gravainclui.tag := 0;

     if MessageDlg('Deseja Incluir uma Nova Movimentação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
      then begin
        dbl_plano.enabled                := true;
        dblc_tipolanca.enabled           := true;
        p_incluir.visible                := true;
        cbVerificaDesmembramento.Enabled := true;
        cbVerificaDigitalizacao.Enabled  := true;

        if t_movcc.state = dsinsert then
          t_movcc.edit
        else
          t_movcc.append;

        T_movccdesmembra.asinteger  := 1;
        T_movccDigitaliza.asinteger := 1;
        t_movccdata.asdatetime     := StrToDate(v_dataFollow);
        dbedit1.setfocus;

        cbVerificaDesmembramento.Checked := true;
        cbVerificaDigitalizacao.Checked  := true;
      end;
   end
   else begin /// alteração
     if t_movcctipo.asinteger = 1 then
       showmessage('Crédito referente a débitos de clientes deverão ser alterados no desmembramento de débitos.')
     else begin
       l_titulo.caption := 'Alteração de Movimentação';

       dblc_tipolanca.enabled           := false;
       p_incluir.visible                := true;
       cbVerificaDesmembramento.Enabled := true;
       cbVerificaDigitalizacao.Enabled  := true;

       b_gravainclui.tag := 1;
       dbedit1.setfocus;

       if T_movccdesmembra.asinteger = 1 then
         cbVerificaDesmembramento.Checked := true
       else
         cbVerificaDesmembramento.Checked := false;

       if T_movccdigitaliza.asinteger = 1 then
         cbVerificaDigitalizacao.Checked := true
       else
         cbVerificaDigitalizacao.Checked := false;

       cbVerificaDigitalizacao.Visible := ((T_movccTipo.AsInteger = 2) or (T_movccTipo.AsInteger = 5) or (T_movccTipo.AsInteger = 7));         

       {wellington - 27/09/2011 - Retirado a pedido da Duda, para permitir a alteração do valor da movimentação}
       if (v_usuario <> 'DUDA') and (v_usuario <> 'FABIANO')
        then if (T_movccData.AsDateTime <> Date())
              then DBEdit4.Enabled := false;
     end;
   end;

  if T_movccdesmembra.asinteger = 1
   then begin
     if v_usuario <> 'DUDA'
      then cbVerificaDesmembramento.Enabled := false;
   end;

  if T_movccDigitaliza.asinteger = 1
   then begin
     if v_usuario <> 'DUDA'
      then cbVerificaDigitalizacao.Enabled  := false;
   end;

end;

procedure Tf_contascorrentes.b_novacontaClick(Sender: TObject);
begin
  if MessageDlg('Deseja Incluir uma Nova Conta Corrente?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
    then t_contascorrentes.append;
end;

procedure Tf_contascorrentes.b_gravarcontaClick(Sender: TObject);
begin
  if t_contascorrentes.state = dsedit
    then t_contascorrentes.post;
end;

procedure Tf_contascorrentes.b_excluircontaClick(Sender: TObject);
begin
  if MessageDlg('Deseja Excluir esta Conta Corrente?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
    then t_contascorrentes.delete;
end;

procedure Tf_contascorrentes.b_fechaincluiClick(Sender: TObject);
begin
  if t_movcc.state = dsedit
   then begin
     if b_gravainclui.tag = 0
      then begin
        if MessageDlg('Cancela inclusão?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
         then t_movcc.cancel
         else Exit;         
//         else t_movcc.post;
      end
      else begin
        if MessageDlg('Cancela alteração?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
         then t_movcc.cancel
         else Exit;
//       else t_movcc.post;
      end;
   end
   else t_movcc.cancel;

  p_incluir.Visible := false;   
  panel4.setfocus;
end;

procedure Tf_contascorrentes.b_gravaincluiClick(Sender: TObject);
var
  vData: TDate;
  Positivo : Integer; 
begin
  ///coloquei em 20/12/2010 - duda
  try
    vData := StrToDate(dbEdit1.Text);
  except
    MessageDlg('Data inválida!', mtWarning, [mbOk], 0);
    dbEdit1.SetFocus;
    Exit;
  end;

  if (v_usuario <> 'DUDA') and (V_USUARIO <> 'MM')  and (V_USUARIO <> 'FABIANO') and (q_movData.AsString <> DBEdit1.Text)
   then begin
     if (vData < StrToDate(v_dataFollowant)) and (T_movccTipo.AsInteger <> 7)
      then begin
        MessageDlg(V_USUARIO+', A Data não pode ser menor do que o Dia Útil anterior ('+v_dataFollowant+') a Data atual do sistema '+v_dataFollow+' !', mtWarning, [mbOk], 0);
        dbEdit1.SetFocus;
        Exit;
      end;

     {wellington - 27/09/2011 - Retirado a pedido da Duda, para permitir a inclusão de movimentação para Datas posteriores}
     {if vData > StrToDate(v_dataFollow)
      then begin
        MessageDlg(V_USUARIO+', A Data não pode ser maior do que a Data Atual do sistema '+v_dataFollow+' !', mtWarning, [mbOk], 0);
        dbEdit1.SetFocus;
        Exit;
      end;}
   end;

  if ((t_movcccliente.asstring <> '') and (t_movcctipo.asstring <> '') and(t_movcchistorico.asstring <> '') and (t_movccvalor.asfloat <> 0))
   then begin
     //não deixar gravar em saldos já fechados mm 10/03/2006
     t_saldosdiarios.last;

     while not t_saldosdiarios.Bof do
      begin
        if t_movccdata.asdatetime <= t_saldosdiariosdata.asdatetime
         then begin
           if t_saldosdiariosfechado.asstring = 'SIM'
            then begin
              Showmessage(v_usuario+', ATENÇÃO! Exite(m) saldo(s) diário(s) fechado(s) nesta data ('+datetostr(t_movccdata.asdatetime)+') ou posteriores! Se confirmar esta operação, será necessário recalcular todos os saldos diários iguais e/ou posteriores a esta data.');
              logusu('A','Recebeu Aviso: '+v_usuario+', ATENÇÃO! Exite(m) saldo(s) diário(s) fechado(s) nesta data ('+datetostr(t_movccdata.asdatetime)+') ou posteriores! Se confirmar esta operação, será necessário recalcular todos os saldos diários iguais e/ou posteriores a esta data.');
              t_saldosdiarios.First;
            end;
         end;

        t_saldosdiarios.Prior;
      end;

     t_movcc.edit;

     if t_movccvalor.asfloat < 0
      then t_movccvalor.asfloat := t_movccvalor.asfloat * (-1); 

     if b_gravainclui.tag = 0
      then begin
        if MessageDlg('Confirma Inclusão desta Movimentação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
         then begin
           try
             t_movccempresa.asstring := t_contascorrentesempresa.AsString;
             t_movccfilial.asstring  := t_contascorrentesfilial.AsString;
             t_movcccodigo.asinteger := t_contascorrentescodigo.AsInteger;

             if (t_lancamentopositivo.asinteger = 0)
              then t_movccvalor.asfloat := (t_movccvalor.asfloat*(-1));

             if t_movccplano_contas.asstring <> 'CPMF'
              then begin
                T_movccData_apuracao_cpmf_inicial.AsString := '';
                T_movccData_apuracao_cpmf_final.AsString   := '';
              end;

             T_movccCodigo_Mov.AsString := '';
             t_movcc.post;
             qpos := t_movcccodigo_mov.asinteger;
             posiciona(qpos);
           except
             On E:Exception do
              begin
                qpos := t_movcccodigo_mov.asinteger;
                t_movcc.post;
                posiciona(qpos);
              end;
           end;

           if MessageDlg('Inclusão efetuada! Deseja continuar incluindo Movimentações?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
            then begin
              t_movcc.append;
              t_movccempresa.asstring := t_contascorrentesempresa.AsString;
              t_movccfilial.asstring  := t_contascorrentesfilial.AsString;
              t_movcccodigo.asinteger := t_contascorrentescodigo.AsInteger;
              t_movccdata.asdatetime  := StrToDate(v_dataFollow);
              dbedit1.setfocus;
            end
            else begin
              p_incluir.Visible := false;
              panel4.setfocus;
            end;
         end
         else Exit;
      end
      else begin
        if MessageDlg('Confirma Alteração desta Movimentação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
         then begin
           qpos := t_movcccodigo_mov.asinteger;

           if (t_lancamentopositivo.asinteger = 0)
            then t_movccvalor.asfloat := (t_movccvalor.asfloat*(-1));

           Positivo := t_lancamentopositivo.asinteger;

           t_movcc.post;

           AlteraDatasDesmembramento(qpos, Positivo, DateToStr(vData));

           posiciona(qpos);

           p_incluir.Visible := false;
           panel4.setfocus;
         end
         else Exit;
      end;
   end
   else showmessage('Verifique cliente/empresa, tipo de lançamento, histórico ou valor!');

  dbl_clientesExit(f_contascorrentes);
end;

procedure Tf_contascorrentes.btnExcluirClick(Sender: TObject);
begin
  if t_movcccodigo_solreg.asstring <> ''
   then begin
     showmessage(v_usuario+', Lançamento CONTABILIZADO pelo Controle de Solicitações de autorização de Registros,'+#13#10+' não pode ser excluído/alterado pelo conta corrente.'+#13#10+' Deverá ser DESCONTABILIZADO no Controle de Solicitações de Registro.');
     Exit;
   end;

  if (T_movccTipo.AsInteger = 7) and (Length(T_movccCodigo_SOLCHEQUE.AsString) = 8)
   then begin
     showmessage(v_usuario+', Lançamento CONTABILIZADO pelo Controle de Solicitações de Cheques,'+#13#10+' não pode ser excluído/alterado pelo conta corrente.'+#13#10+' Deverá ser DESCONTABILIZADO no Controle de Solicitações de Cheques.');
     Exit;
   end;

  if (T_movccTipo.AsInteger = 7) and (T_movccCodigo_ContasAPagar.asstring <> '')
   then begin
     showmessage(v_usuario+', Lançamento CONTABILIZADO pelo Contas a Pagar,'+#13#10+' não pode ser excluído/alterado pelo conta corrente.'+#13#10+' Deverá ser DESCONTABILIZADO no Contas a Pagar.');
     Exit;
   end;

  if t_movcctipo.asinteger = 1
   then showmessage('Crédito referente a débitos de clientes deverão ser excluídos no desmembramento de débitos.')
   else begin
     if MessageDlg('Confirma Exclusão desta Movimentação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
      then begin
        if t_lancamentopositivo.asinteger = 1
         then begin
           q_excluicred.close;
           q_excluicred.Params[0].asinteger := t_movcccodigo.asinteger;
           q_excluicred.Params[1].asinteger := t_movcccodigo_mov.asinteger;
           q_excluicred.execsql;
           t_movcc.delete;
         end
         else begin
           if (COPY(t_movcccliente.asstring,1,2) <> '00') and (t_movcccliente.asstring <> '407')
            then begin
              q_debitos.close;
              q_debitos.params[0].asinteger := t_contascorrentescodigo.asinteger;
              q_debitos.params[1].asinteger := t_movcccodigo_mov.asinteger;
              q_debitos.open;

              if q_debitos.recordcount > 0
               then showmessage('É necessário excluir o desmembramento.')
               else t_movcc.delete;
            end
            else begin
              q_excluideb.close;
              q_excluideb.Params[0].asinteger := t_movcccodigo.asinteger;
              q_excluideb.Params[1].asinteger := t_movcccodigo_mov.asinteger;
              q_excluideb.execsql;
              t_movcc.delete;
            end;
         end;
      end;
   end;
end;

procedure Tf_contascorrentes.DBEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = '.')
   then key := ',';
end;

procedure Tf_contascorrentes.btndesmembrarClick(Sender: TObject);
begin
  if (t_movccplano_contas.asstring <> '')
   then showmessage('Lançamento simples possui vínculo com Plano de Contas!')
   else begin
     if ((t_lancamentopositivo.asinteger = 1) or (t_movcctipo.asinteger = 1))
      then begin // créditos
//        if (COPY(t_movcccliente.asstring,1,2) <> '00') and (t_movcccliente.asstring <> '407')
//         then begin
           q_creditos.close;
           q_creditos.params[0].asinteger := t_contascorrentescodigo.asinteger;
           q_creditos.params[1].asinteger := t_movcccodigo_mov.asinteger;
           q_creditos.open;

           q_totaldesmcred.close;
           q_totaldesmcred.params[0].asinteger := t_contascorrentescodigo.asinteger;
           q_totaldesmcred.params[1].asinteger := t_movcccodigo_mov.asinteger;
           q_totaldesmcred.open;

           qsaldo := (t_movccvalor.asfloat-q_totaldesmcredvalor.asfloat);
           l_tdesmcred.caption := 'Total Desmembrado = '+ floattostrf(q_totaldesmcredvalor.asfloat,fffixed,15,2)+'  Saldo a Desmembrar = '+floattostrf(qsaldo,fffixed,15,2);

           p_desmcred.top     := 26;
           p_desmcred.left    := 20;
           p_desmcred.width   := 717;
           p_desmcred.height  := 335;
           p_desmcred.visible := true;

           if q_creditos.recordcount = 0
            then b_novodcredClick(f_contascorrentes)
            else begin
              b_novodcred.Enabled := True;
              b_novodcred.setfocus;
            end;  
//         end
//         else Showmessage('Lançamento de Crédito para empresa. Não é permitido desmembramento.');
      end
      else begin /// débitos
        if (COPY(t_movcccliente.asstring,1,2) <> '00') and (t_movcccliente.asstring <> '407')
         then begin
           showmessage('Lançamento de Débitos para Clientes' + #10#13#10#13 +
                       'Só serão permitidos referências:'    + #10#13 +
                       '(HONO)RÁRIOS, CPMF, ISS e Taxa de expediente que' + #10#13 +
                       'gerarão Créditos respectivos para a Empresa.');
         end;

        q_debitos.close;
        q_debitos.params[0].asinteger := t_contascorrentescodigo.asinteger;
        q_debitos.params[1].asinteger := t_movcccodigo_mov.asinteger;
        q_debitos.open;

        q_totaldesmdeb.close;
        q_totaldesmdeb.params[0].asinteger := t_contascorrentescodigo.asinteger;
        q_totaldesmdeb.params[1].asinteger := t_movcccodigo_mov.asinteger;
        q_totaldesmdeb.open;

        qsaldo := ((t_movccvalor.asfloat*(-1))- q_totaldesmdebvalor.asfloat);
        label23.caption := 'Total Desmembrado = ' + floattostrf(q_totaldesmdebvalor.asfloat,fffixed,15,2)+'  Saldo à Desmembrar = '+floattostrf(qsaldo,fffixed,15,2);
        
        p_desmdeb.top     := 26;
        p_desmdeb.left    := 20;
        p_desmdeb.width   := 717;
        p_desmdeb.height  := 335;
        p_desmdeb.visible := true;

        if (q_debitos.recordcount = 0) and (qsaldo > 0)
         then b_novodebClick(f_contascorrentes)
         else begin
           b_novodeb.Enabled := True;
           b_novodeb.setfocus;
         end;

        b_novodeb.Enabled   := true;
        b_gravadeb.Enabled  := true;
        b_excluideb.Enabled := true;
        b_cp.Enabled        := true;
        b_carga.Enabled     := true;

        dbedit15.Enabled := true;
        dbedit19.Enabled := true;
        dbedit16.Enabled := true;

        if t_movcccodigo_solreg.asstring <> ''
         then begin
           showmessage(v_usuario+', Lançamento CONTABILIZADO pelo Controle de Solicitações de autorização de Registros,'+#13#10+' não pode ser excluído/alterado pelo conta corrente.'+#13#10+' Deverá ser DESCONTABILIZADO no Controle de Solicitações de Registro.');

           b_novodeb.Enabled   := false;
           b_gravadeb.Enabled  := false;
           b_excluideb.Enabled := false;
           b_cp.Enabled        := false;
           b_carga.Enabled     := false;

           dbedit15.Enabled := false;
           dbedit19.Enabled := false;
           dbedit16.Enabled := false;
         end;

        if (T_movccTipo.AsInteger = 7) and (Length(T_movccCodigo_SOLCHEQUE.AsString) = 8)
         then begin
           showmessage(v_usuario+', Lançamento CONTABILIZADO pelo Controle de Solicitações de Cheques,'+#13#10+' não pode ser excluído/alterado pelo conta corrente.'+#13#10+' Deverá ser DESCONTABILIZADO no Controle de Solicitações de Cheques.');

           b_novodeb.Enabled   := false;
           b_gravadeb.Enabled  := false;
           b_excluideb.Enabled := false;
           b_cp.Enabled        := false;
           b_carga.Enabled     := false;

           dbedit15.Enabled := false;
           dbedit19.Enabled := false;
           dbedit16.Enabled := false;
         end;

        if (T_movccTipo.AsInteger = 7) and (T_movccCodigo_ContasAPagar.asstring <> '')
         then begin
           showmessage(v_usuario+', Lançamento CONTABILIZADO pelo Contas a Pagar,'+#13#10+' não pode ser excluído/alterado pelo conta corrente.'+#13#10+' Deverá ser DESCONTABILIZADO no Contas a Pagar.');

           b_novodeb.Enabled   := false;
           b_gravadeb.Enabled  := false;
           b_excluideb.Enabled := false;
           b_cp.Enabled        := false;
           b_carga.Enabled     := false;

           dbedit15.Enabled := false;
           dbedit19.Enabled := false;
           dbedit16.Enabled := false;
         end;
      end;
   end;
end;

procedure Tf_contascorrentes.b_okprocClick(Sender: TObject);
begin
  p_processos.visible := false;
  dbedit9.Text  := q_processos2codigo.asstring;
  dbedit10.Text := floattostr((q_processos2saldo_faturamento.asfloat*(-1)));
  dbl_tipos.setfocus;
end;

procedure Tf_contascorrentes.b_fechaprocessoClick(Sender: TObject);
begin
  p_processos.visible := false;
  b_fechadesmcred.setfocus;
end;

procedure Tf_contascorrentes.DBEdit9Exit(Sender: TObject);
begin
  q_processos2.close;
   
  if dbedit9.text <> ''
   then q_processos2.params[0].asstring := dbedit9.text
   else q_processos2.params[0].asstring := '%';

  q_processos2.params[1].asstring := t_movcccliente.asstring;
  q_processos2.open;

  if (q_processos2.recordcount = 0)
   then begin
     showmessage(v_usuario + ', ATENÇÃO! Não existem Processos com saldo a creditar, ou este Processo não pertence a este Cliente ou ao Grupo(ASC) de Clientes !');
     dbedit9.text := '';
     b_fechadesmcred.setfocus;
   end
   else begin
     if q_processos2.recordcount > 1
      then begin
        p_processos.visible := true;
        dbgrid4.setfocus;
      end
      else begin
        dbedit9.Text  := q_processos2codigo.asstring;
        dbedit10.Text := floattostr((q_processos2saldo_faturamento.asfloat*(-1)));
        dbl_tipos.setfocus;
      end;
   end;
end;

procedure Tf_contascorrentes.DBEdit9KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(13)
   then dbl_tipos.setfocus;
end;

procedure Tf_contascorrentes.b_fechadesmcredClick(Sender: TObject);
begin
  if t_creditos.state = dsedit
   then begin
    if MessageDlg('Cancela desmembramento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
     then t_creditos.cancel
     else t_creditos.post;
   end;

  p_desmcred.visible := false;
end;

procedure Tf_contascorrentes.b_excluidcredClick(Sender: TObject);
begin
  if MessageDlg('Confirma Exclusão deste Desmembramento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
   then begin
     t_creditos.delete;
     q_creditos.close;
     q_creditos.params[0].asinteger := t_contascorrentescodigo.asinteger;
     q_creditos.params[1].asinteger := t_movcccodigo_mov.asinteger;
     q_creditos.open;
     
     q_totaldesmcred.close;
     q_totaldesmcred.params[0].asinteger := t_contascorrentescodigo.asinteger;
     q_totaldesmcred.params[1].asinteger := t_movcccodigo_mov.asinteger;
     q_totaldesmcred.open;
     
     qsaldo := (t_movccvalor.asfloat-q_totaldesmcredvalor.asfloat);
     l_tdesmcred.caption := 'Total Desmembrado = '+ floattostrf(q_totaldesmcredvalor.asfloat,fffixed,15,2)+'  Saldo à Desmembrar = '+floattostrf(qsaldo,fffixed,15,2);
     p_desmcred.visible := true;
   end;
end;

procedure Tf_contascorrentes.DBEdit10Exit(Sender: TObject);
begin
  if (strtofloat(floattostrf(qsaldo,fffixed,15,2)) < strtofloat(floattostrf(strtofloat(dbedit10.text),fffixed,15,2)))
   then begin
     Showmessage('Saldo para desmembramento insuficiente.');
     dbedit10.text := '';
   end;
end;

procedure Tf_contascorrentes.b_novodcredClick(Sender: TObject);
begin
  if MessageDlg('Confirma Inclusão de um Novo desmembramento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
   then begin
     dbedit9.enabled   := true;
     dbedit10.enabled  := true;
     dbl_tipos.enabled := true;

     if t_creditos.state = dsinactive
      then t_creditos.open;

     t_creditos.append;
     t_creditosEmpresa.asstring         := t_contascorrentesempresa.asstring;
     t_creditosFilial.asstring          := t_contascorrentesfilial.asstring;
     t_creditosConta_Corrente.asinteger := t_contascorrentescodigo.asinteger;
     t_creditosprocesso.asstring        := 'NOVO';
     t_creditosCodigo_mov.asinteger     := t_movcccodigo_mov.asinteger;
     t_creditosContabilizado.asstring   := 'SIM';
     t_creditosData_Credito.asdatetime  := t_movccdata.asdatetime;
     t_creditosImpdemfim.asstring       := 'SIM';

     dbedit9.setfocus;
     b_novodcred.Enabled  := false;
     b_gravarcred.Enabled := true;
     b_cancelcred.Enabled := true;
   end;
end;

procedure Tf_contascorrentes.b_gravarcredClick(Sender: TObject);
begin
  if dbedit9.text = ''
   then begin
     showmessage(v_usuario+', ATENÇÃO! Informar o nº do Processo!');
     exit;
   end;

  t_creditos.edit;
  t_creditos.post;

  b_cancelcred.Enabled := false;
  b_novodcred.Enabled  := true;

  q_creditos.close;
  q_creditos.params[0].asinteger := t_contascorrentescodigo.asinteger;
  q_creditos.params[1].asinteger := t_movcccodigo_mov.asinteger;
  q_creditos.open;

  q_totaldesmcred.close;
  q_totaldesmcred.params[0].asinteger := t_contascorrentescodigo.asinteger;
  q_totaldesmcred.params[1].asinteger := t_movcccodigo_mov.asinteger;
  q_totaldesmcred.open;
  
  qsaldo := (t_movccvalor.asfloat-q_totaldesmcredvalor.asfloat);
  l_tdesmcred.caption := 'Total Desmembrado = '+ floattostrf(q_totaldesmcredvalor.asfloat,fffixed,15,2)+'  Saldo à Desmembrar = '+floattostrf(qsaldo,fffixed,15,2);

  p_desmcred.visible := true;
end;

procedure Tf_contascorrentes.DBEdit10KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = '.'
   then key := ',';
end;

procedure Tf_contascorrentes.btnLocalizarClick(Sender: TObject);
begin
  try
    if not Assigned(f_localizarcontascorrentes)
     then begin
       f_localizarcontascorrentes := Tf_localizarcontascorrentes.Create(Self);
       f_localizarcontascorrentes.Show;
     end
     else f_localizarcontascorrentes.Show;
  finally
    f_localizarcontascorrentes.Show;
  end;
end;

procedure Tf_contascorrentes.b_oklocClick(Sender: TObject);
begin
  if (f_localizarcontascorrentes.rg_localiza.itemindex = 0)
   then begin
     try
       if not q_mov.locate('data',strtodate(f_localizarcontascorrentes.e_chave.text),[])
        then showmessage('Parâmetro solicitado não foi localizado.');
     except
       showmessage('Parâmetro solicitado não foi localizado.');
     end;
   end;

  if (f_localizarcontascorrentes.rg_localiza.itemindex = 1)
   then begin
     try
       if (Trim(f_localizarcontascorrentes.e_chave.text) <> '')
        then begin
          BuscaCodigoMovimentacao(f_localizarcontascorrentes.e_chave.text,VAZIO,VAZIO);

          Posicao := 1;

          if Movimentacao[Posicao] <> ''
           then begin
             f_localizarcontascorrentes.btnProximo.Enabled := QtdMovimentacoes > 1;

             q_mov.locate('codigo_mov',Movimentacao[Posicao],[]);
           end
           else showmessage('Parâmetro solicitado não foi localizado.');
        end
        else showmessage('Parâmetro solicitado não foi localizado.');
     except
       showmessage('Parâmetro solicitado não foi localizado.');
     end;      
   end;

  if (f_localizarcontascorrentes.rg_localiza.itemindex = 2)
   then begin
     try
       if (Trim(f_localizarcontascorrentes.e_chave.text) <> '')
        then begin
          BuscaCodigoMovimentacao(VAZIO,f_localizarcontascorrentes.e_chave.text,VAZIO);

          Posicao := 1;

          if Movimentacao[Posicao] <> ''
           then begin
             f_localizarcontascorrentes.btnProximo.Enabled := QtdMovimentacoes > 1;

             q_mov.locate('codigo_mov',Movimentacao[Posicao],[]);
           end
           else showmessage('Parâmetro solicitado não foi localizado.');
        end
        else showmessage('Parâmetro solicitado não foi localizado.');
     except
       showmessage('Parâmetro solicitado não foi localizado.');
     end;
   end;

  if (f_localizarcontascorrentes.rg_localiza.itemindex = 3)
   then begin
     try
       StrToFloat(f_localizarcontascorrentes.e_chave.text);

       if (Trim(f_localizarcontascorrentes.e_chave.text) <> '')
        then begin
          BuscaCodigoMovimentacao(VAZIO,VAZIO,f_localizarcontascorrentes.e_chave.text);

          Posicao := 1;

          if Movimentacao[Posicao] <> ''
           then begin
             f_localizarcontascorrentes.btnProximo.Enabled := QtdMovimentacoes > 1;

             q_mov.locate('codigo_mov',Movimentacao[Posicao],[]);
           end
           else showmessage('Parâmetro solicitado não foi localizado.');
        end
        else showmessage('Parâmetro solicitado não foi localizado.');
     except
       showmessage('Parâmetro solicitado não foi localizado.');
     end;
   end;
end;

procedure Tf_contascorrentes.b_extratoClick(Sender: TObject);
begin
  p_extrato.top    := 50;
  p_extrato.left   := 130;
  p_extrato.width  := 450;
  p_extrato.height := 270;

  p_extrato.visible := true;
  dbgrid2.setfocus;
end;

procedure Tf_contascorrentes.b_fechaextratoClick(Sender: TObject);
begin
  p_extrato.visible := false;
end;

procedure Tf_contascorrentes.b_fechadebitoClick(Sender: TObject);
begin
  p_debito2.visible := false;
  p_desmdeb.visible := true;

  {t_tiposnumerarios2.Close;}

  dbgrid5.setfocus;
end;

procedure Tf_contascorrentes.b_fechadesmdebClick(Sender: TObject);
begin
  p_debito2.visible := false;
  p_desmdeb.visible := false;
end;

procedure Tf_contascorrentes.b_novodebClick(Sender: TObject);
begin
  if qsaldo <= 0
   then MessageDlg(v_usuario+', Saldo Insuficiente a Desmembrar <= 0!', mtInformation,[mbOk], 0)
   else begin
     p_debito2.Top    := 46;
     p_debito2.Left   := 104;
     p_debito2.Height := 276;
     p_debito2.Width  := 541;

     //ABRE VAZIO
     q_debitos2.params[0].asstring := 'NENHUM';
     q_debitos2.params[1].asstring := '%';
     q_debitos2.open;

     p_debito2.Visible := true;
     b_okdebito.Enabled := False;
     cbFixaNumerario.Checked := False;
     e_proc.SetFocus;
   end;
end;

procedure Tf_contascorrentes.b_okdebitoClick(Sender: TObject);
var
  qcliente, qcodcli : string;
  qdata : string;
begin
  if Valor_Contabilizado = 0
   then begin
     Showmessage(v_usuario+', Valor não pode ser zero "0" !');
     dbedit16.SetFocus;
   end
   else begin
     if (strtofloat(floattostrf(qsaldo,fffixed,15,2)) < strtofloat(floattostrf(Valor_Contabilizado,fffixed,15,2)))
      then Showmessage(v_usuario+', Saldo para desmembramento insuficiente.')
      else begin
        //inclui este aviso - 11/05/2005 - Duda
        if ( q_processosfaturado.asinteger = 1 )
         then begin
           MessageDlg(v_usuario+', Atencão! Processo '+q_processoscodigo.asstring+' está Faturado! Caso confirme um novo débito para este processo. Será necessário emitir Faturamento Complementar.', mtInformation,[mbOk], 0);
           logusu('A','Recebeu Aviso: '+v_usuario+', Atencão! Processo Faturado! Caso confirme um novo débito para este processo. Será necessário emitir Faturamento Complementar.');
         end;

         //inclui este aviso - 18/04/2007 - Duda
        if q_processoscodigo.asstring <> 'FINANC'
         then begin
           if ( q_processossaldo_faturamento.asfloat < 0 )
            then begin
              MessageDlg(v_usuario+', Atencão! Processo '+q_processoscodigo.asstring+' está com Saldo a Pagar!', mtInformation,[mbOk], 0);
            end;
         end;

        if MessageDlg(v_usuario+', Confirma Desmembramento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
         then begin
           q_incnumerarios.ParamByName('Empresa').AsString            := t_contascorrentesEmpresa.AsString;
           q_incnumerarios.ParamByName('Filial').AsString             := t_contascorrentesFilial.AsString;
           q_incnumerarios.ParamByName('Processo').AsString           := q_processo.Text;
           q_incnumerarios.ParamByName('Numerario').AsString          := DBLC_TIPOS.KeyValue;
           q_incnumerarios.ParamByName('Usuario_Financeiro').AsString := v_usuario;
           q_incnumerarios.ParamByName('Data_Registro').AsDateTime    := T_movccData.AsDateTime;
           q_incnumerarios.ParamByName('Valor_Registrado').AsFloat    := Valor_Contabilizado;
           q_incnumerarios.ParamByName('Valor_Contabilizado').AsFloat := Valor_Contabilizado;
           q_incnumerarios.ParamByName('Contabilizado').AsString      := 'SIM';
           q_incnumerarios.ParamByName('Conta_Corrente').AsInteger    := t_contascorrentesCodigo.AsInteger;
           q_incnumerarios.ParamByName('Detalhe').AsString            := edtDetalhe.Text;
           q_incnumerarios.ParamByName('Codigo_Mov').AsInteger        := T_movccCodigo_Mov.AsInteger;
           q_incnumerarios.ExecSQL;

           AtuSaldo_fat(q_processo.Text);

           q_debitos.close;
           q_debitos.params[0].asinteger := t_contascorrentescodigo.asinteger;
           q_debitos.params[1].asinteger := t_movcccodigo_mov.asinteger;
           q_debitos.open;

           q_totaldesmdeb.close;
           q_totaldesmdeb.params[0].asinteger := t_contascorrentescodigo.asinteger;
           q_totaldesmdeb.params[1].asinteger := t_movcccodigo_mov.asinteger;
           q_totaldesmdeb.open;

           qsaldo := ((t_movccvalor.asfloat*(-1))-q_totaldesmdebvalor.asfloat);
           label23.caption  := 'Total Desmembrado = '+ floattostrf(q_totaldesmdebvalor.asfloat,fffixed,15,2)+'  Saldo à Desmembrar = '+floattostrf(qsaldo,fffixed,15,2);

           //gerando crédito para ms
           if (COPY(t_movcccliente.asstring,1,2) <> '00') and (t_movcccliente.asstring <> '407')
            then begin
              qcliente := copy(t_importadoresrazao_social.asstring,1,10);
              qcodcli  := t_movcccliente.asstring;
              qpos     := t_movcccodigo_mov.asinteger;
              qdata    := datetostr(t_movccdata.asdatetime);

              q_desmdebatual.Close;
              q_desmdebatual.ParamByName('Empresa').AsString     := t_contascorrentesempresa.asstring;
              q_desmdebatual.ParamByName('Filial').AsString      := t_contascorrentesfilial.asstring;
              q_desmdebatual.ParamByName('Processo').AsString    := q_processo.Text;;
              q_desmdebatual.ParamByName('Numerario').AsString   := DBLC_TIPOS.KeyValue;
              q_desmdebatual.ParamByName('Codigo_Mov').AsInteger := T_movccCodigo_Mov.AsInteger;
              q_desmdebatual.Open;

              t_movcc.append;
              t_movccempresa.asstring   := t_contascorrentesempresa.asstring;
              t_movccfilial.asstring    := t_contascorrentesfilial.asstring;
              t_movcccodigo.asinteger   := t_contascorrentescodigo.asinteger;
              t_movccdata.asstring      := qdata;
              T_movccTipo.asinteger     := 1;
              T_movccDoc.asstring       := 'sis'+inttostr(q_desmdebatualREG.AsInteger);
              T_movccHistorico.asstring := 'REF.CLI.'+qcliente+' - '+'REF.PROC.'+q_processo.Text+' - '+trim(q_debitos2descricao.asstring);
              T_movccValor.asfloat      := Valor_Contabilizado;
              T_movccCliente.asstring   := qcodcli;

              qpos := t_movcccodigo_mov.asinteger;
              t_movcc.post;
              posiciona(qpos);
            end;
         end
         else begin
          {if MessageDlg(v_usuario+', Desmembramento não foi confirmado! Deseja excluir também o débito do processo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
           then t_numerarios2.delete;}
         end;

        LimpaCamposDesmDeb;

        e_procChange(Sender);
      end;
   end;
end;

procedure Tf_contascorrentes.b_gravadebClick(Sender: TObject);
begin
  if t_numerarios.state = dsedit
   then begin
     t_numerarios.post;

     q_debitos.close;
     q_debitos.params[0].asinteger := t_contascorrentescodigo.asinteger;
     q_debitos.params[1].asinteger := t_movcccodigo_mov.asinteger;
     q_debitos.open;

     q_totaldesmdeb.close;
     q_totaldesmdeb.params[0].asinteger := t_contascorrentescodigo.asinteger;
     q_totaldesmdeb.params[1].asinteger := t_movcccodigo_mov.asinteger;
     q_totaldesmdeb.open;

     qsaldo := ((t_movccvalor.asfloat*(-1))-q_totaldesmdebvalor.asfloat);
     label23.caption  := 'Total Desmembrado = '+ floattostrf(q_totaldesmdebvalor.asfloat,fffixed,15,2)+'  Saldo à Desmembrar = '+floattostrf(qsaldo,fffixed,15,2);

     if strtofloat(floattostrf(qsaldo,fffixed,15,2)) < 0
      then begin
        MessageDlg(v_usuario+', Saldo Insuficiente a Desmembrar < 0! O valor será zerado. Favor verificar os valores.', mtInformation,[mbOk], 0);
        t_numerarios.edit;
        t_numerariosvalor_contabilizado.asfloat := 0;
        t_numerarios.post;

        q_debitos.close;
        q_debitos.params[0].asinteger := t_contascorrentescodigo.asinteger;
        q_debitos.params[1].asinteger := t_movcccodigo_mov.asinteger;
        q_debitos.open;

        q_totaldesmdeb.close;
        q_totaldesmdeb.params[0].asinteger := t_contascorrentescodigo.asinteger;
        q_totaldesmdeb.params[1].asinteger := t_movcccodigo_mov.asinteger;
        q_totaldesmdeb.open;

        qsaldo := ((t_movccvalor.asfloat*(-1))-q_totaldesmdebvalor.asfloat);
        label23.caption := 'Total Desmembrado = '+ floattostrf(q_totaldesmdebvalor.asfloat,fffixed,15,2)+'  Saldo à Desmembrar = '+floattostrf(qsaldo,fffixed,15,2);
      end;
   end;
end;

procedure Tf_contascorrentes.b_excluidebClick(Sender: TObject);
var
  tempresa, tfilial, tfornecedor, tcodigo : string;
begin
  if MessageDlg('Confirma exclusão de Desmembramento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
    then begin
      if copy(t_movcccliente.asstring,1,2) <>'00'
       then begin
         qpos := t_movcccodigo_mov.asinteger;

         while q_mov.locate('doc','sis'+t_numerariosreg.asstring,[]) do
          begin
            t_movcc.delete;
          end;

         q_mov.locate('codigo_mov',qpos,[]);
       end;

      //não é item de fatura_mov
      if t_numerariosfatura_mov.asstring = ''
       then begin
         tempresa    := t_numerariosempresa.asstring;
         tfilial     := t_numerariosfilial.asstring;
         tfornecedor := t_numerariosfornecedor.asstring;
         tcodigo     := t_numerarioscodigo.asstring;

         t_numerarios.delete;

         if tfornecedor <> ''
          then begin
            if tbContasPag.state = dsinactive
             then tbContasPag.open;

            tbContasPag.FindKey([tempresa,tfilial,tfornecedor,tcodigo]);
            acCalculaSaldoExecute(f_contascorrentes);
          end;
       end
       else begin //é item de fatura_mov
         showmessage(v_usuario+', '+#13#10#13#10+
                               'ATENÇÃO! A exclusão de um item de fatura de Movimentação  '+#13#10+
                               'de carga excluirá todo o desmembramento referente a esta  '+#13#10+
                               'fatura: '+t_numerariosfatura_mov.asstring);

         if MessageDlg(v_usuario+', Confirma o cancelameto do desmembramento da Fatura: '+t_numerariosfatura_mov.asstring +' ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
          then begin
            if t_faturas2.locate('fatura',t_numerariosfatura_mov.asstring,[])
             then begin
               t_faturas2.edit;
               t_faturas2Conta_Corrente.asinteger        := 0;
               t_faturas2Codigo_mov.asinteger            := 0;
               t_faturas2doc_contabil.asstring           := '';
               t_faturas2.post;

               q_debitos.close;
               t_faturas.Refresh;
             end
             else showmessage('Não foi possível excluir desmembramento. Fatura não encontrada!');
          end;
       end;

      q_debitos.close;
      q_debitos.params[0].asinteger := t_contascorrentescodigo.asinteger;
      q_debitos.params[1].asinteger := t_movcccodigo_mov.asinteger;
      q_debitos.open;

      q_totaldesmdeb.close;
      q_totaldesmdeb.params[0].asinteger := t_contascorrentescodigo.asinteger;
      q_totaldesmdeb.params[1].asinteger := t_movcccodigo_mov.asinteger;
      q_totaldesmdeb.open;

      qsaldo := ((t_movccvalor.asfloat*(-1))-q_totaldesmdebvalor.asfloat);
      label23.caption := 'Total Desmembrado = '+ floattostrf(q_totaldesmdebvalor.asfloat,fffixed,15,2)+'  Saldo à Desmembrar = '+floattostrf(qsaldo,fffixed,15,2);

      q_debitos2.Close;
      q_debitos2.open;
    end;
end;

procedure Tf_contascorrentes.b_imprimirextratoClick(Sender: TObject);
begin
  if (me_dataini.text = '  /  /    ') or (me_datafin.text = '  /  /    ')
   then begin
     showmessage('Informe o Período de Extrato.');
     me_dataini.SetFocus;
   end
   else begin
     if cb_processos_financ.Checked
      then begin
        if not assigned (qr_extrato_financ)
         then Application.CreateForm(Tqr_extrato_financ, qr_extrato_financ);

        q_extrato.close;
        q_santerior.close;

        q_extrato.SQL.Clear;
        q_extrato.SQL.Add('SELECT Movimentacao_Contas_Correntes.Empresa,                                                              ');
        q_extrato.SQL.Add('       Movimentacao_Contas_Correntes.Filial,                                                               ');
        q_extrato.SQL.Add('       Contas_Correntes.Descricao,                                                                         ');
        q_extrato.SQL.Add('       Movimentacao_Contas_Correntes.Codigo,                                                               ');
        q_extrato.SQL.Add('       Movimentacao_Contas_Correntes.Data,                                                                 ');
        q_extrato.SQL.Add('       Movimentacao_Contas_Correntes.Tipo,                                                                 ');
        q_extrato.SQL.Add('       Tipos_Lancamento_Ccorrente.Descricao AS otipo,                                                      ');
        q_extrato.SQL.Add('       Movimentacao_Contas_Correntes.Doc,                                                                  ');
        q_extrato.SQL.Add('       Movimentacao_Contas_Correntes.Historico,                                                            ');
        q_extrato.SQL.Add('       Movimentacao_Contas_Correntes.Valor,                                                                ');
        q_extrato.SQL.Add('       Movimentacao_Contas_Correntes.Cliente,                                                              ');
        q_extrato.SQL.Add('       Movimentacao_Contas_Correntes.Codigo_Mov                                                            ');
        q_extrato.SQL.Add('  FROM Movimentacao_Contas_Correntes LEFT JOIN Tipos_Lancamento_Ccorrente                                  ');
        q_extrato.SQL.Add('    ON (Movimentacao_Contas_Correntes.Tipo = Tipos_Lancamento_Ccorrente.Codigo) LEFT JOIN Contas_Correntes ');
        q_extrato.SQL.Add('    ON (Movimentacao_Contas_Correntes.Empresa = Contas_Correntes.Empresa) AND                              ');
        q_extrato.SQL.Add('       (Movimentacao_Contas_Correntes.Filial = Contas_Correntes.Filial) AND                                ');
        q_extrato.SQL.Add('       (Movimentacao_Contas_Correntes.Codigo = Contas_Correntes.Codigo)                                    ');
        q_extrato.SQL.Add(' WHERE (((Movimentacao_Contas_Correntes.Codigo) Like :qconta) AND ((Movimentacao_Contas_Correntes.Data)>=:qdataini And (Movimentacao_Contas_Correntes.Data)<=:qdatafin) AND ((Movimentacao_Contas_Correntes.Tipo) Like :qtipo)) ');
        q_extrato.SQL.Add('   AND ((SELECT COUNT(*) FROM Numerarios_Processos WHERE Codigo_Mov = Movimentacao_Contas_Correntes.Codigo_Mov AND Processo = ''FINANC'') >= 1 OR ');
        q_extrato.SQL.Add('        (SELECT COUNT(*) FROM Creditos_Processos   WHERE Codigo_Mov = Movimentacao_Contas_Correntes.Codigo_Mov AND Processo = ''FINANC'') >= 1)   ');
        q_extrato.SQL.Add(' ORDER BY Movimentacao_Contas_Correntes.Data ');

        if cb_contas.checked = true
         then begin
           q_extrato.params[0].asstring        := '%';
           q_santerior.params[0].asstring      := '%';
           qr_extrato_financ.qrl_conta.caption := 'Visão Geral';
         end
         else begin
           q_extrato.params[0].asinteger       := t_contas_ecodigo.asinteger;
           q_santerior.params[0].asinteger     := t_contas_ecodigo.asinteger;
           qr_extrato_financ.qrl_conta.caption := t_contas_edescricao.asstring;
         end;

        q_extrato.params[1].asdatetime := strtodate(me_dataini.text);
        q_extrato.params[2].asdatetime := strtodate(me_datafin.text);

        qr_extrato_financ.qrl_dataini.caption := me_dataini.text;
        qr_extrato_financ.qrl_datafin.caption := me_datafin.text;

        q_santerior.params[1].asdatetime := strtodate('01/01/2000');
        q_santerior.params[2].asdatetime := strtodate(me_dataini.text);

        if cb_tipos.checked = true
         then begin
           q_extrato.params[3].asstring       := '%';
           qr_extrato_financ.qrl_tipo.caption := 'Todos os tipos';
         end
         else begin
           q_extrato.params[3].asinteger      := t_lancamentocodigo.asinteger;
           qr_extrato_financ.qrl_tipo.caption := t_lancamentodescricao.asstring;
         end;

        if cb_desmembra.checked = False
         then qr_extrato_financ.qrl_desmembra.caption := 'Não'
         else qr_extrato_financ.qrl_desmembra.caption := 'Sim';

        if cb_resumo.checked = False
         then begin
           qr_extrato_financ.qrl_rfinal.caption := 'Não';
           qr_extrato_financ.b_resumo.enabled   := false;
         end
         else begin
           qr_extrato_financ.qrl_rfinal.caption := 'Sim';
           qr_extrato_financ.b_resumo.enabled   := true;
         end;

        q_extrato.open;
        q_santerior.open;

        qr_extrato_financ.qrl_santerior.caption := floattostrf(q_santeriorsaldoanterior.asfloat,fffixed,15,2);
        qr_extrato_financ.qrl_creditos.caption  := floattostrf(strtofloat('0'),fffixed,15,2);
        qr_extrato_financ.qrl_debitos.caption   := floattostrf(strtofloat('0'),fffixed,15,2);
        qr_extrato_financ.qrl_saldo.caption     := floattostrf(q_santeriorsaldoanterior.asfloat,fffixed,15,2);

        if q_extrato.RecordCount > 0
         then qr_extrato_financ.preview
         else showmessage(v_usuario+', não houveram movimentações neste período com estes parâmetros!');
      end
      else begin
        if not assigned (qr_extrato)
         then Application.CreateForm(Tqr_extrato, qr_extrato);

        q_extrato.close;
        q_santerior.close;

        q_extrato.SQL.Clear;
        q_extrato.SQL.Add('SELECT Movimentacao_Contas_Correntes.Empresa,                                                              ');
        q_extrato.SQL.Add('       Movimentacao_Contas_Correntes.Filial,                                                               ');
        q_extrato.SQL.Add('       Contas_Correntes.Descricao,                                                                         ');
        q_extrato.SQL.Add('       Movimentacao_Contas_Correntes.Codigo,                                                               ');
        q_extrato.SQL.Add('       Movimentacao_Contas_Correntes.Data,                                                                 ');
        q_extrato.SQL.Add('       Movimentacao_Contas_Correntes.Tipo,                                                                 ');
        q_extrato.SQL.Add('       Tipos_Lancamento_Ccorrente.Descricao AS otipo,                                                      ');
        q_extrato.SQL.Add('       Movimentacao_Contas_Correntes.Doc,                                                                  ');
        q_extrato.SQL.Add('       Movimentacao_Contas_Correntes.Historico,                                                            ');
        q_extrato.SQL.Add('       Movimentacao_Contas_Correntes.Valor,                                                                ');
        q_extrato.SQL.Add('       Movimentacao_Contas_Correntes.Cliente,                                                              ');
        q_extrato.SQL.Add('       Movimentacao_Contas_Correntes.Codigo_Mov                                                            ');
        q_extrato.SQL.Add('  FROM Movimentacao_Contas_Correntes LEFT JOIN Tipos_Lancamento_Ccorrente                                  ');
        q_extrato.SQL.Add('    ON (Movimentacao_Contas_Correntes.Tipo = Tipos_Lancamento_Ccorrente.Codigo) LEFT JOIN Contas_Correntes ');
        q_extrato.SQL.Add('    ON (Movimentacao_Contas_Correntes.Empresa = Contas_Correntes.Empresa) AND                              ');
        q_extrato.SQL.Add('       (Movimentacao_Contas_Correntes.Filial = Contas_Correntes.Filial) AND                                ');
        q_extrato.SQL.Add('       (Movimentacao_Contas_Correntes.Codigo = Contas_Correntes.Codigo)                                    ');
        q_extrato.SQL.Add(' WHERE (((Movimentacao_Contas_Correntes.Codigo) Like :qconta) AND ((Movimentacao_Contas_Correntes.Data)>=:qdataini And (Movimentacao_Contas_Correntes.Data)<=:qdatafin) AND ((Movimentacao_Contas_Correntes.Tipo) Like :qtipo)) ');
        q_extrato.SQL.Add(' ORDER BY Movimentacao_Contas_Correntes.Data ');

        if cb_contas.checked = true
         then begin
           q_extrato.params[0].asstring   := '%';
           q_santerior.params[0].asstring := '%';
           qr_extrato.qrl_conta.caption   := 'Visão Geral';
         end
         else begin
           q_extrato.params[0].asinteger   := t_contas_ecodigo.asinteger;
           q_santerior.params[0].asinteger := t_contas_ecodigo.asinteger;
           qr_extrato.qrl_conta.caption    := t_contas_edescricao.asstring;
         end;

        q_extrato.params[1].asdatetime := strtodate(me_dataini.text);
        q_extrato.params[2].asdatetime := strtodate(me_datafin.text);

        qr_extrato.qrl_dataini.caption := me_dataini.text;
        qr_extrato.qrl_datafin.caption := me_datafin.text;

        q_santerior.params[1].asdatetime := strtodate('01/01/2000');
        q_santerior.params[2].asdatetime := strtodate(me_dataini.text);

        if cb_tipos.checked = true
         then begin
           q_extrato.params[3].asstring := '%';
           qr_extrato.qrl_tipo.caption  := 'Todos os tipos';
         end
         else begin
           q_extrato.params[3].asinteger := t_lancamentocodigo.asinteger;
           qr_extrato.qrl_tipo.caption   := t_lancamentodescricao.asstring;
         end;

        if cb_desmembra.checked = False
         then qr_extrato.qrl_desmembra.caption := 'Não'
         else qr_extrato.qrl_desmembra.caption := 'Sim';

        if cb_resumo.checked = False
         then begin
           qr_extrato.qrl_rfinal.caption := 'Não';
           qr_extrato.b_resumo.enabled   := false;
         end
         else begin
           qr_extrato.qrl_rfinal.caption := 'Sim';
           qr_extrato.b_resumo.enabled   := true;
         end;

        q_extrato.open;
        q_santerior.open;

        qr_extrato.qrl_santerior.caption := floattostrf(q_santeriorsaldoanterior.asfloat,fffixed,15,2);
        qr_extrato.qrl_creditos.caption  := floattostrf(strtofloat('0'),fffixed,15,2);
        qr_extrato.qrl_debitos.caption   := floattostrf(strtofloat('0'),fffixed,15,2);
        qr_extrato.qrl_saldo.caption     := floattostrf(q_santeriorsaldoanterior.asfloat,fffixed,15,2);

        if q_extrato.RecordCount > 0
         then qr_extrato.preview
         else showmessage(v_usuario+', não houveram movimentações neste período com estes parâmetros!');
      end;
   end;
end;

procedure Tf_contascorrentes.me_datafinExit(Sender: TObject);
begin
  if strtodate(me_datafin.text) < strtodate(me_dataini.text)
   then begin
     showmessage('Data Final não pode ser menor que a Data de início.');
     me_datafin.setfocus;
         end;
end;

procedure Tf_contascorrentes.Q_extratoAfterScroll(DataSet: TDataSet);
begin
  if cb_processos_financ.Checked
   then begin
     q_creditos_financ.close;
     q_creditos_financ.params[0].asinteger := q_extratocodigo.asinteger;
     q_creditos_financ.params[1].asinteger := q_extratocodigo_mov.asinteger;
     q_creditos_financ.open;

     if (q_creditos_financ.RecordCount = 0) or (cb_desmembra.checked = false)
      then begin
        qr_extrato_financ.titulocreditos.enabled := false;
        qr_extrato_financ.subcreditos.enabled    := false;
        qr_extrato_financ.rodapecreditos.enabled := false;
      end
      else begin
        qr_extrato_financ.titulocreditos.enabled := true;
        qr_extrato_financ.subcreditos.enabled    := true;
        qr_extrato_financ.rodapecreditos.enabled := true;
      end;

     q_debitos_financ.close;
     q_debitos_financ.params[0].asinteger := q_extratocodigo.asinteger;
     q_debitos_financ.params[1].asinteger := q_extratocodigo_mov.asinteger;
     q_debitos_financ.open;

     if (q_debitos_financ.RecordCount = 0) or (cb_desmembra.checked = false)
      then begin
        qr_extrato_financ.titulodebitos.enabled := false;
        qr_extrato_financ.subdebitos.enabled    := false;
        qr_extrato_financ.rodapedebitos.enabled := false;
      end
      else begin
        qr_extrato_financ.titulodebitos.enabled := true;
        qr_extrato_financ.subdebitos.enabled    := true;
        qr_extrato_financ.rodapedebitos.enabled := true;
      end;
   end
   else begin
     q_creditos.close;
     q_creditos.params[0].asinteger := q_extratocodigo.asinteger;
     q_creditos.params[1].asinteger := q_extratocodigo_mov.asinteger;
     q_creditos.open;

     if (q_creditos.RecordCount = 0) or (cb_desmembra.checked = false)
      then begin
        qr_extrato.titulocreditos.enabled := false;
        qr_extrato.subcreditos.enabled    := false;
        qr_extrato.rodapecreditos.enabled := false;
      end
      else begin
        qr_extrato.titulocreditos.enabled := true;
        qr_extrato.subcreditos.enabled    := true;
        qr_extrato.rodapecreditos.enabled := true;
      end;

     q_debitos.close;
     q_debitos.params[0].asinteger := q_extratocodigo.asinteger;
     q_debitos.params[1].asinteger := q_extratocodigo_mov.asinteger;
     q_debitos.open;

     if (q_debitos.RecordCount = 0) or (cb_desmembra.checked = false)
      then begin
        qr_extrato.titulodebitos.enabled := false;
        qr_extrato.subdebitos.enabled    := false;
        qr_extrato.rodapedebitos.enabled := false;
      end
      else begin
        qr_extrato.titulodebitos.enabled := true;
        qr_extrato.subdebitos.enabled    := true;
        qr_extrato.rodapedebitos.enabled := true;
      end;
   end;
end;

procedure Tf_contascorrentes.FormCreate(Sender: TObject);
var
  Data6mesesAntes : String;
begin
  t_parametros.open;
  q_plano.open;

  if v_nivel_cc > '0'
   then begin
     b_novaconta.enabled    := false;
     b_gravarconta.enabled  := false;
     b_excluirconta.enabled := false;
   end
   else begin
     b_novaconta.enabled    := true;
     b_gravarconta.enabled  := true;
     b_excluirconta.enabled := true;
   end;

  q_cc.Params[0].asstring := v_nivel_cc;
  q_cc.open;

  t_contascorrentes.open;
  t_movcc.open;
  t_lancamento.open;
  t_lancamentocc.open;
  t_lancamentof.open;
  q_importadores.open;
  q_importadores_grupos.open;
  t_importadores.open;
  t_tiposcreditos.open;
  t_numerarios.open;
  t_tiposnumerarios.open;
  q_tiposnumerarios.open;
  t_contas_e.open;  
  t_faturas.open;
  t_faturas2.open;
  t_itens.open;
  t_saldosdiarios.open;

  t_contas_e.Filter   := 'NIVEL >= 1';
  t_contas_e.Filtered := True;

//  Data6mesesAntes := DateToStr(IncMonth(Date(),(6*(-1))));

//  t_saldosdiarios.Filter   := 'Data >= '''+Data6mesesAntes+'''';
//  t_saldosdiarios.Filtered := True;

  t_saldosdiarios.Open;

  qdataini := '01/01/2000';
  qdatafin := '31/12/2050';
end;

procedure Tf_contascorrentes.DBEdit2Exit(Sender: TObject);
begin
  if dbedit2.text <> ''
   then begin
     q_doc.close;
     q_doc.params[0].asinteger := t_contascorrentescodigo.asinteger;
     q_doc.params[1].asinteger := t_movcctipo.asinteger;
     q_doc.params[2].asstring  := dbedit2.text;
     q_doc.open;

     if q_doc.recordcount > 0
      then showmessage('Já existe um documento com esta numeração:'+dbedit2.text+' Favor Verificar.');
   end;
end;

procedure Tf_contascorrentes.b_novodebitoClick(Sender: TObject);
begin
  if MessageDlg('Deseja Incluir um Débito não informado para um processo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
   then begin
     q_debitos2.close;

     if (not cbFixaNumerario.Checked)
      then begin
        if t_tiposnumerarios2.state = dsinactive
         then t_tiposnumerarios2.open;
      end;

     b_gravadeb.Enabled   := true; 
     b_cancelanov.enabled := true;
     b_novodebito.enabled := false;
     q_processo.enabled   := true;

     q_processo.setfocus;

     b_okdebito.Enabled    := false;
     b_fechadebito.Enabled := true;
   end;
end;

procedure Tf_contascorrentes.e_procChange(Sender: TObject);
begin
  if (length(e_proc.text) = 8) or (e_proc.text = 'FINANC')
   then begin
     q_debitos2.close;

     if (COPY(t_movcccliente.asstring,1,2) <> '00') and (t_movcccliente.asstring <> '407')
      then begin
        q_debitos2.params[0].asstring := e_proc.text;
        q_debitos2.params[1].asstring := t_movcccliente.asstring;
      end
      else begin
        q_debitos2.params[0].asstring := e_proc.text;
        q_debitos2.params[1].asstring := '%';
      end;

     cb_todos.Checked := false;
     q_debitos2.open;

     if q_debitos2.RecordCount = 0
      then begin
        showmessage(v_usuario+', Não foram encontrados débitos para este Processo: '+e_proc.text+'!');
        e_proc.SetFocus;
      end
      else dbgrid6.setfocus;
   end;
end;

procedure Tf_contascorrentes.b_gravanovClick(Sender: TObject);
begin
  q_processoExit(Sender);

  Valor_Contabilizado := 0;

  if (DBLC_TIPOS.KeyValue = '')
   then begin
     showmessage(v_usuario+', Favor selecionar o tipo de numerário!');
     DBLC_TIPOS.SetFocus; 
     exit;
   end;   

  if (edtValor_Contabilizado.Text = '')
   then begin
     showmessage(v_usuario+', Favor informar o valor!');
     edtValor_Contabilizado.SetFocus;
     exit;
   end;

  Valor_Contabilizado := StrToFloat(edtValor_Contabilizado.Text);

  if (strtofloat(floattostrf(qsaldo,fffixed,15,2)) < strtofloat(floattostrf(Valor_Contabilizado,fffixed,15,2)))
   then begin
     Showmessage(v_usuario+', Saldo para desmembramento insuficiente.');
     exit;
   end;

  if q_processo.text <> ''
   then begin
     qNUM.Close;
     qNUM.params[0].asstring := q_processo.text;
     qNUM.params[1].asstring := DBLC_TIPOS.KeyValue;
     qNUM.params[2].asfloat  := strtofloat(floattostrf(Valor_Contabilizado,fffixed,15,2));
     qNUM.Open;

     if qNUM.recordcount > 1
      then begin
        MessageDlg(v_usuario+', Atencão! Verificar lançamentos de débitos com valores iguais para este processo '+q_processo.text, mtInformation,[mbOk], 0);
        logusu('A','Recebeu Aviso: '+v_usuario+', Atencão! Verificar lançamentos de débitos com valores iguais para este processo '+q_processo.text);
      end;

     qNUM.Close;

     b_okdebitoClick(f_contascorrentes);
     b_gravanov.enabled    := false;
     b_cancelanov.enabled  := false;
     b_novodebito.enabled  := true;
     q_processo.enabled    := false;
     b_okdebito.enabled    := false;
     b_fechadebito.Enabled := true;
   end;
end;

procedure Tf_contascorrentes.b_cancelanovClick(Sender: TObject);
begin
  b_gravanov.enabled    := false;
  b_cancelanov.enabled  := false;
  b_novodebito.enabled  := true;
  q_processo.enabled    := false;
  b_okdebito.Enabled    := false;
  b_fechadebito.Enabled := true;
end;

procedure Tf_contascorrentes.q_processoChange(Sender: TObject);
begin
  if length(q_processo.text) = 8
   then q_processoExit(Sender);
end;

procedure Tf_contascorrentes.DBEdit18Change(Sender: TObject);
begin
  q_processo.text := dbedit18.text;
end;

procedure Tf_contascorrentes.dbl_clientesExit(Sender: TObject);
begin
  q_creditos.close;
  q_creditos.params[0].asinteger := t_contascorrentescodigo.asinteger;
  q_creditos.params[1].asinteger := t_movcccodigo_mov.asinteger;
  q_creditos.open;

  q_debitos.params[0].asinteger := t_contascorrentescodigo.asinteger;
  q_debitos.params[1].asinteger := t_movcccodigo_mov.asinteger;
  q_debitos.open;

  if ((q_creditos.recordcount > 0) or (q_debitos.recordcount > 0))
   then begin
     dbl_plano.enabled := false;
     t_movcc.edit;
     t_movccplano_contas.asstring := '';
     t_movcc.post;
     q_plano.last;
     showmessage('Lançamento desmembrado não possui plano de contas vinculado. ->'+inttostr(t_movcccodigo_mov.asinteger)+' - '+inttostr(q_creditos.recordcount)+' - '+inttostr(q_debitos.recordcount));
   end
   else dbl_plano.enabled := true;

  if t_movccplano_contas.asstring = 'CPMF'
   then begin
     gbicms.Enabled := true;
     gbicms.Visible := true;
   end
   else begin
     gbicms.Enabled := false;
     gbicms.Visible := false;
   end;
end;

procedure Tf_contascorrentes.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  ohint(f_contascorrentes);
end;

procedure Tf_contascorrentes.DBGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  ohint(f_contascorrentes);
end;

procedure Tf_contascorrentes.DBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ohint(f_contascorrentes);
end;

procedure Tf_contascorrentes.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ohint(f_contascorrentes);
end;

procedure Tf_contascorrentes.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ohint(f_contascorrentes);
end;

procedure Tf_contascorrentes.DBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ohint(f_contascorrentes);
end;

procedure Tf_contascorrentes.sb_limpaClick(Sender: TObject);
begin
  t_movcc.edit;
  t_movccplano_contas.asstring := '';
end;

procedure Tf_contascorrentes.T_movccAfterScroll(DataSet: TDataSet);
begin
  q_plano.locate('codigo',t_movccplano_contas.asstring,[]);
end;

procedure Tf_contascorrentes.T_numerarios2BeforePost(DataSet: TDataSet);
begin
  if (t_numerarios2numerario.asstring <> 'HONO') or (t_numerarios2valor_registrado.asfloat = 0)
   then begin
     t_numerarios2.edit;
     t_numerarios2valor_registrado.asfloat := t_numerarios2valor_contabilizado.asfloat;
   end;
end;

procedure Tf_contascorrentes.t_numerariosBeforePost(DataSet: TDataSet);
begin
  if (t_numerariosnumerario.asstring <> 'HONO') or (t_numerariosvalor_registrado.asfloat = 0)
   then begin
     t_numerarios.edit;
     t_numerariosvalor_registrado.asfloat := t_numerariosvalor_contabilizado.asfloat
   end;
end;

procedure Tf_contascorrentes.b_saldosClick(Sender: TObject);
begin
  q_contas.close;
  q_contas.open;

  q_import.open;
  q_creditosimp.open;
  q_debitosimp.open;

  if not assigned (qr_saldos)
   then Application.CreateForm(Tqr_saldos, qr_saldos);

  qr_saldos.qrl_subcli.caption := '0';
  qr_saldos.qrl_subcc.caption  := '0';
  qr_saldos.preview;
end;

procedure Tf_contascorrentes.SpeedButton1Click(Sender: TObject);
begin
  if not t_faturas.locate('fatura',e_fatura.text,[])
   then showmessage('Fatura não localizada!');
end;

procedure Tf_contascorrentes.b_cargaClick(Sender: TObject);
begin
  if qsaldo <= 0
   then MessageDlg(v_usuario+', Saldo Insuficiente a Desmembrar <= 0!', mtInformation,[mbOk], 0)
   else begin
     p_carga.left    :=  16;
     p_carga.height  :=  205;
     p_carga.top     :=  76;
     p_carga.width   :=  677;
     p_carga.visible := true;
   end;
end;

procedure Tf_contascorrentes.b_incluirfatClick(Sender: TObject);
begin
  if (strtofloat(floattostrf(qsaldo,fffixed,15,2)) < strtofloat(floattostrf(t_faturasvalor.asfloat,fffixed,15,2)))
   then Showmessage('Saldo para desmembramento insuficiente.')
   else begin
     if MessageDlg('Confirma inclusão dos itens desta fatura para o Desmembramento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
      then begin
        if t_itens.recordcount > 0
         then begin
           t_itens.first;
           processamento('Aguarde inserindo itens das faturas no desmembramento...',t_itens.recordcount,false);

           while not t_itens.eof do
            begin
              processamento('Aguarde inserindo itens das faturas no desmembramento...',t_itens.recordcount,false);
              t_numerarios2.append;
              T_numerarios2Empresa.asstring                := t_itensempresa.asstring;
              T_numerarios2Filial.asstring                 := t_itensfilial.asstring;
              T_numerarios2Processo.asstring               := t_itensprocesso.asstring;
              T_numerarios2Numerario.asstring              := 'MOV';
              T_numerarios2Usuario_Previsao.asstring       :=  v_usuario;
              T_numerarios2Data_Previsao.asdatetime        := t_movccdata.asdatetime;
              T_numerarios2Valor_Previsao.asfloat          := t_itensvalor.asfloat;
              T_numerarios2Previsao_solicitada.asstring    := 'SIM';
              T_numerarios2Ok_Previsao_financeiro.asstring := 'SIM';
              T_numerarios2Usuario_Financeiro.asstring     :=  v_usuario;
              T_numerarios2Data_Registro.asdatetime        := t_movccdata.asdatetime;
              T_numerarios2Valor_Registrado.asfloat        := t_itensvalor.asfloat;
              T_numerarios2Valor_Contabilizado.asfloat     := t_itensvalor.asfloat;
              T_numerarios2Usuario_Contablizado.asstring   :=  v_usuario;
              T_numerarios2detalhe.asstring                := 'Fatura:'+t_faturasfatura.asstring+' Boleto:'+t_faturasboleto.asstring;
              T_numerarios2contabilizado.asstring          := 'SIM';
              t_numerarios2Conta_Corrente.asinteger        := t_contascorrentescodigo.asinteger;
              t_numerarios2Codigo_mov.asinteger            := t_movcccodigo_mov.asinteger;
              t_numerarios2fatura_mov.asstring             := t_itensfatura.asstring;
              t_numerarios2.post;

              t_itens.next;
            end;

           processamento('Aguarde inserindo itens das faturas no desmembramento...',t_itens.recordcount,true);

           t_faturas.edit;
           t_faturasConta_Corrente.asinteger := t_contascorrentescodigo.asinteger;
           t_faturasCodigo_mov.asinteger     := t_movcccodigo_mov.asinteger;
           t_faturasdoc_contabil.asstring    := t_movccdoc.asstring;
           t_faturas.post;

           q_debitos.close;
           q_debitos.params[0].asinteger := t_contascorrentescodigo.asinteger;
           q_debitos.params[1].asinteger := t_movcccodigo_mov.asinteger;
           q_debitos.open;

           q_totaldesmdeb.close;
           q_totaldesmdeb.params[0].asinteger := t_contascorrentescodigo.asinteger;
           q_totaldesmdeb.params[1].asinteger := t_movcccodigo_mov.asinteger;
           q_totaldesmdeb.open;

           qsaldo := ((t_movccvalor.asfloat*(-1))-q_totaldesmdebvalor.asfloat);
           label23.caption  := 'Total Desmembrado = '+ floattostrf(q_totaldesmdebvalor.asfloat,fffixed,15,2)+'  Saldo à Desmembrar = '+floattostrf(qsaldo,fffixed,15,2);

           q_debitos2.Close;
           q_debitos2.open;

           Showmessage('Itens desmembrados.');
         end
         else Showmessage('Fatura sem itens para desmembramento.');
      end;
   end;
end;

procedure Tf_contascorrentes.b_fecharfatClick(Sender: TObject);
begin
  p_carga.visible := false;
end;

procedure Tf_contascorrentes.t_creditosBeforeDelete(DataSet: TDataSet);
var
  valor, codigo_ctrl_num : String;
begin
  ///incluido 08/10/2010 - excluindo follows 98 recebimento de numerarios
  valor := TrocarVirgula(T_creditosValor.Asfloat);

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

  logusu('E','Contas Correntes - Excluiu desmembramento de crédito:'+T_movcccodigo_mov.asstring+' - DATA: '+T_movccDATA.asstring+' - VALOR: '+T_movccVALOR.asstring+' - HISTORICO: '+T_movcchistorico.asstring+' - credito:'+t_creditoscredito.asstring+' - processo:'+t_creditosprocesso.asstring+' - valor:'+t_creditosvalor.asstring);
end;

procedure Tf_contascorrentes.t_numerariosAfterPost(DataSet: TDataSet);
begin
  AtuSaldo_fat(t_numerariosprocesso.asstring);
end;

procedure Tf_contascorrentes.T_numerarios2AfterPost(DataSet: TDataSet);
begin
  t_numerarios2.refresh;
  AtuSaldo_fat(t_numerarios2processo.asstring);
end;

procedure Tf_contascorrentes.t_numerariosBeforeDelete(DataSet: TDataSet);
begin
  logusu('E','Contas Correntes - Excluiu desmembramento de débito:'+T_movcccodigo_mov.asstring+' - DATA: '+T_movccDATA.asstring+' - VALOR: '+T_movccVALOR.asstring+' - HISTORICO: '+T_movcchistorico.asstring+' - debito:'+t_numerariosnumerario.asstring+' - processo:'+t_numerariosprocesso.asstring+' - valor:'+t_numerariosvalor_contabilizado.asstring);
  AtuSaldo_fat(t_numerariosprocesso.asstring);
end;

procedure Tf_contascorrentes.T_numerarios2BeforeDelete(DataSet: TDataSet);
begin
  AtuSaldo_fat(t_numerarios2processo.asstring);     
end;

procedure Tf_contascorrentes.T_movccAfterPost(DataSet: TDataSet);
begin
  t_contascorrentesAfterScroll(t_contascorrentes);
end;

procedure Tf_contascorrentes.T_movccBeforeDelete(DataSet: TDataSet);
begin
  if t_contascorrentesdata.asdatetime >= t_movccdata.asdatetime
   then begin
     if MessageDlg('Será excluída uma movimentação que modificará o cálculo de saldos diários já fechados. Confirma?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
      then logusu('E','Contas Correntes - Excluiu Lançamento:'+T_movcccodigo_mov.asstring+' - DATA: '+T_movccDATA.asstring+' - VALOR: '+T_movccVALOR.asstring+' - HISTORICO: '+T_movcchistorico.asstring)
      else begin
        abort;
        showmessage('Exclusão cancelada!');
      end;
   end;
end;

procedure Tf_contascorrentes.DBEdit9Enter(Sender: TObject);
begin
  dbedit9.text := '';
end;

procedure Tf_contascorrentes.T_movccBeforePost(DataSet: TDataSet);
begin
  logusu('P','Contas Correntes - Alterou/Incluiu Lançamento:'+T_movcccodigo_mov.asstring);

  if cbVerificaDesmembramento.Checked
   then T_movccdesmembra.asinteger := 1
   else T_movccdesmembra.asinteger := 0;

  if cbVerificaDigitalizacao.Checked
   then T_movccdigitaliza.asinteger := 1
   else T_movccdigitaliza.asinteger := 0;
   
  t_movccusuario.asstring := v_usuario;
end;

procedure Tf_contascorrentes.b_saldosdiariosClick(Sender: TObject);
begin
  p_saldosdiarios.top     := 58;
  p_saldosdiarios.left    := 55;
  p_saldosdiarios.width   := 657;
  p_saldosdiarios.height  := 249;
  p_saldosdiarios.visible := true;
  q_mov.first;
  me_dtrecalc.text := T_movccdata.asstring;
  dbgrid12.setfocus;
end;

procedure Tf_contascorrentes.b_recalcularClick(Sender: TObject);
begin
  if cb_geral.Checked
   then begin // geral
     q_mov.first;
     t_saldosdiarios.close;
     t_saldosdiarios.open;

     while not q_mov.eof do
      begin
        processamento('Aguarde verificando movimentações diárias...'+t_movccdata.asstring,t_movcc.recordcount,false);

        if not t_saldosdiarios.findkey([T_movccempresa.asstring,T_movccfilial.asstring,T_movcccodigo.asstring,t_movccdata.asdatetime])
         then begin
           if t_saldosdiarios.bof
            then t_saldosdiarios.edit
            else t_saldosdiarios.append;

           t_saldosdiariosempresa.asstring := T_movccempresa.asstring;
           t_saldosdiariosfilial.asstring  := T_movccfilial.asstring;
           t_saldosdiarioscodigo.asstring  := T_movcccodigo.asstring;
           t_saldosdiariosdata.asstring    := T_movccdata.asstring;
           t_saldosdiariosfechado.asstring := 'NÃO';
           t_saldosdiarios.post;
         end;

        q_mov.next;
      end;

     processamento('Aguarde verificando movimentações diárias...'+t_movccdata.asstring,t_movcc.recordcount,true);

     t_saldosdiarios.first;

     while not t_saldosdiarios.eof do
      begin
        processamento('Aguarde recalculando saldos diários...'+t_saldosdiariosdata.asstring,t_saldosdiarios.recordcount,false);

        q_saldosdiarios.close;
        q_saldosdiarios.params[0].asdatetime := t_saldosdiariosdata.asdatetime;
        q_saldosdiarios.params[1].asinteger  := t_saldosdiarioscodigo.asinteger;
        q_saldosdiarios.open;
        t_saldosdiarios.edit;

        if t_saldosdiariosfechado.asstring = 'NÃO'
         then t_saldosdiariossaldo.asfloat  := strtofloat(floattostrf(q_saldosdiariossaldo.asfloat,fffixed,15,2))
         else t_saldosdiariossaldo.asfloat  := strtofloat(floattostrf(t_saldosdiariossaldo.asfloat,fffixed,15,2));

        t_saldosdiariossaldo_sis.asfloat := strtofloat(floattostrf(q_saldosdiariossaldo.asfloat,fffixed,15,2));

        if t_saldosdiariossaldo.asfloat <> t_saldosdiariossaldo_sis.asfloat
         then t_saldosdiariosobs.asstring := 'Saldo diário em divergência com o calculado pelo sistema'
         else t_saldosdiariosobs.asstring := 'Saldo diário ok.';

        t_saldosdiarios.post;

        if t_saldosdiariosfechado.asstring = 'SIM'
         then begin
           if t_contascorrentesdata.asdatetime < t_saldosdiariosdata.asdatetime
            then begin
              t_contascorrentes.edit;
              t_contascorrentesdata.asdatetime := t_saldosdiariosdata.asdatetime;
              t_contascorrentes.post;
            end;
         end;

        t_saldosdiarios.next;
      end;

     processamento('Aguarde recalculando saldos diários...'+t_saldosdiariosdata.asstring,t_saldosdiarios.recordcount,true);
   end
   else begin //desde de o início do recalculo
     t_saldosdiarios.close;
     t_saldosdiarios.open;

     if not t_saldosdiarios.findkey([T_movccempresa.asstring,T_movccfilial.asstring,T_movcccodigo.asstring,strtodatetime(me_dtrecalc.Text)])
      then begin
        if t_saldosdiarios.bof
         then t_saldosdiarios.edit
         else t_saldosdiarios.append;

        t_saldosdiariosempresa.asstring := T_movccempresa.asstring;
        t_saldosdiariosfilial.asstring  := T_movccfilial.asstring;
        t_saldosdiarioscodigo.asstring  := T_movcccodigo.asstring;
        t_saldosdiariosdata.asstring    := me_dtrecalc.Text;
        t_saldosdiariosfechado.asstring := 'NÃO';
        t_saldosdiarios.post;
      end;

     processamento('Aguarde verificando movimentações diárias...'+t_movccdata.asstring,t_movcc.recordcount,true);
     t_saldosdiarios.findkey([T_movccempresa.asstring,T_movccfilial.asstring,T_movcccodigo.asstring,strtodatetime(me_dtrecalc.Text)]);
     t_saldosdiarios.prior;

     while not t_saldosdiarios.eof do
      begin
        processamento('Aguarde recalculando saldos diários...'+t_saldosdiariosdata.asstring,t_saldosdiarios.recordcount,false);
        q_saldosdiarios.close;
        q_saldosdiarios.params[0].asdatetime := t_saldosdiariosdata.asdatetime;
        q_saldosdiarios.params[1].asinteger  := t_saldosdiarioscodigo.asinteger;
        q_saldosdiarios.open;
        t_saldosdiarios.edit;

        if t_saldosdiariosfechado.asstring = 'NÃO'
         then t_saldosdiariossaldo.asfloat  := strtofloat(floattostrf(q_saldosdiariossaldo.asfloat,fffixed,15,2))
         else t_saldosdiariossaldo.asfloat  := strtofloat(floattostrf(t_saldosdiariossaldo.asfloat,fffixed,15,2));

        t_saldosdiariossaldo_sis.asfloat := strtofloat(floattostrf(q_saldosdiariossaldo.asfloat,fffixed,15,2));

        if t_saldosdiariossaldo.asfloat <> t_saldosdiariossaldo_sis.asfloat
         then t_saldosdiariosobs.asstring := 'Saldo diário em divergência com o calculado pelo sistema'
         else t_saldosdiariosobs.asstring := 'Saldo diário ok.';

        t_saldosdiarios.post;

        if t_saldosdiariosfechado.asstring = 'SIM'
         then begin
           if t_contascorrentesdata.asdatetime < t_saldosdiariosdata.asdatetime
            then begin
              t_contascorrentes.edit;
              t_contascorrentesdata.asdatetime := t_saldosdiariosdata.asdatetime;
              t_contascorrentes.post;
            end;
         end;

        t_saldosdiarios.next;
      end;

     processamento('Aguarde recalculando saldos diários...'+t_saldosdiariosdata.asstring,t_saldosdiarios.recordcount,true);
   end;
end;

procedure Tf_contascorrentes.DBGrid12DblClick(Sender: TObject);
begin
  if (t_saldosdiariosfechado.asstring = 'SIM') and ((v_usuario <> 'DUDA') and (v_usuario <> 'FABIANO') and (v_usuario <> 'WMEDEIROS'))
   then begin
     Showmessage(v_usuario+', Somente a senha da Srª Maria Eduarda poderá abrir saldos fechados.');
     exit;
   end;

  t_saldosdiarios.edit;

  if t_saldosdiariosfechado.asstring = 'NÃO'
   then begin
     t_saldosdiariosfechado.asstring := 'SIM';
     logusu('A','Fechou saldo diário: '+datetostr(t_saldosdiariosdata.asdatetime)+' c.corrente: '+q_ccdescricao.asstring);
   end
   else begin
     t_saldosdiariosfechado.asstring := 'NÃO';
     logusu('A','Abriu saldo diário: '+datetostr(t_saldosdiariosdata.asdatetime)+' c.corrente: '+q_ccdescricao.asstring);
   end;

  t_saldosdiarios.post;

  if t_contascorrentesdata.asdatetime < t_saldosdiariosdata.asdatetime
   then begin
     t_contascorrentes.edit;
     t_contascorrentesdata.asdatetime := t_saldosdiariosdata.asdatetime;
     t_contascorrentes.post;
   end;
end;

procedure Tf_contascorrentes.p_filtrarExit(Sender: TObject);
begin
  p_filtrar.visible := false;
end;

procedure Tf_contascorrentes.b_filtrarClick(Sender: TObject);
begin
  p_filtrar.top     := 78;
  p_filtrar.left    := 232;
  p_filtrar.width   := 297;
  p_filtrar.height  := 287;
  p_filtrar.visible := true;
end;

procedure Tf_contascorrentes.b_aplicarfiltroClick(Sender: TObject);
begin
  if (me_datainicial.text <> '  /  /    ')
   then qdataini := me_datainicial.text
   else qdataini := '01/01/2000';

  if (me_datafinal.text <> '  /  /    ')
   then qdatafin := me_datafinal.text
   else qdatafin := '31/12/2050';

  if (me_valorinicial.Text <> '')
   then qvalorini := me_valorinicial.Text
   else qvalorini := '';

  if (me_valorfinal.Text <> '')
   then qvalorfin := me_valorfinal.Text
   else qvalorfin := ''; 

  if (dblcTpLancamento.Text <> '')
   then qtplanc := dblcTpLancamento.KeyValue
   else qtplanc := 0; 

  if (dblcCliente.Text <> '')
   then qimportador := dblcCliente.KeyValue
   else qimportador := ''; 

  t_contascorrentesAfterScroll(t_contascorrentes);
  p_filtrar.visible := false;
end;

procedure Tf_contascorrentes.b_cancelafiltroClick(Sender: TObject);
begin
  qdataini := '01/01/2000';
  qdatafin := '31/12/2050';

  qvalorini := '';
  qvalorfin := '';
  qtplanc := 0;
  qimportador := '';

  t_contascorrentesAfterScroll(t_contascorrentes);

  p_filtrar.visible := false;
end;

procedure Tf_contascorrentes.t_creditosAfterPost(DataSet: TDataSet);
var
  qsql, valor, codigo_ctrl_num : string;
begin
  valor := TrocarVirgula(T_creditosValor.Asfloat);

  //incluido 08/10/2010 - inserindo follows 98 recebimento de numerarios
  if (t_creditoscredito.asstring = 'ADIA')
   then begin
     F_MSCOMEX.qfol1.close;
     F_MSCOMEX.qfol1.sql.clear;
     F_MSCOMEX.qfol1.sql.add('select processo from Followup where Processo='+chr(39)+t_creditosprocesso.asstring+chr(39)+' and Codevento='+chr(39)+'98'+chr(39)+' and Data='+chr(39)+t_creditosdata_credito.asstring+chr(39));
     F_MSCOMEX.qfol1.open;

     if  F_MSCOMEX.qfol1.recordcount = 0
      then begin
        F_MSCOMEX.qfol1up.sql.clear;
        qsql := 'INSERT INTO Followup ([Processo],[Codevento] ,[Data] ,[Hora] ,[Usuario]) VALUES ( ';
        qsql := qsql+chr(39)+t_creditosprocesso.asstring+chr(39)+', ';
        qsql := qsql+chr(39)+'98'+chr(39)+', ';
        qsql := qsql+chr(39)+t_creditosdata_credito.asstring+chr(39)+', ';
        qsql := qsql+chr(39)+copy(timetostr(time()),1,5)+chr(39)+', ';
        qsql := qsql+chr(39)+v_usuario+chr(39)+' ';
        qsql := qsql+' )';

        EnviaEmailRecebimentoNumerarios;

        F_MSCOMEX.qfol1up.sql.add(qsql);
        F_MSCOMEX.qfol1up.execsql;
        Showmessage(v_usuario+',ATENÇÃO! foi INCLUÍDO follow up de recebimento de numerários para este processo nesta data!');

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

        if ((q_processos2Importador.AsString = '2'  ) or
            (q_processos2Importador.AsString = '66' ) or
            (q_processos2Importador.AsString = '226') or
            (q_processos2Importador.AsString = '239') or
            (q_processos2Importador.AsString = '252') or
            (q_processos2Importador.AsString = '256') or
            (q_processos2Importador.AsString = '273'))
         then if AtualizaDataRecebimentoProcessoPlanilhaTransocean
               then Application.MessageBox('Data de Recebimento do Processo da Planilha Transocean atualizada com sucesso.','Informação', MB_ICONINFORMATION);

        if (q_processos2Importador.AsString = '252')
         then if AtualizaDataRecebimentoProcessoPlanilhaBrasdril
               then Application.MessageBox('Data de Recebimento do Processo da Planilha Brasdril atualizada com sucesso.','Informação', MB_ICONINFORMATION);
      end;
   end;

  AtuSaldo_fat(t_creditosprocesso.asstring);
end;

procedure Tf_contascorrentes.Q_creditosAfterScroll(DataSet: TDataSet);
begin
  b_excluidcred.Enabled := false;
  b_gravarcred.Enabled  := false;

  if q_creditos.recordcount = 0
   then begin
     t_creditos.Close;
     dbedit9.enabled      := false;
     dbedit10.enabled     := false;
     dbl_tipos.enabled    := false;
     b_gravarcred.Enabled := false;
   end
   else begin
     if t_creditos.state = dsinactive
      then t_creditos.open;

     if t_creditos.findkey([q_creditosempresa.asstring,q_creditosfilial.asstring,q_creditosprocesso.asstring,q_creditosreg.asstring])
      then begin
        dbedit9.enabled       := true;
        dbedit10.enabled      := true;
        dbl_tipos.enabled     := true;
        b_excluidcred.Enabled := true;
        b_gravarcred.Enabled  := true;
      end;
   end;
end;

procedure Tf_contascorrentes.dbl_planoExit(Sender: TObject);
begin
  if t_movccplano_contas.asstring = 'CPMF'
   then begin
     gbicms.Enabled := true;
     gbicms.Visible := true;
   end
   else begin
     gbicms.Enabled := false;
     gbicms.Visible := false;
   end;
end;

procedure Tf_contascorrentes.DBEdit22Exit(Sender: TObject);
begin
  if t_movccdata_apuracao_cpmf_final.asdatetime < t_movccdata_apuracao_cpmf_inicial.asdatetime
   then begin
     showmessage('Data Final não pode ser menor que a Data inicial.');
     dbedit22.SetFocus;
   end;
end;

procedure Tf_contascorrentes.DBG_CCDblClick(Sender: TObject);
begin
  showmessage('Saldo em Conta Corrente - '+trim(t_contascorrentesdescricao.asstring)+' - R$ '+floattostr(t_contascorrentessaldo.asfloat));
end;

procedure Tf_contascorrentes.q_contaspAfterScroll(DataSet: TDataSet);
begin
  e_valorapagar.text := q_contaspsaldo.asstring;
  e_detcp.text       := q_contasphistorico.asstring;
end;

procedure Tf_contascorrentes.b_okcpClick(Sender: TObject);
begin
  if q_tiposnumerarios.state = dsinactive
   then begin
     Showmessage(v_usuario+', Tipo de Numerário não pode estar em branco.');
     Exit;
   end;

  if (strtofloat(floattostrf(qsaldo,fffixed,15,2)) < strtofloat(e_valorapagar.text))
   then Showmessage('Saldo para desmembramento insuficiente.')
   else begin
     if (strtofloat(floattostrf(q_contaspsaldo.asfloat,fffixed,15,2)) < strtofloat(e_valorapagar.text))
      then Showmessage('Valor a pagar não poder ser maior que o Saldo da conta.')
      else begin
        if MessageDlg('Confirma Pagamento de Contas a Pagar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
         then begin
           if t_numerarios3.state = dsinactive
            then t_numerarios3.open;

           t_numerarios3.append;
           t_numerarios3Empresa.asstring                := t_contascorrentesEmpresa.asstring;
           t_numerarios3Filial.asstring                 := t_contascorrentesFilial.asstring;
           t_numerarios3Processo.asstring               := 'FINANC';
           t_numerarios3Numerario.asstring              := q_tiposnumerarioscodigo.asstring;
           t_numerarios3Usuario_Previsao.asstring       := v_usuario;
           t_numerarios3Data_Previsao.asstring          := q_contaspdata_emissao.asstring;
           t_numerarios3Valor_Previsao.asfloat          := q_contaspvalor.asfloat;
           t_numerarios3Previsao_solicitada.asstring    := 'SIM';
           t_numerarios3Ok_Previsao_financeiro.asstring := 'SIM';
           t_numerarios3Usuario_Financeiro.asstring     := v_usuario;
           t_numerarios3data_registro.asdatetime        := t_movccdata.asdatetime;
           t_numerarios3Valor_Registrado.asfloat        := strtofloat(e_valorapagar.text);
           t_numerarios3Valor_Contabilizado.asfloat     := strtofloat(e_valorapagar.text);
           t_numerarios3Contabilizado.asstring          := 'SIM';
           t_numerarios3Usuario_Contablizado.asstring   := v_usuario;
           t_numerarios3Conta_Corrente.asinteger        := t_contascorrentescodigo.asinteger;
           t_numerarios3Codigo_mov.asinteger            := t_movcccodigo_mov.asinteger;
           t_numerarios3Impdemfim.asstring              := 'SIM';
           t_numerarios3Detalhe.asstring                := e_detcp.text;
           t_numerarios3Fornecedor.asstring             := q_contaspfornecedor.asstring;
           t_numerarios3Codigo.asstring                 := q_contaspcodigo.asstring;
           t_numerarios3.post;

           q_debitos.close;
           q_debitos.params[0].asinteger := t_contascorrentescodigo.asinteger;
           q_debitos.params[1].asinteger := t_movcccodigo_mov.asinteger;
           q_debitos.open;

           q_totaldesmdeb.close;
           q_totaldesmdeb.params[0].asinteger := t_contascorrentescodigo.asinteger;
           q_totaldesmdeb.params[1].asinteger := t_movcccodigo_mov.asinteger;
           q_totaldesmdeb.open;

           qsaldo := ((t_movccvalor.asfloat*(-1))-q_totaldesmdebvalor.asfloat);
           label23.caption  := 'Total Desmembrado = '+ floattostrf(q_totaldesmdebvalor.asfloat,fffixed,15,2)+'  Saldo à Desmembrar = '+floattostrf(qsaldo,fffixed,15,2);

           q_debitos2.Close;
           q_debitos2.open;

           if tbContasPag.state = dsinactive
            then tbContasPag.open;

           tbContasPag.FindKey([q_contaspempresa.asstring,q_contaspfilial.asstring,q_contaspfornecedor.asstring,q_contaspcodigo.asstring]);
           acCalculaSaldoExecute(f_contascorrentes);
           q_contasp.Close;
           q_contasp.open;
           q_tiposnumerarios.close;
         end;
      end;
   end;
end;

procedure Tf_contascorrentes.e_contaspChange(Sender: TObject);
begin
  q_contasp.locate('codigo',e_contasp.text,[])
end;

procedure Tf_contascorrentes.e_contaspEnter(Sender: TObject);
begin
  e_contasp.text := '';
end;

procedure Tf_contascorrentes.b_fechacpClick(Sender: TObject);
begin
  p_contasp.visible := false;
  p_desmdeb.visible := true;
  q_tiposnumerarios.open;
  dbgrid5.setfocus;
end;

procedure Tf_contascorrentes.b_cpClick(Sender: TObject);
begin
  if qsaldo <= 0
   then MessageDlg(v_usuario+', Saldo Insuficiente a Desmembrar <= 0!', mtInformation,[mbOk], 0)
   else begin
     q_contasp.close;
     q_contasp.open;

     if t_numerarios3.state = dsinactive
      then t_numerarios3.open;

     p_contasp.Top     :=  69;
     p_contasp.Left    :=  85;
     p_contasp.Width   :=  542;
     p_contasp.Height  :=  239;
     p_contasp.Visible := true;

     q_tiposnumerarios.close;
     dbgrid7.setfocus;
   end;
end;

procedure Tf_contascorrentes.acCalculaSaldoExecute(Sender: TObject);
var
  vSaldo: Real;
begin
  { SALDO = VALOR - PAGAMENTO + CORREÇÃO }
  { OBS: CORREÇÃO POSITIVA EM RELAÇÃO AO SALDO }

  vSaldo := tbContasPagValor.AsFloat;

  with qrLocCorrecoes do
   begin
     Params[0].AsString := tbContaspagempresa.AsString;
     Params[1].AsString := tbContaspagfilial.AsString;
     Params[2].AsString := tbContasPagFornecedor.AsString;
     Params[3].AsString := tbContasPagCodigo.AsString;
     Open;

     if RecordCount <> 0
       then begin
         while not Eof do
          begin
            if qrLocCorrecoesPositivo.Asinteger = 1 Then
              vSaldo := vSaldo + qrLocCorrecoesValorTot.AsFloat
            else
              vSaldo := vSaldo - qrLocCorrecoesValorTot.AsFloat;

            Next;
          end;
       end;

     Close;
   end;

  with qrLocPagamentos do
    begin
      Params[0].AsString := tbContaspagempresa.AsString;
      Params[1].AsString := tbContaspagfilial.AsString;
      Params[2].AsString := tbContasPagFornecedor.AsString;
      Params[3].AsString := tbContasPagCodigo.AsString;
      Open;

      if RecordCount <> 0
       then vSaldo := vSaldo - qrLocPagamentosValorTot.AsFloat;

      Close;
    end;

  tbContasPag.edit;
  tbContasPagSaldo.AsFloat := strtofloat(formatfloat('0.00',vSaldo));
  tbContasPag.post;
end;

procedure Tf_contascorrentes.e_valorapagarKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = '.'
   then key := ',';
end;

procedure Tf_contascorrentes.DBLookupComboBox2Click(Sender: TObject);
begin
  q_tiposnumerarios.open;
end;

procedure Tf_contascorrentes.AtuSaldo_fat(QPRO:STRING);
begin
  f_mscomex.qNFS01.Params[0].AsString := QPRO;
  f_mscomex.qNFS02.Params[0].AsString := QPRO;
  f_mscomex.MSPGP(QPRO);
end;

procedure Tf_contascorrentes.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (q_movvalor.asfloat < 0)
   then DBGrid1.canvas.font.Color := clMaroon
   else DBGrid1.canvas.font.Color := clNavy;

  if gdSelected in state
   then dbgrid1.Canvas.font.color := clwhite;

  DBGrid1.defaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tf_contascorrentes.q_processoExit(Sender: TObject);
begin
  if q_processo.text = ''
   then begin
     MessageDlg(v_usuario+', Favor informar o número do Processo! ', mtInformation,[mbOk], 0);
     b_gravanov.enabled := false;
     b_cancelanov.setfocus;
   end
   else begin
     if ((q_processo.Text = 'CANDEL') or (q_processo.Text = 'PACKING'))
      then begin
        if (q_processo.Text = 'CANDEL')
         then begin
           q_processos.Close;
           q_processos.ParamByName('Empresa').AsString := '3';
           q_processos.ParamByName('Filial').AsString  := 'RJ3';
           q_processos.ParamByName('Codigo').AsString  := q_processo.text;
           q_processos.Open;

           if (q_processos.RecordCount <= 0)
            then begin
              MessageDlg(v_usuario+', Processo não encontrado! '+q_processo.text, mtInformation,[mbOk], 0);
              q_processo.text := '';
              b_gravanov.enabled := false;
              q_processo.setfocus;
            end
            else b_gravanov.enabled := true;
         end
         else begin
           q_processos.Close;
           q_processos.ParamByName('Empresa').AsString := '4';
           q_processos.ParamByName('Filial').AsString  := 'RJ4';
           q_processos.ParamByName('Codigo').AsString  := q_processo.text;
           q_processos.Open;

           if (q_processos.RecordCount <= 0)
            then begin
              MessageDlg(v_usuario+', Processo não encontrado! '+q_processo.text, mtInformation,[mbOk], 0);
              q_processo.text := '';
              b_gravanov.enabled := false;
              q_processo.setfocus;
            end
            else b_gravanov.enabled := true;
         end;
      end
      else begin
        q_processos.Close;
        q_processos.ParamByName('Empresa').AsString := t_parametrosempresa.asstring;
        q_processos.ParamByName('Filial').AsString  := t_parametrosfilial.asstring;
        q_processos.ParamByName('Codigo').AsString  := q_processo.text;
        q_processos.Open;

        if (q_processos.RecordCount <= 0)
         then begin
           MessageDlg(v_usuario+', Processo não encontrado! '+q_processo.text, mtInformation,[mbOk], 0);
           q_processo.text := '';
           b_gravanov.enabled := false;
           q_processo.setfocus;
         end
         else b_gravanov.enabled := true;
      end;
   end;
end;

procedure Tf_contascorrentes.cb_todosClick(Sender: TObject);
begin
  if cb_todos.Checked
   then begin
     q_debitos2.close;

     if (COPY(t_movcccliente.asstring,1,2) <> '00') and (t_movcccliente.asstring <> '407')
       then begin
         q_debitos2.params[0].asstring := '%';
         q_debitos2.params[1].asstring := t_movcccliente.asstring;
       end
       else begin
         q_debitos2.params[0].asstring := '%';
         q_debitos2.params[1].asstring := '%';
       end;

     e_proc.text := '';
     q_debitos2.open;

     if q_debitos2.RecordCount = 0
      then begin
        showmessage(v_usuario+', Não foram encontrados débitos para contabilizar!');
        e_proc.SetFocus;
      end
      else dbgrid6.setfocus;
   end;
end;

procedure Tf_contascorrentes.b_cancelcredClick(Sender: TObject);
begin
  t_creditos.cancel;
  b_cancelcred.Enabled := false;
  b_novodcred.Enabled  := true;
end;

procedure Tf_contascorrentes.t_saldosdiariosAfterPost(DataSet: TDataSet);
begin
  t_saldosdiarios.refresh;
end;

procedure Tf_contascorrentes.cbFixaNumerarioClick(Sender: TObject);
begin
  DBLC_TIPOS.Enabled := not(cbFixaNumerario.Checked);

  if not DBLC_TIPOS.Enabled
   then edtValor_Contabilizado.SetFocus;
end;

procedure Tf_contascorrentes.BuscaCodigoMovimentacao(Doc, Historico, Valor: String);

  procedure LimpaArray;
  var
    i : Integer;
  begin
    for i := 1 to 20000 do
     begin
       Movimentacao[i] := '';
     end;
  end;

var
  q_Aux2 : TQuery;
  a : Integer;
begin
  q_Aux2 := TQuery.Create(nil);
  q_Aux2.DatabaseName := 'DBNMSCOMEX';

  q_Aux2.SQL.Clear;
  q_Aux2.SQL.Add('SELECT MCC.CODIGO_MOV                                                        ');
  q_Aux2.SQL.Add('  FROM MOVIMENTACAO_CONTAS_CORRENTES MCC LEFT JOIN IMPORTADORES_AGRUPADOS IA ');
  q_Aux2.SQL.Add('    ON MCC.CLIENTE = IA.CODIGO                                               ');
  q_Aux2.SQL.Add(' WHERE MCC.CODIGO = :pCodigo                                                 ');

  q_Aux2.ParamByName('pCodigo').Value := q_movCodigo.AsString;

  if (t_contascorrentesEmpresa.AsString <> '')
   then begin
     q_Aux2.SQL.Add(' AND MCC.Empresa = :pEmpresa ');
     q_Aux2.ParamByName('pEmpresa').Value := t_contascorrentesempresa.asstring;
   end;

  if (t_contascorrentesfilial.asstring <> '')
   then begin
     q_Aux2.SQL.Add(' AND MCC.Filial = :pFilial ');
     q_Aux2.ParamByName('pFilial').Value := t_contascorrentesfilial.asstring;
   end;

  if (qdataini <> '')
   then begin
     q_Aux2.SQL.Add(' AND MCC.Data >= :pDataIni ');
     q_Aux2.ParamByName('pDataIni').Value := strtodate(qdataini);
   end;

  if (qdatafin <> '')
   then begin
     q_Aux2.SQL.Add(' AND MCC.Data <= :pDataFin ');
     q_Aux2.ParamByName('pDataFin').Value := strtodate(qdatafin);
   end;

  if (qvalorini <> '')
   then begin
     q_Aux2.SQL.Add('   AND CAST(MCC.Valor AS MONEY) >= :pValorini ');
     q_Aux2.ParamByName('pValorini').Value := StrToFloat(qvalorini);
   end;

  if (qvalorfin <> '')
   then begin
     q_Aux2.SQL.Add('   AND CAST(MCC.Valor AS MONEY) <= :pValorfin ');
     q_Aux2.ParamByName('pValorfin').Value := StrToFloat(qvalorfin);
   end;

  if (qtplanc > 0)
   then begin
     q_Aux2.SQL.Add('   AND MCC.Tipo = :pTplanc ');
     q_Aux2.ParamByName('pTplanc').Value := qtplanc;
   end;

  if (qimportador <> '')
   then begin
     {Código Cliente}
     if (Length(qimportador) = 3)
      then q_Aux2.SQL.Add('   AND IA.Codigo = :pImportador ');

     {Código Cliente Agrupado}
     if (Length(qimportador) = 4)
      then q_Aux2.SQL.Add('   AND IA.Codigo_AGRUPADO = :pImportador ');

     q_Aux2.ParamByName('pImportador').Value := qimportador;
   end;


  try
    if (Doc <> VAZIO)
     then begin
       q_Aux2.SQL.Add(' AND MCC.DOC LIKE :pDoc ');
       q_Aux2.ParamByName('pDoc').Value := Doc + '%';
     end
     else if (Historico <> VAZIO)
           then begin
             q_Aux2.SQL.Add(' AND MCC.HISTORICO LIKE :pHistorico ');
             q_Aux2.ParamByName('pHistorico').Value := '%' + Historico + '%';
           end
           else if (Valor <> VAZIO)
                 then begin
                   q_Aux2.SQL.Add(' AND MCC.VALOR = :pValor ');
                   q_Aux2.ParamByName('pValor').Value := StrToFloat(Valor);
                 end;

    q_Aux2.SQL.Add(' ORDER BY MCC.DATA DESC, MCC.CODIGO_MOV DESC ');
    q_Aux2.Open;

    LimpaArray;

    QtdMovimentacoes := q_Aux2.RecordCount;

    a := 1;

    if q_Aux2.RecordCount > 0
     then begin
       q_Aux2.First;

       while not q_Aux2.Eof do
        begin
          Movimentacao[a] := q_Aux2.Fields[0].AsString;

          q_Aux2.Next;
          a := a + 1;
        end;
     end;
  finally
    FreeAndNil(q_Aux2);
  end;
end;

procedure Tf_contascorrentes.q_debitosSaldoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text := FormatFloat('0.00',q_debitosSaldo.AsFloat);
end;

procedure Tf_contascorrentes.EnviaEmailRecebimentoNumerarios;
var
  Email : String;

  procedure TrazSolicitante;
  var
    QryAux : TQuery;
  begin
    QryAux := TQuery.Create(nil);
    QryAux.DatabaseName := 'DBNMSCOMEX';

    try
      QryAux.Close;
      QryAux.SQL.Clear;
      QryAux.SQL.Add(' SELECT U.Email                                                   ');
      QryAux.SQL.Add('   FROM Controle_Numerarios_Solicitacao CNS INNER JOIN Usuarios U ');
      QryAux.SQL.Add('     ON CNS.Solicitante = U.Usuario                               ');
      QryAux.SQL.Add('  WHERE CNS.FK_MsNumero = :p0                                     ');
      QryAux.Params[0].Value := t_creditosprocesso.asstring;
      QryAux.Open;

      if QryAux.RecordCount > 0
       then Email := QryAux.Fields[0].AsString
       else begin
         QryAux.Close;
         QryAux.SQL.Clear;
         QryAux.SQL.Add(' SELECT U.Email                                                        ');
         QryAux.SQL.Add('   FROM Planilha_BRASDRIL_Itens PBI INNER JOIN Planilha_BRASDRIL PB    ');
         QryAux.SQL.Add('     ON PB.Sequencial  = PBI.Sequencial_Planilha INNER JOIN Usuarios U ');
         QryAux.SQL.Add('     ON PB.Responsavel = U.Usuario                                     ');
         QryAux.SQL.Add('  WHERE PBI.REF_MS = :p0                                               ');
         QryAux.Params[0].Value := t_creditosprocesso.asstring;
         QryAux.Open;

         if QryAux.RecordCount > 0
          then Email := QryAux.Fields[0].AsString
          else Email := '';
       end;

      QryAux.Close;
    finally
      QryAux.Free;
    end;
  end;

  procedure AdicionaCopiados;
  var
    QryAux : TQuery;
  begin
    QryAux := TQuery.Create(nil);
    QryAux.DatabaseName := 'DBNMSCOMEX';

    vCC := '';

    try
      QryAux.Close;
      QryAux.SQL.Clear;
      QryAux.SQL.Add(' SELECT EMAIL                             ');
      QryAux.SQL.Add('   FROM EMAILS_AVISOS                     ');
      QryAux.SQL.Add('  WHERE Ativo = 1 AND Tipo = ''MSRECNUM'' ');
      QryAux.Open;

      if QryAux.RecordCount > 0
       then begin
         while not QryAux.Eof do
          begin
            if vCC = ''
             then vCC := QryAux.Fields[0].AsString
             else vCC := vCC + '; ' + QryAux.Fields[0].AsString;

            QryAux.Next;
          end;
       end;
    finally
      QryAux.Free;
    end;
  end;

begin
  Email    := '';

  vTitulo  := 'MS2000 - Aviso de Recebimento de Numerários';
  vAssunto := 'Recebimento de Numerários - Processo ' + t_creditosprocesso.asstring + ' - ' + t_importadoresRazao_Social.AsString;
  vDe      := 'MS2000 <auditoria@logistic-ms.com.br>';

  TrazSolicitante;

  vPara := Email;

  AdicionaCopiados;

  vBody := '<BR>'
         + 'Prezados,<BR>'
         + '<BR>'
         + 'Por meio deste, informamos que o valor de R$ ' + FormatFloat('#,##0.00',t_creditosValor.AsFloat) + '<BR>'
         + 'referente aos numerários do Processo '+ t_creditosprocesso.asstring +', <BR>'
         + 'foram recebidos.<BR>'
         + '<BR>'
         + StringOfChar('_', 80)
         + '<BR><BR>'
         + 'Este e-mail é automático e não necessita de resposta. <BR>'
         + '<BR><BR>'
         + 'Atenciosamente,'
         + '<BR><BR>'
         + 'MS2000 - SISTEMA GERENCIAL ADUANEIRO<BR><BR>';

  try
    tbEmailAuto.Open;
    tbEmailAuto.Append;
    tbEmailAutoPrograma.AsString := 'MS2000';
    tbEmailAutoTitulo.AsString   := vTitulo;
    tbEmailAutoAssunto.AsString  := vAssunto;
    tbEmailAutoAnexo.AsString    := vAnexo;
    tbEmailAutoHTML.Asinteger    := vHTML;
    tbEmailAutoDe.AsString       := vDe;
    tbEmailAutoPara.AsString     := vPara;
    tbEmailAutoCC.AsString       := vCC;
    tbEmailAutoCCo.AsString      := vCCO;        
    tbEmailAutoBody.AsString     := vBody;
    tbEmailAutoData.AsDateTime   := Date();
    tbEmailAutoHora.AsDateTime   := Now;
    tbEmailAuto.Post;
    tbEmailAuto.Close;
  except
    on E:Exception do
     begin
       showmessage(v_usuario+' Erro ao enviar e-mail de Recebimento de Numerários!');
     end;
  end;
end;

procedure Tf_contascorrentes.sbLimpaTpLancamentoClick(Sender: TObject);
begin
  dblcTpLancamento.KeyValue := 0;
end;

procedure Tf_contascorrentes.sbLimpaClienteClick(Sender: TObject);
begin
  dblcCliente.KeyValue := 0;
end;

procedure Tf_contascorrentes.AlteraDatasDesmembramento(Codigo_Mov, Positivo : Integer; Data : String);
var
  QryAux : TQuery;
begin
  QryAux := TQuery.Create(nil);
  QryAux.DatabaseName := 'DBNMSCOMEX';

  try
    if (Codigo_Mov <> 0)
     then begin
       QryAux.Close;
       QryAux.SQL.Clear;

       if (Positivo = 1)
        then QryAux.SQL.Add(' UPDATE CREDITOS_PROCESSOS   SET DATA_CREDITO = :p0 WHERE CONTABILIZADO = ''SIM'' AND CODIGO_MOV = :p1 ')
        else QryAux.SQL.Add(' UPDATE NUMERARIOS_PROCESSOS SET DATA_REGISTRO = :p0 WHERE CONTABILIZADO = ''SIM'' AND CODIGO_MOV = :p1 ');

       QryAux.Params[0].Value := Data;
       QryAux.Params[1].Value := Codigo_Mov;
       QryAux.ExecSQL;
     end;
  finally
    QryAux.Free;
  end;
end;

procedure Tf_contascorrentes.btnBuscarClick(Sender: TObject);
begin
  if (OP.Execute)
   then edtCaminho.Text := OP.filename;
end;

procedure Tf_contascorrentes.SpeedButton2Click(Sender: TObject);
begin
  edtCaminho.Clear;
end;

procedure Tf_contascorrentes.btnUploadClick(Sender: TObject);
var
  Numerador, Arquivo, CodigoPasta, Origem, Destino : String;
  GoOn : Boolean;
begin
  //Buscando numero na tabela parametro
  GoOn := False;

  qryParametro.Close;
  qryParametro.Open;

  //Testando numero
  if not(qryParametro.IsEmpty) and
     (Trim(qryParametroNumerador_Documentos.AsString) <> '' )
   then begin
     // Incrementando numerador
     Numerador := qryParametroNumerador_Documentos.AsString;
     Numerador := IntToStr(StrToInt(Numerador)+1);
     Numerador := StringOfChar('0', 8-Length(Numerador)) + Numerador;

     Arquivo := Copy('RJO',1,3) + Numerador;

     qryParametro.Close;

     //Atualizando Numerador
     try
       qryUpdateN.ParamByName('NewNumero').Value := Numerador;
       qryUpdateN.ExecSQL;
       GoOn := True;
     except
       GoOn := False;
       Application.MessageBox('Erro na atualização do numerador. Upload foi CANCELADO!','Erro', MB_OK+MB_ICONWARNING);
     end;

     // Gravando na tabela de documento
     if (GoOn)
      then begin
        try
          CodigoPasta := verificarFaixa(Arquivo);
          qryIncDocs.ParamByName('Codigo').Value           := 'RJO' + CodigoPasta;
          qryIncDocs.ParamByName('Arquivo').Value          := Arquivo;
          qryIncDocs.ParamByName('Pagina').Value           := '1';
          qryIncDocs.ParamByName('Data_Envio').Value       := t_saldosdiariosData.Value;          
          qryIncDocs.ParamByName('Importador').Value       := '0000';
          qryIncDocs.ParamByName('Processo').Value         := 'SALDODIA';
          qryIncDocs.ParamByName('Conta_Corrente').Value   := t_contascorrentesCodigo.Value;;          
          qryIncDocs.ParamByName('Tipo_Doc').Value         := 'FINA';
          qryIncDocs.ParamByName('Sub_Tipo_Doc').Value     := 'SD';
          qryIncDocs.ParamByName('Numero_Doc').Value       := IntToStr(RetornaNumeradorDocumentoSaldoDiario);
          qryIncDocs.ParamByName('Vigencia_inicial').Value := NULL;
          qryIncDocs.ParamByName('Vigencia_final').Value   := NULL;

          if Trim(edtObservacoesPdf.Text) <> ''
           then qryIncDocs.ParamByName('Observacoes').Value := edtObservacoesPdf.Text
           else qryIncDocs.ParamByName('Observacoes').Value := 'EXTRATO - SALDO DIÁRIO - ' + t_contascorrentesDescricao.Value + ' - ' + DateToStr(t_saldosdiariosData.Value);

          qryIncDocs.ParamByName('Status').Value           := 0;
          qryIncDocs.ParamByName('usuario').Value          := v_usuario;
          qryIncDocs.ExecSQL;

          GoOn := GoOn and True;
        except
          GoOn := False;
        end;
      end;

     //Copiando arquivo pdf para servidor
     if( GoOn )
      then begin
        //Diretorio
        Origem  := OP.FileName;
        Destino := DIR_IMG + CodigoPasta +'\'+ Arquivo +'.pdf';

        if (not DirectoryExists(ExtractFilePath(Destino)))
         then ForceDirectories(ExtractFilePath(Destino));

        if (FileExists(Destino))
         then DeleteFile(Destino);

        if not CopyFile(PChar(Origem), PChar(Destino), true)
         then Begin
           qryDelErro.ParamByName('Codigo').Value  := 'RJO' + CodigoPasta;
           qryDelErro.ParamByName('Arquivo').Value := Arquivo;
           qryDelErro.ExecSQL;
           GoOn := false;
           ShowMessage('Erro ao copiar ' + Origem + ' para ' + Destino);
         end;

        if (GoOn)
         then begin
           Application.MessageBox('Upload realizado com sucesso!','Informação', MB_OK+MB_ICONINFORMATION);
           AtualizaGridArquivosPDF;
           edtObservacoesPdf.Clear;
           edtCaminho.Clear;
         end
         else Application.MessageBox('Não foi possível realizar o upload!','Erro', MB_OK+MB_ICONERROR);
      end;
   end
   else Application.MessageBox('Erro com o numerador na tabela parametros','Erro', MB_OK+MB_ICONWARNING);
end;

function Tf_contascorrentes.verificarFaixa(a: String): String;
var
  v, d : String;
  n, f : Integer;
begin
  v := Copy(a, 4, 8);
  n := StrToInt(v);
  f := (n div 10000);

  if (n mod 10000) <> 0
   then Inc(f);

  case f Of
    1..9: d := '000'+ IntToStr(f) +'0000';
    10..99: d := '00'+ IntToStr(f) +'0000';
    100..999: d := '0'+ IntToStr(f) +'0000';
    1000..9999: d := ''+ IntToStr(f) +'0000';
  end;

  { GERANDO DIRETÓRIO DA FAIXA DOS DOCUMENTOS, CASO NÃO EXISTENTA }
  if not DirectoryExists( DIR_IMG + d )
   then CreateDir( DIR_IMG + d );

  Result := d;
end;

procedure Tf_contascorrentes.btnPdfSdClick(Sender: TObject);
begin
  AtualizaGridArquivosPDF;

  edtCaminho.Clear;

  edtObservacoesPdf.Clear;

  lblPdfs.Caption := t_contascorrentesDescricao.AsString + ' - ' + t_saldosdiariosData.AsString;

  pnlUploadPdf.Visible := True;
end;

procedure Tf_contascorrentes.edtCaminhoChange(Sender: TObject);
begin
  btnUpload.Enabled := Not(Trim(edtCaminho.Text) = '');
end;

procedure Tf_contascorrentes.btnFechaPnlUploadClick(Sender: TObject);
begin
  qryArquivos.Close;

  pnlUploadPdf.Visible := False;  
end;

procedure Tf_contascorrentes.AtualizaGridArquivosPDF;
begin
  qryArquivos.Close;
  qryArquivos.SQL.Clear;
  qryArquivos.Params.Clear;  
  qryArquivos.SQL.Add('SELECT DATA_ENVIO,             ');
  qryArquivos.SQL.Add('       NUMERO_DOC,             ');
  qryArquivos.SQL.Add('       CODIGO,                 ');
  qryArquivos.SQL.Add('       ARQUIVO,                ');
  qryArquivos.SQL.Add('       OBSERVACOES             ');
  qryArquivos.SQL.Add('  FROM DOCUMENTOS              ');
  qryArquivos.SQL.Add(' WHERE PDF = 1                 ');
  qryArquivos.SQL.Add('   AND PROCESSO = ''SALDODIA'' ');
  qryArquivos.SQL.Add('   AND CONTA_CORRENTE = :CC    ');
  qryArquivos.SQL.Add('   AND DATA_ENVIO     = :DATA  ');
  qryArquivos.Params[0].Value := t_contascorrentesCodigo.Value;
  qryArquivos.Params[1].Value := t_saldosdiariosData.AsString;
  qryArquivos.Open;

  btnExcluirPdf.Enabled := qryArquivos.RecordCount > 0;
end;

procedure Tf_contascorrentes.DBGrid13DblClick(Sender: TObject);
Var
 Pdir : pchar;
begin
  nome := DIR_IMG + Copy(qryArquivosCodigo.AsString,4,11) + '\' + qryArquivosArquivo.AsString + '.pdf';
  GetMem(Pdir,256);
  StrPCopy(Pdir,nome);

  if FileExists(nome)
   then begin
     ShellExecute(0,nil, Pchar(nome),nil,Pdir,SW_NORMAL);
     FreeMem(Pdir,256);
   end
   else ShowMessage('Arquivo não localizado.');
end;

procedure Tf_contascorrentes.BitBtn1Click(Sender: TObject);
begin
  p_saldosdiarios.visible := false;
end;

procedure Tf_contascorrentes.btnExcluirPdfClick(Sender: TObject);
var
  QryAux : TQuery;
begin
  if Application.MessageBox('Deseja realmente excluir esse Arquivo desse saldo ?','Confirmação',MB_YESNO+MB_ICONQUESTION) = IDYES
   then begin
     QryAux := TQuery.Create(nil);
     QryAux.DatabaseName := 'DBNMSCOMEX';

     try
       if (Trim(qryArquivosArquivo.AsString) <> '')
        then begin
          QryAux.Close;
          QryAux.SQL.Clear;
          QryAux.SQL.Add(' DELETE DOCUMENTOS                          ');
          QryAux.SQL.Add('  WHERE PDF = 1 AND PROCESSO = ''SALDODIA'' ');
          QryAux.SQL.Add('    AND DATA_ENVIO = :p0 AND ARQUIVO = :p1  ');
          QryAux.SQL.Add('    AND CONTA_CORRENTE = :p2                ');
          QryAux.Params[0].Value := qryArquivosData_envio.Value;
          QryAux.Params[1].Value := qryArquivosArquivo.Value;
          QryAux.Params[2].Value := t_contascorrentesCodigo.Value;
          QryAux.ExecSQL;
        end;
     finally
       QryAux.Free;

       AtualizaGridArquivosPDF;
     end;
   end;
end;

function Tf_contascorrentes.RetornaNumeradorDocumentoSaldoDiario : Integer;
var
  QryAux : TQuery;
begin
  QryAux := TQuery.Create(nil);
  QryAux.DatabaseName := 'DBNMSCOMEX';

  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.Params.Clear;
    QryAux.SQL.Add(' SELECT MAX(NUMERO_DOC)                     ');
    QryAux.SQL.Add('   FROM DOCUMENTOS                          ');
    QryAux.SQL.Add('  WHERE PDF = 1 AND PROCESSO = ''SALDODIA'' ');
    QryAux.SQL.Add('    AND DATA_ENVIO     = :p0                ');
    QryAux.SQL.Add('    AND CONTA_CORRENTE = :p1                ');
    QryAux.Params[0].Value := qryArquivosData_envio.Value;
    QryAux.Params[1].Value := t_contascorrentesCodigo.Value;
    QryAux.Open;

    if QryAux.Fields[0].Value = NULL
     then Result := 1
     else Result := QryAux.Fields[0].Value + 1;
  finally
    QryAux.Free;

    AtualizaGridArquivosPDF;
  end;
end;

procedure Tf_contascorrentes.DBGrid5DblClick(Sender: TObject);
var
  QryAux : TQuery;
  Pdir : pchar;
begin
  if (q_debitosArquivo.Value = 'SIM')
   then begin
     QryAux := TQuery.Create(nil);
     QryAux.DatabaseName := 'DBNMSCOMEX';

     try
       QryAux.Close;
       QryAux.SQL.Clear;
       QryAux.Params.Clear;
       QryAux.SQL.Add(' SELECT CODIGO, ARQUIVO, PDF            ');
       QryAux.SQL.Add('   FROM DOCUMENTOS                      ');
       QryAux.SQL.Add('  WHERE REG_NUMERARIO = :p0             ');
       QryAux.Params[0].Value := q_debitosREG.Value;
       QryAux.Open;

       if QryAux.RecordCount > 0
        then begin
          if QryAux.Fields[2].AsInteger = 1
           then nome := DIR_IMG + Copy(QryAux.Fields[0].AsString,4,11) + '\' + QryAux.Fields[1].AsString + '.pdf'
           else nome := DIR_IMG + verificarFaixa(QryAux.Fields[0].AsString) + '\' + QryAux.Fields[1].AsString + '.jpg';

          GetMem(Pdir,256);
          StrPCopy(Pdir,nome);

          if FileExists(nome)
           then begin
             ShellExecute(0,nil, Pchar(nome),nil,Pdir,SW_NORMAL);
             FreeMem(Pdir,256);
           end
           else ShowMessage('Arquivo não localizado.');
        end
        else ShowMessage('Arquivo não localizado.');
     finally
       QryAux.Free;
     end;
   end
   else ShowMessage('Não existe arquivo associado a esse desmembramento, favor verificar.');
end;

function Tf_contascorrentes.TrocarVirgula(valor: double): String;
begin
  Result := stringReplace(FloatToStr( valor ),',','.',[rfreplaceall]);
end;

function Tf_contascorrentes.AtualizaDataRecebimentoProcessoPlanilhaBrasdril : Boolean;
var
  q_Aux : TQuery;
  Sequencial : String;
begin
  try
    q_Aux := TQuery.Create(nil);
    q_Aux.DatabaseName := 'DBNMSCOMEX';

    Sequencial := '';

    q_Aux.SQL.Clear;
    q_Aux.SQL.Add('SELECT SEQUENCIAL                   ');
    q_Aux.SQL.Add('  FROM PLANILHA_BRASDRIL_ITENS      ');
    q_Aux.SQL.Add(' WHERE REF_MS = :p0 AND TOTAL = :p1 ');
    q_Aux.ParamByName('p0').Value := q_processos2Codigo.Value;
    q_Aux.ParamByName('p1').Value := t_creditosValor.Value;
    q_Aux.Open;

    if (q_Aux.RecordCount = 1)
     then begin
       Sequencial := q_Aux.Fields[0].Value;

       if (Sequencial <> '')
        then begin
          try
            q_Aux.SQL.Clear;
            q_Aux.SQL.Add(' UPDATE PLANILHA_BRASDRIL_ITENS ');
            q_Aux.SQL.Add('    SET DATA_RECEBIMENTO = :p0  ');
            q_Aux.SQL.Add('  WHERE SEQUENCIAL = :p1        ');

            q_Aux.ParamByName('p0').Value := t_creditosData_Credito.Value;
            q_Aux.ParamByName('p1').Value := Sequencial;
            q_Aux.ExecSQL;

            Result := True;            
          except
            Application.MessageBox('Erro na atualização da Data de Recebimento do Processo contido na Planilha Brasdril.','Atenção', MB_ICONWARNING);
            Result := False;
          end;
        end;
     end
     else Result := False;
  finally
    FreeAndNil(q_Aux);
  end;
end;

function Tf_contascorrentes.AtualizaDataRecebimentoProcessoPlanilhaTransocean : Boolean;
var
  q_Aux : TQuery;
  Sequencial : String;
begin
  try
    q_Aux := TQuery.Create(nil);
    q_Aux.DatabaseName := 'DBNMSCOMEX';

    Sequencial := '';

    q_Aux.SQL.Clear;
    q_Aux.SQL.Add('SELECT SEQUENCIAL                   ');
    q_Aux.SQL.Add('  FROM PLANILHA_TRANSOCEAN_ITENS    ');
    q_Aux.SQL.Add(' WHERE REF_MS = :p0 AND TOTAL = :p1 ');

    q_Aux.ParamByName('p0').Value := q_processos2Codigo.Value;
    q_Aux.ParamByName('p1').Value := t_creditosValor.Value;
    q_Aux.Open;

    if (q_Aux.RecordCount = 1)
     then begin
       Sequencial := q_Aux.Fields[0].Value;

       if (Sequencial <> '')
        then begin
          try
            q_Aux.SQL.Clear;
            q_Aux.SQL.Add(' UPDATE PLANILHA_TRANSOCEAN_ITENS ');
            q_Aux.SQL.Add('    SET DATA_RECEBIMENTO = :p0    ');
            q_Aux.SQL.Add('  WHERE SEQUENCIAL = :p1          ');
            q_Aux.ParamByName('p0').Value := t_creditosData_Credito.Value;
            q_Aux.ParamByName('p1').Value := Sequencial;
            q_Aux.ExecSQL;

            Result := True;
          except
            Application.MessageBox('Erro na atualização da Data de Recebimento do Processo contido na Planilha Transocean.','Atenção', MB_ICONWARNING);
            Result := False;
          end;
        end;
     end
     else Result := False;
  finally
    FreeAndNil(q_Aux);
  end;
end;

procedure Tf_contascorrentes.dblc_tipolancaExit(Sender: TObject);
begin
  cbVerificaDigitalizacao.Visible := ((T_movccTipo.AsInteger = 2) or (T_movccTipo.AsInteger = 5) or (T_movccTipo.AsInteger = 7))
end;

procedure Tf_contascorrentes.q_creditos_financAfterScroll(
  DataSet: TDataSet);
begin
  b_excluidcred.Enabled := false;
  b_gravarcred.Enabled  := false;

  if q_creditos_financ.recordcount = 0
   then begin
     t_creditos.Close;
     dbedit9.enabled      := false;
     dbedit10.enabled     := false;
     dbl_tipos.enabled    := false;
     b_gravarcred.Enabled := false;
   end
   else begin
     if t_creditos.state = dsinactive
      then t_creditos.open;

     if t_creditos.findkey([q_creditos_financempresa.asstring,q_creditos_financfilial.asstring,q_creditos_financprocesso.asstring,q_creditosreg.asstring])
      then begin
        dbedit9.enabled       := true;
        dbedit10.enabled      := true;
        dbl_tipos.enabled     := true;
        b_excluidcred.Enabled := true;
        b_gravarcred.Enabled  := true;
      end;
   end;
end;

procedure Tf_contascorrentes.q_debitos2AfterScroll(DataSet: TDataSet);
begin
  if q_debitos2.RecordCount > 0
   then begin
     q_processo.Text             := q_debitos2Processo.AsString;
     DBLC_TIPOS.KeyValue         := q_debitos2Numerario.AsString;
     edtValor_Contabilizado.Text := q_debitos2Valor_Contabilizado.AsString;
   end;

  b_okdebito.Enabled := q_debitos2.RecordCount > 0;
end;

procedure Tf_contascorrentes.LimpaCamposDesmDeb;
begin
  q_processo.Clear;

  if (not cbFixaNumerario.Checked)
   then DBLC_TIPOS.KeyValue := '';

  edtValor_Contabilizado.Clear;
  edtDetalhe.Clear;
end;

procedure Tf_contascorrentes.DBL_tiposExit(Sender: TObject);

  procedure VerificaImportador;
  var
    QryAux : TQuery;
    CGC_CPF : String;
  begin
    try
      QryAux := TQuery.Create(nil);
      QryAux.DatabaseName := 'DBNMSCOMEX';

      QryAux.SQL.Add(' SELECT I.CGC_CPF                             ');
      QryAux.SQL.Add('   FROM Importadores I INNER JOIN Processos P ');
      QryAux.SQL.Add('     ON I.Codigo = P.Importador               ');
      QryAux.SQL.Add('  WHERE P.Codigo = :Processo                  ');
      QryAux.ParamByName('Processo').Value := t_creditosProcesso.AsString;
      QryAux.Open;

      if QryAux.RecordCount > 0
       then begin
         CGC_CPF := QryAux.FieldByName('CGC_CPF').AsString;

         QryAux.Close;

         if ((CGC_CPF = '4210131100') or {BRASDRIL}
             (CGC_CPF = '4027868100'))   {TRANSOCEAN}
          then begin
            if (CGC_CPF = '4210131100')
             then begin
               QryAux.Close;
               QryAux.SQL.Clear;
               QryAux.SQL.Add('SELECT PB.Planilha                                                 ');
               QryAux.SQL.Add('  FROM Planilha_BRASDRIL PB INNER JOIN Planilha_BRASDRIL_Itens PBI ');
               QryAux.SQL.Add('    ON PB.Sequencial = PBI.Sequencial_Planilha                     ');
               QryAux.SQL.Add(' WHERE PBI.REF_MS = :Processo                                      ');
               QryAux.ParamByName('Processo').Value := t_creditosProcesso.AsString;
               QryAux.Open;
             end;

            if (CGC_CPF = '4027868100')
             then begin
               QryAux.Close;
               QryAux.SQL.Clear;
               QryAux.SQL.Add('SELECT PT.Planilha                                                     ');
               QryAux.SQL.Add('  FROM Planilha_Transocean PT INNER JOIN Planilha_Transocean_Itens PTI ');
               QryAux.SQL.Add('    ON PT.Sequencial = PTI.Sequencial_Planilha                         ');
               QryAux.SQL.Add(' WHERE PTI.REF_MS = :Processo                                          ');
               QryAux.ParamByName('Processo').Value := t_creditosProcesso.AsString;
               QryAux.Open;
             end;

            if (QryAux.RecordCount > 0)
             then t_creditosDetalhe.AsString := QryAux.FieldByName('Planilha').AsString;
          end;
       end;
    finally
      QryAux.Free;
    end;
  end;

begin
  if (t_creditosCredito.AsString = 'ADIA')
   then VerificaImportador;
end;

end.
