unit u_reldemfin;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  Tqr_demfin = class(TQuickRep)
    subcreditos: TQRSubDetail;
    titulocreditos: TQRBand;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    DetailBand1: TQRBand;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
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
    titulosdebito: TQRBand;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    SummaryBand1: TQRBand;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRShape2: TQRShape;
    QRLabel34: TQRLabel;
    QRShape4: TQRShape;
    QRLabel35: TQRLabel;
    qsubcred: TQRLabel;
    qsubdeb: TQRLabel;
    qresultado: TQRLabel;
    T_empresa: TTable;
    ds_empresa: TDataSource;
    T_filiais: TTable;
    ds_filial: TDataSource;
    t_contratos: TTable;
    ds_contratos: TDataSource;
    t_locais: TTable;
    ds_locais: TDataSource;
    t_tipodecl: TTable;
    ds_tipodecl: TDataSource;
    t_tipoproc: TTable;
    ds_tipoproc: TDataSource;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    qvalorcred: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    qvalordeb: TQRDBText;
    q_processo: TQuery;
    ds_qprocesso: TDataSource;
    QRLabel7: TQRLabel;
    qobs: TQRLabel;
    QRDBText15: TQRDBText;
    T_tipocre2: TTable;
    T_creditos2: TTable;
    T_tiponum2: TTable;
    T_numerarios2: TTable;
    T_tipocre2Empresa: TStringField;
    T_tipocre2Filial: TStringField;
    T_tipocre2Codigo: TStringField;
    T_tipocre2Descricao: TStringField;
    T_tipocre2Plano_contas: TStringField;
    T_creditos2Empresa: TStringField;
    T_creditos2Filial: TStringField;
    T_creditos2Processo: TStringField;
    T_creditos2REG: TAutoIncField;
    T_creditos2Credito: TStringField;
    T_creditos2Data_Credito: TDateTimeField;
    T_creditos2Valor: TFloatField;
    T_creditos2Conta_Corrente: TIntegerField;
    T_creditos2Codigo_mov: TIntegerField;
    T_creditos2Contabilizado: TStringField;
    T_creditos2Impdemfim: TStringField;
    T_tiponum2Empresa: TStringField;
    T_tiponum2Filial: TStringField;
    T_tiponum2Codigo: TStringField;
    T_tiponum2Descricao: TStringField;
    T_tiponum2Plano_contas: TStringField;
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
    T_numerarios2Contabilizado: TStringField;
    T_numerarios2Usuario_Contablizado: TStringField;
    T_numerarios2Conta_Corrente: TIntegerField;
    T_numerarios2Codigo_mov: TIntegerField;
    T_numerarios2Impdemfim: TStringField;
    ds_tipocre2: TDataSource;
    ds_creditos2: TDataSource;
    ds_tiponum2: TDataSource;
    ds_numerarios2: TDataSource;
    qrl_complementar: TQRLabel;
    bandcpmf: TQRBand;
    QRLabel8: TQRLabel;
    qrl_cpmf: TQRLabel;
    qrl_contabil: TQRLabel;
    qrl_contabil2: TQRLabel;
    QRLabel9: TQRLabel;
    q_processoEmpresa: TStringField;
    q_processoFilial: TStringField;
    q_processoCodigo: TStringField;
    q_processoData: TDateTimeField;
    q_processoImportador: TStringField;
    q_processoCodigo_Cliente: TStringField;
    q_processoTipo_Declaracao: TStringField;
    q_processoTipo: TStringField;
    q_processoContrato: TStringField;
    q_processoLocal_Inventario: TStringField;
    q_processoNR_DECL_IMP_MICRO: TStringField;
    q_processoNR_DECL_IMP_PROT: TStringField;
    q_processoNR_DECLARACAO_IMP: TStringField;
    q_processoDT_PROCESSAMENTO: TStringField;
    q_processoDT_TRANSMISSAO: TStringField;
    q_processoDT_REGISTRO_DI: TStringField;
    q_processoDT_DESEMBARACO: TDateTimeField;
    q_processoCanal: TStringField;
    q_processoFiscal: TStringField;
    q_processoStatus: TStringField;
    q_processoCOD_SIT: TStringField;
    q_processoCD_MOTIVO_TRANS: TStringField;
    q_processoIN_MOEDA_UNICA: TIntegerField;
    q_processoTX_INFO_COMPL: TMemoField;
    q_processoCD_TIPO_PGTO_TRIB: TStringField;
    q_processoNumero_RCR: TStringField;
    q_processoData_Entrada_RCR: TDateTimeField;
    q_processoData_Aprovacao_RCR: TDateTimeField;
    q_processoFundamentacao_RCR: TStringField;
    q_processoProcurador: TStringField;
    q_processoNumero_TR: TStringField;
    q_processoData_Entrada_TR: TDateTimeField;
    q_processoData_Aprovacao_TR: TDateTimeField;
    q_processoTipo_Garantia: TStringField;
    q_processoNome_banco_GAR: TStringField;
    q_processoAgencia_GAR: TStringField;
    q_processoData_deposito_GAR: TDateTimeField;
    q_processoNome_titulo_GAR: TStringField;
    q_processonumeros_titulos_GAR: TStringField;
    q_processoNome_seguradora_GAR: TStringField;
    q_processoapolice_GAR: TStringField;
    q_processonome_fiador_GAR: TStringField;
    q_processoCNPJ_fiador_GAR: TStringField;
    q_processoendereco_fiador_GAR: TStringField;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    qrlNfe: TQRLabel;
    qrlRps: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure subcreditosAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure titulosdebitoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure bandcpmfBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    procedure PreencheRPSNFe(Processo : String);
  public

  end;

