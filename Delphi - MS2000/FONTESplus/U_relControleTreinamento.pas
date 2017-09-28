unit U_relControleTreinamento;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport,
  jpeg;

type
  TQR_Controle_treinamento = class(TQuickRep)
    QRSubDetail1: TQRSubDetail;
    QRShape1: TQRShape;
    QRShape4: TQRShape;
    QRShape7: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape27: TQRShape;
    lblTreinamento: TQRLabel;
    lblMinistrado: TQRLabel;
    QRImage1: TQRImage;
    QRLabel9: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape6: TQRShape;
    QRShape8: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    lblLocal: TQRLabel;
    lbldata: TQRLabel;
    lblHorario: TQRLabel;
    QRShape28: TQRShape;
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
    procedure QuickRepAfterPreview(Sender: TObject);
////    procedure QuickRepPreview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QR_Controle_treinamento: TQR_Controle_treinamento;

implementation

uses u_mscomex, u_controleRegistroTreinamento;
{$R *.DFM}


procedure TQR_Controle_treinamento.QuickRepStartPage(Sender: TCustomQuickRep);
begin
     lblTreinamento.Caption := F_controleRegistroTreinamento.edtTreinamento.Text;
     lblMinistrado.Caption :=  F_controleRegistroTreinamento.edtMinistrado.text;
     lblLocal.Caption :=  F_controleRegistroTreinamento.edtLocal.text;
     lbldata.Caption := F_controleRegistroTreinamento.edtData.text;
     lblHorario.Caption := F_controleRegistroTreinamento.edtHorario.text;
end;

procedure TQR_Controle_treinamento.QuickRepAfterPreview(Sender: TObject);
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
