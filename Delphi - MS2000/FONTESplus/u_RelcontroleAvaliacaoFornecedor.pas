unit u_RelcontroleAvaliacaoFornecedor;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport,
  jpeg;

type
  TQR_Controle_Avaliacao_Fornecedor = class(TQuickRep)
    QRSubDetail1: TQRSubDetail;
    QRShape2: TQRShape;
    QRShape8: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape33: TQRShape;
    QRImage1: TQRImage;
    QRLabel5: TQRLabel;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape1: TQRShape;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape11: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
    procedure QuickRepAfterPreview(Sender: TObject);
////    procedure QuickRepPreview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QR_Controle_Avaliacao_Fornecedor: TQR_Controle_Avaliacao_Fornecedor;

implementation

uses u_mscomex, u_controleRequisicaoCompras;
{$R *.DFM}


procedure TQR_Controle_Avaliacao_Fornecedor.QuickRepStartPage(Sender: TCustomQuickRep);
begin
   { lblRequisitante.Caption := F_controleRequisicaoCompras.edtRequisitante.Text;
    lblData.Caption := F_controleRequisicaoCompras.edtData.text;   }

end;

procedure TQR_Controle_Avaliacao_Fornecedor.QuickRepAfterPreview(Sender: TObject);
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
