unit u_qrRelMoviCCImport;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, jpeg;

type
  Tqr_RelMoviCCImport = class(TQuickRep)
    detMoviment: TQRBand;
    titulo: TQRBand;
    qrl_sistema: TQRLabel;
    qrl_versao: TQRLabel;
    qrl_titulo: TQRLabel;
    QRi_logo: TQRImage;
    QRShape6: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    qrl_conta: TQRLabel;
    qrl_tipo: TQRLabel;
    qrl_desmembra: TQRLabel;
    qrl_rfinal: TQRLabel;
    qrl_dataini: TQRLabel;
    QRLabel9: TQRLabel;
    qrl_datafin: TQRLabel;
    QRDBText1: TQRDBText;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    b_resumo: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    qrl_creditos: TQRLabel;
    QRLabel18: TQRLabel;
    qrl_debitos: TQRLabel;
    QRLabel20: TQRLabel;
    qrl_saldo: TQRLabel;
    QRLabel17: TQRLabel;
    qrl_santerior: TQRLabel;
    titulocreditos: TQRBand;
    QRDBText40: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape1: TQRShape;
    rodapecreditos: TQRBand;
    QRShape2: TQRShape;
    titulodebitos: TQRBand;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRShape3: TQRShape;
    rodapedebitos: TQRBand;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape7: TQRShape;
    qrl_subtotcred: TQRLabel;
    qrl_subtotdeb: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRLabel23: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel24: TQRLabel;
    QRShape16: TQRShape;
    QRShape12: TQRShape;
    QRShape17: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    qrl_empresa: TQRLabel;
    subdebitos: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRShape13: TQRShape;
    QRDBText9: TQRDBText;
    subcreditos: TQRSubDetail;
    procedure detMovimentBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure b_resumoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure rodapecreditosBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure rodapedebitosBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure titulocreditosAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure titulodebitosAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private

  public

  end;

var
  qr_RelMoviCCImport: Tqr_RelMoviCCImport;
  vSubCred, vSubDeb: Double;
  vCred, vDeb, vSaldo: Double;

implementation

uses u_relmovicc;

{$R *.DFM}

procedure Tqr_RelMoviCCImport.detMovimentBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     If f_relmovicc.Q_extratoValor.AsFloat >= 0 Then Begin
        qrdbtext5.Font.Color := clWindowText;
        vCred := vCred + f_relmovicc.Q_extratoValor.AsFloat;
     End
     Else Begin
        qrdbtext5.Font.Color := clMaroon;
        vDeb := vDeb + f_relmovicc.Q_extratoValor.AsFloat;
     End;

     vSaldo := vSaldo + f_relmovicc.Q_extratoValor.AsFloat;
end;

procedure Tqr_RelMoviCCImport.b_resumoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     qrl_creditos.Caption := FormatFloat('###,###,##0.00', vCred);
     qrl_debitos.Caption := FormatFloat('###,###,##0.00', vDeb);
     qrl_saldo.Caption := FormatFloat('###,###,##0.00', vSaldo);
     vCred := 0;
     vDeb := 0;
     vSaldo := 0;
end;

procedure Tqr_RelMoviCCImport.rodapecreditosBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     qrl_subtotcred.Caption := FormatFloat('###,###,##0.00', vSubCred);
     
end;

procedure Tqr_RelMoviCCImport.rodapedebitosBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     qrl_subtotdeb.Caption := FormatFloat('###,###,##0.00', vSubDeb);
     
end;

procedure Tqr_RelMoviCCImport.titulocreditosAfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  vSubCred := 0;
end;

procedure Tqr_RelMoviCCImport.titulodebitosAfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  vSubDeb := 0;
end;

end.
