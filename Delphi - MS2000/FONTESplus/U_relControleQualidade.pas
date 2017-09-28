unit U_relControleQualidade;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport,
  jpeg;

type
  TQR_Controle_Qualidade = class(TQuickRep)
    QRSubDetail1: TQRSubDetail;
    QRShape1: TQRShape;
    QRShape4: TQRShape;
    QRShape7: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape9: TQRShape;
    lblResponsavel: TQRLabel;
    lblSetor: TQRLabel;
    QRImage1: TQRImage;
    QRLabel9: TQRLabel;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    lblVagas: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel5: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape8: TQRShape;
    QRShape10: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    lblData: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    lblCargo: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
    procedure QuickRepAfterPreview(Sender: TObject);
////    procedure QuickRepPreview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QR_Controle_Qualidade: TQR_Controle_Qualidade;

implementation

uses u_mscomex, u_controleRegistroQualidade;
{$R *.DFM}


procedure TQR_Controle_Qualidade.QuickRepStartPage(Sender: TCustomQuickRep);
begin
     lblResponsavel.Caption := F_controleRegistroQualidade.edtResponsavel.Text;
     lblSetor.Caption :=  F_controleRegistroQualidade.edtSetor.text;
     lblVagas.Caption :=  F_controleRegistroQualidade.edtVagas.text;
     lbldata.Caption := F_controleRegistroQualidade.edtData.text;
     lblCargo.Caption := F_controleRegistroQualidade.edtCargo.text;
end;

procedure TQR_Controle_Qualidade.QuickRepAfterPreview(Sender: TObject);
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
