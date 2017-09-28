unit u_relplaproc;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  Tqr_plapro = class(TQuickRep)
    Q_processos: TQuery;
    ds_processos: TDataSource;
    titulo: TQRBand;
    qrl_sistema: TQRLabel;
    qrl_versao: TQRLabel;
    qrl_titulo: TQRLabel;
    QRi_logo: TQRImage;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel13: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    v_faturas: TQRLabel;
    v_fol1: TQRLabel;
    v_fol2: TQRLabel;
    T_follow: TTable;
    ds_follow: TDataSource;
    T_eventos: TTable;
    T_obs: TTable;
    ds_obs: TDataSource;
    ds_eventos: TDataSource;
    T_faturas: TTable;
    ds_faturas: TDataSource;
    qpara: TQRLabel;
    T_relprocessos: TTable;
    ds_relprocessos: TDataSource;
    t_relempresa: TTable;
    ds_relempresas: TDataSource;
    t_relfilial: TTable;
    ds_relfilial: TDataSource;
    t_reltipoproc: TTable;
    ds_reltipoproc: TDataSource;
    T_relcontratos: TTable;
    ds_relcontratos: TDataSource;
    t_rellocais: TTable;
    ds_rellocais: TDataSource;
    t_relimportadores: TTable;
    ds_relimportadores: TDataSource;
    t_relconhecimento: TTable;
    ds_relconhecimento: TDataSource;
    t_reltipodoccarga: TTable;
    ds_tipodoccarga: TDataSource;
    t_reltipodecla: TTable;
    ds_reltipodecla: TDataSource;
    Q_processosEmpresa: TStringField;
    Q_processosFilial: TStringField;
    Q_processosCodigo: TStringField;
    Q_processoscontrato: TStringField;
    Q_processosLocal_inventario: TStringField;
    Q_processosImportador: TStringField;
    Q_processosstatus: TStringField;
    Q_processoscod_sit: TStringField;
    Q_processosqempresa: TStringField;
    Q_processosqfilial: TStringField;
    Q_processosqdata: TDateTimeField;
    Q_processosqrefcli: TStringField;
    Q_processosqcliente: TStringField;
    Q_processosqcontrato: TStringField;
    Q_processosqlocal: TStringField;
    Q_processosqdi: TStringField;
    Q_processosqdatadi: TStringField;
    Q_processosqdecl: TStringField;
    Q_processosqproc: TStringField;
    Q_processosqvia: TStringField;
    Q_processosqtransp: TStringField;
    Q_processosqembarc: TStringField;
    Q_processosqlocalemb: TStringField;
    Q_processosqdataemb: TDateTimeField;
    Q_processosqconhec: TStringField;
    Q_processosqtipodoc: TStringField;
    Q_processosqmaster: TStringField;
    Q_processosqutilizacao: TStringField;
    Q_processosqpaisproce: TStringField;
    Q_processosqurfchegada: TStringField;
    Q_processosqpliquido: TFloatField;
    Q_processosqpbruto: TFloatField;
    Q_processosqmoedafrete: TStringField;
    Q_processosFrete_Prepaid: TFloatField;
    Q_processosFrete_Collect: TFloatField;
    Q_processosFrete_Ter_Nac: TFloatField;
    Q_processosqmoedaseguro: TStringField;
    Q_processosValor_Seguro: TFloatField;
    Q_processosqurfdespacho: TStringField;
    Q_processosqrecinto: TStringField;
    Q_processosqsetor: TStringField;
    Q_processosqdataurfentrada: TDateTimeField;
    Q_processosqdocchegada: TStringField;
    Q_processosqtipodocchegada: TStringField;
    Q_processosqpresenca: TStringField;
    Q_processosqdataurfdespacho: TDateTimeField;
    T_relprocessosEmpresa: TStringField;
    T_relprocessosFilial: TStringField;
    T_relprocessosCodigo: TStringField;
    T_relprocessosData: TDateTimeField;
    T_relprocessosImportador: TStringField;
    T_relprocessosCodigo_Cliente: TStringField;
    T_relprocessosTipo_Declaracao: TStringField;
    T_relprocessosTipo: TStringField;
    T_relprocessosContrato: TStringField;
    T_relprocessosLocal_Inventario: TStringField;
    T_relprocessosNR_DECL_IMP_MICRO: TStringField;
    T_relprocessosNR_DECL_IMP_PROT: TStringField;
    T_relprocessosNR_DECLARACAO_IMP: TStringField;
    T_relprocessosDT_PROCESSAMENTO: TStringField;
    T_relprocessosDT_TRANSMISSAO: TStringField;
    T_relprocessosDT_REGISTRO_DI: TStringField;
    T_relprocessosDT_DESEMBARACO: TDateTimeField;
    T_relprocessosDT_DISTRIBUICAO: TDateTimeField;
    T_relprocessosCanal: TStringField;
    T_relprocessosFiscal: TStringField;
    T_relprocessosStatus: TStringField;
    T_relprocessosCOD_SIT: TStringField;
    T_relprocessosCD_MOTIVO_TRANS: TStringField;
    T_relprocessosIN_MOEDA_UNICA: TIntegerField;
    T_relprocessosTX_INFO_COMPL: TMemoField;
    T_relprocessosCD_TIPO_PGTO_TRIB: TStringField;
    T_relprocessosNumero_RCR: TStringField;
    T_relprocessosData_Entrada_RCR: TDateTimeField;
    T_relprocessosData_Aprovacao_RCR: TDateTimeField;
    T_relprocessosFundamentacao_RCR: TStringField;
    T_relprocessosProcurador: TStringField;
    T_relprocessosNumero_TR: TStringField;
    T_relprocessosData_Entrada_TR: TDateTimeField;
    T_relprocessosData_vencimento_TR: TDateTimeField;
    T_relprocessosData_Aprovacao_TR: TDateTimeField;
    T_relprocessosData_Baixa_TR: TDateTimeField;
    T_relprocessosData_CI: TDateTimeField;
    T_relprocessosTipo_Garantia: TStringField;
    T_relprocessosNome_banco_GAR: TStringField;
    T_relprocessosAgencia_GAR: TStringField;
    T_relprocessosData_deposito_GAR: TDateTimeField;
    T_relprocessosNome_titulo_GAR: TStringField;
    T_relprocessosnumeros_titulos_GAR: TStringField;
    T_relprocessosNome_seguradora_GAR: TStringField;
    T_relprocessosapolice_GAR: TStringField;
    T_relprocessosnome_fiador_GAR: TStringField;
    T_relprocessosCNPJ_fiador_GAR: TStringField;
    T_relprocessosendereco_fiador_GAR: TStringField;
    T_relprocessosQuantidade_LI: TFloatField;
    T_relprocessosValor_FOB: TFloatField;
    T_relprocessosValor_CIF: TFloatField;
    T_relprocessosResponsavel_Empresa: TStringField;
    T_relprocessosResponsavel_Importador: TStringField;
    T_relprocessosSaldo_Faturamento: TFloatField;
    T_relprocessosNR_DECL_IMP_MICROC: TStringField;
    T_relprocessosNR_DECL_IMP_PROTC: TStringField;
    T_relprocessosNR_DECLARACAO_IMPC: TStringField;
    T_relprocessosDT_PROCESSAMENTOC: TStringField;
    T_relprocessosDT_TRANSMISSAOC: TStringField;
    T_relprocessosDT_REGISTRO_DIC: TStringField;
    T_relprocessosDT_DESEMBARACOC: TDateTimeField;
    T_relprocessosDT_DISTRIBUICAOC: TDateTimeField;
    T_relprocessosCanalC: TStringField;
    T_relprocessosFiscalC: TStringField;
    T_relprocessosCOD_SITC: TStringField;
    T_relprocessosData_CIC: TDateTimeField;
    T_relprocessosValor_FOBC: TFloatField;
    T_relprocessosValor_CIFC: TFloatField;
    T_relprocessosident_meio1: TStringField;
    T_relprocessosident_meio2: TStringField;
    T_relprocessosCodevento: TStringField;
    T_relprocessosCodobs: TStringField;
    T_relprocessosObs_especifica: TStringField;
    T_relprocessosData_ufollowup: TDateTimeField;
    T_relprocessosHora_ufollowup: TStringField;
    T_relprocessosData_liberacao: TDateTimeField;
    T_relprocessosUrgente: TIntegerField;
    T_relprocessosconsolidado: TIntegerField;
    T_relprocessosPag_proporcional: TIntegerField;
    T_relprocessosTR_VAL_FOB_US: TFloatField;
    T_relprocessosTR_VAL_CIF_US: TFloatField;
    T_relprocessosTR_VAL_II: TFloatField;
    T_relprocessosTR_VAL_IPI: TFloatField;
    T_relprocessosDDE: TStringField;
    T_relprocessosProcesso_Adm: TStringField;
    T_relprocessosProc_Adm_Data_Entrada: TDateTimeField;
    T_relprocessosFaturado: TIntegerField;
    T_relprocessosFechado: TIntegerField;
    T_relprocessosCentro_Custo: TStringField;
    T_relprocessosProcurador2: TStringField;
    T_relprocessosTR_VAL_PIS: TFloatField;
    T_relprocessosTR_VAL_COFINS: TFloatField;
    T_relprocessosRCR_LOCAL: TStringField;
    T_relprocessosResponsavel_EmpresaC: TStringField;
    T_relprocessosvinc_processo: TIntegerField;
    T_relprocessosproc_vinc: TStringField;
    T_followProcesso: TStringField;
    T_followSequencial: TAutoIncField;
    T_followCodevento: TStringField;
    T_followCodobs: TStringField;
    T_followObs_especifica: TStringField;
    T_followData: TDateTimeField;
    T_followHora: TStringField;
    T_followlink: TStringField;
    T_followData_final: TDateTimeField;
    T_followHora_final: TStringField;
    T_followDuracao: TIntegerField;
    T_followUsuario: TStringField;
    T_followRef_Follow: TIntegerField;
    T_eventosCodigo: TStringField;
    T_eventosDescricao: TStringField;
    T_eventosGrupo: TStringField;
    T_eventosQTD_HorasLimite: TIntegerField;
    T_eventosCodigo_Fecha: TStringField;
    T_eventosAtivo: TIntegerField;
    T_obsEvento: TStringField;
    T_obsCodigo: TStringField;
    T_obsDescricao: TStringField;
    T_obsAtivo: TIntegerField;
    T_faturasEmpresa: TStringField;
    T_faturasFilial: TStringField;
    T_faturasProcesso: TStringField;
    T_faturasCodigo: TStringField;
    T_faturasExportador: TStringField;
    T_faturasIncoterm: TStringField;
    T_faturasVinculacao: TStringField;
    T_faturasCondicao: TStringField;
    T_faturasValor_Total: TFloatField;
    T_faturasPeso_Total: TFloatField;
    T_faturasPeso_Total_Acertado: TFloatField;
    T_faturasAcrescimos_Reducoes: TIntegerField;
    T_faturasMoeda: TStringField;
    T_faturasCobertura_Cambial: TStringField;
    T_faturasMotivo_Sem_Cobertura: TStringField;
    T_faturasModalidade_de_Pagamento: TStringField;
    T_faturasInstituicao_Financiadora: TStringField;
    T_faturasTipo_Parcela: TStringField;
    T_faturasNumero_de_parcelas: TStringField;
    T_faturasPeriodicidade: TStringField;
    T_faturasValor_das_Parcelas: TFloatField;
    T_faturasIndicador_Periodicidade: TStringField;
    T_faturasTaxa_de_Juros: TIntegerField;
    T_faturasCodigo_Taxa_de_Juros: TStringField;
    T_faturasValor_Taxa_de_Juros: TFloatField;
    T_faturasROF_BACEN: TStringField;
    T_faturasPercentual_ROF: TFloatField;
    T_faturasDT_PREV_PAG_CAMBIO: TDateTimeField;
    T_faturasDT_PAG_CAMBIO: TDateTimeField;
    T_faturasSTATUS_CAMBIO: TStringField;
    T_faturasCONTRATO_CAMBIO: TStringField;
    T_faturasSALDO_CAMBIO: TFloatField;
    T_faturasDtEmissao: TDateTimeField;
    T_faturasPeso_Libra: TIntegerField;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  qr_plapro: Tqr_plapro;
  ocontrato:string;
  olocal:string;

