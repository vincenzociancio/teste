unit u_qrRelContasP;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, dialogs, jpeg;

type
  TQR_RelContasP = class(TQuickRep)
    qrContas: TQuery;
    titulo: TQRBand;
    qrl_sistema: TQRLabel;
    qrl_versao: TQRLabel;
    qrl_titulo: TQRLabel;
    QRi_logo: TQRImage;
    QRShape6: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    qrlFornec: TQRLabel;
    qrlStatVenc: TQRLabel;
    qrlDesPag: TQRLabel;
    qrlDesCorre: TQRLabel;
    qrlEmissaoDe: TQRLabel;
    QRLabel9: TQRLabel;
    qrlEmissaoAte: TQRLabel;
    QRLabel5: TQRLabel;
    qrlVencDe: TQRLabel;
    QRLabel8: TQRLabel;
    qrlVencAte: TQRLabel;
    QRLabel11: TQRLabel;
    qrlStatPag: TQRLabel;
    detConta: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText11: TQRDBText;
    QRBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    ghCorre: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape1: TQRShape;
    QRShape8: TQRShape;
    QRShape16: TQRShape;
    subCorre: TQRSubDetail;
    QRDBText40: TQRDBText;
    QRDBText42: TQRDBText;
    dbTxtValCorre: TQRDBText;
    QRShape9: TQRShape;
    gfCorre: TQRBand;
    QRShape2: TQRShape;
    QRShape5: TQRShape;
    QRLabel20: TQRLabel;
    qrlSubTotCorre: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRLabel23: TQRLabel;
    ghPag: TQRBand;
    QRShape17: TQRShape;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRShape3: TQRShape;
    QRShape12: TQRShape;
    QRLabel25: TQRLabel;
    subPag: TQRSubDetail;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRShape13: TQRShape;
    QRDBText9: TQRDBText;
    gfPag: TQRBand;
    QRShape4: TQRShape;
    QRLabel24: TQRLabel;
    QRShape7: TQRShape;
    qrlSubTotPag: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel29: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    qrCorrecoes: TQuery;
    qrPagamentos: TQuery;
    QRLabel6: TQRLabel;
    QRDBText13: TQRDBText;
    qrPagamentosDetalhe: TStringField;
    qrPagamentosData_Registro: TDateTimeField;
    qrPagamentosValor_Contabilizado: TFloatField;
    QRBand2: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    qrbsTotGeral: TQRBand;
    qrlTotSaldo: TQRLabel;
    qrlTotValor: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel10: TQRLabel;
    qrlPlano: TQRLabel;
    qrcbResumo: TQRChildBand;
    QRLabel30: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    qrContasSint: TQuery;
    qrContasSintPlano_contas: TStringField;
    qrContasSintDescricao: TStringField;
    qrContasSintTotSaldo: TFloatField;
    qrContasSintTotValor: TFloatField;
    qrrtResPlano: TQRRichText;
    qrContasCodigo: TStringField;
    qrContasFornecedor: TStringField;
    qrContasRazao_Social: TStringField;
    qrContasData_Emissao: TDateTimeField;
    qrContasData_Vencimento: TDateTimeField;
    qrContasHistorico: TStringField;
    qrContasSaldo: TFloatField;
    qrContasValor: TFloatField;
    qrContasqDias: TIntegerField;
    qrContasStatusVenc: TStringField;
    qrContasStatusPag: TStringField;
    qrContasDescricao: TStringField;
    qrContasPlano_contas: TStringField;
    qrCorrecoesFornecedor: TStringField;
    qrCorrecoesCodigo: TStringField;
    qrCorrecoesRegistro: TAutoIncField;
    qrCorrecoesData: TDateTimeField;
    qrCorrecoesTipo_Correcao: TStringField;
    qrCorrecoesValor: TFloatField;
    qrCorrecoesObs: TStringField;
    qrCorrecoesDescricao: TStringField;
    qrCorrecoesPositivo: TSmallintField;
    procedure qrContasAfterScroll(DataSet: TDataSet);
    procedure gfCorreBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure subCorreBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure subPagBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure gfPagBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrbsTotGeralBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure detContaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrcbResumoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  QR_RelContasP: TQR_RelContasP;
  vSubTotCorre, vSubTotPag: Real;
  vTotValor, vTotSaldo: Real;

