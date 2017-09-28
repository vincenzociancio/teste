unit U_RPSvarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables;

type
  Tqr_RPSvarios = class(TForm)
    QR: TQuickRep;
    TitleBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel9: TQRLabel;
    qrps1: TQRLabel;
    nat1: TQRLabel;
    cod_fis1: TQRLabel;
    qdtemissao1: TQRLabel;
    QRShape3: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    qfir1: TQRLabel;
    QRLabel17: TQRLabel;
    qend1: TQRLabel;
    QRLabel18: TQRLabel;
    qmun1: TQRLabel;
    QRLabel22: TQRLabel;
    qest1: TQRLabel;
    QRLabel23: TQRLabel;
    qcep1: TQRLabel;
    QRLabel19: TQRLabel;
    qcnpj1: TQRLabel;
    QRLabel21: TQRLabel;
    qinsc11: TQRLabel;
    QRLabel47: TQRLabel;
    qinsc12: TQRLabel;
    QRLabel20: TQRLabel;
    qcond1: TQRLabel;
    QRLabel12: TQRLabel;
    ema1: TQRLabel;
    QRLabel32: TQRLabel;
    QRShape4: TQRShape;
    QRLabel33: TQRLabel;
    QRShape5: TQRShape;
    QRLabel34: TQRLabel;
    QRShape6: TQRShape;
    QRLabel35: TQRLabel;
    QRShape7: TQRShape;
    QRLabel36: TQRLabel;
    QRShape8: TQRShape;
    QRLabel6: TQRLabel;
    qrl_via: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    q_det: TQuery;
    q_detEmpresa: TStringField;
    q_detFilial: TStringField;
    q_detNFiscal: TStringField;
    q_detreg: TAutoIncField;
    q_detUnidade: TStringField;
    q_detQuantidade: TStringField;
    q_detDescricao: TStringField;
    q_detValor_unitario: TFloatField;
    q_detValor_total: TFloatField;
    QRShape16: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape9: TQRShape;
    qvaldet1: TQRLabel;
    qvaldet2: TQRLabel;
    q_nfs: TQuery;
    q_nfsnfiscal: TStringField;
    DetailBand1: TQRBand;
    QRSubDetail2: TQRSubDetail;
    QRShape14: TQRShape;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    qaliq11: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRShape28: TQRShape;
    qaliq12: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel78: TQRLabel;
    QRShape29: TQRShape;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    qaliq13: TQRLabel;
    QRLabel82: TQRLabel;
    QRShape30: TQRShape;
    QRLabel29: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel62: TQRLabel;
    QRShape15: TQRShape;
    QRShape27: TQRShape;
    QRShape17: TQRShape;
    QRShape21: TQRShape;
    QRShape26: TQRShape;
    QRShape22: TQRShape;
    qvaltot1: TQRLabel;
    qpcc1: TQRLabel;
    qirrf1: TQRLabel;
    qsub1: TQRLabel;
    qiss1: TQRLabel;
    qval1: TQRLabel;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape24: TQRShape;
    QRShape20: TQRShape;
    QRShape23: TQRShape;
    QRShape25: TQRShape;
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure q_nfsAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    Descricao : String;
  public
    { Public declarations }
  end;

var
  qr_RPSvarios: Tqr_RPSvarios;

implementation

uses U_NFSERVICOS;

{$R *.DFM}

procedure Tqr_RPSvarios.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qvaldet1.caption := '';
  qvaldet2.caption := '';

  { WELLINGTON - 12/08/2011 - INSERIDA COMPARAÇÃO PARA EVITAR A DUPLICAÇÃO DO ÚLTIMO REGISTRO }
  if Descricao <> q_detDescricao.AsString
   then begin
     if q_detvalor_unitario.asfloat > 0
      then qvaldet1.caption := FormatFloat('###,###,##0.00', q_detvalor_unitario.asfloat);

     if q_detvalor_total.asfloat > 0
      then qvaldet2.caption := FormatFloat('###,###,##0.00', q_detvalor_total.asfloat);
   end
   else PrintBand := False;

  Descricao := q_detDescricao.AsString;
end;

procedure Tqr_RPSvarios.q_nfsAfterScroll(DataSet: TDataSet);
begin
  if q_nfsnfiscal.asstring = '015781'
   then qrl_via.caption := '(EXTRÁIDO EM 2 VIAS) -  1ª VIA - CLIENTE'
   else qrl_via.caption := '(EXTRÁIDO EM 2 VIAS) -  2ª VIA - EMPRESA';
end;

end.
