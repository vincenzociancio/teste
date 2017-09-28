unit U_qrdarjicms;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls, Dialogs,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, jpeg, Db, DBTables;

//  pBarcode, pCode25,
//  pCode25Int

type
  Tqr_darjicms = class(TQuickRep)
    QRBand1: TQRBand;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRLabel25: TQRLabel;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRLabel26: TQRLabel;
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
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRImage2: TQRImage;
    qrl_ven: TQRLabel;
    qrl_nome: TQRLabel;
    qrl_end: TQRLabel;
    qrl_mun: TQRLabel;
    qrl_uf: TQRLabel;
    qrl_cep: TQRLabel;
    qrl_rec: TQRLabel;
    qrl_ins: TQRLabel;
    qrl_codrec: TQRLabel;
    qrl_cnpj: TQRLabel;
    qrl_docori: TQRLabel;
    qrl_per: TQRLabel;
    qrl_val: TQRLabel;
    qrl_atu: TQRLabel;
    qrl_mo: TQRLabel;
    qrl_mu: TQRLabel;
    qrl_tot: TQRLabel;
    QRMemo1: TQRMemo;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    qrl_cif: TQRLabel;
    qrl_ii: TQRLabel;
    qrl_ipi: TQRLabel;
    qrl_ad: TQRLabel;
    qrl_bc: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    qrl_aliq: TQRLabel;
    qrl_ms: TQRLabel;
    qrl_di: TQRLabel;
    QRMemo2: TQRMemo;
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRImage1: TQRImage;
    QRL_VEN2: TQRLabel;
    qrl_nome2: TQRLabel;
    qrl_end2: TQRLabel;
    qrl_mun2: TQRLabel;
    qrl_uf2: TQRLabel;
    qrl_cep2: TQRLabel;
    qrl_rec2: TQRLabel;
    qrl_ins2: TQRLabel;
    qrl_codrec2: TQRLabel;
    qrl_cnpj2: TQRLabel;
    qrl_docori2: TQRLabel;
    qrl_per2: TQRLabel;
    qrl_val2: TQRLabel;
    qrl_atu2: TQRLabel;
    qrl_mo2: TQRLabel;
    qrl_mu2: TQRLabel;
    qrl_tot2: TQRLabel;
    QRMemo3: TQRMemo;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel86: TQRLabel;
    qrl_aliq2: TQRLabel;
    qrl_ms2: TQRLabel;
    qrl_di2: TQRLabel;
    QRMemo4: TQRMemo;
    TitleBand1: TQRBand;
    qrl_fecp: TQRLabel;
    qrl_fecp2: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel57: TQRLabel;
    qrl_pis: TQRLabel;
    QRLabel59: TQRLabel;
    qrl_cofins: TQRLabel;
    QRLabel58: TQRLabel;
    qrl_cif2: TQRLabel;
    QRLabel61: TQRLabel;
    qrl_ii2: TQRLabel;
    QRLabel63: TQRLabel;
    qrl_ipi2: TQRLabel;
    QRLabel65: TQRLabel;
    qrl_ad2: TQRLabel;
    QRLabel67: TQRLabel;
    qrl_pis2: TQRLabel;
    QRLabel69: TQRLabel;
    qrl_cofins2: TQRLabel;
    QRLabel71: TQRLabel;
    qrl_bc2: TQRLabel;
    QRI_CB1: TQRImage;
    QRL_CB1: TQRLabel;
    QRL_CB2: TQRLabel;
    QRI_CB2: TQRImage;
    qr_up_imp: TQuery;
    qr_up_impEmpresa: TStringField;
    qr_up_impFilial: TStringField;
    qr_up_impProcesso: TStringField;
    qr_up_impdecl: TStringField;
    qr_up_impData: TDateTimeField;
    qr_up_impCliente: TStringField;
    qr_up_impqcnpj: TStringField;
    qr_up_impendereco: TStringField;
    qr_up_impmun: TStringField;
    qr_up_impUF: TStringField;
    qr_up_impCEP: TStringField;
    qr_up_impinsc: TStringField;
    qr_up_impValor_FOB: TFloatField;
    qr_up_impValor_CIF: TFloatField;
    qr_up_impValor_FOBC: TFloatField;
    qr_up_impValor_CIFC: TFloatField;
    qr_up_impII: TFloatField;
    qr_up_impIPI: TFloatField;
    qr_up_impTaxa_SISCOMEX: TFloatField;
    qr_up_impIIc: TFloatField;
    qr_up_impIPIc: TFloatField;
    qr_up_impTaxa_SISCOMEXc: TFloatField;
    qr_up_impNR_DECLARACAO_IMP: TStringField;
    qr_up_impNR_DECLARACAO_IMPC: TStringField;
    qr_up_impURF_chegada: TStringField;
    qr_up_impData_Chegada_URF_Cheg: TDateTimeField;
    qr_up_impDT_DESEMBARACO: TDateTimeField;
    qr_up_impURF_Despacho: TStringField;
    qr_up_impFechado: TIntegerField;
    qr_up_impAtivo: TIntegerField;
    qr_up_impImportador: TStringField;
    qr_up_impPag_proporcional: TIntegerField;
    qr_up_impResponsavel_Empresa: TStringField;
    qr_up_impResponsavel_EmpresaC: TStringField;
    qr_up_impBASE_ICMS: TIntegerField;
    qr_up_impTR_IMPRESSOES: TIntegerField;
    qr_up_impTR_IMPRESSOES_FECP: TIntegerField;
    qr_up_impNOMESUPER: TStringField;
    qr_up_impSENHASUPER: TStringField;
    l_imp1: TQRLabel;
    l_imp2: TQRLabel;
    procedure QuickRepAfterPrint(Sender: TObject);
  private

  public

  end;

