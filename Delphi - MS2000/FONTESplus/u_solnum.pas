unit u_solnum;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  Tqr_solnum = class(TQuickRep)
    titulo: TQRBand;
    qrl_sistema: TQRLabel;
    qrl_versao: TQRLabel;
    qrl_titulo: TQRLabel;
    QRi_logo: TQRImage;
    QRShape6: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    qlinha1: TQRLabel;
    qlinha2: TQRLabel;
    DetailBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRLabel18: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    T_empresa: TTable;
    ds_empresa: TDataSource;
    T_empresaCodigo: TStringField;
    T_empresaRazao_Social: TStringField;
    QRDBText4: TQRDBText;
    T_filial: TTable;
    T_filialCodigo_Empresa: TStringField;
    T_filialCodigo_Filial: TStringField;
    T_filialDescricao: TStringField;
    QRDBText5: TQRDBText;
    ds_filial: TDataSource;
    qusuario: TQRLabel;
    ovalor: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel21: TQRLabel;
    qtotal: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel10: TQRLabel;
    qusuario2: TQRLabel;
    T_local: TTable;
    ds_local: TDataSource;
    T_localEmpresa: TStringField;
    T_localFilial: TStringField;
    T_localImportador: TStringField;
    T_localContrato: TStringField;
    T_localLocal: TStringField;
    T_localDescricao: TStringField;
    T_localTipo_local: TStringField;
    T_localProcesso_Adm: TStringField;
    T_localCNPJ: TStringField;
    T_localFiel_nome: TStringField;
    T_localFiel_cpf: TStringField;
    T_localUnidade_Jur: TStringField;
    QRDBText6: TQRDBText;
    T_imp: TTable;
    ds_imp: TDataSource;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    t_relconhecimento: TTable;
    ds_relconhecimento: TDataSource;
    t_reltipodoccarga: TTable;
    ds_reltipodoccarga: TDataSource;
    t_reltipodoccargavia: TStringField;
    t_reltipodoccargacodigo: TStringField;
    t_reltipodoccargadescricao: TStringField;
    qlinha3: TQRLabel;
    t_contasc: TTable;
    ds_contac: TDataSource;
    t_contascEmpresa: TStringField;
    t_contascFilial: TStringField;
    t_contascCodigo: TAutoIncField;
    t_contascBanco_Caixa: TStringField;
    t_contascDescricao: TStringField;
    t_contascBanco: TStringField;
    t_contascAgencia: TStringField;
    t_contascConta_Corrente: TStringField;
    t_contascSaldo: TFloatField;
    T_impEmpresa: TStringField;
    T_impFilial: TStringField;
    T_impCodigo: TStringField;
    T_impRazao_Social: TStringField;
    T_impPais: TStringField;
    T_impCNPJ_CPF_COMPLETO: TStringField;
    T_impCGC_CPF: TStringField;
    T_impTipo_Importador: TStringField;
    T_impEndereco: TStringField;
    T_impNumero: TStringField;
    T_impComplemento: TStringField;
    T_impBairro: TStringField;
    T_impCidade: TStringField;
    T_impCEP: TStringField;
    T_impUF: TStringField;
    T_impEstado: TStringField;
    T_impInscricao_Estadual: TStringField;
    T_impBanco: TStringField;
    T_impAgencia: TStringField;
    T_impConta_Corrente: TStringField;
    T_impConta_Corrente_Registro: TIntegerField;
    T_impConta_Corrente_Deposito: TIntegerField;
    T_implink: TStringField;
    T_impCAE: TStringField;
    T_impTelefone: TStringField;
    T_impAtivo: TSmallintField;
    T_impAcesso_WEB_MS: TSmallintField;
    T_impAcesso_WEB_CLI: TSmallintField;
    T_impAcesso_WEB_REC: TSmallintField;
    T_impBASE_ICMS: TSmallintField;
    t_relconhecimentoEmpresa: TStringField;
    t_relconhecimentoFilial: TStringField;
    t_relconhecimentoProcesso: TStringField;
    t_relconhecimentoVia: TStringField;
    t_relconhecimentoMultimodal: TSmallintField;
    t_relconhecimentoPLaca: TStringField;
    t_relconhecimentoLacre: TStringField;
    t_relconhecimentoEmbarcacao: TStringField;
    t_relconhecimentoTransportador: TStringField;
    t_relconhecimentoTipodoccarga: TStringField;
    t_relconhecimentoNumerodoccarga: TStringField;
    t_relconhecimentoNumeromaster: TStringField;
    t_relconhecimentoLocal: TStringField;
    t_relconhecimentoData: TDateTimeField;
    t_relconhecimentoUtilizacao: TStringField;
    t_relconhecimentoTipomanifesto: TStringField;
    t_relconhecimentoNumeromanifesto: TStringField;
    t_relconhecimentoCodigo_Presenca_Carga: TStringField;
    t_relconhecimentoPeso_Bruto: TFloatField;
    t_relconhecimentoPeso_Liquido: TFloatField;
    t_relconhecimentoAgente: TStringField;
    t_relconhecimentoPais_Procedencia: TStringField;
    t_relconhecimentoURF_chegada: TStringField;
    t_relconhecimentoData_Chegada_URF_Cheg: TDateTimeField;
    t_relconhecimentoURF_Despacho: TStringField;
    t_relconhecimentoData_Chegada_URF_Desp: TDateTimeField;
    t_relconhecimentoRecinto_Alfandegario: TStringField;
    t_relconhecimentoSetor_Alfandegario: TStringField;
    t_relconhecimentoArmazem: TStringField;
    t_relconhecimentoOperacao_FUNDAP: TSmallintField;
    t_relconhecimentoContratante_OPCAMBIAL: TStringField;
    t_relconhecimentoMoeda_Frete: TStringField;
    t_relconhecimentoFrete_Prepaid: TFloatField;
    t_relconhecimentoFrete_Collect: TFloatField;
    t_relconhecimentoFrete_Ter_Nac: TFloatField;
    t_relconhecimentoMoeda_Seguro: TStringField;
    t_relconhecimentoValor_Seguro: TFloatField;
    t_relconhecimentoMoeda_Despesas_ate_FOB: TStringField;
    t_relconhecimentoValor_Despesas_ate_FOB: TFloatField;
    t_relconhecimentoUnidade: TStringField;
    t_relconhecimentoQuantidade: TFloatField;
    procedure tituloBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
  private

  public

  end;

