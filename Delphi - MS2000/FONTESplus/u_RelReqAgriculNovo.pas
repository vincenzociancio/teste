unit u_RelReqAgriculNovo;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TqrepReqAgriculNovo = class(TQuickRep)
    PageFooterBand1: TQRBand;
    DetailBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    qrlCmp3x: TQRLabel;
    qrlCmp1: TQRRichText;
    ChildBand1: TQRChildBand;
    QRLabel14: TQRLabel;
    qrlCmp10: TQRLabel;
    qrlCmp12: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    qrlCmp15: TQRLabel;
    QRLabel26: TQRLabel;
    qrlCmp16: TQRLabel;
    QRShape6: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel23: TQRLabel;
    qrlCmp11: TQRLabel;
    QRLabel25: TQRLabel;
    qrlCmp13: TQRLabel;
    QRLabel19: TQRLabel;
    qrlCmp17: TQRLabel;
    qrlblCopia: TQRLabel;
    qrlCmp18: TQRLabel;
    qrlCmp14: TQRLabel;
    QRLabel8: TQRLabel;
    qrlCmp2: TQRLabel;
    QRLabel9: TQRLabel;
    qrlCmp6: TQRLabel;
    QRLabel10: TQRLabel;
    qrlCmp7: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    qrlCmp3: TQRLabel;
    qrlCmp4: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel13: TQRLabel;
    qrlCmp8: TQRLabel;
    QRLabel30: TQRLabel;
    qrlCmp9: TQRLabel;
    QRShape2: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel20: TQRLabel;
    qrlCmp19: TQRLabel;
    qrlCmp20: TQRLabel;
    qrlCmp21: TQRLabel;
    QRShape3: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape4: TQRShape;
    QRLabel31: TQRLabel;
    QRShape5: TQRShape;
    QRLabel32: TQRLabel;
    QRShape7: TQRShape;
    QRLabel33: TQRLabel;
    QRShape8: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape10: TQRShape;
    QRLabel6: TQRLabel;
    QRShape11: TQRShape;
    QRLabel36: TQRLabel;
    QRShape12: TQRShape;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    qrlCmp5: TQRLabel;
    qrlCmp22: TQRLabel;
    QRShape9: TQRShape;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPreview(Sender: TObject);
  private

  public

  end;

var
  qrepReqAgriculNovo: TqrepReqAgriculNovo;
  Aux: String;

implementation

uses U_MSCOMEX, u_ReqAgriculNovo;

{$R *.DFM}

procedure TqrepReqAgriculNovo.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
     With frmReqAgriculNovo Do Begin
         edtCmp3.Color := clWhite;

         Aux := edtCmp3.Lines.Text;
         edtCmp3.Lines.Text := Trim(edtCmp1.Text +' '+ edtCmp2.Text +', '+ edtCmp3.Lines.Text);
         qrlCmp1.ParentRichEdit := edtCmp3;
         qrlCmp2.Caption := edtCmp4.Text;
         qrlCmp3.Caption := edtCmp5.Text;
         qrlCmp4.Caption := edtCmp6.Text;
         qrlCmp5.Caption := edtCmp7.Text;
         qrlCmp6.Caption := edtCmp8.Text;
         qrlCmp7.Caption := edtCmp9.Text;
         qrlCmp8.Caption := edtCmp10.Text;
         qrlCmp9.Caption := edtCmp11.Text;
         If cbCmp1.Checked Then qrlCmp10.Caption := 'X' Else qrlCmp10.Caption := '';
         If cbCmp2.Checked Then qrlCmp11.Caption := 'X' Else qrlCmp11.Caption := '';
         If cbCmp3.Checked Then qrlCmp12.Caption := 'X' Else qrlCmp12.Caption := '';
         If cbCmp4.Checked Then Begin
            qrlCmp13.Caption := 'X';
            qrlCmp14.Caption := edtCmp12.Text;
         End
         Else Begin
            qrlCmp13.Caption := '';
            qrlCmp14.Caption := '';
         End;
         qrlCmp15.Caption := edtCmp13.Text;
         qrlCmp16.Caption := edtCmp14.Text;
         qrlCmp17.Caption := edtCmp15.Text;
         qrlblCopia.Caption := lblCopia.Caption;
         qrlCmp18.Caption := edtCmp16.Text;
         qrlCmp19.Caption := edtCmp17.Text;
         qrlCmp20.Caption := edtCmp18.Text;
         qrlCmp21.Caption := dbLcbProcurador.Text;
         qrlCmp22.Caption := 'REPRESENTANTE LEGAL: '+ dbTxtReg.Field.AsString;
     End;
end;

procedure TqrepReqAgriculNovo.QuickRepAfterPreview(Sender: TObject);
begin
     qrlCmp1.ParentRichEdit := Nil;

     With frmReqAgriculNovo Do Begin
         edtCmp3.Color := $00DFFFFF;
         edtCmp3.Lines.Text := Aux;
     End;

     qrepReqAgriculNovo := Nil;
     Free;
end;

end.
