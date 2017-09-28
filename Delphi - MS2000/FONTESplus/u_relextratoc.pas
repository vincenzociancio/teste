unit u_relextratoc;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, jpeg;

type
  Tqr_extratoc = class(TQuickRep)
    DetailBand1: TQRBand;
    titulo: TQRBand;
    qrl_sistema: TQRLabel;
    qrl_versao: TQRLabel;
    qrl_titulo: TQRLabel;
    QRi_logo: TQRImage;
    QRShape6: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    qrl_conta: TQRLabel;
    qrl_dataini: TQRLabel;
    QRLabel9: TQRLabel;
    qrl_datafin: TQRLabel;
    QRDBText1: TQRDBText;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    b_resumo: TQRBand;
    QRLabel11: TQRLabel;
    qrl_creditos: TQRLabel;
    QRLabel18: TQRLabel;
    qrl_debitos: TQRLabel;
    QRLabel20: TQRLabel;
    qrl_saldonoperiodo: TQRLabel;
    QRLabel17: TQRLabel;
    qrl_saldoanterior: TQRLabel;
    QRLabel2: TQRLabel;
    qrl_saldoposterior: TQRLabel;
    QRLabel5: TQRLabel;
    qrl_saldoatual: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure b_resumoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure tituloBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qr_extratoc: Tqr_extratoc;

implementation

uses U_MSCOMEX,u_extratocc_clientes;

{$R *.DFM}

procedure Tqr_extratoc.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if f_extratocc_clientes.q_extratonoperiodovalor.asfloat >= 0 then begin
   qrdbtext5.font.Color := clwindowtext;
   qrl_creditos.caption := floattostrf(strtofloat(qrl_creditos.caption)+f_extratocc_clientes.q_extratonoperiodovalor.asfloat,fffixed,15,2);
   end
else begin
     qrdbtext5.font.Color := clmaroon;
     qrl_debitos.caption  := floattostrf(strtofloat(qrl_debitos.caption)-f_extratocc_clientes.q_extratonoperiodovalor.asfloat,fffixed,15,2);
end;

qrl_saldonoperiodo.caption := floattostrf(strtofloat(qrl_saldonoperiodo.caption)+f_extratocc_clientes.q_extratonoperiodovalor.asfloat,fffixed,15,2);


end;

procedure Tqr_extratoc.b_resumoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

qrl_saldoatual.caption := floattostrf(
strtofloat(qrl_saldoanterior.caption)+
strtofloat(qrl_saldonoperiodo.caption)+
strtofloat(qrl_saldoposterior.caption),fffixed,15,2);

qrl_saldonoperiodo.caption := floattostrf(
strtofloat(qrl_saldoanterior.caption)+
strtofloat(qrl_saldonoperiodo.caption),fffixed,15,2);

end;

procedure Tqr_extratoc.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
qr_extratoc.qrl_creditos.caption := '0';
qr_extratoc.qrl_debitos.caption := '0';
qr_extratoc.qrl_saldonoperiodo.caption := '0';
qr_extratoc.qrl_saldoatual.caption := '0';

end;

procedure Tqr_extratoc.tituloBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
qrl_versao.caption := v_versao;
end;

end.
