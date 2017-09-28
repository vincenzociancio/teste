unit u_QRNFSSint;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TQR_RelNFSSint = class(TQuickRep)
    titulo: TQRBand;
    qrl_sistema: TQRLabel;
    qrl_versao: TQRLabel;
    qrl_titulo: TQRLabel;
    qrbConsulta: TQRBand;
    QRLabel4: TQRLabel;
    qrlPeriodo: TQRLabel;
    QRLabel6: TQRLabel;
    qrlPerDe: TQRLabel;
    qrlPerAte: TQRLabel;
    qrl_imprime: TQRLabel;
    qrbProc: TQRSubDetail;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    qrdbtNF: TQRDBText;
    qrdbtCli: TQRDBText;
    qrdbtStatus: TQRDBText;
    qrbSubTotal: TQRBand;
    qrlSubTot: TQRLabel;
    qrbTotal: TQRBand;
    qrlTot: TQRLabel;
    QRLabel2: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRLabel3: TQRLabel;
    qrshEmitidas: TQRShape;
    qrshCanceladas: TQRShape;
    qrMemoCliente: TQRMemo;
    qrNFS: TQuery;
    dsFNS: TDataSource;
    qrdbtValor: TQRDBText;
    qrdbtISS: TQRDBText;
    qrdbtIRRF: TQRDBText;
    qrData: TQuery;
    qrCli: TQuery;
    QRi_logo: TQRImage;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRShape3: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    qrlSubServ: TQRLabel;
    qrlServ: TQRLabel;
    QRLsubiss: TQRLabel;
    qrlsubirrf: TQRLabel;
    qrliss: TQRLabel;
    qrlirrf: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel13: TQRLabel;
    qrshRecebidas: TQRShape;
    QRShape19: TQRShape;
    QRDBText5: TQRDBText;
    GroupHeaderBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRLabel20: TQRLabel;
    QRShape2: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape14: TQRShape;
    QRLabel14: TQRLabel;
    QRDBText6: TQRDBText;
    qrlsubpcc: TQRLabel;
    qrlpcc: TQRLabel;
    qrDataData_emissao: TDateTimeField;
    qrNFSEmpresa: TStringField;
    qrNFSData_emissao: TDateTimeField;
    qrNFSData_Recebimento: TDateTimeField;
    qrNFSImportador: TStringField;
    qrNFSNFiscal: TStringField;
    qrNFSPercentual_ISS: TFloatField;
    qrNFSPercentual_IRRF: TFloatField;
    qrNFSPercentual_PCC: TFloatField;
    qrNFSVatotnota: TFloatField;
    qrNFSCancelada: TIntegerField;
    qrNFSRazao_Social: TStringField;
    qrNFSValservico: TFloatField;
    qrNFSProcesso: TStringField;
    qrNFSvalor_iss: TFloatField;
    qrNFSValor_IRRF: TFloatField;
    qrNFSValor_PCC: TFloatField;
    qrCliRazao_Social: TStringField;
    ChildBand1: TQRChildBand;
    QRLabel15: TQRLabel;
    qrlMedTotServico: TQRLabel;
    qrlMedTotIss: TQRLabel;
    qrlMedTotIrrf: TQRLabel;
    qrlMedTotPcc: TQRLabel;
    qrlMedTotLiq: TQRLabel;
    qrlMedSubServ: TQRLabel;
    qrlMedSubIss: TQRLabel;
    qrlMedSubIrrf: TQRLabel;
    qrlMedSubPcc: TQRLabel;
    qrlMedSubTot: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape4: TQRShape;
    procedure tituloBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrbConsultaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrDataAfterScroll(DataSet: TDataSet);
    procedure qrCliAfterScroll(DataSet: TDataSet);
    procedure qrbProcBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrbSubTotalBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrbTotalBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    procedure CalculaTotalPrevistoMedicao(pvalServ,pvaliss,pvalirrf,pvalpcc,pvaltot : Double);
  public
    MostraMedicao : Boolean;
  end;

var
  QR_RelNFSSint: TQR_RelNFSSint;
  valSubTot, valTot   : Double;
  valSubServ, valServ : Double;
  valSubiss, valiss   : Double;
  valSubirrf, valirrf : Double;
  valSubpcc, valpcc   : Double;  

implementation

uses u_MSCOMEX, u_RelNFServicos;

{$R *.DFM}

procedure TQR_RelNFSSint.tituloBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrl_sistema.Caption := v_sistema;
  qrl_versao.Caption  := v_versao;
end;

