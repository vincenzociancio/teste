unit U_relcondocTR;

interface

uses
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TQR_DocumentosTR = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    QRImage1: TQRImage;
    qrlSistema: TQRLabel;
    qrlEmpresa: TQRLabel;
    qrlTitulo: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText5: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    chilbCli: TQRChildBand;
    QRLabel14: TQRLabel;
    QRLabel20: TQRLabel;
    qrlCli: TQRLabel;
    qrlCod: TQRLabel;
    chilbTipo: TQRChildBand;
    QRLabel16: TQRLabel;
    qrlTipo: TQRLabel;
    chilbSubTipo: TQRChildBand;
    QRLabel17: TQRLabel;
    qrlSubTipo: TQRLabel;
    chilbStatus: TQRChildBand;
    QRLabel18: TQRLabel;
    qrlStatus: TQRLabel;
    ChildBand1: TQRChildBand;
    QRLabel21: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel7: TQRLabel;
    qrl_vtot: TQRLabel;
    QRLabel8: TQRLabel;
    qrl_totii: TQRLabel;
    qrl_totipi: TQRLabel;
    qrl_tott: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    qrl_totpis: TQRLabel;
    qrl_totcofins: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    childfiadores: TQRChildBand;
    QRLabel12: TQRLabel;
    QRLFIADOR: TQRLabel;
    qrl_fiador: TQRLabel;
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QR_DocumentosTR: TQR_DocumentosTR;

implementation

uses u_mscomex, u_condocs;
{$R *.DFM}


procedure TQR_DocumentosTR.QuickRepStartPage(Sender: TCustomQuickRep);
var qperiodo:string;
begin
     qrlSistema.Caption := v_sistema +' - '+ v_versao;
     qrlEmpresa.Caption := 'MS LOGÍSTICA ADUANEIRA LTDA.';
     qrlTitulo.Caption  := 'Relatório de Controle de Termos de Responsabilidade';

     qperiodo :='';

     if (f_condocs.me_dataini.text<>'  /  /    ') or (f_condocs.me_datafin.text<>'  /  /    ') then begin
        qperiodo := ' - Período Venct.:';
     end;

     if f_condocs.me_dataini.text<>'  /  /    ' then begin
        qperiodo := qperiodo+' a partir de '+f_condocs.me_dataini.text;
     end;

     if f_condocs.me_datafin.text<>'  /  /    ' then begin
        qperiodo := qperiodo+' até '+f_condocs.me_datafin.text;
     end;

     qrlTitulo.Caption  := qrlTitulo.Caption  + qperiodo;

     qrlCod.Caption := f_condocs.dbLcbCliente.KeyValue;
     qrlCli.Caption := filt[1];

     if not f_condocs.cbcon.Checked then begin
        qrlCli.Caption := qrlCli.Caption+' - Contrato: '+filt[5];
     end;

     if not f_condocs.cbloc.Checked then begin
        qrlCli.Caption := qrlCli.Caption+' - Local: '+filt[6];
     end;


     if not f_condocs.cbTipo.Checked then
        qrlTipo.Caption := filt[2]
     else
        chilbTipo.Enabled := False;

     if not f_condocs.cbSubTipo.Checked then
        qrlSubTipo.Caption := filt[3]
     else
        chilbSubTipo.Enabled := False;

     if not f_condocs.cbStatus.Checked then
        qrlStatus.Caption := filt[4]
     else
        chilbStatus.Enabled := False;

     if not f_condocs.cbfiadores.Checked then
        qrlFIADOR.Caption := filt[7]
     else
        chilDFIADORES.Enabled := False;


end;

procedure TQR_DocumentosTR.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
VAR  OK:BOOLEAN;

begin

OK := FALSE;
qrl_fiador.caption :='';

if trim(f_condocs.t_processosnome_fiador_GAR.asstring)<>'' then
   qrl_fiador.caption := f_condocs.t_processosnome_fiador_GAR.asstring;

if trim(f_condocs.t_processosNome_seguradora_GAR.asstring)<>'' then
   qrl_fiador.caption := f_condocs.t_processosNome_seguradora_GAR.asstring;


////VERIFICAR SE É O FIADOR
     if not f_condocs.cbfiadores.Checked then BEGIN
        IF TRIM(qrlFIADOR.Caption)= trim(f_condocs.t_processosnome_fiador_GAR.asstring) then ok :=true;
     END
     else
        OK := TRUE;

IF OK THEN BEGIN
qrl_vtot.caption      := floattostrf((f_condocs.t_processostr_val_ii.asfloat+f_condocs.t_processostr_val_ipi.asfloat+f_condocs.t_processostr_val_pis.asfloat+f_condocs.t_processostr_val_cofins.asfloat),fffixed,15,2);
qrl_totii.caption     := floattostrf(strtofloat(qrl_totii.caption)+f_condocs.t_processostr_val_ii.asfloat,fffixed,15,2);
qrl_totipi.caption    := floattostrf(strtofloat(qrl_totipi.caption)+f_condocs.t_processostr_val_ipi.asfloat,fffixed,15,2);
qrl_totpis.caption    := floattostrf(strtofloat(qrl_totpis.caption)+f_condocs.t_processostr_val_pis.asfloat,fffixed,15,2);
qrl_totcofins.caption := floattostrf(strtofloat(qrl_totcofins.caption)+f_condocs.t_processostr_val_cofins.asfloat,fffixed,15,2);
END;

QRSubDetail1.Enabled  := true;
QRSubDetail1.visible := ok;
//QRSubDetail1.TransparentBand := ok;


end;

procedure TQR_DocumentosTR.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

qrl_tott.caption := floattostrf(strtofloat(qrl_totii.caption)+strtofloat(qrl_totipi.caption)+strtofloat(qrl_totpis.caption)+strtofloat(qrl_totcofins.caption),fffixed,15,2);
end;

procedure TQR_DocumentosTR.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
qrl_totii.caption := '0';
qrl_totipi.caption := '0';
qrl_totpis.caption := '0';
qrl_totcofins.caption := '0';
qrl_tott.caption := '0';

end;

end.
