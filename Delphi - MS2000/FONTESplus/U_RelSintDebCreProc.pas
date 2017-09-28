unit U_RelSintDebCreProc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, QuickRpt, Qrctrls, ExtCtrls, jpeg;

type
  Tf_RelSintDebCredProc = class(TForm)
    qrDebCredProc: TQuickRep;
    titulo: TQRBand;
    qrl_sistema: TQRLabel;
    qrl_versao: TQRLabel;
    qrl_titulo: TQRLabel;
    QRi_logo: TQRImage;
    qrsdProc: TQRSubDetail;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    qrdbtCod: TQRDBText;
    qrdbtCli: TQRDBText;
    qrdbtStatus: TQRDBText;
    qrlSaldo: TQRLabel;
    qrbConsulta: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    qrlPerDe: TQRLabel;
    qrlPerAte: TQRLabel;
    QRBand2: TQRBand;
    qrlTot: TQRLabel;
    GroupHeaderBand1: TQRBand;
    GroupFooterBand1: TQRBand;
    qrlSubTot: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRLabel20: TQRLabel;
    qrl_imprime: TQRLabel;
    QRLabel1: TQRLabel;
    qrlSubTotcre: TQRLabel;
    qrlSubTotdeb: TQRLabel;
    QRLabel2: TQRLabel;
    qrlTotcre: TQRLabel;
    qrlTotdeb: TQRLabel;
    qrl_credito: TQRLabel;
    qrl_debito: TQRLabel;
    QRLabel3: TQRLabel;
    qrlperde2: TQRLabel;
    QRLabel10: TQRLabel;
    qrlperat2: TQRLabel;
    QRLabel12: TQRLabel;
    qrlperde3: TQRLabel;
    QRLabel14: TQRLabel;
    qrlperate3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape1: TQRShape;
    QRLabel15: TQRLabel;
    qrl_irrf: TQRLabel;
    QRShape2: TQRShape;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    qrlSubTotIrrf: TQRLabel;
    qrlTotIrrf: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    qrl_ccp: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    qrlsubtotccp: TQRLabel;
    qrltotccp: TQRLabel;
    procedure qrsdProcBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrbConsultaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure GroupFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure tituloBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_RelSintDebCredProc: Tf_RelSintDebCredProc;

implementation

uses U_MSCOMEX, U_DebCredProc;
var
   SubTot,Tot: Real;
   SubTotcre,Totcre: Real;
   SubTotirrf,Totirrf: Real;
   SubTotccp,Totccp: Real;
   SubTotdeb,Totdeb: Real;

{$R *.DFM}

procedure Tf_RelSintDebCredProc.qrsdProcBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var
   deb, cred, irrf, ccp, sal: Real;

begin
     With F_DebCredProc Do Begin
         QCred.Close;
         QCred.Params[0].AsDateTime := dtpPerDe.Date;
         QCred.Params[1].AsDateTime := dtpPerAte2.Date;
         QCred.Params[2].AsString := QProcCod.AsString;
         QCred.Params[3].AsString := qimportEmpresa.AsString;
         QCred.Params[4].AsString := qimportFilial.AsString;
         QCred.Open;

         cred := 0;
         irrf := 0;
         ccp  := 0;
         While Not QCred.Eof Do Begin
              If QCredCredito.AsString = 'IRRF' Then irrf := irrf + QCredValor.AsFloat
              else begin
                   If QCredCredito.AsString = 'CCP' Then ccp := ccp + QCredValor.AsFloat
                   else cred := cred + QCredValor.AsFloat;
              end;

              QCred.Next;
         End;

         deb := 0;
         If QDeb.Locate('Processo', QProcCod.AsString, [loCaseInsensitive]) Then
            deb := QDebDebito.AsFloat;

         sal := cred + irrf + ccp - deb;
         sal := StrToFloat(FormatFloat('0.00', sal));

         If cb_saldos.Checked Then PrintBand := (sal <> 0);
     End;

     If sal < 0 Then
        qrlSaldo.Font.Color := clMaroon
     Else
        qrlSaldo.Font.Color := clNavy;

     qrl_credito.Caption := FormatFloat('###,###,##0.00', cred);
     qrl_irrf.Caption := FormatFloat('###,###,##0.00', irrf);
     qrl_ccp.Caption := FormatFloat('###,###,##0.00', ccp);     
     qrl_debito.Caption := FormatFloat('###,###,##0.00', deb);
     qrlSaldo.Caption := FormatFloat('###,###,##0.00;(###,###,##0.00)', sal);

     If PrintBand Then Begin
        SubTotcre := SubTotcre + cred;
        SubTotirrf := SubTotirrf + irrf;
        SubTotccp := SubTotccp + ccp;        
        SubTotdeb := SubTotdeb + deb;
        SubTot := SubTot + sal;
     End;

