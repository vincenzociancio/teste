unit u_QRCustoPerSint;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQR_RelCustoPerSint = class(TQuickRep)
    titulo: TQRBand;
    qrlSistema: TQRLabel;
    qrlVersao: TQRLabel;
    qrl_titulo: TQRLabel;
    qrbConsulta: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    qrlPerDe: TQRLabel;
    qrlPerAte: TQRLabel;
    GroupHeaderBand1: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape19: TQRShape;
    qrSdCustos: TQRSubDetail;
    QRShape14: TQRShape;
    qrdbtStatus: TQRDBText;
    GroupFooterBand1: TQRBand;
    qrlTotPercent: TQRLabel;
    QRBand2: TQRBand;
    qrlTot: TQRLabel;
    QRLabel2: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    qrMemoCliente: TQRMemo;
    qrCusto: TQuery;
    dsCusto: TDataSource;
    qrdbtIRRF: TQRDBText;
    qrCli: TQuery;
    QRi_logo: TQRImage;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRShape5: TQRShape;
    qrlSubTot: TQRLabel;
    QRShape6: TQRShape;
    qrCustoImportador: TStringField;
    qrCustoDescricao: TStringField;
    qrCustoValor_Registrado: TFloatField;
    qrCliImportador: TStringField;
    qrCliValorTotal: TFloatField;
    QRShape17: TQRShape;
    qrSdCliente: TQRSubDetail;
    qrlCliente: TQRLabel;
    qrlPercent: TQRLabel;
    procedure tituloBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrbConsultaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrCliAfterScroll(DataSet: TDataSet);
    procedure qrSdCustosBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure GroupFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrSdClienteBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepAfterPreview(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  QR_RelCustoPerSint: TQR_RelCustoPerSint;
  valSubTot, valTot: Double;
  p: Integer;

implementation

uses u_MSCOMEX, u_RelCustoPer;

{$R *.DFM}

procedure TQR_RelCustoPerSint.tituloBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     qrlSistema.Caption := v_sistema;
     qrlVersao.Caption := v_versao;
end;

procedure TQR_RelCustoPerSint.qrbConsultaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var i: Integer;

begin
     With F_RelCustoPer Do Begin
         qrlPerDe.Caption := mePerIni.Text;
         qrlPerAte.Caption := mePerFin.Text;

         qrMemoCliente.Lines.Clear;
         If cbTodos.Checked Then
            qrMemoCliente.Lines.Append('TODOS')
         Else
            With dbGrdImport Do
                For i:=0 To SelectedRows.Count-1 Do Begin
                   DataSource.DataSet.GotoBookmark(Pointer(SelectedRows.Items[i]));
                   qrMemoCliente.Lines.Append(Fields[1].AsString);
                End;
     End;
end;

procedure TQR_RelCustoPerSint.qrCliAfterScroll(DataSet: TDataSet);
begin
     With qrCusto Do Begin
         Close;
         ///(N.Numerario = 'ARM' Or N.Numerario = 'ARMA' Or N.Numerario = 'ARMF' Or N.Numerario = 'ARMP' Or N.Numerario = 'ICMS' Or N.Numerario = 'II' Or N.Numerario = 'IPI')
         SQL.Strings[4] := 'AND P.Importador = '''+ qrCliImportador.AsString +''' ';
         Open;
     End;
end;

procedure TQR_RelCustoPerSint.qrSdCustosBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
      valSubTot := valSubTot + qrCustoValor_Registrado.AsFloat;
      qrlPercent.Caption := Floattostrf((qrCustoValor_Registrado.AsFloat * 100 / qrCliValorTotal.AsFloat),fffixed,15,2);
end;

procedure TQR_RelCustoPerSint.GroupFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     qrlSubTot.Caption := FormatFloat('###,###,##0.00', valSubTot);
     valTot := valTot + valSubTot;
     valSubTot := 0;
end;

procedure TQR_RelCustoPerSint.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     qrlTot.Caption := FormatFloat('###,###,##0.00', valTot);
     valTot := 0;
end;

procedure TQR_RelCustoPerSint.qrSdClienteBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     With F_RelCustoPer Do
         If cbTodos.Checked Then Begin
            qrImport.Locate('Codigo',qrCliImportador.AsString,[]);
            qrlCliente.Caption := dbGrdImport.Fields[1].AsString;
         End
         Else Begin
            With dbGrdImport Do Begin
                DataSource.DataSet.GotoBookmark(Pointer(SelectedRows.Items[p]));
                qrlCliente.Caption := Fields[1].AsString;
            End;
            Inc(p);
         End;
end;

procedure TQR_RelCustoPerSint.QuickRepAfterPreview(Sender: TObject);
begin
     p := 0;
end;

procedure TQR_RelCustoPerSint.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
qrlversao.caption := v_versao;
end;

end.