procedure TQR_RelNFSSint.qrbConsultaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  i: Integer;
begin
  with F_RelNFServicos do
   begin
     qrlperiodo.caption := 'Período de Emissão da Nota Fiscal:';

     if rgOp.ItemIndex = 0
      then begin
        qrshEmitidas.Brush.Color   := clBlack;
        qrshCanceladas.Brush.Color := clWhite;
        qrshRecebidas.Brush.Color  := clWhite;
      end;

     if rgOp.ItemIndex = 1
      then begin
        qrshEmitidas.Brush.Color   := clWhite;
        qrshCanceladas.Brush.Color := clBlack;
        qrshRecebidas.Brush.Color  := clWhite;
      end;

     if rgOp.ItemIndex = 2
      then begin
        qrlperiodo.caption := 'Período de Recebimento da Nota Fiscal:';
        qrshEmitidas.Brush.Color   := clWhite;
        qrshCanceladas.Brush.Color := clWhite;
        qrshRecebidas.Brush.Color  := clBlack;
      end;

     qrlPerDe.Caption  := mePerIni.Text;
     qrlPerAte.Caption := mePerFin.Text;

     qrMemoCliente.Lines.Clear;

     if cbTodos.Checked
      then qrMemoCliente.Lines.Append('TODOS')
      else with dbGrdImport do
             for i := 0 to SelectedRows.Count-1 do
              begin
                DataSource.DataSet.GotoBookmark(Pointer(SelectedRows.Items[i]));
                qrMemoCliente.Lines.Append(Fields[1].AsString);
              end;

     if cb_recebe.Checked
      then qrl_imprime.Caption := 'Emitidas (Não Recebidas)'
      else qrl_imprime.Caption := 'Emitidas';
   end;
end;

