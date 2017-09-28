unit U_relconsumo;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQR_RelConsumo = class(TQuickRep)
    TitleBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel26: TQRLabel;
    QRLabel31: TQRLabel;
    qrItensRCR: TQuery;
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
    qvalortotal: TQRLabel;
    QRBand1: TQRBand;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRDBText7: TQRDBText;
    qvalor: TQRLabel;
    qrRCRTemp: TQuery;
    qrRCRTempProcesso: TStringField;
    qrRCRTempNCM: TStringField;
    qrRCRTempDESCRICAO_PRODUTO: TStringField;
    qrRCRTempFATURA: TStringField;
    qrRCRTemppagina: TStringField;
    qrRCRTempquantidade: TFloatField;
    qrRCRTempvalor: TFloatField;
    qquant: TQRLabel;
    qrl_local: TQRLabel;
    qrl_faturas: TQRLabel;
    QRLabel1: TQRLabel;
    qrCambio: TQuery;
    qrCambioCodigo: TStringField;
    qrCambioTaxa_Conversao: TStringField;
    qrRCRTempSequencial: TIntegerField;
    qrItensRCRCodigo: TStringField;
    qrItensRCRtdecla: TStringField;
    qrItensRCRNCM: TStringField;
    qrItensRCRProduto: TStringField;
    qrItensRCRPO: TStringField;
    qrItensRCRdesc: TMemoField;
    qrItensRCRFatura: TStringField;
    qrItensRCRPagina: TStringField;
    qrItensRCRSequencial: TStringField;
    qrItensRCRSomaDeQuantidade: TFloatField;
    qrItensRCRSomaDeValor_Aduaneiro: TFloatField;
    qrItensRCRSomaDeValortotal: TFloatField;
    qrItensRCRRegime_Tributacao_II: TStringField;
    qrItensRCRRegime_Tributacao_IPI: TStringField;
    qrItensRCRPrazo_permanencia: TIntegerField;
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  QR_RelConsumo: TQR_RelConsumo;

implementation

uses U_prorcr, U_MSCOMEX;

{$R *.DFM}

procedure TQR_RelConsumo.QuickRepStartPage(Sender: TCustomQuickRep);
begin
     qrl_local.Caption := F_proRCR.qrFilialDescricao.AsString+', '+FormatDateTime('dd " de " mmmm " de " yyyy', Date());
end;

procedure TQR_RelConsumo.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var ovalor: Real;

begin
     ovalor := 0;
     F_proRCR.qrFaturas.Locate('Codigo',qrRCRTempFatura.AsString,[]);
     If F_proRCR.qrFaturasMoeda.AsString = '220' Then Begin
        ovalor := qrRCRTempValor.AsFloat;
        qvalor.Caption := FloatToStrF(ovalor,fffixed,10,2);
     End
     Else Begin
        {converti para real}
        qrCambio.Locate('Codigo',F_proRCR.qrFaturasMoeda.AsString,[]);
        ovalor := (qrRCRTempValor.AsFloat*qrCambioTaxa_Conversao.asFloat);
        {converti para dolar}
        qrCambio.Locate('Codigo','220',[]);
        ovalor := (ovalor/qrCambioTaxa_Conversao.AsFloat);
        qvalor.Caption := FloatToStrF(ovalor,fffixed,10,2);
     end;

     qvalortotal.Caption := FloatToStrF(StrToFloat(qvalortotal.Caption)+ovalor,fffixed,10,2);

     If ovalor = 0 Then  qvalor.Caption := '';

     If qrRCRTempQuantidade.AsFloat = 0 Then  qquant.Caption := ''
     Else  qquant.Caption := qrRCRTempQuantidade.AsString;
end;

procedure TQR_RelConsumo.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
     With qrCambio Do Begin
         Close;
         Open;
     End;
     qvalortotal.Caption := '0';
end;

end.
