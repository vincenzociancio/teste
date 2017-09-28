unit u_QRNFSAnal;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TQR_RelNFSAnal = class(TQuickRep)
    titulo: TQRBand;
    qrl_sistema: TQRLabel;
    qrl_versao: TQRLabel;
    qrl_titulo: TQRLabel;
    qrbConsulta: TQRBand;
    QRLabel4: TQRLabel;
    qrlperiodo: TQRLabel;
    QRLabel6: TQRLabel;
    qrlPerDe: TQRLabel;
    qrlPerAte: TQRLabel;
    qrl_imprime: TQRLabel;
    QRLabel3: TQRLabel;
    qrshEmitidas: TQRShape;
    qrshCanceladas: TQRShape;
    qrMemoCliente: TQRMemo;
    qrNFS: TQuery;
    dsNFS: TDataSource;
    QRi_logo: TQRImage;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    qrNFSDet: TQuery;
    qrNFSDetNFiscal: TStringField;
    qrNFSDetUnidade: TStringField;
    qrNFSDetQuantidade: TStringField;
    qrNFSDetDescricao: TStringField;
    qrNFSDetValor_unitario: TFloatField;
    qrNFSDetValor_total: TFloatField;
    dsNFSDet: TDataSource;
    QRSubDetail2: TQRSubDetail;
    GroupFooterBand1: TQRBand;
    GroupHeaderBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape20: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText6: TQRDBText;
    ChildBand1: TQRChildBand;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    qrdbtNF: TQRDBText;
    qrdbtCli: TQRDBText;
    qrdbtStatus: TQRDBText;
    qrdbtValor: TQRDBText;
    qrdbtISS: TQRDBText;
    qrdbtIRRF: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRLabel20: TQRLabel;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel15: TQRLabel;
    qrshRecebidas: TQRShape;
    QRShape23: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText9: TQRDBText;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    qrNFSEmpresa: TStringField;
    qrNFSData_emissao: TDateTimeField;
    qrNFSData_Recebimento: TDateTimeField;
    qrNFSProcesso: TStringField;
    qrNFSImportador: TStringField;
    qrNFSNFiscal: TStringField;
    qrNFSPercentual_ISS: TFloatField;
    qrNFSPercentual_IRRF: TFloatField;
    qrNFSVatotnota: TFloatField;
    qrNFSCancelada: TIntegerField;
    qrNFSRazao_Social: TStringField;
    qrNFSValServico: TFloatField;
    procedure tituloBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrbConsultaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrNFSAfterScroll(DataSet: TDataSet);
  private

  public

  end;

var
  QR_RelNFSAnal: TQR_RelNFSAnal;

implementation

uses u_MSCOMEX, u_RelNFServicos;

{$R *.DFM}

procedure TQR_RelNFSAnal.tituloBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     qrl_sistema.Caption := v_sistema;
     qrl_versao.Caption := v_versao;  
end;

procedure TQR_RelNFSAnal.qrbConsultaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var i: Integer;

begin
     With F_RelNFServicos Do Begin
         qrlperiodo.caption := 'Período de Emissão da Nota Fiscal:';
         If rgOp.ItemIndex = 0 Then Begin
            qrshEmitidas.Brush.Color := clBlack;
            qrshCanceladas.Brush.Color := clWhite;
            qrshRecebidas.Brush.Color := clWhite;
         End;
         If rgOp.ItemIndex = 1 Then Begin
            qrshEmitidas.Brush.Color := clWhite;
            qrshCanceladas.Brush.Color := clBlack;
            qrshRecebidas.Brush.Color := clWhite;
         End;
         If rgOp.ItemIndex = 2 Then Begin
            qrlperiodo.caption := 'Período de Recebimento da Nota Fiscal:';
            qrshEmitidas.Brush.Color := clWhite;
            qrshCanceladas.Brush.Color := clWhite;
            qrshRecebidas.Brush.Color := clBlack;
         End;
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
         If cb_recebe.Checked Then Begin
            qrl_imprime.Caption :=  'Emitidas (Não Recebidas)';
         end
         else begin
            qrl_imprime.Caption :=  'Emitidas';
         end;

     End;
end;

procedure TQR_RelNFSAnal.qrNFSAfterScroll(DataSet: TDataSet);
begin
     With qrNFSDet Do Begin
         Close;
         Params[2].AsString := qrNFSNFiscal.AsString;
         Open;
     End;
end;

end.