var
  qr_darjicms: Tqr_darjicms;

implementation

uses U_MSCOMEX,u_prodarjicms;

{$R *.DFM}

procedure Tqr_darjicms.QuickRepAfterPrint(Sender: TObject);
var qsql:string;
begin
qr_up_imp.sql.Clear;
if  (F_prodarjicms.me_codrec.text = '754-4') then begin

qsql := 'update processos set tr_impressoes_fecp='+inttostr(F_prodarjicms.qrprocessostr_impressoes_fecp.asinteger+1)+' where codigo='+chr(39)+F_prodarjicms.qrprocessosprocesso.asstring+chr(39);

end
else begin

qsql := 'update processos set tr_impressoes='+inttostr(F_prodarjicms.qrprocessostr_impressoes.asinteger+1)+' where codigo='+chr(39)+F_prodarjicms.qrprocessosprocesso.asstring+chr(39);

end;

qr_up_imp.SQL.Add(qsql);

if v_usuario<>'MM' THEN qr_up_imp.ExecSQL;

F_prodarjicms.qrProcessos.Close;
F_prodarjicms.qrProcessos.Open;
F_prodarjicms.qrProcessos.Locate('Processo', F_prodarjicms.me_nossaref.Text, [loCaseInsensitive]);

if (F_prodarjicms.me_codrec.text = '754-4') then begin
    F_prodarjicms.l_imp.Caption := 'Nº Impressões '+ F_prodarjicms.qrprocessostr_impressoes_fecp.asstring;
end
else begin
    F_prodarjicms.l_imp.Caption := 'Nº Impressões '+ F_prodarjicms.qrprocessostr_impressoes.asstring;
end;

logusu('A','Imprimiu DARJ - processo:'+F_prodarjicms.me_nossaref.text);

showmessage(v_usuario+', seu DARJ foi impresso!');
//qr_darjicms.destroy;
//F_prodarjicms.SetFocus;
//F_prodarjicms.TIMER1.tag := 1;
//qr_darjicms.destroy;
//qr_darjicms := NIL;
//PreviewFinished(qr_darjicms);
//qr_darjicms.

end;

end.
