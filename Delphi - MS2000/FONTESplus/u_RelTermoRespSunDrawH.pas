unit u_RelTermoRespSunDrawH;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, jpeg;

type
  TqrepTermoRespSunDrawH = class(TQuickRep)
    DetailBand1: TQRBand;
    QRImage1: TQRImage;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    qrlCmp2: TQRLabel;
    QRLabel1: TQRLabel;
    qrlCmp1: TQRRichText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPreview(Sender: TObject);
  private

  public

  end;

var
  qrepTermoRespSunDrawH: TqrepTermoRespSunDrawH;

implementation

uses u_MSForm, u_TermoRespSunDrawH;

{$R *.DFM}

procedure TqrepTermoRespSunDrawH.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
     With frmTermoRespSunDrawH Do Begin
         edtCmp1.Color := clWhite;

         qrlCmp1.ParentRichEdit := edtCmp1;
         qrlCmp2.Caption := FormatDateTime('"'+ vDescFil +'," dd "de" mmmm "de" yyyy', Now());
     End;
end;

procedure TqrepTermoRespSunDrawH.QuickRepAfterPreview(Sender: TObject);
begin
     qrlCmp1.ParentRichEdit := nil;
     frmTermoRespSunDrawH.edtCmp1.Color := $00DFFFFF;

     qrepTermoRespSunDrawH := Nil;
     Free;
end;

end.
