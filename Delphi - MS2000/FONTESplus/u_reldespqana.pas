unit u_reldespqana;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  Tqr_reldespana = class(TQuickRep)
    titulo: TQRBand;
    qrl_sistema: TQRLabel;
    qrl_versao: TQRLabel;
    qrl_titulo: TQRLabel;
    QRi_logo: TQRImage;
    QRLabel1: TQRLabel;
    qrl_periodo: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel5: TQRLabel;
    qrl_plano: TQRLabel;
    titulocreditos: TQRBand;
    rodapeTP: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel8: TQRLabel;
    qrl_totTD: TQRLabel;
    qrl_hist: TQRLabel;
    qrl_empresa: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText5: TQRDBText;
    qrb_despesa: TQRSubDetail;
    qrb_lanca: TQRSubDetail;
    rodapePC: TQRBand;
    QRLabel12: TQRLabel;
    qrl_totPC: TQRLabel;
    qrb_plano: TQRSubDetail;
    QRDBText8: TQRDBText;
    QRLabel14: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
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
    SummaryBand1: TQRBand;
    QRLabel15: TQRLabel;
    qrl_total: TQRLabel;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrb_lancaAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure qrb_lancaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrb_despesaAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure qrb_planoAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure rodapeTPAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure rodapePCAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  qr_reldespana: Tqr_reldespana;

implementation

uses U_MSCOMEX, u_reldesp;

{$R *.DFM}

procedure Tqr_reldespana.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
///qrl_total.caption  := floattostrf(strtofloat(qrl_total.caption)+q_despqvalor.asfloat,fffixed,15,2);
end;

procedure Tqr_reldespana.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
{   f_reldesp.q_despA.close;
   f_reldesp.q_despA.params[0].asstring   := v_usuario;
   f_reldesp.q_despA.params[1].asstring   := f_reldesp.q_empcodigo.asstring;
   f_reldesp.q_despA.params[2].asstring   := f_reldesp.q_planocodigo.asstring;
   f_reldesp.q_despA.params[3].asdatetime := strtodate(f_reldesp.me_dataini.text);
   f_reldesp.q_despA.params[4].asdatetime := strtodate(f_reldesp.me_datafin.text);
   f_reldesp.q_despA.open;
}
{
qrl_sub.caption := '0';
f_reldesp.q_desp.close;
f_reldesp.q_desp.params[0].asstring   := f_reldesp.q_planocodigo.asstring;
f_reldesp.q_desp.params[1].asdatetime := strtodate(f_reldesp.me_dataini.text);
f_reldesp.q_desp.params[2].asdatetime := strtodate(f_reldesp.me_datafin.text);
f_reldesp.q_desp.open;
if f_reldesp.q_despvalor.asfloat = 0 then begin
   qrband2.enabled := false;
end
else begin
end;
}

end;

procedure Tqr_reldespana.qrb_lancaAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin

qrl_TOTTD.caption := floattostrf((strtofloat(qrl_TOTTD.caption)+f_reldesp.q_despvalor.asfloat),fffixed,15,2);

end;

procedure Tqr_reldespana.qrb_lancaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
qrl_hist.caption := trim(f_reldesp.q_desphistorico.asstring)+' / '+trim(f_reldesp.q_despobs.asstring);
end;

procedure Tqr_reldespana.qrb_despesaAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
qrl_TOTTD.caption := '0';
end;

procedure Tqr_reldespana.qrb_planoAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
qrl_TOTPC.caption := '0';
end;

procedure Tqr_reldespana.rodapeTPAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
qrl_TOTPC.caption := floattostrf((strtofloat(qrl_TOTPC.caption)+strtofloat(qrl_TOTTD.caption)),fffixed,15,2);
end;

procedure Tqr_reldespana.rodapePCAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
qrl_TOTAL.caption := floattostrf((strtofloat(qrl_TOTAL.caption)+strtofloat(qrl_TOTPC.caption)),fffixed,15,2);
end;

procedure Tqr_reldespana.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
qr_reldespana.qrl_total.caption   := '0';
end;

end.

