unit U_relControleProcedimentos;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport,
  jpeg;

type
  TQR_Controle_Procedimentos = class(TQuickRep)
    QRSubDetail1: TQRSubDetail;
    QRImage1: TQRImage;
    QRMemo1: TQRMemo;
    QRLabel1: TQRLabel;
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
    procedure QuickRepAfterPreview(Sender: TObject);
////    procedure QuickRepPreview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QR_Controle_Procedimentos: TQR_Controle_Procedimentos;

implementation

uses u_mscomex, u_controleRegistroQualidade;
{$R *.DFM}


procedure TQR_Controle_Procedimentos.QuickRepStartPage(Sender: TCustomQuickRep);
begin
  {   lblResponsavel.Caption := F_controleRegistroQualidade.edtResponsavel.Text;
     lblSetor.Caption :=  F_controleRegistroQualidade.edtSetor.text;
     lblVagas.Caption :=  F_controleRegistroQualidade.edtVagas.text;
     lbldata.Caption := F_controleRegistroQualidade.edtData.text;
     lblCargo.Caption := F_controleRegistroQualidade.edtCargo.text;    }
end;

procedure TQR_Controle_Procedimentos.QuickRepAfterPreview(Sender: TObject);
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
