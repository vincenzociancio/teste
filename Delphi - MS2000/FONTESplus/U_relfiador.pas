unit U_relfiador;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TQR_fiadores = class(TQuickRep)
    DetailBand1: TQRBand;
    q_Fiador: TQuery;
    dsFiador: TDataSource;
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
    q_FiadorEmpresa: TStringField;
    q_FiadorFilial: TStringField;
    q_FiadorCodigo: TStringField;
    q_FiadorRazao_Social: TStringField;
    q_FiadorDESCRICAO: TStringField;
    q_FiadorCGC_CPF: TStringField;
    q_FiadorEndereco: TStringField;
    q_FiadorNumero: TStringField;
    q_FiadorComplemento: TStringField;
    q_FiadorBairro: TStringField;
    q_FiadorCidade: TStringField;
    q_FiadorCEP: TStringField;
    q_FiadorUF: TStringField;
    q_FiadorInscricao_Estadual: TStringField;
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
    procedure QuickRepAfterPreview(Sender: TObject);
  private

  public

  end;

var
  QR_fiadores: TQR_fiadores;

implementation

uses u_mscomex;
{$R *.DFM}


procedure TQR_fiadores.QuickRepStartPage(Sender: TCustomQuickRep);
begin
     qrlSistema.Caption := v_sistema +' - '+ v_versao;
     qrlEmpresa.Caption := 'MS LOGÍSTICA ADUANEIRA LTDA.';
     qrlTitulo.Caption  := 'Relatório de Fiadores';
end;

procedure TQR_fiadores.QuickRepAfterPreview(Sender: TObject);
begin
     q_Fiador.Close;
end;

end.
