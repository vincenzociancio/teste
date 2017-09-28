unit u_relvouchertransocean;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls, Dialogs,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  Tf_relvouchertransocean = class(TQuickRep)
    qrRelVoucherItems: TQuery;
    qrRelVoucherItemsProcesso: TStringField;
    qrRelVoucherItemsTipo_Processo: TStringField;
    qrRelVoucherItemsRef_Cliente: TStringField;
    qrRelVoucherItemsLocal: TStringField;
    qrRelVoucherItemsSaldo: TFloatField;
    QRBand1: TQRBand;
    QRi_logo: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRL_DESTINATARIO: TQRLabel;
    QRL_CODIGO: TQRLabel;
    QRShape6: TQRShape;
    QRShape9: TQRShape;
    QRShape7: TQRShape;
    QRLabel4: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRBand3: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRL_empresa: TQRLabel;
    QRL_endereco: TQRLabel;
    QRL_telfax: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRL_NOMECOMPLETO: TQRLabel;
    QRShape8: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    qrLblSaldo: TQRLabel;
    QRShape12: TQRShape;
    QRShape11: TQRShape;
    QRShape10: TQRShape;
    QRShape14: TQRShape;
    QRShape5: TQRShape;
    QRShape13: TQRShape;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure qrRelVoucherItemsSaldoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private

  public

  end;

var
  f_relvouchertransocean: Tf_relvouchertransocean;
  TotSaldo : Double;

implementation

uses u_vouchertransocean, U_MSCOMEX;

{$R *.DFM}

procedure Tf_relvouchertransocean.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  qrRelVoucherItems.Close;
  qrRelVoucherItems.Params[0].AsString := f_vouchertransocean.q_VoucherCodigo.AsString;
  qrRelVoucherItems.Open;

  QRL_CODIGO.Caption := f_vouchertransocean.q_VoucherDescricao.AsString;

  TotSaldo := 0;

  QRLabel3.Enabled   := False;
  qrLblSaldo.Enabled := False;
end;

procedure Tf_relvouchertransocean.qrRelVoucherItemsSaldoGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  Text := FormatFloat('0.00',qrRelVoucherItemsSaldo.AsFloat*-1);

  TotSaldo := TotSaldo + (qrRelVoucherItemsSaldo.AsFloat*-1);
end;

procedure Tf_relvouchertransocean.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrLblSaldo.Caption := FormatFloat('0.00',TotSaldo);

  if (f_relvouchertransocean.RecordCount = f_relvouchertransocean.RecordNumber)
   then begin
     QRLabel3.Enabled   := True;
     qrLblSaldo.Enabled := True;
   end;
end;

procedure Tf_relvouchertransocean.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotSaldo := 0;
end;

end.
