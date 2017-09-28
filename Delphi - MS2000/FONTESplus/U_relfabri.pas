unit U_relfabri;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TQR_fabricantes = class(TQuickRep)
    DetailBand1: TQRBand;
    DataSource1: TDataSource;
    dsFabric: TDataSource;
    q_Fabric: TQuery;
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
    q_FabricEmpresa: TStringField;
    q_FabricFilial: TStringField;
    q_FabricCodigo: TStringField;
    q_FabricRazao_Social: TStringField;
    q_FabricDESCRICAO: TStringField;
    q_FabricCGC_CPF: TStringField;
    q_FabricEndereco: TStringField;
    q_FabricNumero: TStringField;
    q_FabricComplemento: TStringField;
    q_FabricBairro: TStringField;
    q_FabricCidade: TStringField;
    q_FabricCEP: TStringField;
    q_FabricUF: TStringField;
    q_FabricInscricao_Estadual: TStringField;
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
    procedure QuickRepAfterPreview(Sender: TObject);
  private

  public

  end;

var
  QR_fabricantes: TQR_fabricantes;

implementation

uses u_mscomex;
{$R *.DFM}


procedure TQR_fabricantes.QuickRepStartPage(Sender: TCustomQuickRep);
begin
     qrlSistema.Caption := v_sistema +' - '+ v_versao;
     qrlEmpresa.Caption := 'MS LOGÍSTICA ADUANEIRA LTDA.';
     qrlTitulo.Caption  := 'Relatório de Fabricantes / Produtores';
end;



procedure TQR_fabricantes.QuickRepAfterPreview(Sender: TObject);
begin
     q_Fabric.Close;
end;

end.
