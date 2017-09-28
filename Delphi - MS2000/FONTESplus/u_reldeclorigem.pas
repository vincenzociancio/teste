unit u_reldeclorigem;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  Tqr_declorigem = class(TQuickRep)
    titulo: TQRBand;
    QRi_logo: TQRImage;
    SummaryBand1: TQRBand;
    QRShape5: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    qrlCliente: TQRLabel;
    qrlVencimento: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape1: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    lblRecibo: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    qrlValor: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    qrlData: TQRLabel;
    qrlValorTotal: TQRLabel;
    qrlNotaFiscal: TQRLabel;
    qrlDataEmissao: TQRLabel;
    qrlProcesso: TQRLabel;
    QRLabel3: TQRLabel;                                                
    QRLabel7: TQRLabel;
    QRLabel12: TQRLabel;
    qrlCodigo: TQRLabel;
    QRLabel4: TQRLabel;
    qrlUsuario: TQRLabel;
    qrlDirect: TQRLabel;
    qrlOffice: TQRLabel;
    qrlFax: TQRLabel;
    qrlEmail: TQRLabel;
  private

  public

  end;

var
  qr_declorigem: Tqr_declorigem;

implementation

uses U_MSCOMEX;
{$R *.DFM}

end.
