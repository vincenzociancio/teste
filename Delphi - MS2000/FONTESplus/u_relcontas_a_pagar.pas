unit u_relcontas_a_pagar;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls, Dialogs,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  Tf_relcontas_a_pagar = class(TQuickRep)
    QRBand1: TQRBand;
    QRi_logo: TQRImage;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel10: TQRLabel;
    qrlTotal: TQRLabel;
    QRDBText1: TQRDBText;
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText3Print(sender: TObject; var Value: String);
  private
    Total : Double;
  public

  end;

var
  f_relcontas_a_pagar: Tf_relcontas_a_pagar;

implementation

uses U_MSCOMEX, u_contasapagar;

{$R *.DFM}

procedure Tf_relcontas_a_pagar.DetailBand1AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  Total := Total + f_contasapagar.qrContasPagamentosValor_Total.Value;
end;

procedure Tf_relcontas_a_pagar.SummaryBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  qrlTotal.Caption := FormatCurr('#,##0.00',total);
end;

procedure Tf_relcontas_a_pagar.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  Total := 0;
end;

procedure Tf_relcontas_a_pagar.QRDBText3Print(sender: TObject;
  var Value: String);
begin
  Value := FormatCurr('#,##0.00',f_contasapagar.qrContasPagamentosValor_Total.Value);
end;

end.
