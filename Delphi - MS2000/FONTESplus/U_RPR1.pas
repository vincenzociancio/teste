unit U_RPR1;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TQR_RPR1 = class(TQuickRep)
    TitleBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape1: TQRShape;
    QRLabel9: TQRLabel;
    QRShape3: TQRShape;
    QRLabel11: TQRLabel;
    QRShape15: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel30: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRShape7: TQRShape;
    QRLabel34: TQRLabel;
    QRShape8: TQRShape;
    QRLabel35: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRLabel36: TQRLabel;
    QRShape14: TQRShape;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRShape16: TQRShape;
    QRLabel40: TQRLabel;
    QRShape17: TQRShape;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRShape18: TQRShape;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel47: TQRLabel;
    QRShape19: TQRShape;
    QRLabel45: TQRLabel;
    QRShape20: TQRShape;
    QRLabel48: TQRLabel;
    QRShape21: TQRShape;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRShape22: TQRShape;
    SummaryBand1: TQRBand;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRLabel49: TQRLabel;
    QRShape33: TQRShape;
    QRBand1: TQRBand;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape34: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRLabel46: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape4: TQRShape;
    QRShape9: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    qrRPRTemp: TQuery;
    qrRPRTempProcesso: TStringField;
    qrRPRTempSequencial: TIntegerField;
    qrRPRTempNCM: TStringField;
    qrRPRTempDESCRICAO_PRODUTO: TStringField;
    qrRPRTempFATURA: TStringField;
    qrRPRTemppagina: TStringField;
    qrRPRTempquantidade: TFloatField;
    qrRPRTempvalor: TFloatField;
    dsRCRTemp: TDataSource;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBQuant: TQRDBText;
    QRDBNome: TQRDBText;
    qrImport: TQuery;
    dsImport: TDataSource;
    QRShape2: TQRShape;
    QRLabel10: TQRLabel;
    qrl_endereco: TQRLabel;
    qrl_endereco1: TQRLabel;
    qrl_cnpj: TQRLabel;
    qrl_data: TQRLabel;
    qrl_local: TQRLabel;
    qrImportRazao_Social: TStringField;
    qrImportCNPJ_CPF_COMPLETO: TStringField;
    qrImportEndereco: TStringField;
    qrImportNumero: TStringField;
    qrImportComplemento: TStringField;
    qrImportBairro: TStringField;
    qrImportCidade: TStringField;
    qrImportCEP: TStringField;
    qrImportUF: TStringField;
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBQuantPrint(sender: TObject; var Value: String);
  private

  public

  end;

var
   QR_RPR1: TQR_RPR1;

implementation

uses U_MSCOMEX, U_proRPR;

{$R *.DFM}

procedure TQR_RPR1.QuickRepStartPage(Sender: TCustomQuickRep);
var cnpj: String;
begin
     With qrImport Do Begin
         Close;
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Params[2].AsString := F_proRPR.qrProcessosCodigo.AsString;
         Open;
     End;

     qrl_cnpj.Caption := qrImportCNPJ_CPF_COMPLETO.AsString;
      If qrImportCNPJ_CPF_COMPLETO.IsNull Then  qrl_cnpj.Caption := 'NÃO ENCONTRADO'
     Else Begin
        cnpj := qrImportCNPJ_CPF_COMPLETO.AsString;
        qrl_cnpj.Caption := Copy(cnpj,1,2)+'.'+Copy(cnpj,3,3)+'.'+Copy(cnpj,6,3)+'/'+Copy(cnpj,9,4)+'-'+Copy(cnpj,13,2);
     End;

     If qrImportEndereco.IsNull Then Begin
        qrl_endereco.Caption  := 'NÃO ENCONTRADO';
        qrl_endereco1.Caption := '';
     End
     Else Begin
        qrl_endereco.Caption  := qrImportEndereco.AsString+' - '+qrImportNumero.AsString+' - '+qrImportComplemento.AsString;
        qrl_endereco1.Caption := qrImportBairro.AsString+' - '+qrImportCidade.AsString+' - '+qrImportCEP.AsString+' - '+qrImportUF.AsString;
     End;

     qrl_data.Caption := datetostr(date());
     qrl_local.Caption := F_proRpR.qrprocessosqfilial.AsString;



end;

procedure TQR_RPR1.QRDBText4Print(sender: TObject; var Value: String);
begin
     If qrRPRTempvalor.AsFloat = 0 then
        Value := '';
end;

procedure TQR_RPR1.TitleBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     If F_proRPR.qrProcessosTipo.asString = '1' Then
        QRShape46.Brush.Color:= clBlack
     Else If F_proRPR.qrProcessosTipo.asString = '2' Then
        QRShape47.Brush.Color:= clBlack;

end;

procedure TQR_RPR1.QRDBQuantPrint(sender: TObject; var Value: String);
begin
     If qrRPRTempquantidade.AsFloat = 0 then
        Value := '';

end;

end.

                  
