unit U_relImpTransmittal;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls, Dialogs,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg,
  grimgctrl;

type
  TF_relImpTransmittal = class(TQuickRep)
    QRBand1: TQRBand;
    QRi_logo: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    qrRelImpItens: TQuery;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRBand3: TQRBand;
    lbldata: TQRLabel;
    QRLabel9: TQRLabel;
    QRL_empresa: TQRLabel;
    QRL_endereco: TQRLabel;
    QRL_telfax: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape5: TQRShape;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText4: TQRDBText;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRLblData: TQRLabel;
    qrLblNome: TQRLabel;
    Q_filial: TQuery;
    qrRelImpItensEmpresa: TStringField;
    qrRelImpItensFilial: TStringField;
    qrRelImpItensCodigo: TStringField;
    qrRelImpItensSequencial: TIntegerField;
    qrRelImpItensDescricao: TMemoField;
    qrRelImpItensQuantidade: TIntegerField;
    qrRelImpItensRemarks: TStringField;
    QRL_NOMECOMPLETO: TQRLabel;
    QRL_DESTINACAO: TQRLabel;
    QRL_IMPNOME: TQRLabel;
    QRL_DESTNOME: TQRLabel;
    QRL_CODIGO: TQRLabel;
    QRL_DESCRICAO: TQRLabel;
    Q_filialDescricao: TStringField;
    Q_filialEndereco: TStringField;
    Q_filialNumero: TStringField;
    Q_filialComplemento: TStringField;
    Q_filialBairro: TStringField;
    Q_filialCidade: TStringField;
    Q_filialUF: TStringField;
    Q_filialCEP: TStringField;
    Q_filialTelefone: TStringField;
    Q_filialFax: TStringField;
    QRShape6: TQRShape;
    QRShape9: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRHRule1: TQRHRule;
    QRHRule3: TQRHRule;
    QRHRule4: TQRHRule;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrRelImpItensAfterScroll(DataSet: TDataSet);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  F_relImpTransmittal: TF_relImpTransmittal;
//  i: integer;
implementation

uses u_ctrlTransmittal, U_MSCOMEX;

//uses u_ctrlTransmittal;
{$R *.DFM}

procedure TF_relImpTransmittal.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 q_filial.open;
if v_filial='CWB' then begin
   lbldata.Caption := 'Curitiba,'+FormatDateTime(' dd " de " mmmm " de " yyyy', date());
   qrl_endereco.caption :='Rua Comendador Araujo,143 -Sl 134 - Centro - Curitiba - PR, CEP: 80420900';
   ///q_filialendereo.asstring+','+q_filialnmero.asstring;
   //// passar para ler os campos da sql q_filial
   qrl_telfax.caption := 'Tel.: (41) 3222-8989 - Fax (41) 3324-0715';
end
else begin
   lbldata.Caption := 'Rio de Janeiro,'+FormatDateTime(' dd " de " mmmm " de " yyyy', date());
end;
     qrRelImpItens.Close;
     qrRelImpItens.Params[0].AsString := F_ctrlTransmittal.qrTransCodigo.AsString;
     qrRelImpItens.Open;

end;

procedure TF_relImpTransmittal.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);

begin
  //   qrshape5.Height := (qrband2.height) ;//(qrshape5.Height + qrband2.height*4);
//     i:=i+1;
 //    For i:= 1 to qrRelImpItens.RecordSize Do
//     qrmemo1. := qrRelImpItensDescricao.Index[i];

end;

procedure TF_relImpTransmittal.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
//     qrshape5.height := qrband3.top;
//     qrshape5.Height := qrband2.height;
//     showmessage(inttostr(qrband3.top));
 //    qrShape5.left := 94;
   //  qrShape5.Top := 295;
    // qrShape5.Height := (f_relimptransmittal.height-qrband2.top-qrband3.height)-38;
//     qrshape5.enabled := true;
  {
     qrShape6.left := 622;
     qrShape6.Top := 295;
     qrShape6.Height := (f_relimptransmittal.height-qrband2.top-qrband3.height)-38;
     qrshape6.enabled := true;

     qrShape7.left := 694;
     qrShape7.Top := 295;
     qrShape7.Height := (f_relimptransmittal.height-qrband2.top-qrband3.height)-38;
     qrshape7.enabled := true;

     qrShape8.left := 38;
     qrShape8.Top := 295;
     qrShape8.Height := (f_relimptransmittal.height-qrband2.top-qrband3.height)-38;
     qrshape8.enabled := true;

     qrShape9.left := 776;
     qrShape9.Top := 295;
     qrShape9.Height := (f_relimptransmittal.height-qrband2.top-qrband3.height)-38;
     qrshape9.enabled := true;
  }
end;

procedure TF_relImpTransmittal.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     qrshape5.enabled := true;
     QRL_NOMECOMPLETO.CAPTION := F_ctrlTransmittal.qrTransNOME_COMPLETO.ASSTRING;
end;

procedure TF_relImpTransmittal.qrRelImpItensAfterScroll(DataSet: TDataSet);
begin
//qrRelImpItensDescricao.
end;

procedure TF_relImpTransmittal.QRDBText4Print(sender: TObject;
  var Value: String);
begin
//if qrdbtext4.Lines. := '' Then qrdbtext4.enabled := false
//else qrdbtext4.enabled := True;
end;

procedure TF_relImpTransmittal.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

     QRL_DESCRICAO.CAPTION := F_ctrlTransmittal.qrTransDESCRICAO.ASSTRING;
     QRL_CODIGO.CAPTION := F_ctrlTransmittal.qrTransCODIGO.ASSTRING;
     QRL_IMPNOME.CAPTION := F_ctrlTransmittal.qrTransIMPORTADOR_NOME.ASSTRING;
     QRL_DESTNOME.CAPTION := F_ctrlTransmittal.qrTransDESTINATARIO_NOME.ASSTRING;

     QRL_DESTINACAO.CAPTION := F_ctrlTransmittal.qrTransDESTINACAO.ASSTRING;

     If length(F_ctrlTransmittal.qrTransDestinacao.AsString) > 75 Then QRL_DESTINACAO.font.size := 10
     Else QRL_DESTINACAO.font.size := 12;
     If length(F_ctrlTransmittal.qrTransDestinacao.AsString) > 90 Then QRL_DESTINACAO.font.size := 8;
end;

end.
