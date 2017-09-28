unit u_relContCor;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, Dialogs;

type
  Tf_relContCor = class(TQuickRep)
    QRBand1: TQRBand;
    qrlEmpresa: TQRLabel;
    qrlSistema: TQRLabel;
    qrlTitulo: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRi_logo: TQRImage;
    QRLabel3: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRBand2: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    qrRcc: TQuery;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    qrbTotal: TQRBand;
    qrlTotal: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    qrlSald: TQRLabel;
    qrlVtot: TQRLabel;
    qrRccEmpresa: TStringField;
    qrRccFilial: TStringField;
    qrRccCodigo: TAutoIncField;
    qrRccBanco_Caixa: TStringField;
    qrRccDescricao: TStringField;
    qrRccBanco: TStringField;
    qrRccAgencia: TStringField;
    qrRccConta_Corrente: TStringField;
    qrRccSaldo: TFloatField;
    qrRccNivel: TStringField;
    qrRccData: TDateTimeField;
    qrRccEmpresacc: TStringField;
    qrRccFilialcc: TStringField;
    qrRccASCAA: TSmallintField;
    qrRccCodigo_1: TStringField;
    qrRccRazao_Social: TStringField;
    qrRccCodigo_Empresa: TStringField;
    qrRccCodigo_Filial: TStringField;
    qrRccDescricao_1: TStringField;
    qrRccEndereco: TStringField;
    qrRccNumero: TStringField;
    qrRccComplemento: TStringField;
    qrRccBairro: TStringField;
    qrRccCidade: TStringField;
    qrRccUF: TStringField;
    qrRccCEP: TStringField;
    qrRccTelefone: TStringField;
    qrRccFax: TStringField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private

  public

  end;

var
  f_relContCor: Tf_relContCor;
  v_tot : Real;
implementation
 Uses U_MSCOMEX;
{$R *.DFM}

procedure Tf_relContCor.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
     qrlSistema.Caption := v_sistema +' - '+ v_versao;
     qrlEmpresa.Caption := 'MS LOGÍSTICA ADUANEIRA LTDA.';
     qrlTitulo.Caption := 'Relatório de Contas Correntes';
end;

procedure Tf_relContCor.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
     v_tot := v_tot + qrRccSaldo.AsFloat;
     qrlTotal.Caption := FormatFloat('###,###,##0.00', v_tot);
end;

procedure Tf_relContCor.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
v_tot := 0;
end;

end.
