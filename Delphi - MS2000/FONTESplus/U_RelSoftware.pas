unit U_RelSoftware;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, QuickRpt, Qrctrls, ExtCtrls, StdCtrls, jpeg;

type
  Tf_RelSoftware = class(TForm)
    qrSoftware: TQuickRep;
    titulo: TQRBand;
    qrl_sistema: TQRLabel;
    qrl_titulo: TQRLabel;
    QRi_logo: TQRImage;
    qrdbtCod: TQRDBText;
    qrdbtCred: TQRDBText;
    qrbSetor: TQRBand;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    qrbTot: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    qrsdPatrimonio: TQRSubDetail;
    qrsdSoftware: TQRSubDetail;
    QTot: TQuery;
    QTotDescricao: TStringField;
    QTotTot: TIntegerField;
    dsTot: TDataSource;
    QRLabel22: TQRLabel;
    QRShape1: TQRShape;
    QTotSoftware: TStringField;
    qrlVersao: TQRLabel;
    GroupHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    ChildBand1: TQRChildBand;
    qrlSoft: TQRLabel;
    lblPlaqueta: TQRLabel;
    lblUsuario: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape2: TQRShape;
    GroupHeaderBand2: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    procedure qrbSetorBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrSoftwareAfterPreview(Sender: TObject);
    procedure qrbTotBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrsdSoftwareAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure GroupHeaderBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_RelSoftware: Tf_RelSoftware;
  aux : String;
implementation

uses U_MSCOMEX, U_ContSoftware;

{$R *.DFM}

procedure Tf_RelSoftware.qrbSetorBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
{  if F_ContSoftware.QPatrimonio.RecordCount = 0 then
     PrintBand := False
  else
     PrintBand := True;
}end;

procedure Tf_RelSoftware.FormCreate(Sender: TObject);
begin
     qrlVersao.Caption := v_versao;
     if F_ContSoftware.rgRel.ItemIndex = 0 then begin
        qrsdSoftware.Enabled := True;
        qrbTot.Enabled := True;
        qrl_titulo.Caption := 'RELATÓRIO DE SOFTWARE';
        qrLabel3.Caption := 'SOFTWARE';
        qrLabel3.Width := 108;
        qrLabel5.Caption := 'LICENÇA';
        qrsdPatrimonio.Enabled := False;
//        GroupHeaderBand1.Enabled := False;
//        ghbCabec.Enabled := False;
         GroupHeaderBand1.Frame.DrawBottom := False;
     end
     else begin
         qrsdSoftware.Enabled := False;
         qrbTot.Enabled := False;
         qrl_titulo.Caption := 'RELATÓRIO DE IP E PONTO DE REDE';
         qrsdPatrimonio.Enabled := True;
         GroupHeaderBand1.Frame.DrawBottom:=True;
         ChildBand1.Enabled := False;
         qrbTot.Enabled := False;
         GroupHeaderBand1.Frame.DrawTop := False;
         qrbSetor.Frame.DrawBottom := True;
     end;
end;

procedure Tf_RelSoftware.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  F_ContSoftware.QSetor.Close;
  F_ContSoftware.QPatrimonio.Close;
  F_ContSoftware.QPatrimonio.SQL.Clear;

  {
  SELECT P.Empresa, P.Filial, P.Setor, S.descricao AS DescI, P.Usuario, U.Nome_Completo, P.Plaqueta, P.Descricao, P.IP, P.PREDE
FROM ((Parametros AS PA INNER JOIN Patrimonio AS P ON PA.Filial = P.Filial AND PA.Empresa = P.Empresa) INNER JOIN Usuarios AS U ON P.Usuario = U.Usuario AND P.Filial = U.Filial AND P.Empresa = U.Empresa) INNER JOIN Setores AS S ON P.Setor = S.codigo
WHERE P.Tipo_Patrimonio="INFO" AND P.Sub_Tipo_Patrimonio="COM" AND P.Status_Patrimonio="0"
ORDER BY P.Setor, P.Usuario

  }
  F_ContSoftware.QPatrimonio.SQL.Add(' SELECT P.Empresa, P.Filial, P.Setor, S.descricao AS DescI, P.Usuario, U.Nome_Completo, P.Plaqueta, P.Descricao, P.IP, P.PREDE, P.detalhe ');
  F_ContSoftware.QPatrimonio.SQL.Add(' FROM ((Parametros AS PA INNER JOIN Patrimonio AS P ON PA.Filial = P.Filial AND PA.Empresa = P.Empresa) LEFT JOIN Usuarios AS U ON P.Usuario = U.Usuario AND P.Filial = U.Filial AND P.Empresa = U.Empresa) INNER JOIN Setores AS S ON P.Setor = S.codigo ');
  F_ContSoftware.QPatrimonio.SQL.Add(' WHERE P.Tipo_Patrimonio="INFO" AND P.Sub_Tipo_Patrimonio="COM" AND P.Status_Patrimonio="0" ');
  F_ContSoftware.QPatrimonio.SQL.Add(' ORDER BY P.Setor, P.Usuario ');
  F_ContSoftware.QPatrimonio.Open;
  F_ContSoftware.ViewRel := False;
  Action := CaFree;
  F_RelSoftware := nil;
end;

procedure Tf_RelSoftware.qrSoftwareAfterPreview(Sender: TObject);
begin
  Close;
end;

procedure Tf_RelSoftware.qrbTotBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

  qrlSoft.Caption := '';
  QTot.Open;
  while not QTot.Eof do begin
    //if QTotSoftware.AsString <> '' then
//       qrlTot.Caption := qrlTot.Caption + QTotTot.AsString + #10+#13;
   // else
   //    qrlTot.Caption := qrlTot.Caption + '0' + #10+#13;

    qrlSoft.Caption := qrlSoft.Caption + copy(QTotDescricao.AsString+'                                                                                                ',1,70);
    qrlSoft.Caption := qrlSoft.Caption + copy('  '+QTotTot.AsString,length('  '+QTotTot.AsString)-2,3) + #10+#13;

    QTot.Next;
  end;
  QTot.Close;


end;

procedure Tf_RelSoftware.qrsdSoftwareAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
     qrShape2.Left := 284;
     qrShape2.Width := 434;
     lblPlaqueta.Caption :='';
     lblUsuario.Caption := '';

end;

procedure Tf_RelSoftware.GroupHeaderBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
     qrShape2.Left := 0;
     qrShape2.Width := 718;
     lblPlaqueta.Caption := F_ContSoftware.QPatrimonioPlaqueta.AsString;
     lblUsuario.Caption := F_ContSoftware.QPatrimonioNome_Completo.AsString+' '+F_ContSoftware.QPatrimoniodetalhe.AsString;



end;

end.
