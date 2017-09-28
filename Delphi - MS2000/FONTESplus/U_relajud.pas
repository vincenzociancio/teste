unit U_relajud;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TQR_Ajudantes = class(TQuickRep)
    DetailBand1: TQRBand;
    dsAjud: TDataSource;
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
    q_Ajud: TQuery;
    q_AjudEmpresa: TStringField;
    q_AjudFilial: TStringField;
    q_AjudCodigo: TStringField;
    q_AjudRazoSocial: TStringField;
    q_AjudDESCRICAO: TStringField;
    q_AjudCGCCPF: TStringField;
    q_AjudEndereo: TStringField;
    q_AjudNmero: TStringField;
    q_AjudComplemento: TStringField;
    q_AjudBairro: TStringField;
    q_AjudCidade: TStringField;
    q_AjudCEP: TStringField;
    q_AjudUF: TStringField;
    q_AjudInscrioEstadual: TStringField;
    QRi_logo: TQRImage;
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
    procedure QuickRepAfterPreview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QR_Ajudantes: TQR_Ajudantes;

implementation

uses u_mscomex;
{$R *.DFM}


procedure TQR_Ajudantes.QuickRepStartPage(Sender: TCustomQuickRep);
begin
     qrlSistema.Caption := v_sistema +' - '+ v_versao;
     qrlEmpresa.Caption := 'MS LOGÍSTICA ADUANEIRA E TRANSPORTES INTEGRADOS LTDA.';
     qrlTitulo.Caption  := 'Relatório de Ajudantes de Despachante';
end;

procedure TQR_Ajudantes.QuickRepAfterPreview(Sender: TObject);
begin
     q_Ajud.Close;
end;

end.