end;

procedure Tf_RelSintDebCredProc.qrbConsultaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     With F_DebCredProc Do Begin
         qProc.Close;
         qProc.Params[0].AsDateTime := dtpPerDe.Date;
         qProc.Params[1].AsDateTime := dtpPerAte2.Date;
         qProc.Params[2].AsString   := QImportCodigo.AsString;
         qProc.Params[3].AsString   := '%';
         if not cb_status.checked then qProc.Params[3].AsString   := Q_TIPOSPROCODIGO.AsString;

         qProc.Open;

         qrl_imprime.Caption := '';
////  if F_DebCredProc.cb_creditos.checked then qrl_imprime.caption := qrl_imprime.caption+'- Créditos zerados ';
////  if F_DebCredProc.cb_debitos.checked then qrl_imprime.caption := qrl_imprime.caption+'- Débitos zerados ';
         If cb_saldos.Checked Then
            qrl_imprime.Caption := 'Imprime -  Somente Saldos em aberto ';
         if cb_status.checked Then qrl_imprime.Caption := qrl_imprime.Caption+' - Todos os Tipos de Processos'
         else qrl_imprime.Caption := qrl_imprime.Caption+' - Tipo de Processo: '+q_tiposprodescricao.asstring;

         If dtpPerDe.Checked Then
            qrlPerDe.Caption := DateToStr(dtpPerDe.Date)
         Else
            qrlPerDe.Caption := '';

         If dtpPerAte.Checked Then
            qrlPerAte.Caption := DateToStr(dtpPerAte.Date)
         Else
            qrlPerAte.Caption := '';

         qrlPerDe3.Caption := DateToStr(dtpPerDe.Date);
         qrlPerAte3.Caption := DateToStr(dtpPerAte2.Date);
     End;
end;

procedure Tf_RelSintDebCredProc.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     qrlTotcre.Caption := FormatFloat('###,###,##0.00', Totcre);
     qrlTotirrf.Caption := FormatFloat('###,###,##0.00', Totirrf);
     qrlTotccp.Caption := FormatFloat('###,###,##0.00', Totccp);     
     qrlTotdeb.Caption := FormatFloat('###,###,##0.00', Totdeb);
     qrlTot.Caption := FormatFloat('###,###,##0.00;(###,###,##0.00)', Tot);

     Totcre := 0;
     Totirrf := 0;
     Totccp := 0;     
     Totdeb := 0;
     Tot := 0;
end;

procedure Tf_RelSintDebCredProc.GroupFooterBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
{  if ((F_DebCredProc.QProc.RecordCount = 0) or
      (F_DebCredProc.qimport.Filtered)) then
///     PrintBand := False
  else begin
///     PrintBand := True;
  end;}
     qrlSubTotcre.Caption := FormatFloat('###,###,##0.00', SubTotCre);
     qrlSubTotirrf.Caption := FormatFloat('###,###,##0.00', SubTotIrrf);
     qrlSubTotccp.Caption := FormatFloat('###,###,##0.00', SubTotccp);     
     qrlSubTotdeb.Caption := FormatFloat('###,###,##0.00', SubTotDeb);
     qrlSubTot.Caption := FormatFloat('###,###,##0.00;(###,###,##0.00)', SubTot);

     Totcre := Totcre + SubTotcre;
     Totirrf := Totirrf + SubTotirrf;
     Totccp := Totccp + SubTotccp;     
     Totdeb := Totdeb + SubTotdeb;
     Tot := Tot + SubTot;

     SubTotcre := 0;
     SubTotirrf := 0;
     SubTotccp := 0;     
     SubTotdeb := 0;
     SubTot := 0;
end;

procedure Tf_RelSintDebCredProc.tituloBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     qrl_sistema.Caption := v_sistema;
     qrl_versao.Caption := v_versao;
end;

end.
