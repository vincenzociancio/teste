unit U_relprocu;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TQR_Procuradores = class(TQuickRep)
    DetailBand1: TQRBand;
    dsProcu: TDataSource;
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
    q_Procu: TQuery;
    QRi_logo: TQRImage;
    q_ProcuEmpresa: TStringField;
    q_ProcuFilial: TStringField;
    q_ProcuCodigo: TStringField;
    q_ProcuRazao_Social: TStringField;
    q_ProcuPais: TStringField;
    q_ProcuCGC_CPF: TStringField;
    q_ProcuEndereco: TStringField;
    q_ProcuNumero: TStringField;
    q_ProcuComplemento: TStringField;
    q_ProcuBairro: TStringField;
    q_ProcuCidade: TStringField;
    q_ProcuCEP: TStringField;
    q_ProcuUF: TStringField;
    q_ProcuEstado: TStringField;
    q_ProcuInscricao_Estadual: TStringField;
    q_ProcuRegistro: TStringField;
    q_ProcuTelefone: TStringField;
    q_Procuexibe_complementares: TSmallintField;
    q_ProcuDESCRICAO: TStringField;
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
    procedure QuickRepAfterPreview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QR_procuradores: TQR_Procuradores;

implementation

uses u_mscomex;
{$R *.DFM}


procedure TQR_Procuradores.QuickRepStartPage(Sender: TCustomQuickRep);
begin
     qrlSistema.Caption := v_sistema +' - '+ v_versao;
     qrlEmpresa.Caption := v_empresanome;
     qrlTitulo.Caption  := 'Relatório de Procuradores';
end;

procedure TQR_Procuradores.QuickRepAfterPreview(Sender: TObject);
begin
     q_Procu.Close;
end;

end.
