unit U_relControleModem;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport,
  jpeg;

type
  TQR_Controle_modem = class(TQuickRep)
    QRSubDetail1: TQRSubDetail;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape24: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    qrlUsuario: TQRLabel;
    qrlAparelho: TQRLabel;
    qrlSerie: TQRLabel;
    qrlNumero: TQRLabel;
    qrltitulo: TQRLabel;
    QRImage1: TQRImage;
    QRShape71: TQRShape;
    QRShape3: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRMemo1: TQRMemo;
    QRLabel18: TQRLabel;
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
    procedure QuickRepAfterPreview(Sender: TObject);
////    procedure QuickRepPreview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QR_Controle_modem: TQR_Controle_modem;

implementation

uses u_mscomex, u_controlemodem;
{$R *.DFM}


procedure TQR_Controle_modem.QuickRepStartPage(Sender: TCustomQuickRep);
begin
     qrlUsuario.Caption := F_controleModem.edtUsuario.Text;
     qrlAparelho.Caption := F_controleModem.edtAparelho.text;
     qrlSerie.Caption := F_controleModem.edtSerie.text;
     qrlNumero.Caption := F_controleModem.edtNumero.text;

     qrlTitulo.Caption  := 'CONTROLE DE MODEM';
end;

procedure TQR_Controle_modem.QuickRepAfterPreview(Sender: TObject);
begin
    // q_Import.Close;
end;
{
procedure TQR_Importadores.QuickRepPreview(Sender: TObject);
var
  AExportFilter : TQRHTMLDocumentFilter;
begin
   AExportFilter := TQRHTMLDocumentFilter.Create('kralhu.HTM');
   try
      QR_Importadores.ExportToFilter(AExportFilter)
   finally
      AExportFilter.Free;
   end;
end;
}
end.
