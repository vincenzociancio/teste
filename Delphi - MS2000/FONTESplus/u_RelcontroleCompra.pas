unit u_RelcontroleCompra;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport,
  jpeg;

type
  TQR_Controle_compra = class(TQuickRep)
    QRSubDetail1: TQRSubDetail;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape24: TQRShape;
    QRShape33: TQRShape;
    QRShape35: TQRShape;
    lblFornecedor: TQRLabel;
    lblEndereco: TQRLabel;
    lblVendedor: TQRLabel;
    lblData: TQRLabel;
    QRImage1: TQRImage;
    QRShape71: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape4: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
    procedure QuickRepAfterPreview(Sender: TObject);
////    procedure QuickRepPreview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QR_Controle_compra: TQR_Controle_compra;

implementation

uses u_mscomex, u_controleCompra;
{$R *.DFM}


procedure TQR_Controle_compra.QuickRepStartPage(Sender: TCustomQuickRep);
begin
    lblFornecedor.Caption := F_controleCompra.edtFornecedor.Text;
    lblEndereco.Caption := F_controleCompra.edtEndereco.text;
    lblVendedor.Caption := F_controleCompra.edtVendedor.text;
    lblData.Caption := F_controleCompra.edtData.text;


end;

procedure TQR_Controle_compra.QuickRepAfterPreview(Sender: TObject);
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
