unit u_reldespq;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  Tqr_reldesp = class(TQuickRep)
    titulo: TQRBand;
    qrl_sistema: TQRLabel;
    qrl_versao: TQRLabel;
    qrl_titulo: TQRLabel;
    QRi_logo: TQRImage;
    QRLabel1: TQRLabel;
    qrl_periodo: TQRLabel;
    DetailBand1: TQRBand;
    Q_desp: TQuery;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    qrl_perc: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    qrl_total: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    Q_despusuario_temp: TStringField;
    Q_despCliente: TStringField;
    Q_despDescricao: TStringField;
    Q_despqvalor: TFloatField;
    qrl_empresa: TQRLabel;
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  qr_reldesp: Tqr_reldesp;

implementation

uses u_reldesp;

{$R *.DFM}

procedure Tqr_reldesp.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
qrl_total.caption  := floattostrf(strtofloat(qrl_total.caption)+q_despqvalor.asfloat,fffixed,15,2);
end;

procedure Tqr_reldesp.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
qrl_perc.caption  := floattostrf(((q_despqvalor.asfloat*100)/v_total ),fffixed,15,2);
end;

procedure Tqr_reldesp.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
qrl_total.caption   := '0';
end;

end.
