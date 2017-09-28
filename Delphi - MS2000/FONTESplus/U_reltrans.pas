unit U_reltrans;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TQR_transportadores = class(TQuickRep)
    dsTransp: TDataSource;
    DetailBand1: TQRBand;
    q_Transp: TQuery;
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
    QRBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRi_logo: TQRImage;
    q_TranspEmpresa: TStringField;
    q_TranspFilial: TStringField;
    q_TranspCodigo: TStringField;
    q_TranspRazao_Social: TStringField;
    q_TranspDESCRICAO: TStringField;
    q_TranspCGC_CPF: TStringField;
    q_TranspEndereco: TStringField;
    q_TranspNumero: TStringField;
    q_TranspComplemento: TStringField;
    q_TranspBairro: TStringField;
    q_TranspCidade: TStringField;
    q_TranspCEP: TStringField;
    q_TranspUF: TStringField;
    q_TranspInscricao_Estadual: TStringField;
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
    procedure QuickRepAfterPreview(Sender: TObject);
  private

  public

  end;

var
  QR_transportadores: TQR_transportadores;

implementation

uses u_mscomex;
{$R *.DFM}


procedure TQR_transportadores.QuickRepStartPage(Sender: TCustomQuickRep);
begin
     qrlSistema.Caption := v_sistema +' - '+ v_versao;
     qrlEmpresa.Caption := 'MS LOGÍSTICA ADUANEIRA LTDA.';
     qrlTitulo.Caption  := 'Relatório de Transportadores';
end;



procedure TQR_transportadores.QuickRepAfterPreview(Sender: TObject);
begin
     q_Transp.Close;
end;

end.
