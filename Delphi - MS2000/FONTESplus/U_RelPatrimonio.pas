unit U_RelPatrimonio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, StdCtrls, jpeg, Clipbrd;

type
  TF_RelPatrimonio = class(TForm)
    qrPatrimonio: TQuickRep;
    qrbTitulo: TQRBand;
    qrl_titulo: TQRLabel;
    QRShape6: TQRShape;
    QRi_logo: TQRImage;
    qrbPagina: TQRBand;
    QRLabel6: TQRLabel;
    QRSysData3: TQRSysData;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel21: TQRLabel;
    qrlSetor: TQRLabel;
    qrlUser: TQRLabel;
    qrlTipo: TQRLabel;
    qrlFornec: TQRLabel;
    qrlSub: TQRLabel;
    qrlValDe: TQRLabel;
    qrlValAte: TQRLabel;
    qrlStatus: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel9: TQRLabel;
    QRSysData1: TQRSysData;
    qrlEmpresa: TQRLabel;
    qrlSistema: TQRLabel;
    qrSet: TQuery;
    qrUsu: TQuery;
    qrPat: TQuery;
    sdtPat: TQRSubDetail;
    GroupFooterBand1: TQRBand;
    QRDBText3: TQRDBText;
    GroupHeaderBand3: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    sdtSetor: TQRSubDetail;
    QRDBText1: TQRDBText;
    GroupFooterBand2: TQRBand;
    QRLabel11: TQRLabel;
    qrlValTotSet: TQRLabel;
    sdtUsu: TQRSubDetail;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    qrlValTotUsu: TQRLabel;
    QRShape2: TQRShape;
    lblDesc: TQRLabel;
    QRShape3: TQRShape;
    QRDBPat: TQRDBText;
    qrSetSetor: TStringField;
    qrSetdescricao: TStringField;
    qrUsuSetor: TStringField;
    qrUsuUsuario: TStringField;
    qrUsuNome_Completo: TStringField;
    qrPatEmpresa: TStringField;
    qrPatFilial: TStringField;
    qrPatPlaqueta: TStringField;
    qrPatDescricao: TStringField;
    qrPatTipo_Patrimonio: TStringField;
    qrPatSub_Tipo_Patrimonio: TStringField;
    qrPatSetor: TStringField;
    qrPatUsuario: TStringField;
    qrPatNserie: TStringField;
    qrPatValor: TFloatField;
    qrPatFornecedor: TStringField;
    qrPatNfiscal_entrada: TStringField;
    qrPatIP: TStringField;
    qrPatPREDE: TStringField;
    qrPatStatus_Patrimonio: TStringField;
    qrPatOBS: TMemoField;
    qrPatDetalhe: TStringField;
    qrPatPlaqueta2: TStringField;
    qrPatcodigo: TStringField;
    qrPatdescricao_1: TStringField;
    qrPatTipo_patrimonio_1: TStringField;
    qrPatcodigo_1: TStringField;
    qrPatDescricao_2: TStringField;
    qrPatEmpresa_1: TStringField;
    qrPatFilial_1: TStringField;
    qrPatCodigo_2: TStringField;
    qrPatRazao_Social: TStringField;
    qrPatPais: TStringField;
    qrPatCNPJ_CPF_COMPLETO: TStringField;
    qrPatCGC_CPF: TStringField;
    qrPatTipo_Importador: TStringField;
    qrPatEndereco: TStringField;
    qrPatNumero: TStringField;
    qrPatComplemento: TStringField;
    qrPatBairro: TStringField;
    qrPatCidade: TStringField;
    qrPatCEP: TStringField;
    qrPatUF: TStringField;
    qrPatEstado: TStringField;
    qrPatInscricao_Estadual: TStringField;
    qrPatBanco: TStringField;
    qrPatAgencia: TStringField;
    qrPatConta_Corrente: TStringField;
    qrPatConta_Corrente_Registro: TIntegerField;
    qrPatConta_Corrente_Deposito: TIntegerField;
    qrPatTelefone: TStringField;
    qrPatcodigo_3: TStringField;
    qrPatdescricao_3: TStringField;
    procedure qrbTituloBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrPatrimonioAfterPreview(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qrPatrimonioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure qrSetAfterScroll(DataSet: TDataSet);
    procedure sdtPatAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure GroupFooterBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure sdtUsuAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure sdtPatBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure GroupFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure GroupHeaderBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure GroupFooterBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure GroupHeaderBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure sdtSetorBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrUsuAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_RelPatrimonio: TF_RelPatrimonio;

implementation

uses U_MSCOMEX, U_Patrimonio;

var valTotUsu, valTotSet: Real;

{$R *.DFM}

procedure TF_RelPatrimonio.qrbTituloBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     With F_Patrimonio Do Begin
         If cbTipo.Checked Then
            qrlTipo.Caption := qrPatriDescII.AsString
         Else
            qrlTipo.Caption := 'Todos';

         If cbSub.Checked Then
            qrlSub.Caption := qrPatriDescIII.AsString
         Else
            qrlSub.Caption := 'Todos';

         If cbSetor.Checked Then
            qrlSetor.Caption := qrPatriDescIV.AsString
         Else
            qrlSetor.Caption := 'Todos';

         If cbUsu.Checked Then
            qrlUser.Caption := qrPatriUsuario.AsString
         Else
            qrlUser.Caption := 'Todos';

         If cbVal.Checked Then Begin
            qrlValDe.Caption := FormatFloat('#,##0.00', StrToFloat(edtValDe.Text));
            qrlValAte.Caption := FormatFloat('#,##0.00', StrToFloat(edtValAte.Text));
         End
         Else Begin
            qrlValDe.Caption := '';
            qrlValAte.Caption := '';
         End;

         If cbFornec.Checked Then
            qrlFornec.Caption := qrPatriRazao_Social.AsString
         Else
            qrlFornec.Caption := 'Todos';

         If cbStatus.Checked Then
            qrlStatus.Caption := qrPatriDescV.AsString
         Else
            qrlStatus.Caption := 'Todos';
     End;
end;

procedure TF_RelPatrimonio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := CaFree;
     F_RelPatrimonio := Nil;
end;

procedure TF_RelPatrimonio.qrPatrimonioAfterPreview(Sender: TObject);
begin
     Close;
end;

procedure TF_RelPatrimonio.FormCreate(Sender: TObject);
var
   sqlAux2 : String;
begin
     qrlSistema.Caption := v_sistema +' - '+ v_versao;
     qrlEmpresa.Caption := 'MS LOGÍSTICA ADUANEIRA E TRANSPORTES INTEGRADOS LTDA.';

     If f_patrimonio.cbSetor.Checked AND (F_Patrimonio.dblcbFilSetor.KeyValue <> '') Then Begin
        qrSet.Params[0].AsString := F_Patrimonio.dblcbFilSetor.KeyValue;
        qrUsu.Params[0].AsString := F_Patrimonio.dblcbFilSetor.KeyValue;
        qrPat.Params[0].AsString := F_Patrimonio.dblcbFilSetor.KeyValue;
     End
     Else Begin
        qrSet.Params[0].AsString := '%';
        qrUsu.Params[0].AsString := '%';
        qrPat.Params[0].AsString := '%';
     End;

     If f_patrimonio.cbTipo.Checked AND (F_Patrimonio.dblcbFilTipo.KeyValue <> '') Then Begin
        qrSet.Params[1].AsString := F_Patrimonio.dblcbFilTipo.KeyValue;
        qrUsu.Params[1].AsString := F_Patrimonio.dblcbFilTipo.KeyValue;
        qrPat.Params[1].AsString := F_Patrimonio.dblcbFilTipo.KeyValue;
     End
     Else Begin
        qrSet.Params[1].AsString := '%';
        qrUsu.Params[1].AsString := '%';
        qrPat.Params[1].AsString := '%';
     End;

     If f_patrimonio.cbSub.Checked AND (F_Patrimonio.dblcbFilSub.KeyValue <> '') Then Begin
        qrSet.Params[2].AsString := F_Patrimonio.dblcbFilSub.KeyValue;
        qrUsu.Params[2].AsString := F_Patrimonio.dblcbFilSub.KeyValue;
        qrPat.Params[2].AsString := F_Patrimonio.dblcbFilSub.KeyValue;
     End
     Else Begin
        qrSet.Params[2].AsString := '%';
        qrUsu.Params[2].AsString := '%';
        qrPat.Params[2].AsString := '%';
     End;

     If f_patrimonio.cbUsu.Checked AND (F_Patrimonio.dblcbFilUsu.KeyValue <> '') Then Begin
        qrSet.Params[3].AsString := F_Patrimonio.dblcbFilUsu.KeyValue;
        qrUsu.Params[3].AsString := F_Patrimonio.dblcbFilUsu.KeyValue;
        qrPat.Params[3].AsString := F_Patrimonio.dblcbFilUsu.KeyValue;
     End
     Else Begin
        qrSet.Params[3].AsString := '%';
        qrUsu.Params[3].AsString := '%';
        qrPat.Params[3].AsString := '%';
     End;

     sqlAux2 := '';
     If f_Patrimonio.cbVal.Checked AND ((f_Patrimonio.edtValDe.Text <> '') OR (f_Patrimonio.edtValAte.Text <> '')) Then Begin
        If f_Patrimonio.edtValDe.Text <> '' Then
           sqlAux2 := sqlAux2 + 'AND P.Valor >= '+ f_Patrimonio.edtValDe.Text +' ';
        If f_Patrimonio.edtValAte.Text <> '' Then
           sqlAux2 := sqlAux2 + 'AND P.Valor <= '+ f_Patrimonio.edtValAte.Text +' ';
     End;
     qrSet.SQL.Strings[9] := sqlAux2;
     qrUsu.SQL.Strings[9] := sqlAux2;
     qrPat.SQL.Strings[9] := sqlAux2;

     If f_patrimonio.cbFornec.Checked AND (F_Patrimonio.dblcbFilFornec.KeyValue <> '') Then Begin
        qrSet.Params[4].AsString := F_Patrimonio.dblcbFilFornec.KeyValue;
        qrUsu.Params[4].AsString := F_Patrimonio.dblcbFilFornec.KeyValue;
        qrPat.Params[4].AsString := F_Patrimonio.dblcbFilFornec.KeyValue;
     End
     Else Begin
        qrSet.Params[4].AsString := '%';
        qrUsu.Params[4].AsString := '%';
        qrPat.Params[4].AsString := '%';
     End;

     If f_patrimonio.cbStatus.Checked AND (F_Patrimonio.dblcbFilStatus.KeyValue <> '') Then Begin
        qrSet.Params[5].AsString := F_Patrimonio.dblcbFilStatus.KeyValue;
        qrUsu.Params[5].AsString := F_Patrimonio.dblcbFilStatus.KeyValue;
        qrPat.Params[5].AsString := F_Patrimonio.dblcbFilStatus.KeyValue;
        qrSet.SQL.Strings[8] := ') ';
        qrUsu.SQL.Strings[8] := ') ';
        qrPat.SQL.Strings[8] := ') ';
     End
     Else Begin
        qrSet.Params[5].AsString := '%';
        qrUsu.Params[5].AsString := '%';
        qrPat.Params[5].AsString := '%';
        qrSet.SQL.Strings[8] := 'OR P.Status_Patrimonio = "" OR P.Status_Patrimonio Is Null ';
        qrUsu.SQL.Strings[8] := 'OR P.Status_Patrimonio = "" OR P.Status_Patrimonio Is Null ';
        qrPat.SQL.Strings[8] := 'OR P.Status_Patrimonio = "" OR P.Status_Patrimonio Is Null ';
     End;

     //showmessage(qrSet.SQL.Text);

     qrSet.Open;
end;

procedure TF_RelPatrimonio.qrPatrimonioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
//     qrSet.Open;
end;

procedure TF_RelPatrimonio.qrSetAfterScroll(DataSet: TDataSet);
begin
     qrUsu.Close;
     qrUsu.Params[0].AsString := qrSetSetor.AsString;
     qrUsu.Open;
end;

procedure TF_RelPatrimonio.sdtPatAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
     QRDBText3.Enabled := False;
     qrShape2.Enabled := True;
     qrshape2.Left := 176;
     qrshape2.Width := 853;
end;

procedure TF_RelPatrimonio.GroupFooterBand2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     qrlValTotSet.Caption := FormatFloat('#,##0.00', valTotSet);
end;

procedure TF_RelPatrimonio.sdtUsuAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
     QRDBText3.Enabled := True;
end;

procedure TF_RelPatrimonio.sdtPatBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var strDesc: String;

begin
     if qrpatplaqueta.asstring<>'' then begin
        valTotUsu := valTotUsu + StrToFloat(qrPatValor.AsString);
     end
     else begin
         valTotUsu := valTotUsu + 0;
     end;

     strDesc := '';

     If (qrPatTipo_patrimonio.AsString <> '') Or (qrPatSub_Tipo_Patrimonio.AsString <> '') Then
        strDesc := 'Tipo/SubTipo : ' + qrPatDescricao.AsString + '/' + qrPatDescricao.AsString ;
     If qrPatdescricao.AsString <> '' Then
        strDesc := strDesc + #13#10 + qrPatdescricao.AsString;
     If qrPatNserie.AsString <> '' Then
        strDesc := strDesc + ' - Nº Série: ' + qrPatNserie.AsString ;
     If qrPatRazao_Social.AsString <> '' Then
        strDesc := strDesc + ' - ' + qrPatRazao_Social.AsString;
     If qrPatNfiscal_entrada.AsString <> '' Then
        strDesc := strDesc + ' - NF: ' + qrPatNfiscal_entrada.AsString;

     If f_Patrimonio.btnRelatorio.Tag = 1 Then
        If qrPatObs.AsString <> '' Then
           strDesc := StrDesc + #13#10 + #13#10 + 'Obs: ' + qrPatObs.AsString;

 {    strDesc := strDesc + F_Patrimonio.qrPatriDescI.AsString;
     If F_Patrimonio.qrPatriNSerie.AsString <> '' Then
        strDesc := strDesc +#13#10+ 'Nº de Série: ' + F_Patrimonio.qrPatriNSerie.AsString;
     If F_Patrimonio.qrPatriNfiscal_Entrada.AsString <> '' Then
        strDesc := strDesc +#13#10+ 'NF Entrada: ' + F_Patrimonio.qrPatriNfiscal_Entrada.AsString;
     If F_Patrimonio.qrPatriRazoSocial.AsString <> '' Then
        strDesc := strDesc +#13#10+ 'Fornecedor: ' + F_Patrimonio.qrPatriRazoSocial.AsString;
}//     qrlDesc.Caption := strDesc;
  //   qrshape5.Height := qrlDesc.Height;
  //   qrshape7.Height := qrlDesc.Height;
  //   qrshape8.Height := qrlDesc.Height;

    lblDesc.Caption := strDesc;
    PrintBand := True;
end;

procedure TF_RelPatrimonio.GroupFooterBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     qrlValTotUsu.Caption := FormatFloat('#,##0.00', valTotUsu);
     valTotSet := valTotSet + valTotUsu;
end;

procedure TF_RelPatrimonio.GroupHeaderBand3AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
     valTotUsu := 0;
     GroupHeaderBand3.Enabled := False;
     QRShape2.Left := 0;
     QRShape2.Width := 1029;
end;

procedure TF_RelPatrimonio.GroupFooterBand2AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
     valTotSet := 0;
end;

procedure TF_RelPatrimonio.GroupHeaderBand3BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     QRShape2.Enabled := False;
end;

procedure TF_RelPatrimonio.sdtSetorBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     GroupHeaderBand3.Enabled := True;
end;

procedure TF_RelPatrimonio.qrUsuAfterScroll(DataSet: TDataSet);
begin
     qrPat.Close;
     qrPat.Params[0].AsString := qrSetSetor.AsString;
     qrPat.Params[3].AsString := qrUsuUsuario.AsString;
     qrPat.Open;
end;

end.
