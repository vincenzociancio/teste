unit u_RelReqAgricul;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TqrepReqAgricul = class(TQuickRep)
    PageFooterBand1: TQRBand;
    DetailBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    qrlCmp1: TQRLabel;
    qrlCmp2: TQRLabel;
    qrlCmp3: TQRLabel;
    qrlCmp4: TQRLabel;
    qrlCmp5: TQRLabel;
    qrlCmp6: TQRLabel;
    qrlCmp7: TQRLabel;
    qrlCmp8: TQRRichText;
    ChildBand1: TQRChildBand;
    QRLabel14: TQRLabel;
    qrlCmp15: TQRLabel;
    qrlCmp17: TQRLabel;
    qrlCmp19: TQRLabel;
    QRLabel21: TQRLabel;
    qrlCmp16: TQRLabel;
    qrlCmp22: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    qrlCmp24: TQRLabel;
    QRLabel26: TQRLabel;
    qrlCmp26: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape6: TQRShape;
    QRShape10: TQRShape;
    QRShape9: TQRShape;
    QRShape2: TQRShape;
    QRShape5: TQRShape;
    QRShape4: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel23: TQRLabel;
    qrlCmp18: TQRLabel;
    QRLabel25: TQRLabel;
    qrlCmp20: TQRLabel;
    QRLabel27: TQRLabel;
    qrlCmp23: TQRLabel;
    QRShape3: TQRShape;
    QRLabel19: TQRLabel;
    qrlCmp25: TQRLabel;
    QRLabel28: TQRLabel;
    qrlCmp27: TQRLabel;
    qrlCmp28: TQRRichText;
    qrlCmp29: TQRRichText;
    qrlCmp21: TQRLabel;
    qrlCmp30: TQRLabel;
    qrlCmp31: TQRLabel;
    QRLabel24: TQRLabel;
    qrlCmp32: TQRLabel;
    QRLabel8: TQRLabel;
    qrlCmp9: TQRLabel;
    QRLabel9: TQRLabel;
    qrlCmp10: TQRLabel;
    QRLabel10: TQRLabel;
    qrlCmp11: TQRLabel;
    QRLabel11: TQRLabel;
    qrlCmp12: TQRLabel;
    QRLabel12: TQRLabel;
    qrlCmp13: TQRLabel;
    QRLabel13: TQRLabel;
    qrlCmp14: TQRLabel;
    QRLabel7: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPreview(Sender: TObject);
  private

  public

  end;

var
  qrepReqAgricul: TqrepReqAgricul;

implementation

uses U_MSCOMEX, u_ReqAgricul;

{$R *.DFM}

procedure TqrepReqAgricul.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
     With frmReqAgricul Do Begin
         edtCmp3.Color := clWhite;
         edtCmp23.Color := clWhite;
         edtCmp24.Color := clWhite;

         qrlCmp1.Caption := qrLocProcRazao_Social.AsString;
         qrlCmp2.Caption := 'CNPJ: '+ FormatCurr('0#"."###"."###/####-##', StrToCurr(qrLocProcCNPJ_CPF_COMPLETO.AsString));
         qrlCmp3.Caption := 'MS-'+  qrLocProcCodigo.AsString;
         qrlCmp6.Caption := edtCmp1.Text;
         qrlCmp7.Caption := edtCmp2.Text;
         qrlCmp8.ParentRichEdit := edtCmp3;
         qrlCmp9.Caption := edtCmp4.Text;
         qrlCmp10.Caption := edtCmp5.Text;
         qrlCmp11.Caption := edtCmp6.Text;
         qrlCmp12.Caption := edtCmp7.Text;
         qrlCmp13.Caption := edtCmp8.Text;
         qrlCmp14.Caption := edtCmp9.Text;
         qrlCmp15.Caption := edtCmp10.Text;
         qrlCmp16.Caption := edtCmp11.Text;
         qrlCmp17.Caption := edtCmp12.Text;
         qrlCmp18.Caption := edtCmp13.Text;
         qrlCmp19.Caption := edtCmp14.Text;
         qrlCmp20.Caption := edtCmp15.Text;
         qrlCmp21.Caption := edtCmp16.Text;
         qrlCmp22.Caption := edtCmp17.Text;
         qrlCmp23.Caption := edtCmp18.Text;
         qrlCmp24.Caption := edtCmp19.Text;
         qrlCmp25.Caption := edtCmp20.Text;
         qrlCmp26.Caption := edtCmp21.Text;
         qrlCmp27.Caption := edtCmp22.Text;
         qrlCmp28.ParentRichEdit := edtCmp23;
         qrlCmp29.ParentRichEdit := edtCmp24;
         qrlCmp30.Caption := FormatDateTime('"'+ 'Rio de Janeiro' +'," dd "de" mmmm "de" yyyy', Now());
         qrlCmp31.Caption := dbLcbProcurador.Text;
         qrlCmp32.Caption := dbTxtReg.Field.AsString;
     End;
end;

procedure TqrepReqAgricul.QuickRepAfterPreview(Sender: TObject);
begin
     qrlCmp8.ParentRichEdit := nil;
     qrlCmp28.ParentRichEdit := nil;
     qrlCmp29.ParentRichEdit := nil;
     frmReqAgricul.edtCmp3.Color := $00DFFFFF;
     frmReqAgricul.edtCmp23.Color := $00DFFFFF;
     frmReqAgricul.edtCmp24.Color := $00DFFFFF;

     qrepReqAgricul := Nil;
     Free;
end;

end.
