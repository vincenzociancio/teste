unit u_relextrato;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, jpeg;

type
  Tqr_extrato = class(TQuickRep)
    DetailBand1: TQRBand;
    titulo: TQRBand;
    qrl_sistema: TQRLabel;
    qrl_versao: TQRLabel;
    qrl_titulo: TQRLabel;
    QRi_logo: TQRImage;
    QRShape6: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    qrl_conta: TQRLabel;
    qrl_tipo: TQRLabel;
    qrl_desmembra: TQRLabel;
    qrl_rfinal: TQRLabel;
    qrl_dataini: TQRLabel;
    QRLabel9: TQRLabel;
    qrl_datafin: TQRLabel;
    QRDBText1: TQRDBText;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    b_resumo: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    qrl_creditos: TQRLabel;
    QRLabel18: TQRLabel;
    qrl_debitos: TQRLabel;
    QRLabel20: TQRLabel;
    qrl_saldo: TQRLabel;
    QRLabel17: TQRLabel;
    qrl_santerior: TQRLabel;
    titulocreditos: TQRBand;
    subcreditos: TQRSubDetail;
    QRDBText40: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape1: TQRShape;
    rodapecreditos: TQRBand;
    QRShape2: TQRShape;
    titulodebitos: TQRBand;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRShape3: TQRShape;
    subdebitos: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    rodapedebitos: TQRBand;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape7: TQRShape;
    qrl_subtotcred: TQRLabel;
    qrl_subtotdeb: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRLabel23: TQRLabel;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel24: TQRLabel;
    QRShape16: TQRShape;
    QRShape12: TQRShape;
    QRShape17: TQRShape;
    QRLabel25: TQRLabel;
    QRDBText9: TQRDBText;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure titulocreditosAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure titulodebitosAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure subcreditosAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure subdebitosAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  qr_extrato: Tqr_extrato;

implementation

uses U_MSCOMEX, u_contascorrentes;

{$R *.DFM}

procedure Tqr_extrato.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if f_contascorrentes.q_extratovalor.asfloat >= 0 then begin
   qrdbtext5.font.Color := clwindowtext;
   qrl_creditos.caption := floattostrf(strtofloat(qrl_creditos.caption)+f_contascorrentes.q_extratovalor.asfloat,fffixed,15,2);
   end
else begin
     qrdbtext5.font.Color := clmaroon;
     qrl_debitos.caption  := floattostrf(strtofloat(qrl_debitos.caption)-f_contascorrentes.q_extratovalor.asfloat,fffixed,15,2);
end;

qrl_saldo.caption := floattostrf(strtofloat(qrl_saldo.caption)+f_contascorrentes.q_extratovalor.asfloat,fffixed,15,2);


end;

procedure Tqr_extrato.titulocreditosAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  qrl_subtotcred.caption  := '0';
end;

procedure Tqr_extrato.titulodebitosAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  qrl_subtotdeb.caption  := '0';
end;

procedure Tqr_extrato.subcreditosAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  qrl_subtotcred.caption  := floattostrf(strtofloat(qrl_subtotcred.caption)+f_contascorrentes.q_creditosvalor.asfloat,fffixed,15,2);
end;

procedure Tqr_extrato.subdebitosAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  qrl_subtotdeb.caption  := floattostrf(strtofloat(qrl_subtotdeb.caption)+f_contascorrentes.q_debitosvalor_contabilizado.asfloat,fffixed,15,2);
end;

procedure Tqr_extrato.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
qrl_sistema.Caption := v_sistema;
qrl_versao.Caption := v_versao;

qr_extrato.qrl_creditos.caption  := floattostrf(strtofloat('0'),fffixed,15,2);
qr_extrato.qrl_debitos.caption   := floattostrf(strtofloat('0'),fffixed,15,2);
qr_extrato.qrl_saldo.caption     := floattostrf(f_contascorrentes.q_santeriorsaldoanterior.asfloat,fffixed,15,2);

end;

end.
