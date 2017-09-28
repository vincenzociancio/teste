unit U_relfollowcomercDesemb;

interface

uses
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQR_FollowComercDesemb = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    QRImage1: TQRImage;
    qrlSistema: TQRLabel;
    qrlEmpresa: TQRLabel;
    qrlTitulo: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    chbCli: TQRChildBand;
    QRLabel14: TQRLabel;
    qrlCli: TQRLabel;
    qrlCod: TQRLabel;
    chbPeriodo: TQRChildBand;
    QRLabel16: TQRLabel;
    qrlPerDe: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    qrlPerAte: TQRLabel;
    chbDesemb: TQRChildBand;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel36: TQRLabel;
    qrbDesemb: TQRBand;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    qrlFobD: TQRLabel;
    qrlRegD: TQRLabel;
    qrlNumD: TQRLabel;
    QRDBText23: TQRDBText;
    qrlCleD: TQRLabel;
    qrlDayD: TQRLabel;
    QRLabel4: TQRLabel;
    qrlTot: TQRLabel;
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
    procedure qrbDesembBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepAfterPreview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QR_FollowComercDesemb: TQR_FollowComercDesemb;

implementation

uses u_mscomex, u_followcomercial;
{$R *.DFM}


procedure TQR_FollowComercDesemb.QuickRepStartPage(Sender: TCustomQuickRep);
var i: Integer;
begin
     qrlSistema.Caption := v_sistema +' - '+ v_versao;
     qrlEmpresa.Caption := 'MS LOGÍSTICA ADUANEIRA LTDA.';
     qrlTitulo.Caption  := 'Relatório de Controle de Follow Up Comercial - Desembaraçados por Período';
     qrlTot.Caption := f_followcomercial.edtTot.Text;

     if f_followcomercial.mePerDe.Text <> '  /  /    ' then
        qrlPerDe.Caption := f_followcomercial.mePerDe.Text
     else
        qrlPerDe.Caption := '';

     if f_followcomercial.mePerAte.Text <> '  /  /    ' then
        qrlPerAte.Caption := f_followcomercial.mePerAte.Text
     else
        qrlPerAte.Caption := '';

     if not f_followcomercial.cbCli.Checked then begin
        chbCli.Enabled := True;
        qrlCod.Caption := filt[0,1] + ' - ';
        qrlCli.Caption := filt[0,2];
        for i:=1 to High(filt) do begin
            qrlCod.Caption := qrlCod.Caption + #13#10 + filt[i,1] + ' - ';
            qrlCli.Caption := qrlCli.Caption + #13#10 + filt[i,2];
        end
     end
     else
        chbCli.Enabled := False;

     if f_followcomercial.cb_tipopro.Checked then
        qrlCli.Caption := qrlCli.Caption+ ' - Tipo de Processos = Importações '
     else
        qrlCli.Caption := qrlCli.Caption+ ' - Todos os Tipos de Processos ';

end;

procedure TQR_FollowComercDesemb.qrbDesembBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var dtReg: String;
begin
     qrlFobD.Caption := '';
     qrlRegD.Caption := '';
     qrlNumD.Caption := '';
     qrlCleD.Caption := '';
     qrlDayD.Caption := '';
     with f_followcomercial do
         if q_ControleTipoDec.AsString = '12' then begin
            qrlFobD.Caption := 'Admissão: '+q_ControleValor_FOB.AsString;
            qrlFobD.Caption := qrlFobD.Caption +#13#10+'Consumo: '+q_ControleValor_FOBC.AsString;

            if q_ControleDT_REGISTRO_DI.AsString <> '' then begin
               dtReg := Copy(q_ControleDT_REGISTRO_DI.AsString,1,2);
               dtReg := dtReg+'/'+Copy(q_ControleDT_REGISTRO_DI.AsString,3,2);
               dtReg := dtReg+'/'+Copy(q_ControleDT_REGISTRO_DI.AsString,5,4);
            end
            else dtReg := '';
            qrlRegD.Caption := 'Admissão: '+dtReg;

            if q_ControleDT_REGISTRO_DIC.AsString <> '' then begin
               dtReg := Copy(q_ControleDT_REGISTRO_DIC.AsString,1,2);
               dtReg := dtReg+'/'+Copy(q_ControleDT_REGISTRO_DIC.AsString,3,2);
               dtReg := dtReg+'/'+Copy(q_ControleDT_REGISTRO_DIC.AsString,5,4);
            end
            else dtReg := '';
            qrlRegD.Caption := qrlRegD.Caption +#13#10+'Consumo: '+dtReg;

            qrlNumD.Caption := 'Admissão: '+q_ControleNR_DECLARACAO_IMP.AsString;
            qrlNumD.Caption := qrlNumD.Caption +#13#10+'Consumo: '+q_ControleNR_DECLARACAO_IMPC.AsString;

            qrlCleD.Caption := 'Admissão: '+q_ControleDT_DESEMBARACO.AsString;
            qrlCleD.Caption := qrlCleD.Caption +#13#10+'Consumo: '+q_ControleDT_DESEMBARACOC.AsString;

            qrlDayD.Caption := 'Admissão: '+q_ControleNumDias.AsString;
            qrlDayD.Caption := qrlDayD.Caption +#13#10+'Consumo: '+q_ControleNumDiasC.AsString;
         end
         else begin
            if q_ControleDT_REGISTRO_DI.AsString <> '' then begin
               dtReg := Copy(q_ControleDT_REGISTRO_DI.AsString,1,2);
               dtReg := dtReg+'/'+Copy(q_ControleDT_REGISTRO_DI.AsString,3,2);
               dtReg := dtReg+'/'+Copy(q_ControleDT_REGISTRO_DI.AsString,5,4);
            end
            else dtReg := '';

            qrlFobD.Caption := q_ControleValor_FOB.AsString;
            qrlRegD.Caption := dtReg;
            qrlNumD.Caption := q_ControleNR_DECLARACAO_IMP.AsString;
            qrlCleD.Caption := q_ControleDT_DESEMBARACO.AsString;
            qrlDayD.Caption := q_ControleNumDias.AsString;
         end;
end;

procedure TQR_FollowComercDesemb.QuickRepAfterPreview(Sender: TObject);
begin
     Free;
     QR_FollowComercDesemb := nil;
end;

end.