var
  qr_demfin: Tqr_demfin;
  t_cred:real;
  t_deb:real;
  t_deb2:real;
  qcpmf:real;

implementation

uses U_MSCOMEX, u_fatura;
{$R *.DFM}

procedure Tqr_demfin.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  t_cred := 0;
  t_deb  := 0;
  t_deb2 := 0;
  qcpmf  := 0;

  qrl_contabil2.enabled := false;
  qrl_versao.caption := v_versao;

  // eduardo souza 13/01/2012 - Primeiro devemos abrir a query para passar os parametros, depois abrir as tabelas.
  // Emanuelle do financeiro reclamou que alguns campos estava vazio.
  f_fatura.T_importadores.close;
  f_fatura.T_importadores.Open;

  T_empresa.close;
  T_empresa.Open;

  T_filiais.close;
  T_filiais.Open;

  t_contratos.close;
  t_contratos.open;

  t_locais.close;
  t_locais.open;

  t_tipodecl.Close;
  t_tipodecl.open;

  t_tipoproc.close;
  t_tipoproc.open;

  T_tipocre2.close;
  T_tipocre2.open;

  T_creditos2.close;
  T_creditos2.open;

  T_tiponum2.close;
  T_tiponum2.open;

  T_numerarios2.close;
  T_numerarios2.open;
  //-- fim eduardo souza 13/01/2012

  PreencheRPSNFe(f_fatura.t_processoscodigo.asstring);
end;

procedure Tqr_demfin.subcreditosAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  t_cred := t_cred + t_creditos2valor.asfloat;
end;

procedure Tqr_demfin.titulosdebitoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qsubcred.caption := floattostrf(t_cred,fffixed,10,2);
end;

procedure Tqr_demfin.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var tresu : real;
begin
  if bandcpmf.enabled
   then t_deb := t_deb+qcpmf;

  qsubdeb.caption    := floattostrf(t_deb,fffixed,10,2);
  qresultado.caption := floattostrf((strtofloat(qsubcred.caption)-strtofloat(qsubdeb.caption))+0.001,fffixed,10,2);

  tresu := (t_cred-t_deb);

  if tresu < 0
   then qobs.caption := '(SALDO A PAGAR) = '   + floattostrf((tresu*(-1)),fffixed,10,2)
   else qobs.caption := '(SALDO A RECEBER) = ' + floattostrf(tresu,fffixed,10,2);
end;

procedure Tqr_demfin.bandcpmfBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrl_cpmf.caption := floattostrf(qcpmf,fffixed,10,2);

  if qcpmf = 0
   then bandcpmf.Enabled := false
   else bandcpmf.Enabled := true;
end;

procedure Tqr_demfin.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrl_contabil.enabled := false;

  t_deb := t_deb + t_numerarios2valor_registrado.asfloat;

  if not ((t_numerarios2numerario.asstring = 'HONO') or (t_numerarios2numerario.asstring = 'ISS'))
   then begin
     t_deb2 := t_deb2 + t_numerarios2valor_registrado.asfloat;

     if t_numerarios2data_registro.asdatetime < strtodateTIME('19/03/2001')
      then begin
        qcpmf := qcpmf + (t_numerarios2valor_registrado.asfloat*0.003);
        qrlabel9.caption := t_numerarios2data_registro.asstring;
      end
      else begin
        if t_numerarios2data_registro.asdatetime <= strtodateTIME('31/12/2007')
         then begin
           qcpmf := qcpmf + (t_numerarios2valor_registrado.asfloat*0.0038);
           qrlabel9.caption := t_numerarios2data_registro.asstring;
         end;
      end;
   end;
end;

procedure Tqr_demfin.PreencheRPSNFe(Processo: String);
var
  QryAux : TQuery;
begin
  QryAux := TQuery.Create(nil);
  QryAux.DatabaseName := 'DBNMSCOMEX';

  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('SELECT ISNULL(NFS.NFiscal,NFSP.NFiscal) AS RPS,                                ');
    QryAux.SQL.Add('       NFS.NFiscal_e                                                           ');
    QryAux.SQL.Add('  FROM Processos P LEFT JOIN Notas_Fiscais_Servicos NFS                        ');
    QryAux.SQL.Add('    ON P.Codigo = NFS.Processo LEFT JOIN Notas_Fiscais_SERVICOS_PROCESSOS NFSP ');
    QryAux.SQL.Add('    ON P.Codigo = NFSP.PROCESSO                                                ');
    QryAux.SQL.Add(' WHERE P.Codigo = :p0                                                          ');
    QryAux.Params[0].Value := Processo;

    QryAux.Open;

    if QryAux.RecordCount > 0
     then begin
       qrlRps.Caption := QryAux.FieldByName('RPS').AsString;
       qrlNfe.Caption := QryAux.FieldByName('NFiscal_e').AsString;
     end
     else begin
       qrlRps.Caption := '';
       qrlNfe.Caption := '';
     end;
  finally
    QryAux.Free;
  end;
end;

end.
