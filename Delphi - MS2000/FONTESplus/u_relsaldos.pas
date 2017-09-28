unit u_relsaldos;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  Tqr_saldos = class(TQuickRep)
    DetailBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRSubDetail2: TQRSubDetail;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    GroupFooterBand1: TQRBand;
    GroupHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    GroupFooterBand2: TQRBand;
    GroupHeaderBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel12: TQRLabel;
    titulo: TQRBand;
    qrl_sistema: TQRLabel;
    qrl_versao: TQRLabel;
    qrl_titulo: TQRLabel;
    SummaryBand1: TQRBand;
    qrl_result: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    qrl_subcli: TQRLabel;
    qrl_subcc: TQRLabel;
    QRSysData2: TQRSysData;
    ChildBand1: TQRChildBand;
    ChildBand2: TQRChildBand;
    QRImage1: TQRImage;
    qrl_valor: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure b_resultadoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qr_saldos: Tqr_saldos;

implementation

uses U_contascorrentes;


{$R *.DFM}

procedure Tqr_saldos.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
{
if f_contascorrentes.q_extratonoperiodovalor.asfloat >= 0 then begin
   qrdbtext5.font.Color := clwindowtext;
   qrl_creditos.caption := floattostrf(strtofloat(qrl_creditos.caption)+f_contascorrentes.q_extratonoperiodovalor.asfloat,fffixed,15,2);
   end
else begin
     qrdbtext5.font.Color := clmaroon;
     qrl_debitos.caption  := floattostrf(strtofloat(qrl_debitos.caption)-f_contascorrentes.q_extratonoperiodovalor.asfloat,fffixed,15,2);
end;

qrl_saldonoperiodo.caption := floattostrf(strtofloat(qrl_saldonoperiodo.caption)+f_contascorrentes.q_extratonoperiodovalor.asfloat,fffixed,15,2);

 }
end;

procedure Tqr_saldos.b_resultadoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

{
qrl_saldoatual.caption := floattostrf(
strtofloat(qrl_saldoanterior.caption)+
strtofloat(qrl_saldonoperiodo.caption)+
strtofloat(qrl_saldoposterior.caption),fffixed,15,2);

qrl_saldonoperiodo.caption := floattostrf(
strtofloat(qrl_saldoanterior.caption)+
strtofloat(qrl_saldonoperiodo.caption),fffixed,15,2);
 }
end;

procedure Tqr_saldos.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin

qrl_subcli.caption := '0';
qrl_subcc.caption := '0';

end;

procedure Tqr_saldos.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

qrl_result.caption := 'Resultado (B)-(A) = '+
floattostrf(strtofloat(qrl_subcc.caption)-
strtofloat(qrl_subcli.caption),fffixed,15,2);

end;

procedure Tqr_saldos.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
qrl_subcli.caption := floattostrf(strtofloat(qrl_subcli.caption)+strtofloat(qrl_valor.caption),fffixed,15,2);
end;

procedure Tqr_saldos.QRSubDetail2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
qrl_subcc.caption := floattostrf(strtofloat(qrl_subcc.caption)+f_contascorrentes.q_contassaldo.asfloat,fffixed,15,2);

end;

procedure Tqr_saldos.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var cre,deb:real;  
begin

if f_contascorrentes.q_creditosimp.locate('Codigo',f_contascorrentes.q_importcodigo.asstring,[]) then
   cre := f_contascorrentes.q_creditosimpcreditos.asfloat
else cre := 0;

if f_contascorrentes.q_debitosimp.locate('Codigo',f_contascorrentes.q_importcodigo.asstring,[]) then
   deb := f_contascorrentes.q_debitosimpdebitos.asfloat
else deb := 0;

cre := strtofloat(FloatToStrF((cre),fffixed,15,2));
deb := strtofloat(FloatToStrF((deb),fffixed,15,2));

qrl_valor.caption := FloatToStrF((cre-deb),fffixed,15,2);
///qrl_valor.caption := FloatToStr(cre)+' - '+FloatToStr(deb);

///coloquei somente com saldos em 09/03/2006
if trim(qrl_valor.caption)='0,00' then PrintBand := false
else PrintBand := true;

end;

procedure Tqr_saldos.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
///coloquei em 09/03/2006 somente as contas do asc
if f_contascorrentes.q_contasASCAA.asinteger = 1 then  PrintBand := true
else PrintBand := false;

end;

end.
