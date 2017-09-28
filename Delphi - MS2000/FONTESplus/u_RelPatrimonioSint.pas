unit u_RelPatrimonioSint;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, Dialogs, jpeg;

type
  TF_relPatrimonioSint = class(TQuickRep)
    qrbTitulo: TQRBand;
    qrl_titulo: TQRLabel;
    QRShape6: TQRShape;
    QRi_logo: TQRImage;
    qrlEmpresa: TQRLabel;
    qrlSistema: TQRLabel;
    qrbPagina: TQRBand;
    QRLabel6: TQRLabel;
    QRSysData3: TQRSysData;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel9: TQRLabel;
    QRSysData1: TQRSysData;
    sdtsub: TQRSubDetail;
    QRShape2: TQRShape;
    sdtSetor: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    qrSet1: TQuery;
    pat2: TQuery;
    sdtDesc: TQRSubDetail;
    qrPat1: TQuery;
    qrSet1codigo: TStringField;
    qrSet1descricao: TStringField;
    sdtVal: TQRSubDetail;
    qrCont: TQuery;
    qrContSetor: TStringField;
    qrContTipo_Patrimonio: TStringField;
    qrContSub_Tipo_Patrimonio: TStringField;
    qrContValor: TFloatField;
    GroupFooterBand1: TQRBand;
    qrlVal: TQRLabel;
    pat2Tipo_Patrimonio: TStringField;
    pat2Setor: TStringField;
    pat2descricao: TStringField;
    qrPat1Setor: TStringField;
    qrPat1Tipo_patrimonio: TStringField;
    qrPat1Sub_Tipo_Patrimonio: TStringField;
    qrPat1Descricao: TStringField;
    QRDBText3: TQRDBText;
    QRShape3: TQRShape;
    qrlQTD: TQRLabel;
    lblQTD: TQRLabel;
    lblVal: TQRLabel;
    GroupFooterBand2: TQRBand;
    QRLabel2: TQRLabel;
    qrlValTotUsu: TQRLabel;
    QRBand1: TQRBand;
    QRLabel11: TQRLabel;
    qrlValTotSet: TQRLabel;
    QRShape4: TQRShape;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure qrSet1BeforeOpen(DataSet: TDataSet);
    procedure qrSet1AfterScroll(DataSet: TDataSet);
    procedure pat2AfterScroll(DataSet: TDataSet);
    procedure qrPat1AfterScroll(DataSet: TDataSet);
    procedure qrContAfterScroll(DataSet: TDataSet);
    procedure sdtDescBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure sdtValAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure sdtsubAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure sdtSetorAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
    procedure GroupFooterBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure GroupFooterBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private

  public

  end;

var
  F_relPatrimonioSint: TF_relPatrimonioSint;
  v_tot, v_qt, v_tot_Set, v_tot_sum : Real;

implementation

{$R *.DFM}

uses U_MSCOMEX;

procedure TF_relPatrimonioSint.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  v_tot_sum := 0;
   qrset1.open;
end;

procedure TF_relPatrimonioSint.qrSet1BeforeOpen(DataSet: TDataSet);
begin
     qrSet1.Params[0].AsString := '%';
end;

procedure TF_relPatrimonioSint.qrSet1AfterScroll(DataSet: TDataSet);
begin
     pat2.Close;
     pat2.Params[0].AsString := qrSet1codigo.AsString;
     pat2.open;
end;

procedure TF_relPatrimonioSint.pat2AfterScroll(DataSet: TDataSet);
begin
     qrpat1.Close;
     qrpat1.Params[0].AsString := pat2Tipo_Patrimonio.AsString;
     qrpat1.Params[1].AsString := pat2Setor.AsString;
     qrpat1.open;

end;

procedure TF_relPatrimonioSint.qrPat1AfterScroll(DataSet: TDataSet);
begin
     qrCont.Close;
     qrCont.Params[0].AsString := qrPat1Setor.AsString;     //set
     qrCont.Params[1].AsString := qrPat1Tipo_patrimonio.AsString;     //tpat
     qrCont.Params[2].AsString := qrPat1Sub_Tipo_Patrimonio.AsString;  //stpat
     qrCont.Open;

     //showmessage(qrCont.SQL.Text);

end;

procedure TF_relPatrimonioSint.qrContAfterScroll(DataSet: TDataSet);
begin
//     showmessage('qt: '+floattostr(v_qt));
  //   showmessage('tot: '+floattostr(v_tot));
end;

procedure TF_relPatrimonioSint.sdtDescBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     v_qt := 0;
     v_tot := 0;

end;

procedure TF_relPatrimonioSint.sdtValAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
     v_qt := v_qt + 1;
     v_tot := v_tot + qrContValor.AsFloat;
     qrlQTD.caption := FloatToStr(v_qt);
     qrlVal.caption := FormatFloat('###,###,##0.00', v_tot);


end;

procedure TF_relPatrimonioSint.sdtsubAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
     lblQTD.Enabled := False;
     lblVal.Enabled := False;
end;

procedure TF_relPatrimonioSint.sdtSetorAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
     lblQTD.Enabled := True;
     lblVal.Enabled := True;
     v_tot_set := 0;

end;

procedure TF_relPatrimonioSint.QuickRepStartPage(Sender: TCustomQuickRep);
begin
     qrlSistema.Caption := v_sistema +' - '+ v_versao;
     qrlEmpresa.Caption := 'MS LOGÍSTICA ADUANEIRA LTDA.';
end;

procedure TF_relPatrimonioSint.GroupFooterBand1AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
     v_tot_set := v_tot_set + v_tot;
     qrlValTotUsu.Caption := FormatFloat('###,###,##0.00',v_tot_set);
     v_tot_sum := v_tot_sum + v_tot;

end;

procedure TF_relPatrimonioSint.GroupFooterBand2AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
     qrlValTotSet.Caption := FormatFloat('###,###,##0.00', v_tot_sum);

end;

end.
