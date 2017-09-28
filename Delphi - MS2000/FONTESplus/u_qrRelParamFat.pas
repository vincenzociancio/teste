unit u_qrRelParamFat;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TF_qrRelParamFat = class(TQuickRep)
    titulo: TQRBand;
    qrl_titulo: TQRLabel;
    QRi_logo: TQRImage;
    qrbConsulta: TQRBand;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    qrFaturamento: TQuery;
    dsImport: TDataSource;
    QRSubDetail1: TQRSubDetail;
    QRShape12: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    qrCliente: TQuery;
    GroupHeaderBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    qrFaturamentoEmpresa: TStringField;
    qrFaturamentoFilial: TStringField;
    qrFaturamentoImportador: TStringField;
    qrFaturamentoTipo_Processo: TStringField;
    qrFaturamentoReg: TAutoIncField;
    qrFaturamentoBase_faturamento: TStringField;
    qrFaturamentoValor_fixo: TFloatField;
    qrFaturamentoPercentual: TFloatField;
    qrFaturamentoFaixa_inicial: TFloatField;
    qrFaturamentoFaixa_final: TFloatField;
    qrFaturamentoValor_minimo: TFloatField;
    qrFaturamentoValor_maximo: TFloatField;
    qrFaturamentoValor_LI: TFloatField;
    qrFaturamentoValor_DTA1: TFloatField;
    qrFaturamentoValor_taxaexpediente: TFloatField;
    qrFaturamentoValor_fixoc: TFloatField;
    qrFaturamentoCODIGO: TStringField;
    qrFaturamentoDESCRICAO: TStringField;
    QRLabel16: TQRLabel;
    QRShape22: TQRShape;
    QRDBText13: TQRDBText;
    QRShape23: TQRShape;
    QRShape11: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    qrlEmpresa: TQRLabel;
    qrlSistema: TQRLabel;
    qrClienteRazao_Social: TStringField;
    qrClienteCodigo: TStringField;
    QRSysData1: TQRSysData;
    procedure qrClienteAfterScroll(DataSet: TDataSet);
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
  private

  public

  end;

var
  F_qrRelParamFat: TF_qrRelParamFat;

implementation

uses u_RelParamFat, u_mscomex;

{$R *.DFM}

procedure TF_qrRelParamFat.qrClienteAfterScroll(DataSet: TDataSet);
begin
         qrFaturamento.Close;
         qrFaturamento.Params[0].AsString := qrClienteCodigo.AsString;
         qrFaturamento.Open;

end;

procedure TF_qrRelParamFat.QuickRepStartPage(Sender: TCustomQuickRep);
begin
     qrlSistema.Caption := v_sistema +' - '+ v_versao;
     qrlEmpresa.Caption := 'MS LOGÍSTICA ADUANEIRA LTDA.';
end;

end.