var
  qr_solnum: Tqr_solnum;

implementation
uses u_mscomex,u_pronumerarios;

{$R *.DFM}

procedure Tqr_solnum.tituloBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
qusuario.caption := v_nomecompleto;
qlinha1.caption  := f_proNumerarios.qrProcessosProcesso.AsString+', Ref.Cliente:'+ f_proNumerarios.qrProcessosRefcli.AsString+', ';

qlinha2.caption := '';
qlinha3.caption := '';
if t_localdescricao.asstring<>'' then begin
   qlinha2.caption  := 'embarcação '+trim(t_localdescricao.asstring) + ', conhecimento: '+trim(t_reltipodoccargadescricao.asstring)+' - '+trim(t_relconhecimentonumerodoccarga.asstring);
   if t_relconhecimentonumeromaster.asstring <>'' then begin
      qlinha3.caption  := 'Master: '+trim(t_relconhecimentonumeromaster.asstring);
   end;
end
else begin
   qlinha2.caption  := 'Conhecimento: '+trim(t_reltipodoccargadescricao.asstring)+' - '+trim(t_relconhecimentonumerodoccarga.asstring);
   if t_relconhecimentonumeromaster.asstring <>'' then begin
      qlinha2.caption  := 'Master: '+trim(t_relconhecimentonumeromaster.asstring);
   end;
end;

////qlinha3.caption  := qlinha3.caption+'conforme valores discriminados abaixo: ';

end;


procedure Tqr_solnum.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
qtotal.caption := floattostrf((strtofloat(qtotal.caption)+ f_proNumerarios.tbNumerariosValor_previsao.AsFloat),fffixed,10,2);
end;

procedure Tqr_solnum.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
qusuario2.caption := v_nomecompleto;
end;

procedure Tqr_solnum.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
qtotal.caption := '0';
end;

procedure Tqr_solnum.QuickRepStartPage(Sender: TCustomQuickRep);
begin
  T_empresa.open;
  T_filial.open;
  T_local.open;
  T_imp.open;
  t_relconhecimento.open;
  t_reltipodoccarga.open;
  t_contasc.open;
end;

end.
