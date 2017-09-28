unit u_qrCAE;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TqrepCAE = class(TQuickRep)
    qrel_cae: TQuery;
    qrel_caecodigo: TStringField;
    qrel_caedescricao: TStringField;
    qrel_caeEmpresa: TStringField;
    qrel_caeFilial: TStringField;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    qrlEmpresa: TQRLabel;
    qrlSistema: TQRLabel;
    qrlTitulo: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRi_logo: TQRImage;
    QRLabel3: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRBand3: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
  private

  public

  end;

var
  qrepCAE: TqrepCAE;

implementation
uses u_mscomex;
{$R *.DFM}

procedure TqrepCAE.QuickRepStartPage(Sender: TCustomQuickRep);
begin
     qrlSistema.Caption := v_sistema +' - '+ v_versao;
     qrlEmpresa.Caption := 'MS LOGÍSTICA ADUANEIRA LTDA.';
     qrlTitulo.Caption  := 'Relatório de CAE';

end;

end.