implementation

uses u_contasp;

{$R *.DFM}

procedure TQR_RelContasP.qrContasAfterScroll(DataSet: TDataSet);
begin
     If f_contasp.cbRelCorre.Checked Then
        With qrCorrecoes Do Begin
            Close;
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := qrContasFornecedor.AsString;
            Params[3].AsString := qrContasCodigo.AsString;
            Open;
        End;

     If f_contasp.cbRelPag.Checked Then
        With qrPagamentos Do Begin
            Close;
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := qrContasFornecedor.AsString;
            Params[3].AsString := qrContasCodigo.AsString;
            Open;
        End;
end;

procedure TQR_RelContasP.gfCorreBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     If vSubTotCorre >= 0 Then
        qrlSubTotCorre.Font.Color := clMaroon
     Else
        qrlSubTotCorre.Font.Color := clNavy;
     qrlSubTotCorre.Caption := FormatFloat('#,##0.00#', -vSubTotCorre);
     vSubTotCorre := 0;
end;

procedure TQR_RelContasP.subCorreBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     { OBS: CORREÇÃO POSITIVA EM RELAÇÃO AO SALDO }
     //If qrCorrecoesPositivo.AsBoolean Then Begin
     If qrCorrecoesPositivo.Asinteger = 1 Then Begin
        dbTxtValCorre.Font.Color := clMaroon;
        vSubTotCorre := vSubTotCorre + qrCorrecoesValor.AsFloat;
     End
     Else Begin
        dbTxtValCorre.Font.Color := clNavy;
        vSubTotCorre := vSubTotCorre - qrCorrecoesValor.AsFloat;
     End;
end;

procedure TQR_RelContasP.subPagBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     vSubTotPag := vSubTotPag + qrPagamentosValor_Contabilizado.AsFloat;
end;

procedure TQR_RelContasP.gfPagBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     qrlSubTotPag.Caption := FormatFloat('#,##0.00#', vSubTotPag);
     vSubTotPag := 0;
end;

procedure TQR_RelContasP.qrbsTotGeralBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     qrlTotValor.Caption := FormatFloat('#,##0.00#', vTotValor);
     qrlTotSaldo.Caption := FormatFloat('#,##0.00#', vTotSaldo);
     vTotValor := 0;
     vTotSaldo := 0;
end;

procedure TQR_RelContasP.detContaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     vTotValor := vTotValor + qrContasValor.AsFloat;
     vTotSaldo := vTotSaldo + qrContasSaldo.AsFloat;
end;

procedure TQR_RelContasP.qrcbResumoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
   vLinha: String;
   vAux: String;
begin
     With qrContasSint Do Begin
         If Not Active Then Begin
            PrintBand := False;
            Exit;
         End;
         qrrtResPlano.Lines.Clear;
         While Not Eof Do Begin
              vLinha := '';
              vAux := qrContasSintDescricao.AsString + StringOfChar(' ', 75);
              vLinha := Copy(vAux, 1, 75);
              vAux := StringOfChar(' ', 20) + FormatFloat('#,##0.00', qrContasSintTotValor.AsFloat);
              vLinha := vLinha + Copy(vAux, Length(vAux)-19, 20);
              vAux := StringOfChar(' ', 20) + FormatFloat('#,##0.00', qrContasSintTotSaldo.AsFloat);
              vLinha := vLinha + Copy(vAux, Length(vAux)-19, 20);
              qrrtResPlano.Lines.Append(vLinha);
              Next;
         End;
     End;
end;

end.
