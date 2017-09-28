unit U_relexpor;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TQR_exportadores = class(TQuickRep)
    DetailBand1: TQRBand;
    q_Export: TQuery;
    dsExport: TDataSource;
    QRBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSubDetail1: TQRSubDetail;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    PageHeaderBand1: TQRBand;
    qrlSistema: TQRLabel;
    qrlEmpresa: TQRLabel;
    qrlTitulo: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape1: TQRShape;
    QRi_logo: TQRImage;
    q_ExportEmpresa: TStringField;
    q_ExportFilial: TStringField;
    q_ExportCodigo: TStringField;
    q_ExportRazao_Social: TStringField;
    q_ExportDESCRICAO: TStringField;
    q_ExportCGC_CPF: TStringField;
    q_ExportEndereco: TStringField;
    q_ExportNumero: TStringField;
    q_ExportComplemento: TStringField;
    q_ExportBairro: TStringField;
    q_ExportCidade: TStringField;
    q_ExportCEP: TStringField;
    q_ExportUF: TStringField;
    q_ExportInscricao_Estadual: TStringField;
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
    procedure QuickRepAfterPreview(Sender: TObject);
  private

  public

  end;

var
  QR_exportadores: TQR_exportadores;

implementation

uses u_mscomex;
{$R *.DFM}


procedure TQR_exportadores.QuickRepStartPage(Sender: TCustomQuickRep);
begin
     qrlSistema.Caption := v_sistema +' - '+ v_versao;
     qrlEmpresa.Caption := 'MS LOGÍSTICA ADUANEIRA LTDA.';
     qrlTitulo.Caption  := 'Relatório de Exportadores';
end;

procedure TQR_exportadores.QuickRepAfterPreview(Sender: TObject);
begin
     q_Export.Close;
end;

end.
