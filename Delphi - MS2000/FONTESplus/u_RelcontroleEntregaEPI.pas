unit u_RelcontroleEntregaEPI;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport,
  jpeg;

type
  TQR_Controle_EntregaEPI = class(TQuickRep)
    QRSubDetail1: TQRSubDetail;
    QRShape2: TQRShape;
    QRShape8: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape33: TQRShape;
    lblNome: TQRLabel;
    QRImage1: TQRImage;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape1: TQRShape;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel3: TQRLabel;
    QRShape13: TQRShape;
    QRLabel4: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRLabel7: TQRLabel;
    QRShape17: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel14: TQRLabel;
    QRMemo1: TQRMemo;
    QRShape18: TQRShape;
    lblArea: TQRLabel;
    lblMatricula: TQRLabel;
    lblCargo: TQRLabel;
    QRShape19: TQRShape;
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
    procedure QuickRepAfterPreview(Sender: TObject);
////    procedure QuickRepPreview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QR_Controle_EntregaEPI: TQR_Controle_EntregaEPI;

implementation

uses u_mscomex, u_controleEntregaEPI;
{$R *.DFM}


procedure TQR_Controle_EntregaEPI.QuickRepStartPage(Sender: TCustomQuickRep);
begin
    lblNome.Caption := F_controleEntregaEPI.edtNome.Text;
    lblArea.Caption := F_controleEntregaEPI.edtArea.text;
    lblMatricula.Caption := F_controleEntregaEPI.edtMatricula.text;
    lblCargo.Caption := F_controleEntregaEPI.edtCargo.text;

end;

procedure TQR_Controle_EntregaEPI.QuickRepAfterPreview(Sender: TObject);
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
