unit U_relfollowcomercAguard;

interface

uses
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TQR_FollowComercAguard = class(TQuickRep)
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
    chbAguard: TQRChildBand;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    qrbAguard: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText13: TQRDBText;
    qrlFob: TQRLabel;
    qrlReg: TQRLabel;
    qrlNum: TQRLabel;
    qrlStatus: TQRLabel;
    QRLabel1: TQRLabel;
    qrlTot: TQRLabel;
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
    procedure qrbAguardBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepAfterPreview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QR_FollowComercAguard: TQR_FollowComercAguard;

implementation

uses u_mscomex, u_followcomercial;
{$R *.DFM}


procedure TQR_FollowComercAguard.QuickRepStartPage(Sender: TCustomQuickRep);
var i: Integer;
begin
     qrlSistema.Caption := v_sistema +' - '+ v_versao;
     qrlEmpresa.Caption := 'MS LOGÍSTICA ADUANEIRA LTDA.';
     qrlTitulo.Caption  := 'Relatório de Controle de Follow Up Comercial - Aguardando Desembaraço';

     qrlTot.Caption := f_followcomercial.edtTot.Text;

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

procedure TQR_FollowComercAguard.qrbAguardBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var dtReg: String;
begin
     qrlFob.Caption := '';
     qrlReg.Caption := '';
     qrlNum.Caption := '';
     with f_followcomercial do begin
         q_Follow.Params[0].AsString := q_ControleCodigo.AsString;
         q_Follow.Open;
         q_Follow.Last;
         qrlStatus.Caption := q_FollowDescricao.AsString;
         q_Follow.Close;

         if q_ControleTipoDec.AsString = '12' then begin
            qrlFob.Caption := 'Admissão: '+q_ControleValor_FOB.AsString;
            qrlFob.Caption := qrlFob.Caption +#13#10+'Consumo: '+q_ControleValor_FOBC.AsString;

            if q_ControleDT_REGISTRO_DI.AsString <> '' then begin
               dtReg := Copy(q_ControleDT_REGISTRO_DI.AsString,1,2);
               dtReg := dtReg+'/'+Copy(q_ControleDT_REGISTRO_DI.AsString,3,2);
               dtReg := dtReg+'/'+Copy(q_ControleDT_REGISTRO_DI.AsString,5,4);
            end
            else dtReg := '';
            qrlReg.Caption := 'Admissão: '+dtReg;

            if q_ControleDT_REGISTRO_DIC.AsString <> '' then begin
               dtReg := Copy(q_ControleDT_REGISTRO_DIC.AsString,1,2);
               dtReg := dtReg+'/'+Copy(q_ControleDT_REGISTRO_DIC.AsString,3,2);
               dtReg := dtReg+'/'+Copy(q_ControleDT_REGISTRO_DIC.AsString,5,4);
            end
            else dtReg := '';
            qrlReg.Caption := qrlReg.Caption +#13#10+'Consumo: '+dtReg;

            qrlNum.Caption := 'Admissão: '+q_ControleNR_DECLARACAO_IMP.AsString;
            qrlNum.Caption := qrlNum.Caption +#13#10+'Consumo: '+q_ControleNR_DECLARACAO_IMPC.AsString;
         end
         else begin
            if q_ControleDT_REGISTRO_DI.AsString <> '' then begin
               dtReg := Copy(q_ControleDT_REGISTRO_DI.AsString,1,2);
               dtReg := dtReg+'/'+Copy(q_ControleDT_REGISTRO_DI.AsString,3,2);
               dtReg := dtReg+'/'+Copy(q_ControleDT_REGISTRO_DI.AsString,5,4);
            end
            else dtReg := '';

            qrlFob.Caption := q_ControleValor_FOB.AsString;
            qrlReg.Caption := dtReg;
            qrlNum.Caption := q_ControleNR_DECLARACAO_IMP.AsString;
         end;
     end;
end;
procedure TQR_FollowComercAguard.QuickRepAfterPreview(Sender: TObject);
begin
     Free;
     QR_FollowComercAguard := nil;
end;

end.
