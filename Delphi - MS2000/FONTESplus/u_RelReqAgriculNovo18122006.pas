unit u_RelReqAgriculNovo18122006;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TqrepReqAgriculNovo18122006 = class(TQuickRep)
    DetailBand1: TQRBand;
    QRLabel28: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    qrlchefe: TQRLabel;
    QRLabel42: TQRLabel;
    qrlSDA: TQRLabel;
    QRLabel44: TQRLabel;
    qrlimportacao: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    qrlexportacao: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    qrlBRUTA: TQRLabel;
    QRLabel58: TQRLabel;
    qrlESTIVA: TQRLabel;
    QRLabel60: TQRLabel;
    qrlPROCESSADA: TQRLabel;
    QRLabel62: TQRLabel;
    qrlPALETES: TQRLabel;
    QRLabel64: TQRLabel;
    qrlinternacional: TQRLabel;
    QRLabel66: TQRLabel;
    qrlOUTROS: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    qrlMB: TQRLabel;
    QRLabel71: TQRLabel;
    qrlHT: TQRLabel;
    QRLabel73: TQRLabel;
    qrlKD: TQRLabel;
    QRLabel75: TQRLabel;
    qrlCOPIA: TQRLabel;
    QRLabel2: TQRLabel;
    qrlONPF: TQRLabel;
    QRLabel4: TQRLabel;
    qrlORIGINAL: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    qrlprotocolo: TQRLabel;
    qrlimportador: TQRLabel;
    qrlcadastro: TQRLabel;
    qrlCNPJ: TQRLabel;
    qrlEND1: TQRLabel;
    qrlEND2: TQRLabel;
    qrlFONE: TQRLabel;
    qrlCIDADE: TQRLabel;
    qrlUF: TQRLabel;
    qrlTIPO: TQRLabel;
    qrlPAIS: TQRLabel;
    qrlLOCAL: TQRLabel;
    qrlMEIO: TQRLabel;
    qrlBANCADA: TQRLabel;
    qrlLOCAL2: TQRLabel;
    qrlDATA: TQRLabel;
    qrlidentificacao: TQRLabel;
    qrlOUTROS2: TQRLabel;
    qrlconhecimento: TQRLabel;
    TitleBand1: TQRBand;
    qrlimportador2: TQRLabel;
    qrlLOCAL3: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPreview(Sender: TObject);
  private

  public

  end;

var
  qrepReqAgriculNovo18122006: TqrepReqAgriculNovo18122006;
  Aux: String;

implementation

uses U_MSCOMEX,u_ReqAgriculNovo18122006;

{$R *.DFM}

