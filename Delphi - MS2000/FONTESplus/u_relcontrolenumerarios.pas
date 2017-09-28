unit u_relcontrolenumerarios;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls, Dialogs,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  Tf_relcontrolenumerarios = class(TQuickRep)
    QRBand1: TQRBand;
    QRi_logo: TQRImage;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel9: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel10: TQRLabel;
    qrlTotal: TQRLabel;
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText4Print(sender: TObject; var Value: String);
  private
    Total : Double;
  public

  end;

var
  f_relcontrolenumerarios: Tf_relcontrolenumerarios;

implementation

uses u_vouchertransocean, U_MSCOMEX, u_controlenumerarios;

{$R *.DFM}

procedure Tf_relcontrolenumerarios.DetailBand1AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  Total := Total + f_controlenumerarios.q_NumerariosTotal.AsFloat;
end;

procedure Tf_relcontrolenumerarios.SummaryBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  qrlTotal.Caption := FormatCurr('#,##0.00',total);
end;

procedure Tf_relcontrolenumerarios.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  Total := 0;
end;

procedure Tf_relcontrolenumerarios.QRDBText4Print(sender: TObject;
  var Value: String);
begin
  Value := FormatCurr('#,##0.00',f_controlenumerarios.q_NumerariosTotal.Value);
end;

end.
