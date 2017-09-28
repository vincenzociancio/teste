unit u_RelTermoSunDrawH;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, jpeg;

type
  TqrepTermoSunDrawH = class(TQuickRep)
    DetailBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape1: TQRShape;
    qrlCmp1: TQRLabel;
    qrlCmp2: TQRLabel;
    QRLabel1: TQRLabel;
    qrlCmp4: TQRLabel;
    QRLabel5: TQRLabel;
    qrlCmp5: TQRLabel;
    QRLabel7: TQRLabel;
    qrlCmp6: TQRLabel;
    QRLabel9: TQRLabel;
    qrlCmp7: TQRLabel;
    QRLabel11: TQRLabel;
    qrlCmp8: TQRLabel;
    QRLabel13: TQRLabel;
    qrlCmp9: TQRLabel;
    QRLabel15: TQRLabel;
    qrlCmp10: TQRLabel;
    QRLabel17: TQRLabel;
    qrlCmp11: TQRLabel;
    QRLabel19: TQRLabel;
    qrlCmp12: TQRLabel;
    QRLabel21: TQRLabel;
    qrlCmp13: TQRLabel;
    QRLabel23: TQRLabel;
    qrlCmp14: TQRLabel;
    QRLabel25: TQRLabel;
    qrlCmp15: TQRLabel;
    QRLabel27: TQRLabel;
    qrlCmp16: TQRLabel;
    QRLabel29: TQRLabel;
    qrlCmp17: TQRLabel;
    QRLabel31: TQRLabel;
    qrlCmp18: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    qrlCmp20: TQRLabel;
    QRImage1: TQRImage;
    qrlCmp3: TQRRichText;
    qrlCmp19: TQRRichText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPreview(Sender: TObject);
  private

  public

  end;

var
  qrepTermoSunDrawH: TqrepTermoSunDrawH;

implementation

uses U_MSCOMEX, u_TermoSunDrawH;

{$R *.DFM}

procedure TqrepTermoSunDrawH.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
     With frmTermoSunDrawH Do Begin
         edtCmp3.Color := clWhite;
         edtCmp19.Color := clWhite;

         qrlCmp1.Caption := edtCmp1.Text;
         qrlCmp2.Caption := edtCmp2.Text;
         qrlCmp3.ParentRichEdit := edtCmp3;
         qrlCmp4.Caption := edtCmp4.Text;
         qrlCmp5.Caption := edtCmp5.Text;
         qrlCmp6.Caption := edtCmp6.Text;
         qrlCmp7.Caption := edtCmp7.Text;
         qrlCmp8.Caption := edtCmp8.Text;
         qrlCmp9.Caption := edtCmp9.Text;
         qrlCmp10.Caption := edtCmp10.Text;
         qrlCmp11.Caption := edtCmp11.Text;
         qrlCmp12.Caption := edtCmp12.Text;
         qrlCmp13.Caption := edtCmp13.Text;
         qrlCmp14.Caption := edtCmp14.Text;
         qrlCmp15.Caption := edtCmp15.Text;
         qrlCmp16.Caption := edtCmp16.Text;
         qrlCmp17.Caption := edtCmp17.Text;
         qrlCmp18.Caption := edtCmp18.Text;
         qrlCmp19.ParentRichEdit := edtCmp19;
         qrlCmp20.Caption := FormatDateTime('"'+ 'Rio de Janeiro' +'," dd "de" mmmm "de" yyyy', Now());
     End;
end;

procedure TqrepTermoSunDrawH.QuickRepAfterPreview(Sender: TObject);
begin
     qrlCmp3.ParentRichEdit := nil;
     frmTermoSunDrawH.edtCmp3.Color := $00DFFFFF;
     qrlCmp19.ParentRichEdit := nil;
     frmTermoSunDrawH.edtCmp19.Color := $00DFFFFF;

     qrepTermoSunDrawH := Nil;
     Free;
end;

end.
