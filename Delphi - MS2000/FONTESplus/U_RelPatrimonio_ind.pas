unit U_RelPatrimonio_ind;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, StdCtrls, jpeg;

type
  TF_RelPatrimonio_ind = class(TForm)
    qrPatrimonio_ind: TQuickRep;
    qrbTitulo: TQRBand;
    qrl_titulo: TQRLabel;
    QRi_logo: TQRImage;
    qrlEmpresa: TQRLabel;
    qrlSistema: TQRLabel;
    lblDesc: TQRLabel;
    QRDBPat: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel2: TQRLabel;
    dsContSoftware: TDataSource;
    QContSoftware: TQuery;
    qrdbtCred: TQRDBText;
    qrdbtCod: TQRDBText;
    GroupHeaderBand1: TQRBand;
    QRLabel11: TQRLabel;
    GroupFooterBand1: TQRBand;
    QContSoftwareEmpresa: TStringField;
    QContSoftwareFilial: TStringField;
    QContSoftwarePlaqueta: TStringField;
    QContSoftwareSoftware: TStringField;
    QContSoftwaredescricao: TStringField;
    QContSoftwareLicenca: TStringField;
    tb_patri: TTable;
    tb_patriEmpresa: TStringField;
    tb_patriFilial: TStringField;
    tb_patriPlaqueta: TStringField;
    tb_patriDescricao: TStringField;
    tb_patriTipo_Patrimonio: TStringField;
    tb_patriSub_Tipo_Patrimonio: TStringField;
    tb_patriSetor: TStringField;
    tb_patriUsuario: TStringField;
    tb_patriNserie: TStringField;
    tb_patriValor: TFloatField;
    tb_patriFornecedor: TStringField;
    tb_patriNfiscal_entrada: TStringField;
    tb_patriIP: TStringField;
    tb_patriPREDE: TStringField;
    tb_patriStatus_Patrimonio: TStringField;
    tb_patriOBS: TMemoField;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel4: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure sdtPatAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure sdtPatBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure GroupFooterBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure qrPatrimonio_indBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_RelPatrimonio_ind: TF_RelPatrimonio_ind;

implementation

uses U_MSCOMEX, U_Patrimonio;

var valTotUsu, valTotSet: Real;

{$R *.DFM}


procedure TF_RelPatrimonio_ind.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := CaFree;
     F_RelPatrimonio_ind := Nil;
end;

procedure TF_RelPatrimonio_ind.FormCreate(Sender: TObject);

begin
     qrlSistema.Caption := v_sistema +' - '+ v_versao;
     qrlEmpresa.Caption := v_empresanome;

end;

procedure TF_RelPatrimonio_ind.sdtPatAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  //   QRDBText3.Enabled := False;

end;

procedure TF_RelPatrimonio_ind.sdtPatBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var strDesc: String;

begin
     valTotUsu := valTotUsu + StrToFloat(F_Patrimonio.qrPatriValor.AsString);
     strDesc := '';

     If (tb_patriTipo_patrimonio.AsString <> '') Or (tb_patriSub_Tipo_Patrimonio.AsString <> '') Then
        strDesc := 'Tipo/SubTipo : ' + F_Patrimonio.qrPatriDescII.AsString + '/' + F_Patrimonio.qrPatriDescIII.AsString ;
     If tb_patridescricao.AsString <> '' Then
        strDesc := strDesc + #13#10 + tb_patridescricao.AsString;
     If tb_patriNserie.AsString <> '' Then
        strDesc := strDesc + ' - Nº Série: ' + tb_patriNserie.AsString ;
     If F_Patrimonio.qrPatriRazao_Social.AsString <> '' Then
        strDesc := strDesc + ' - ' + F_Patrimonio.qrPatriRazao_Social.AsString;
     If tb_patriNfiscal_entrada.AsString <> '' Then
        strDesc := strDesc + ' - NF: ' + tb_patriNfiscal_entrada.AsString;

     If f_Patrimonio.btnRelatorio.Tag = 1 Then
        If tb_patriObs.AsString <> '' Then
           strDesc := StrDesc + #13#10 + #13#10 + 'Obs: ' + tb_patriObs.AsString;

 {    strDesc := strDesc + F_Patrimonio.tb_patririDescI.AsString;
     If F_Patrimonio.tb_patririNSerie.AsString <> '' Then
        strDesc := strDesc +#13#10+ 'Nº de Série: ' + F_Patrimonio.tb_patririNSerie.AsString;
     If F_Patrimonio.tb_patririNfiscal_Entrada.AsString <> '' Then
        strDesc := strDesc +#13#10+ 'NF Entrada: ' + F_Patrimonio.tb_patririNfiscal_Entrada.AsString;
     If F_Patrimonio.tb_patririRazoSocial.AsString <> '' Then
        strDesc := strDesc +#13#10+ 'Fornecedor: ' + F_Patrimonio.tb_patririRazoSocial.AsString;
}//     qrlDesc.Caption := strDesc;
  //   qrshape5.Height := qrlDesc.Height;
  //   qrshape7.Height := qrlDesc.Height;
  //   qrshape8.Height := qrlDesc.Height;

    lblDesc.Caption := strDesc;
    PrintBand := True;

     QContSoftware.Close;
     QContSoftware.Params[0].AsString := tb_patriPlaqueta.AsString;
     QContSoftware.Open;
end;

procedure TF_RelPatrimonio_ind.GroupFooterBand2AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
     valTotSet := 0;
end;

procedure TF_RelPatrimonio_ind.qrPatrimonio_indBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
   tb_patri.open;
end;

end.
