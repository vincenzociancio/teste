unit U_relfornec;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TQR_Fornecedores = class(TQuickRep)
    DetailBand1: TQRBand;
    dsFornec: TDataSource;
    PageHeaderBand1: TQRBand;
    QRImage1: TQRImage;
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
    q_Fornec: TQuery;
    q_FornecEmpresa: TStringField;
    q_FornecFilial: TStringField;
    q_FornecCodigo: TStringField;
    q_FornecRazao_Social: TStringField;
    q_FornecDESCRICAO: TStringField;
    q_FornecCGC_CPF: TStringField;
    q_FornecEndereco: TStringField;
    q_FornecNumero: TStringField;
    q_FornecComplemento: TStringField;
    q_FornecBairro: TStringField;
    q_FornecCidade: TStringField;
    q_FornecCEP: TStringField;
    q_FornecUF: TStringField;
    q_FornecInscricao_Estadual: TStringField;
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
    procedure QuickRepAfterPreview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QR_Fornecedores: TQR_Fornecedores;

implementation

uses u_mscomex;
{$R *.DFM}


procedure TQR_Fornecedores.QuickRepStartPage(Sender: TCustomQuickRep);
begin
     qrlSistema.Caption := v_sistema +' - '+ v_versao;
     qrlEmpresa.Caption := 'MS LOGÍSTICA ADUANEIRA E TRANSPORTES INTEGRADOS LTDA.';
     qrlTitulo.Caption  := 'Relatório de Fornecedores';
end;

procedure TQR_Fornecedores.QuickRepAfterPreview(Sender: TObject);
begin
     q_Fornec.Close;
end;

end.