implementation

uses U_MSCOMEX,u_prefollowup;

{$R *.DFM}

procedure Tqr_plapro.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var   qdata:string;
      qhora:string;
      qseq:string;
begin

v_fol1.caption := '';
v_fol2.caption := '';
t_follow.first;
qdata := '01/01/2000';
qhora := '00:00';
qseq  := '0';
while not t_follow.Eof do begin
{   if strtodate(F_prelfollowup.me_datafin.text) >= strtodate(qdata) then begin}
   if (strtodate(qdata) <= t_followdata.asdatetime) then begin
      qdata := t_followdata.asstring;
      v_fol1.caption := t_followdata.asstring +' '+t_followhora.asstring+' - '+t_eventosDescricao.asstring;
      v_fol2.caption := t_obsDescricao.asstring;
      if (qhora <=t_followhora.asstring) then begin
         v_fol1.caption := t_followdata.asstring +' '+t_followhora.asstring+' - '+t_eventosDescricao.asstring;
         v_fol2.caption := t_obsDescricao.asstring;
         qhora := t_followhora.asstring;
         if (qseq <=t_followsequencial.asstring) then begin
             v_fol1.caption := t_followdata.asstring +' '+t_followhora.asstring+' - '+t_eventosDescricao.asstring;
             v_fol2.caption := t_obsDescricao.asstring;
             qseq := t_followsequencial.asstring;
         end;
      end;
   end;
{   end;}
   t_follow.next;
end;

v_faturas.caption := '';
while not t_faturas.eof do begin
      v_faturas.caption := v_faturas.caption+' '+t_faturasCodigo.AsString;
      t_faturas.next;
end;

{if (ocontrato <> t_relprocessoscontrato.asstring) or (olocal<> t_relprocessosLocal_inventario.asstring) then begin
   detailband1.forcenewpage := true;
   ocontrato := t_relprocessoscontrato.asstring;
   olocal    := t_relprocessosLocal_inventario.asstring;
   end

else  begin
   detailband1.forcenewpage := false;

end;}

end;

procedure Tqr_plapro.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
qrl_versao.caption := v_versao;
end;

end.
