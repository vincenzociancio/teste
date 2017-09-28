unit u_relExoFrente;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQR_ExoFrente = class(TQuickRep)
    QRBand1: TQRBand;
    QRShape4: TQRShape;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel3: TQRLabel;
    QRShape11: TQRShape;
    QRLabel4: TQRLabel;
    QRShape12: TQRShape;
    QRLabel5: TQRLabel;
    QRShape13: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    S: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape16: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape8: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape2: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape6: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRShape22: TQRShape;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape55: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape15: TQRShape;
    QRShape20: TQRShape;
    QRShape14: TQRShape;
    QRShape21: TQRShape;
    QRShape56: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    qrlCNPJ: TQRLabel;
    QRDBText3: TQRDBText;
    qrlEndereco: TQRLabel;
    QRDBText4: TQRDBText;
    qrlCEP: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    dec_imp: TQRLabel;
    dt_registro: TQRLabel;
    qrl_local: TQRLabel;
    qrl_uf: TQRLabel;
    QRDBText8: TQRDBText;
    QRBand2: TQRBand;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRBand3: TQRBand;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRShape51: TQRShape;
    QRLabel55: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRShape52: TQRShape;
    QRLabel62: TQRLabel;
    QRShape53: TQRShape;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRShape54: TQRShape;
    repr: TQRLabel;
    repr2: TQRLabel;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape57: TQRShape;
    QRLabel2: TQRLabel;
    qrl_cod_recinto: TQRLabel;
    QRDBText15: TQRDBText;
    repr3: TQRLabel;
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText14Print(sender: TObject; var Value: String);
    procedure QRDBText12Print(sender: TObject; var Value: String);
  private

  public

  end;

var
  QR_ExoFrente: TQR_ExoFrente;
  cnpj, cep, dtreg, decimp : String;
implementation

uses u_exoneracao;

{$R *.DFM}

procedure TQR_ExoFrente.QuickRepStartPage(Sender: TCustomQuickRep);
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

      If f_exoneracao.qrprocessosCNPJ_CPF_COMPLETO.IsNull Then  qrlCNPJ.Caption := 'NÃO ENCONTRADO'
     Else Begin
        cnpj := f_exoneracao.qrprocessosCNPJ_CPF_COMPLETO.AsString;
        qrlCNPJ.Caption := Copy(cnpj,1,2)+'.'+Copy(cnpj,3,3)+'.'+Copy(cnpj,6,3)+'/'+Copy(cnpj,9,4)+'-'+Copy(cnpj,13,2);
        qrlEndereco.Caption  := f_exoneracao.qrprocessosEndereco.AsString+' ,'+f_exoneracao.qrprocessosNumero.AsString;
        cep := f_exoneracao.qrprocessosCEP.AsString;
        ////qrlCEP.Caption := Copy(cep,1,5)+Copy(cep,3,3)+'-'+Copy(cep,6,3);
        qrlCEP.Caption := cep;
        dtreg := f_exoneracao.qrProcessosDT_REGISTRO_DI.AsString;
        dt_registro.Caption := Copy(dtreg,1,2)+'/'+Copy(dtreg,3,2)+'/'+Copy(dtreg,5,4);
        decimp := f_exoneracao.qrProcessosdi.AsString;
        dec_imp.Caption := Copy(decimp,1,2)+'/'+Copy(decimp,3,7)+'-'+Copy(decimp,10,1);
        //qrl_dtemi.caption := '';
        //if f_exoneracao.me_dtemi.text <>'' then qrl_dtemi.caption := f_exoneracao.me_dtemi.text;
        repr3.Caption:='MS LOGÍSTICA ADUANEIRA LTDA - CNPJ: 30.875.884/0001-99'; 
        repr.Caption := f_exoneracao.qrProcessosprocurador.AsString+ ', '+f_exoneracao.qrProcessosprocpf.AsString+', '+f_exoneracao.qrProcessosproend.AsString+', '+f_exoneracao.qrProcessospronum.AsString;
        repr2.Caption := f_exoneracao.qrProcessosprocom.AsString+' - '+f_exoneracao.qrProcessosprobai.AsString+', '+f_exoneracao.qrProcessosprocep.AsString+', Tel. 3095-7777'//+f_exoneracao.qrProcessosprotel.AsString;
     End;
     qrl_local.caption := f_exoneracao.me_local.text;
     qrl_cod_recinto.Caption :=  f_exoneracao.qrProcessosTAB_REC_ALFANDEGADO_CODIGO.AsString;
     qrl_uf.caption := f_exoneracao.me_uf.text;
     if f_exoneracao.DSI = true then begin
        QRLabel30.Enabled := false;
        QRLabel31.Enabled := true;
     end else begin
        QRLabel30.Enabled := true;
        QRLabel31.Enabled := false;
     end;




end;

procedure TQR_ExoFrente.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//     qrdbtext5.tex
     {If (f_Exoneracao.t_guiaAto_concessorio.isnull) Then qrLabel65.Enabled := False
     Else qrLabel65.Enabled := True;}

end;

procedure TQR_ExoFrente.QRDBText14Print(sender: TObject;
  var Value: String);
begin
  //if not guiaeditada then begin
     If f_Exoneracao.t_guiaValor.AsFloat = 0 then  Value := '';
    // end;
end;

procedure TQR_ExoFrente.QRDBText12Print(sender: TObject;
  var Value: String);
var texto : string;
begin

     if not guiaeditada then begin
     If f_Exoneracao.t_guiaValor.AsFloat = 0 then  Value := '';
     end;

     texto := f_Exoneracao.t_guiafundamento.AsString;
     If pos('- Ato Concessório',f_Exoneracao.t_guiafundamento.AsString)<>0 Then value := Copy(f_Exoneracao.t_guiafundamento.AsString,0 ,pos('- Ato Concessório',f_Exoneracao.t_guiafundamento.AsString)-1) ;

end;

end.
