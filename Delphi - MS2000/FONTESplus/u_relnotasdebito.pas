unit u_relnotasdebito;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  Tqr_notasdebito = class(TQuickRep)
    titulo: TQRBand;
    QRi_logo: TQRImage;
    lblRecibo: TQRLabel;
    SummaryBand1: TQRBand;
    qrlCodigo: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    qrlNotaDebito: TQRLabel;
    qrlAC: TQRLabel;
    qrlDataEmissao: TQRLabel;
    qrlVencimento: TQRLabel;
    qrlValor: TQRLabel;
    qrlRequisicao: TQRLabel;
    qrlNomeSacado: TQRLabel;
    qrlEndereco: TQRLabel;
    qrlCNPJ: TQRLabel;
    qrlInsEstadualMunicipal: TQRLabel;
    qrlDescricaoServicos: TQRLabel;
    qrlValorExtenso: TQRLabel;
    QRShape1: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
  private

  public

  end;

var
  qr_notasdebito: Tqr_notasdebito;

implementation

uses U_MSCOMEX;
{$R *.DFM}

end.
