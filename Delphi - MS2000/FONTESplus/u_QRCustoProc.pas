unit u_QRCustoProc;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TQR_RelCustoProc = class(TQuickRep)
    titulo: TQRBand;
    qrlSistema: TQRLabel;
    qrlVersao: TQRLabel;
    qrl_titulo: TQRLabel;
    qrbConsulta: TQRBand;
    QRLabel4: TQRLabel;
    qrMemoCliente: TQRMemo;
    qrCusto: TQuery;
    dsCusto: TDataSource;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRSubDetail2: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRShape1: TQRShape;
    QRShape5: TQRShape;
    GroupHeaderBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape6: TQRShape;
    QRShape9: TQRShape;
    QRLabel1: TQRLabel;
    QRBand2: TQRBand;
    qrlTot: TQRLabel;
    QRLabel8: TQRLabel;
    QRi_logo: TQRImage;
    qrCli: TQuery;
    QRLabel2: TQRLabel;
    qrMemoProcesso: TQRMemo;
    qrCustoImportador: TStringField;
    qrCustoData_Registro: TDateTimeField;
    qrCustoCodigo: TStringField;
    qrCustoDescricao: TStringField;
    qrCustoValor_Registrado: TFloatField;
    qrCliCodigo: TStringField;
    qrCliRazao_Social: TStringField;
    procedure tituloBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrbConsultaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  QR_RelCustoProc: TQR_RelCustoProc;
  valTot: Double;
  p: Integer;

implementation

uses u_MSCOMEX, u_RelCustoProc;

{$R *.DFM}

procedure TQR_RelCustoProc.tituloBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     qrlSistema.Caption := v_sistema;
     qrlVersao.Caption := v_versao;
end;

procedure TQR_RelCustoProc.qrbConsultaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var i: Integer;

begin
     qrMemoCliente.Lines.Clear;
     If qrCusto.RecordCount = 0 Then
        qrMemoCliente.Lines.Append('NÃO ENCONTRADO!')
     Else Begin
        qrCli.Locate('Codigo',qrCustoImportador.AsString,[]);
        qrMemoCliente.Lines.Append(qrCliRazao_Social.AsString);
     End;
     qrMemoProcesso.Lines.Append(Trim(F_RelCustoProc.edtProcesso.Text));
end;

procedure TQR_RelCustoProc.QRSubDetail2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     valTot := valTot + qrCustoValor_Registrado.AsFloat;
end;

procedure TQR_RelCustoProc.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     qrlTot.Caption := FormatFloat('###,###,##0.00', valTot);
     valTot := 0;
end;

end.
