unit qr_etiq_repetro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, QuickRpt, Qrctrls, ExtCtrls;

type
  Tqrlabel_repetro = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    qrl_cont: TQRLabel;
    QuickRep2: TQuickRep;
    DetailBand2: TQRBand;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText8: TQRDBText;
    qrl_cont2: TQRLabel;
    QRMemo1: TQRMemo;
    QRImage1: TQRImage;
    QRLabel10: TQRLabel;
    QRDBText9: TQRDBText;
    QRImage2: TQRImage;
    QuickRep3: TQuickRep;
    QRBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRMemo2: TQRMemo;
    QRMemo3: TQRMemo;
    QRLabel14: TQRLabel;
    l_empresa: TQRLabel;
    l_cnpj: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    l_data: TQRLabel;
    QuickRep4: TQuickRep;
    QRBand2: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRMemo4: TQRMemo;
    QRMemo5: TQRMemo;
    QRLabel19: TQRLabel;
    l_empresa4: TQRLabel;
    l_cnpj4: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    l_data4: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRep2BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep3BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRep4BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRep3AfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qrlabel_repetro: Tqrlabel_repetro;
  qcont:integer;

implementation

{$R *.DFM}
uses U_importadores;

procedure Tqrlabel_repetro.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
qcont := qcont+1;
qrl_cont.Caption := '('+inttostr(qcont)+')';
end;

procedure Tqrlabel_repetro.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
qcont := 0;
end;

procedure Tqrlabel_repetro.QuickRep2BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
qcont := 0;
end;

procedure Tqrlabel_repetro.DetailBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
qcont := qcont+1;
qrl_cont2.Caption := '('+inttostr(qcont)+')';
end;

procedure Tqrlabel_repetro.QuickRep3BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
l_data.caption := 'Rio de Janeiro, '+FormatDateTime('dd " de " mmmm " de " yyyy', date());
l_empresa.caption := f_importadores.t_Importadoresrazao_social.asstring;
l_cnpj.caption := f_importadores.t_Importadorescnpj_cpf_completo.asstring;
end;

procedure Tqrlabel_repetro.QuickRep4BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
l_data4.caption := 'Rio de Janeiro, '+FormatDateTime('dd " de " mmmm " de " yyyy', date());
l_empresa4.caption := f_importadores.t_Importadoresrazao_social.asstring;
l_cnpj4.caption := f_importadores.t_Importadorescnpj_cpf_completo.asstring;
end;

procedure Tqrlabel_repetro.QuickRep3AfterPrint(Sender: TObject);
begin
 qrlabel_repetro.CLOSE;
end;

end.
