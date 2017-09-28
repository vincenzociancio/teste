unit u_relrecibos;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  Tqr_recibo = class(TQuickRep)
    titulo: TQRBand;
    QRi_logo: TQRImage;
    lblRecibo: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel1: TQRLabel;
    qrlblCorpo: TQRLabel;
    QRLabel3: TQRLabel;
    qrlblData: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRImage1: TQRImage;
    qrlCodigo: TQRLabel;
  private

  public

  end;

var
  qr_recibo: Tqr_recibo;

implementation

uses U_MSCOMEX;
{$R *.DFM}

end.
