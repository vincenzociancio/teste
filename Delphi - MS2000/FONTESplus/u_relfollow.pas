unit u_relfollow;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  Tqr_follow = class(TQuickRep)
    q_follow: TQuery;
    ds_qfollow: TDataSource;
    subfollow: TQRSubDetail;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    titulofollow: TQRBand;
    QRLabel17: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    q_faturas: TQuery;
    ds_qfaturas: TDataSource;
    subfaturas: TQRSubDetail;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    DetailBand1: TQRBand;
    QRLabel48: TQRLabel;
    QRDBText44: TQRDBText;
    QRLabel49: TQRLabel;
    QRDBText45: TQRDBText;
    QRLabel50: TQRLabel;
    QRDBText46: TQRDBText;
    QRLabel51: TQRLabel;
    QRDBText47: TQRDBText;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRShape1: TQRShape;
    QRLabel90: TQRLabel;
    QRLabel91: TQRLabel;
    QRDBText54: TQRDBText;
    QRLabel92: TQRLabel;
    QRDBText62: TQRDBText;
    QRLabel93: TQRLabel;
    QRDBText63: TQRDBText;
    QRLabel111: TQRLabel;
    QRDBText64: TQRDBText;
    QRLabel112: TQRLabel;
    QRDBText65: TQRDBText;
    QRLabel113: TQRLabel;
    QRDBText66: TQRDBText;
    QRLabel124: TQRLabel;
    QRDBText67: TQRDBText;
    QRLabel149: TQRLabel;
    QRDBText68: TQRDBText;
    QRLabel150: TQRLabel;
    QRDBText69: TQRDBText;
    QRShape2: TQRShape;
    QRLabel151: TQRLabel;
    QRLabel152: TQRLabel;
    QRDBText70: TQRDBText;
    QRLabel153: TQRLabel;
    QRDBText71: TQRDBText;
    QRLabel154: TQRLabel;
    QRDBText72: TQRDBText;
    QRLabel155: TQRLabel;
    QRDBText73: TQRDBText;
    QRLabel156: TQRLabel;
    QRDBText74: TQRDBText;
    QRLabel157: TQRLabel;
    QRDBText75: TQRDBText;
    QRLabel158: TQRLabel;
    QRDBText76: TQRDBText;
    QRLabel159: TQRLabel;
    QRDBText77: TQRDBText;
    QRLabel160: TQRLabel;
    QRDBText78: TQRDBText;
    QRLabel161: TQRLabel;
    QRDBText79: TQRDBText;
    QRShape3: TQRShape;
    QRLabel162: TQRLabel;
    QRLabel163: TQRLabel;
    QRDBText80: TQRDBText;
    QRLabel164: TQRLabel;
    QRDBText81: TQRDBText;
    QRLabel165: TQRLabel;
    QRDBText82: TQRDBText;
    QRLabel166: TQRLabel;
    QRDBText83: TQRDBText;
    QRLabel167: TQRLabel;
    QRDBText84: TQRDBText;
    QRLabel168: TQRLabel;
    QRDBText85: TQRDBText;
    QRLabel169: TQRLabel;
    QRDBText86: TQRDBText;
    QRLabel170: TQRLabel;
    QRDBText87: TQRDBText;
    titulo: TQRBand;
    qrl_sistema: TQRLabel;
    qrl_versao: TQRLabel;
    qrl_titulo: TQRLabel;
    QRi_logo: TQRImage;
    QRShape6: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    fimfatura: TQRBand;
    qpara: TQRLabel;
    t_processos: TTable;
    ds_processos: TDataSource;
    qr_cliente: TQRLabel;
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
    t_locais: TTable;
    ds_locais: TDataSource;
    t_tipodecl: TTable;
    ds_tipodecl: TDataSource;
    t_tipoprocesso: TTable;
    ds_tipoproc: TDataSource;
    t_tipodeclCodigo: TStringField;
    t_tipodeclDescricao: TStringField;
    t_tipoprocessoCODIGO: TStringField;
    t_tipoprocessoDESCRICAO: TStringField;
    t_locaisEmpresa: TStringField;
    t_locaisFilial: TStringField;
    t_locaisImportador: TStringField;
    t_locaisContrato: TStringField;
    t_locaisLocal: TStringField;
    t_locaisDescricao: TStringField;
    t_locaisTipo_local: TStringField;
    t_locaisProcesso_Adm: TStringField;
    t_locaisCNPJ: TStringField;
    t_locaisUnidade_Jur: TStringField;
    t_locaisFiel_nome: TStringField;
    t_locaisFiel_cpf: TStringField;
    t_conhecimento: TTable;
    ds_conhecimento: TDataSource;
    t_via: TTable;
    ds_via: TDataSource;
    t_viaCodigo: TStringField;
    t_viaDescricao: TStringField;
    t_transportadores: TTable;
    ds_transportadores: TDataSource;
    t_transportadoresEmpresa: TStringField;
    t_transportadoresFilial: TStringField;
    t_transportadoresCodigo: TStringField;
    t_transportadoresRazao_Social: TStringField;
    t_transportadoresPais: TStringField;
    t_transportadoresCGC_CPF: TStringField;
    t_transportadoresEndereco: TStringField;
    t_transportadoresNumero: TStringField;
    t_transportadoresComplemento: TStringField;
    t_transportadoresBairro: TStringField;
    t_transportadoresCidade: TStringField;
    t_transportadoresCEP: TStringField;
    t_transportadoresUF: TStringField;
    t_transportadoresEstado: TStringField;
    t_transportadoresInscricao_Estadual: TStringField;
    t_tipodoccarga: TTable;
    ds_tipocarga: TDataSource;
    t_utilizacao: TTable;
    ds_utilizacao: TDataSource;
    t_pais: TTable;
    ds_pais: TDataSource;
    t_paisCODIGO: TStringField;
    t_paisDESCRICAO: TStringField;
    t_urfchegada: TTable;
    ds_urfchegada: TDataSource;
    t_moedafrete: TTable;
    ds_moedafrete: TDataSource;
    t_moedaseguro: TTable;
    ds_moedaseguro: TDataSource;
    t_urfdespacho: TTable;
    ds_urfdespacho: TDataSource;
    t_recintos: TTable;
    ds_recintos: TDataSource;
    t_setores: TTable;
    ds_setores: TDataSource;
    t_tipodocchegada: TTable;
    ds_tipodocchegada: TDataSource;
    T_empresas: TTable;
    ds_empresas: TDataSource;
    QRDBText2: TQRDBText;
    t_filiais: TTable;
    ds_filiais: TDataSource;
    QRDBText3: TQRDBText;
    titulofatura: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    t_tipodoccargavia: TStringField;
    t_tipodoccargacodigo: TStringField;
    t_tipodoccargadescricao: TStringField;
    t_urfchegadaCODIGO: TStringField;
    t_urfchegadaDESCRICAO: TStringField;
    q_followProcesso: TStringField;
    q_followData: TDateTimeField;
    q_followHora: TStringField;
    q_followDescricao: TStringField;
    q_followDescricao_1: TStringField;
    q_followSequencial: TAutoIncField;
    q_faturasEmpresa: TStringField;
    q_faturasFilial: TStringField;
    q_faturasCodigo: TStringField;
    q_faturasCodigo_1: TStringField;
    q_faturasIncoterm: TStringField;
    q_faturasRazao_Social: TStringField;
    q_faturasDESCRICAO: TStringField;
    q_faturasValor_Total: TFloatField;
    t_processosEmpresa: TStringField;
    t_processosFilial: TStringField;
    t_processosCodigo: TStringField;
    t_processosData: TDateTimeField;
    t_processosImportador: TStringField;
    t_processosCodigo_Cliente: TStringField;
    t_processosTipo_Declaracao: TStringField;
    t_processosTipo: TStringField;
    t_processosContrato: TStringField;
    t_processosLocal_Inventario: TStringField;
    t_processosNR_DECL_IMP_MICRO: TStringField;
    t_processosNR_DECL_IMP_PROT: TStringField;
    t_processosNR_DECLARACAO_IMP: TStringField;
    t_processosDT_PROCESSAMENTO: TStringField;
    t_processosDT_TRANSMISSAO: TStringField;
    t_processosDT_REGISTRO_DI: TStringField;
    t_processosDT_DESEMBARACO: TDateTimeField;
    t_processosDT_DISTRIBUICAO: TDateTimeField;
    t_processosCanal: TStringField;
    t_processosFiscal: TStringField;
    t_processosStatus: TStringField;
    t_processosCOD_SIT: TStringField;
    t_processosCD_MOTIVO_TRANS: TStringField;
    t_processosIN_MOEDA_UNICA: TIntegerField;
    t_processosTX_INFO_COMPL: TMemoField;
    t_processosCD_TIPO_PGTO_TRIB: TStringField;
    t_processosNumero_RCR: TStringField;
    t_processosData_Entrada_RCR: TDateTimeField;
    t_processosData_Aprovacao_RCR: TDateTimeField;
    t_processosFundamentacao_RCR: TStringField;
    t_processosProcurador: TStringField;
    t_processosNumero_TR: TStringField;
    t_processosData_Entrada_TR: TDateTimeField;
    t_processosData_vencimento_TR: TDateTimeField;
    t_processosData_Aprovacao_TR: TDateTimeField;
    t_processosData_Baixa_TR: TDateTimeField;
    t_processosData_CI: TDateTimeField;
    t_processosTipo_Garantia: TStringField;
    t_processosNome_banco_GAR: TStringField;
    t_processosAgencia_GAR: TStringField;
    t_processosData_deposito_GAR: TDateTimeField;
    t_processosNome_titulo_GAR: TStringField;
    t_processosnumeros_titulos_GAR: TStringField;
    t_processosNome_seguradora_GAR: TStringField;
    t_processosapolice_GAR: TStringField;
    t_processosnome_fiador_GAR: TStringField;
    t_processosCNPJ_fiador_GAR: TStringField;
    t_processosendereco_fiador_GAR: TStringField;
    t_processosQuantidade_LI: TFloatField;
    t_processosValor_FOB: TFloatField;
    t_processosValor_CIF: TFloatField;
    t_processosResponsavel_Empresa: TStringField;
    t_processosResponsavel_Importador: TStringField;
    t_processosSaldo_Faturamento: TFloatField;
    t_processosNR_DECL_IMP_MICROC: TStringField;
    t_processosNR_DECL_IMP_PROTC: TStringField;
    t_processosNR_DECLARACAO_IMPC: TStringField;
    t_processosDT_PROCESSAMENTOC: TStringField;
    t_processosDT_TRANSMISSAOC: TStringField;
    t_processosDT_REGISTRO_DIC: TStringField;
    t_processosDT_DESEMBARACOC: TDateTimeField;
    t_processosDT_DISTRIBUICAOC: TDateTimeField;
    t_processosCanalC: TStringField;
    t_processosFiscalC: TStringField;
    t_processosCOD_SITC: TStringField;
    t_processosData_CIC: TDateTimeField;
    t_processosValor_FOBC: TFloatField;
    t_processosValor_CIFC: TFloatField;
    t_processosident_meio1: TStringField;
    t_processosident_meio2: TStringField;
    t_processosCodevento: TStringField;
    t_processosCodobs: TStringField;
    t_processosObs_especifica: TStringField;
    t_processosData_ufollowup: TDateTimeField;
    t_processosHora_ufollowup: TStringField;
    t_processosData_liberacao: TDateTimeField;
    t_processosUrgente: TIntegerField;
    t_processosconsolidado: TIntegerField;
    t_processosPag_proporcional: TIntegerField;
    t_processosTR_VAL_FOB_US: TFloatField;
    t_processosTR_VAL_CIF_US: TFloatField;
    t_processosTR_VAL_II: TFloatField;
    t_processosTR_VAL_IPI: TFloatField;
    t_processosDDE: TStringField;
    t_processosProcesso_Adm: TStringField;
    t_processosProc_Adm_Data_Entrada: TDateTimeField;
    t_processosFaturado: TIntegerField;
    t_processosFechado: TIntegerField;
    t_processosCentro_Custo: TStringField;
    t_processosProcurador2: TStringField;
    t_processosTR_VAL_PIS: TFloatField;
    t_processosTR_VAL_COFINS: TFloatField;
    t_processosRCR_LOCAL: TStringField;
    t_processosResponsavel_EmpresaC: TStringField;
    t_processosvinc_processo: TIntegerField;
    t_processosproc_vinc: TStringField;
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
    procedure fimfaturaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure t_processosAfterScroll(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
  private

  public

  end;

var
  qr_follow: Tqr_follow;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tqr_follow.fimfaturaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if T_processos.Eof then fimfatura.forcenewpage := false;
end;

procedure Tqr_follow.t_processosAfterScroll(DataSet: TDataSet);
begin

q_follow.close;
//q_follow.Params[0].asstring := t_processosempresa.asstring;
//q_follow.Params[1].asstring := t_processosfilial.asstring;
q_follow.Params[0].asstring := t_processoscodigo.asstring;
///q_follow.ExecSQL;
q_follow.active := true;
q_faturas.close;
q_faturas.Params[0].asstring := t_processosempresa.asstring;
q_faturas.Params[1].asstring := t_processosfilial.asstring;
q_faturas.Params[2].asstring := t_processoscodigo.asstring;
///q_faturas.ExecSQL;
q_faturas.active := true;

end;

procedure Tqr_follow.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
qrl_versao.caption := v_versao;
end;

procedure Tqr_follow.QuickRepStartPage(Sender: TCustomQuickRep);
begin
  q_follow.open;
  q_faturas.open;
  t_processos.open;
  t_contratos.open;
  t_locais.open;
  t_tipodecl.open;
  t_tipoprocesso.Open;
  t_conhecimento.open;
  t_via.open;
  t_transportadores.open;
  t_tipodoccarga.open;
  t_utilizacao.open;
  t_pais.open;
  t_urfchegada.open;
  t_moedafrete.open;
  t_moedaseguro.open;
  t_urfdespacho.open;
  t_recintos.open;
  t_setores.open;
  T_empresas.open;
  t_filiais.open;
end;

end.