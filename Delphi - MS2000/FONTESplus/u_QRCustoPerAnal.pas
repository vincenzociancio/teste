unit u_QRCustoPerAnal;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TQR_RelCustoPerAnal = class(TQuickRep)
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
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape5: TQRShape;
    qrSdCliente: TQRSubDetail;
    qrlCliente: TQRLabel;
    GroupHeaderBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    QRLabel1: TQRLabel;
    QRBand1: TQRBand;
    QRShape3: TQRShape;
    QRLabel3: TQRLabel;
    qrlSubTot: TQRLabel;
    QRBand2: TQRBand;
    qrlTot: TQRLabel;
    QRLabel8: TQRLabel;
    qrCli: TQuery;
    qrCliImportador: TStringField;
    qrCliValorTotal: TFloatField;
    QRi_logo: TQRImage;
    qrCustoData_Registro: TDateTimeField;
    qrCustoCodigo: TStringField;
    qrCustoDescricao: TStringField;
    qrCustoValor_Registrado: TFloatField;
    procedure tituloBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrbConsultaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrSdClienteBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepAfterPreview(Sender: TObject);
    procedure qrCliAfterScroll(DataSet: TDataSet);
  private

  public

  end;

var
  QR_RelCustoPerAnal: TQR_RelCustoPerAnal;
  valSubTot, valTot: Double;
  p: Integer;

implementation

uses u_MSCOMEX, u_RelCustoPer;

{$R *.DFM}

procedure TQR_RelCustoPerAnal.tituloBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     qrlSistema.Caption := v_sistema;
     qrlVersao.Caption := v_versao;
end;

procedure TQR_RelCustoPerAnal.qrbConsultaBeforePrint(Sender: TQRCustomBand;
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

procedure TQR_RelCustoPerAnal.qrSdClienteBeforePrint(Sender: TQRCustomBand;
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

procedure TQR_RelCustoPerAnal.QRSubDetail2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     valSubTot := valSubTot + qrCustoValor_Registrado.AsFloat;
end;

procedure TQR_RelCustoPerAnal.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     qrlSubTot.Caption := FormatFloat('###,###,##0.00', valSubTot);
     valTot := valTot + valSubTot;
     valSubTot := 0;
end;

procedure TQR_RelCustoPerAnal.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     qrlTot.Caption := FormatFloat('###,###,##0.00', valTot);
     valTot := 0;
end;

procedure TQR_RelCustoPerAnal.QuickRepAfterPreview(Sender: TObject);
begin
     p := 0;
end;

procedure TQR_RelCustoPerAnal.qrCliAfterScroll(DataSet: TDataSet);
begin
     With qrCusto Do Begin
         Close;
         SQL.Strings[4] := 'AND P.Importador = '''+ qrCliImportador.AsString +''' ';
         Open;
     End;
end;

end.