procedure TqrepReqAgriculNovo18122006.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin

     qrlprotocolo.Caption := frmReqAgriculNovo18122006.edtprotocolo.text;
     qrlchefe.Caption     := frmReqAgriculNovo18122006.edtchefe.text;
     qrlSDA.Caption       := frmReqAgriculNovo18122006.edtSDA.text;
     if frmReqAgriculNovo18122006.cbimportacao.Checked then qrlimportacao.Caption := 'X'
     else qrlimportacao.Caption := '';
     if frmReqAgriculNovo18122006.cbexportacao.Checked then qrlexportacao.Caption := 'X'
     else qrlexportacao.Caption := '';
     qrlimportador.Caption := frmReqAgriculNovo18122006.edtimportador.text;
     qrlimportador2.Caption := frmReqAgriculNovo18122006.edtimportador.text;
     qrlcadastro.Caption := frmReqAgriculNovo18122006.edtcadastro.text;
     qrlCNPJ.Caption := frmReqAgriculNovo18122006.edtCNPJ.text;
     qrlEND1.Caption := frmReqAgriculNovo18122006.edtEND1.text;
     qrlEND2.Caption := frmReqAgriculNovo18122006.edtEND2.text;
     qrlFONE.Caption := frmReqAgriculNovo18122006.edtFONE.text;
     qrlCIDADE.Caption := frmReqAgriculNovo18122006.edtCIDADE.text;
     qrlUF.Caption := frmReqAgriculNovo18122006.edtUF.text;
     qrlTIPO.Caption := frmReqAgriculNovo18122006.edtTIPO.text;
     qrlPAIS.Caption := frmReqAgriculNovo18122006.edtPAIS.text;
     qrlMEIO.Caption := frmReqAgriculNovo18122006.edtMEIO.text;
     qrlLOCAL.Caption := frmReqAgriculNovo18122006.edtLOCAL.text;
     qrlBANCADA.Caption := frmReqAgriculNovo18122006.edtBANCADA.text;
     if frmReqAgriculNovo18122006.cbBRUTA.Checked then qrlBRUTA.Caption := 'X'
     else qrlBRUTA.Caption := '';
     if frmReqAgriculNovo18122006.cbESTIVA.Checked then qrlESTIVA.Caption := 'X'
     else qrlESTIVA.Caption := '';
     if frmReqAgriculNovo18122006.cbPROCESSADA.Checked then qrlPROCESSADA.Caption := 'X'
     else qrlPROCESSADA.Caption := '';
     if frmReqAgriculNovo18122006.cbOUTROS.Checked then qrlOUTROS.Caption := 'X'
     else qrlOUTROS.Caption := '';
     if frmReqAgriculNovo18122006.cbPALETES.Checked then qrlPALETES.Caption := 'X'
     else qrlPALETES.Caption := '';
     if frmReqAgriculNovo18122006.cbINTERNACIONAL.Checked then qrlINTERNACIONAL.Caption := 'X'
     else qrlINTERNACIONAL.Caption := '';
     if frmReqAgriculNovo18122006.cbMB.Checked then qrlMB.Caption := 'X'
     else qrlMB.Caption := '';
     if frmReqAgriculNovo18122006.cbHT.Checked then qrlHT.Caption := 'X'
     else qrlHT.Caption := '';
     if frmReqAgriculNovo18122006.cbKD.Checked then qrlKD.Caption := 'X'
     else qrlKD.Caption := '';
     if frmReqAgriculNovo18122006.cbCOPIA.Checked then qrlCOPIA.Caption := 'X'
     else qrlCOPIA.Caption := '';
     if frmReqAgriculNovo18122006.cbONPF.Checked then qrlONPF.Caption := 'X'
     else qrlONPF.Caption := '';
     if frmReqAgriculNovo18122006.cbORIGINAL.Checked then qrlORIGINAL.Caption := 'X'
     else qrlORIGINAL.Caption := '';
     qrlconhecimento.Caption := frmReqAgriculNovo18122006.edtconhecimento.text;
     qrlOUTROS2.Caption := frmReqAgriculNovo18122006.edtOUTROS.text;
     qrlLOCAL2.Caption := frmReqAgriculNovo18122006.edtLOCAL2.text;
     qrlLOCAL3.Caption := frmReqAgriculNovo18122006.edtLOCAL2.text;
     qrlDATA.Caption := frmReqAgriculNovo18122006.edtDATA.text;
     if frmReqAgriculNovo18122006.qrProcuradorCodigo.AsString <> '53' then begin
       qrlidentificacao.Caption := frmReqAgriculNovo18122006.dbLcbProcurador.Text ;
     end
     Else begin
       qrlidentificacao.Caption := '';
     end;

       {
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
     }
end;

procedure TqrepReqAgriculNovo18122006.QuickRepAfterPreview(Sender: TObject);
begin
//     qrlCmp1.ParentRichEdit := Nil;

//     With frmReqAgriculNovo18122006 Do Begin
//         edtCmp3.Color := $00DFFFFF;
//         edtCmp3.Lines.Text := Aux;
//     End;

     qrepReqAgriculNovo18122006 := Nil;
     Free;
end;

end.
