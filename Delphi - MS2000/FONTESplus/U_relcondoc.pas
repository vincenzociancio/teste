unit U_relcondoc;

interface

uses
  Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TQR_Documentos = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    QRImage1: TQRImage;
    qrlSistema: TQRLabel;
    qrlEmpresa: TQRLabel;
    qrlTitulo: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
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
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QR_Documentos: TQR_Documentos;

implementation

uses u_mscomex, u_condocs;
{$R *.DFM}


procedure TQR_Documentos.QuickRepStartPage(Sender: TCustomQuickRep);
begin
     qrlSistema.Caption := v_sistema +' - '+ v_versao;
     qrlEmpresa.Caption := 'MS LOGÍSTICA ADUANEIRA E TRANSPORTES INTEGRADOS LTDA.';
     qrlTitulo.Caption  := 'Relatório de Controle de Validade de Documentos';

     qrlCod.Caption := f_condocs.dbLcbCliente.KeyValue;
     qrlCli.Caption := filt[1];

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
end;

end.
