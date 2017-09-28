unit u_relExoVerso;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQR_ExoVerso = class(TQuickRep)
    QRBand1: TQRBand;
    QRLabel37: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape4: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape32: TQRShape;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape7: TQRShape;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape30: TQRShape;
    QRShape29: TQRShape;
    QRShape31: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRDBText3: TQRDBText;
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText5Print(sender: TObject; var Value: String);
  private

  public

  end;

var
  QR_ExoVerso: TQR_ExoVerso;
  cnpj, cep, dtreg, decimp : String;
implementation

uses u_exoneracao;

{$R *.DFM}

procedure TQR_ExoVerso.QuickRepStartPage(Sender: TCustomQuickRep);
begin
 {    With f_exoneracao.qrprocessos Do Begin
         Close;
         Params[0].AsString := f_Exoneracao.qrProcessosEmpresa.AsString;
         Params[1].AsString := f_Exoneracao.qrProcessosFilial.AsString;
         Params[2].AsString := f_Exoneracao.qrProcessoscodigo.AsString;
         Open;
     End;}
//         qrlCNPJ.Caption  := f_exoneracao.qrprocessosRazoSocial.AsString ;//+' - '+qrImportNmero.AsString+' - '+qrImportComplemento.AsString;
  //       qrlCNPJ.Caption := f_exoneracao.qrprocessosCNPJ_CPF_COMPLETO.AsString;



end;

procedure TQR_ExoVerso.QRDBText6Print(sender: TObject; var Value: String);
begin
     If f_Exoneracao.t_guiaValor.AsFloat = 0 then
        Value := '';
end;

procedure TQR_ExoVerso.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     {If (f_Exoneracao.t_guiaAto_concessorio.isnull) Then qrLabel36.Enabled := False
     Else qrLabel36.Enabled := True;}

end;

procedure TQR_ExoVerso.QRDBText5Print(sender: TObject; var Value: String);
var texto : string;
begin
     if not guiaeditada then begin
     If f_Exoneracao.t_guiaValor.AsFloat = 0 then  Value := '';
     end;
     texto := f_Exoneracao.t_guiafundamento.AsString;
     If pos('- Ato Concessório',f_Exoneracao.t_guiafundamento.AsString)<>0 Then value := Copy(f_Exoneracao.t_guiafundamento.AsString,0 ,pos('- Ato Concessório',f_Exoneracao.t_guiafundamento.AsString)-1) ;

end;

end.
