unit u_relPlano;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  Tqr_Plano = class(TQuickRep)
    titulo: TQRBand;
    qrl_sistema: TQRLabel;
    qrl_versao: TQRLabel;
    QRi_logo: TQRImage;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel5: TQRLabel;
    QRBand2: TQRBand;
    subcreditos: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText3: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel2: TQRLabel;
    procedure tituloBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  qr_Plano: Tqr_Plano;

implementation

uses u_mscomex, u_plano;

{$R *.DFM}

procedure Tqr_Plano.tituloBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     qrl_sistema.Caption := v_sistema;
     qrl_versao.Caption := v_versao;
end;

end.

