unit U_relControleComunicacaoExterna;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport,
  jpeg;

type
  TQR_Controle_Comunicacao_Externa = class(TQuickRep)
    QRSubDetail1: TQRSubDetail;
    QRShape1: TQRShape;
    QRShape7: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRImage1: TQRImage;
    QRShape36: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape13: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape2: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    procedure QuickRepAfterPreview(Sender: TObject);
////    procedure QuickRepPreview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QR_Controle_Comunicacao_Externa: TQR_Controle_Comunicacao_Externa;

implementation

uses u_mscomex, u_controleRegistroQualidade;
{$R *.DFM}


procedure TQR_Controle_Comunicacao_Externa.QuickRepAfterPreview(Sender: TObject);
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
