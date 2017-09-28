unit u_RelCapaDISep;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TqrepCapaDISep = class(TQuickRep)
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    qrlCmp1: TQRLabel;
    qrlCmp2: TQRLabel;
    QRLabel5: TQRLabel;
    qrlCmp3: TQRLabel;
    qrlCmp4: TQRLabel;
    qrlCmp5: TQRRichText;
    QRLabel8: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    qrlCmp6: TQRLabel;
    qrlCmp7: TQRLabel;
    qrlCmp8: TQRLabel;
    qrlCmp9: TQRLabel;
    qrlCmp10: TQRLabel;
    qrlCmp11: TQRLabel;
    qrlCmp12: TQRLabel;
    qrlCmp13: TQRLabel;
    qrlCmp14: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    qrlCmp31: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    qrlCmp16: TQRRichText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPreview(Sender: TObject);
  private

  public

  end;

var
  qrepCapaDISep: TqrepCapaDISep;

implementation

uses U_MSCOMEX, u_CapaDISep;

{$R *.DFM}

procedure TqrepCapaDISep.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
     With frmCapaDISep Do Begin
         edtCmp4.Color := clWhite;

         qrlCmp1.Caption := FormatDateTime('"DATA: " dd/mm/yyyy', Now());
         qrlCmp2.Caption := ': '+ edtCmp1.Text;
         qrlCmp3.Caption := ': '+ edtCmp2.Text;
         qrlCmp4.Caption := edtCmp3.Text;
         qrlCmp5.ParentRichEdit := edtCmp4;
         If cbCmp1.Checked Then  qrlCmp6.Caption := 'X'
         Else  qrlCmp6.Caption := '';
         If cbCmp2.Checked Then  qrlCmp7.Caption := 'X'
         Else  qrlCmp7.Caption := '';
         If cbCmp3.Checked Then  qrlCmp8.Caption := 'X'
         Else  qrlCmp8.Caption := '';
         If cbCmp4.Checked Then  qrlCmp9.Caption := 'X'
         Else  qrlCmp9.Caption := '';
         If cbCmp5.Checked Then  qrlCmp10.Caption := 'X'
         Else  qrlCmp10.Caption := '';
         If cbCmp6.Checked Then  qrlCmp11.Caption := 'X'
         Else  qrlCmp11.Caption := '';
         If cbCmp7.Checked Then  qrlCmp12.Caption := 'X'
         Else  qrlCmp12.Caption := '';
         If cbCmp8.Checked Then  qrlCmp13.Caption := 'X'
         Else  qrlCmp13.Caption := '';
         If cbCmp9.Checked Then  qrlCmp14.Caption := 'X'
         Else  qrlCmp14.Caption := '';
         qrlCmp16.Lines.Text := #9 +'DECLARO TER RECEBIDO OS DOCS. PERTINENTES AO DESPACHO ADUANEIRO.';
     End; 
end;

procedure TqrepCapaDISep.QuickRepAfterPreview(Sender: TObject);
begin
     qrlCmp5.ParentRichEdit := nil;
     frmCapaDISep.edtCmp4.Color := $00DFFFFF;

     qrepCapaDISep := Nil;
     Free;
end;

end.
