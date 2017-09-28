unit U_TRverso;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQR_TRverso = class(TQuickRep)
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape2: TQRShape;
    QRLabel4: TQRLabel;
    QRShape4: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel46: TQRLabel;
    QRShape21: TQRShape;
    QRLabel47: TQRLabel;
    QRLabel49: TQRLabel;
    DetailBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape1: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape3: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRShape9: TQRShape;
    QRLabel41: TQRLabel;
    QRShape10: TQRShape;
    QRLabel42: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRShape5: TQRShape;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText4: TQRDBText;
    QRM_lavro: TQRMemo;
    qrl_di: TQRLabel;
    QRMemo1: TQRMemo;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
  private

  public

  end;

var
  QR_TRverso: TQR_TRverso;

implementation

uses U_MSCOMEX, u_protr;

{$R *.DFM}

procedure TQR_TRverso.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var DI: String;

begin
     qrmemo1.Lines := f_protr.memotermo.Lines;

     DI := f_protr.tbProcessosNr_declaracao_imp.AsString;
     qrl_di.caption := Copy(DI,1,2)+'/'+Copy(DI,3,7)+'-'+Copy(DI,10,1);
end;

procedure TQR_TRverso.QuickRepStartPage(Sender: TCustomQuickRep);
begin
      F_proTR.qrConhecimento.Close;
      F_proTR.qrConhecimento.open;
      F_proTR.tbObsTR.close;
      F_proTR.tbObsTR.open;
end;

end.