procedure TQR_RelNFSSint.qrDataAfterScroll(DataSet: TDataSet);
begin
  with qrNFS do
   begin
     Close;

     if qrDataData_emissao.AsString <> ''
      then SQL.Strings[4] := 'AND Data_emissao = Cast('''+ qrDataData_emissao.AsString +''' as DateTime) '
      else SQL.Strings[4] := 'AND Data_emissao Is Null ';

     Open;
   end;
end;

procedure TQR_RelNFSSint.qrCliAfterScroll(DataSet: TDataSet);
begin
  with qrNFS do
   begin
     Close;
     SQL.Strings[4] := 'AND razao_social = '''+ qrClirazao_social.AsString +''' ';
     Open;
   end;
end;

procedure TQR_RelNFSSint.qrbProcBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  valSubTot  := valSubTot  + qrNFSVatotnota.AsFloat;
  valSubServ := valSubServ + qrNFSValServico.AsFloat;
  valSubiss  := valSubiss  + qrNFSValor_iss.AsFloat;
  valSubirrf := valSubirrf + qrNFSValor_irrf.AsFloat;
  valSubpcc  := valSubpcc  + qrNFSValor_pcc.AsFloat;
end;

procedure TQR_RelNFSSint.qrbSubTotalBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrlSubTot.Caption  := FormatFloat('##0.00', valSubTot);
  qrlSubServ.Caption := FormatFloat('##0.00', valSubServ);
  qrlSubiss.Caption  := FormatFloat('##0.00', valSubiss);
  qrlSubirrf.Caption := FormatFloat('##0.00', valSubirrf);
  qrlSubpcc.Caption  := FormatFloat('##0.00', valSubpcc);

  valTot  := valTot  + valSubTot;
  valServ := valServ + valSubServ;
  valiss  := valiss  + valSubiss;
  valirrf := valirrf + valSubirrf;
  valpcc  := valpcc  + valSubpcc;

  valSubTot  := 0;
  valSubServ := 0;
  valSubiss  := 0;
  valSubirrf := 0;
  valSubpcc  := 0;
end;

procedure TQR_RelNFSSint.qrbTotalBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrlTot.Caption  := FormatFloat('##0.00', valTot);
  qrlServ.Caption := FormatFloat('##0.00', valServ);
  qrliss.Caption  := FormatFloat('##0.00', valiss);
  qrlirrf.Caption := FormatFloat('##0.00', valirrf);
  qrlpcc.Caption  := FormatFloat('##0.00', valpcc);

  ChildBand1.Enabled := F_RelNFServicos.cbMedicao.Checked;

  if ChildBand1.Enabled
   then CalculaTotalPrevistoMedicao(valServ,valiss,valirrf,valpcc,valTot);

  valTot  := 0;
  valServ := 0;
  valiss  := 0;
  valirrf := 0;
  valpcc  := 0;
end;

procedure TQR_RelNFSSint.CalculaTotalPrevistoMedicao(pvalServ,pvaliss,pvalirrf,pvalpcc,pvaltot : Double);
var
  QrAux : TQuery;
  TotMedServico, TotMedIss, TotMedIrrf, TotMedPcc, TotMedLiq : Double;
  ImportadoresAgrupados : String;
begin
  QrAux := TQuery.Create(nil);
  QrAux.DatabaseName := 'DBNMSCOMEX';

  TotMedServico := 0;
  TotMedIss     := 0;
  TotMedIrrf    := 0;
  TotMedPcc     := 0;
  TotMedLiq     := 0;

  ImportadoresAgrupados := '';

  try
    if (F_RelNFServicos.vFiltroImpMedicao <> '')
     then begin
       QrAux.Close;
       QrAux.SQL.Clear;
       QrAux.SQL.Add('SELECT DISTINCT IA.Codigo_AGRUPADO                               ');
       QrAux.SQL.Add('  FROM IMPORTADORES I INNER JOIN Importadores_Agrupados IA       ');
       QrAux.SQL.Add('    ON I.Codigo = IA.Codigo                                      ');
       QrAux.SQL.Add(' WHERE I.Codigo IN (' + F_RelNFServicos.vFiltroImpMedicao + ')   ');
       QrAux.Open;

       QrAux.First;

       //QrAux.SQL.SaveToFile('c:\TESTE.TXT');

       while not QrAux.Eof do
        begin
          if (ImportadoresAgrupados = '')
           then ImportadoresAgrupados := QuotedStr(QrAux.Fields[0].AsString)
           else ImportadoresAgrupados := ImportadoresAgrupados + ',' + QuotedStr(QrAux.Fields[0].AsString);

          QrAux.Next;
        end;
     end;

    QrAux.Close;
    QrAux.SQL.Clear;
    QrAux.SQL.Add('SELECT CMI.Codigo_Controle,                                                                                                                        ');
    QrAux.SQL.Add('       (SELECT ISNULL(SUM(Valor_Registrado),0) FROM Numerarios_Processos WHERE Numerario = ''HONO'' AND Processo = CMI.Processo) AS TOTAL_SERVICO, ');
    QrAux.SQL.Add('       (SELECT ISNULL(SUM(Valor_Registrado),0) FROM Numerarios_Processos WHERE Numerario = ''ISS'' AND Processo = CMI.Processo) AS TOTAL_ISS,      ');
    QrAux.SQL.Add('       (SELECT ISNULL(SUM(Valor),0) FROM Creditos_Processos WHERE Credito = ''IRRF'' AND Processo = CMI.Processo) AS TOTAL_IRRF,                   ');
    QrAux.SQL.Add('       (SELECT ISNULL(SUM(Valor),0) FROM Creditos_Processos WHERE Credito = ''CCP'' AND Processo = CMI.Processo) AS TOTAL_CCP                      ');
    QrAux.SQL.Add('  FROM Controle_Medicao_Itens CMI INNER JOIN Controle_Medicao CM                                                                                   ');
    QrAux.SQL.Add('    ON CMI.Codigo_Controle = CM.Codigo                                                                                                             ');
    QrAux.SQL.Add(' WHERE CM.Status <= 1                                                                                                                              ');

    if F_RelNFServicos.DataPerIni <> '  /  /    '
     then QrAux.SQL.Add(' AND CM.Data_Medicao >= CAST('''+F_RelNFServicos.DataPerIni+''' as datetime) ');

    if F_RelNFServicos.DataPerFin <> '  /  /    '
     then QrAux.SQL.Add(' AND CM.Data_Medicao <= CAST('''+F_RelNFServicos.DataPerFin+''' as datetime) ');

    if (ImportadoresAgrupados <> '')
     then QrAux.SQL.Add(' AND CM.Importador_Agrupado IN (' + ImportadoresAgrupados + ') ');

    QrAux.Open;
    QrAux.First;

    //QrAux.SQL.SaveToFile('c:\TESTE.TXT');

    ChildBand1.Enabled := (QrAux.RecordCount > 0);

    if not (ChildBand1.Enabled)
     then Exit;

    while not QrAux.Eof do
     begin
       TotMedServico := TotMedServico + QrAux.Fields[1].AsFloat;
       TotMedIss     := TotMedIss     + QrAux.Fields[2].AsFloat;
       TotMedIrrf    := TotMedIrrf    + QrAux.Fields[3].AsFloat;
       TotMedPcc     := TotMedPcc     + QrAux.Fields[4].AsFloat;

       QrAux.Next;
     end;

    TotMedLiq := ((TotMedServico + TotMedIss) - (TotMedIrrf + TotMedPcc));

    qrlMedSubServ.Caption := FormatFloat('##0.00', TotMedServico);
    qrlMedSubIss.Caption  := FormatFloat('##0.00', TotMedIss);
    qrlMedSubIrrf.Caption := FormatFloat('##0.00', TotMedIrrf);
    qrlMedSubPcc.Caption  := FormatFloat('##0.00', TotMedPcc);

    qrlMedSubTot.Caption  := FormatFloat('##0.00', TotMedLiq);

    qrlMedTotServico.Caption := FormatFloat('##0.00',pvalServ + TotMedServico);
    qrlMedTotIss.Caption     := FormatFloat('##0.00',pvaliss  + TotMedIss);
    qrlMedTotIrrf.Caption    := FormatFloat('##0.00',pvalirrf + TotMedIrrf);
    qrlMedTotPcc.Caption     := FormatFloat('##0.00',pvalpcc  + TotMedPcc);
    qrlMedTotLiq.Caption     := FormatFloat('##0.00',pvaltot  + TotMedLiq);
  finally
    QrAux.Free;
  end;
end;

end.
