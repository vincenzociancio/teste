unit U_RelTransAnal;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls, Dialogs,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  Tf_relTransAnal = class(TQuickRep)
    qrbTitulo: TQRBand;
    qrl_titulo: TQRLabel;
    QRShape6: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    qrlSetor: TQRLabel;
    qrlRem: TQRLabel;
    qrlImp: TQRLabel;
    qrlDest: TQRLabel;
    qrlValDe: TQRLabel;
    qrlValAte: TQRLabel;
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
    sdtPat: TQRSubDetail;
    GroupHeaderBand3: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    qrSetor: TQuery;
    qrSetorSetor: TStringField;
    qrSetordescricao: TStringField;
    qrSetorCodigo: TStringField;
    qrSetorData: TDateTimeField;
    qrSetorDestinatario: TStringField;
    qrSetorRemetente: TStringField;
    qrSetorImportador: TStringField;
    qrSetorRazoSocial: TStringField;
    qrSetorNome_Completo: TStringField;
    QRSubDetail1: TQRSubDetail;
    qrSetor0: TQuery;
    QRDBText3: TQRDBText;
    QRSubDetail2: TQRSubDetail;
    GroupHeaderBand1: TQRBand;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel4: TQRLabel;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    GroupFooterBand1: TQRBand;
    QRShape15: TQRShape;
    qrItens: TQuery;
    qrItensCodigo: TStringField;
    qrItensSequencial: TIntegerField;
    qrItensDescricao: TMemoField;
    qrItensQuantidade: TIntegerField;
    qrItensRemarks: TStringField;
    QRDBText9: TQRDBText;
    QRShape21: TQRShape;
    QRShape5: TQRShape;
    QRShape8: TQRShape;
    QRDBText6: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBorda1: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    qrRemet: TQuery;
    QRSubDetail10: TQRSubDetail;
    QRShape13: TQRShape;
    QRDBNome: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRShape14: TQRShape;
    QRShape2: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    qrSetor0Codigo: TStringField;
    qrSetor0Destinatario: TStringField;
    qrSetor0Remetente: TStringField;
    qrSetor0Setor: TStringField;
    qrSetor0Importador: TStringField;
    qrSetor0descricao: TStringField;
    qrbak: TQuery;
    qrRemetCodigo: TStringField;
    qrRemetDestinatario: TStringField;
    qrRemetRemetente: TStringField;
    qrRemetSetor: TStringField;
    qrRemetImportador: TStringField;
    qrRemetdescricao: TStringField;
    qrRemetNome_Completo: TStringField;
    QRBand1: TQRBand;
    QRi_logo: TQRImage;
    qrlDestinacao: TQRLabel;
    QRLabel16: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure qrSetorAfterScroll(DataSet: TDataSet);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrRemetAfterScroll(DataSet: TDataSet);
    procedure QRSubDetail10AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure qrSetor0AfterScroll(DataSet: TDataSet);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  f_relTransAnal: Tf_relTransAnal;
  aux1,aux2,aux3 : String;

implementation

uses u_ctrlTransmittal, U_MSCOMEX;

{$R *.DFM}

procedure Tf_relTransAnal.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
     qrlSistema.Caption := v_sistema +' - '+ v_versao;
     qrlEmpresa.Caption := 'MS LOGÍSTICA ADUANEIRA LTDA.';
     aux1:='';
     aux2:='';
     aux3:='';

{     qrlSetor.Caption := 'Todos';
     qrlRem.Caption := 'Todos';
     qrlDest.Caption := 'Todos';
     qrlImp.Caption := 'Todos';
     qrlValDe.Caption := '';
     qrlValAte.Caption := '';
 }

     If lbset <> '' Then qrlSetor.Caption := lbset Else qrlSetor.Caption := 'Todos';
     If lbrem <> '' Then qrlRem.Caption := lbrem Else qrlRem.Caption := 'Todos';
     If lbdes <> '' Then qrlDest.Caption := lbdes Else qrlDest.Caption := 'Todos';
     If lbdestinacao <> '' Then qrlDestinacao.Caption := lbdestinacao Else qrlDestinacao.Caption := 'Todos';

     If lbimp <> '' Then qrlImp.Caption := lbimp Else qrlImp.Caption := 'Todos';
     If lbdatde <> '' Then qrlValDe.Caption := lbdatde Else qrlvalDe.Caption := 'Todos';
     If lbdatate <> '' Then qrlValAte.Caption := lbdatate Else qrlValate.Caption := 'Todos';

{       qrlabel22.Visible := True;
       qrlvalde.Enabled := True;
       qrlvalate.Enabled := True;
       qrlabel15.Visible := True;

     If (lbdatde = '') And (lbdatate = '') Then Begin
       qrlabel22.Visible := False;
       qrlvalde.Enabled := False;
       qrlvalate.Enabled := False;
       qrlabel15.Visible := False;
     End;
 }
     qrSetor.Close;
//     showmessage(v_setor);
     qrSetor.SQL := F_ctrlTransmittal.qrTrans.SQL;
     If sqlaux = '' Then qrSetor.SQL.Append('WHERE S.Codigo <> Null') ;
//     qrSetor.SQL.Append('AND Transmittal.Remetente Like '+v_rem);

     qrSetor.SQL.Append('AND T.Setor Like :set');
     qrSetor.SQL.Append('AND T.Remetente Like :rem');
     qrSetor.SQL.Append('ORDER BY S.descricao, U.Nome_Completo,  I.[Razão Social], T.Data, T.Destinatario');
     qrSetor.Params[0].DataType := ftString;
     qrSetor.Params[1].DataType := ftString;

      qrsetor0.sql.text := '';
      qrSetor0.SQL.Append('SELECT First(T.Codigo) AS Codigo, First(T.Destinatario) AS Destinatario, First(T.Remetente) AS Remetente, T.Setor, First(T.Importador) AS Importador, First(S.descricao) AS descricao');
      qrSetor0.SQL.Append('FROM (((Transmittal AS T LEFT JOIN Setores AS S ON T.Setor = S.codigo) LEFT JOIN Importadores AS I ON (T.Empresa = I.Empresa) AND (T.Filial = I.Filial) AND (T.Importador = I.Codigo)) ');
      qrSetor0.SQL.Append('LEFT JOIN Parametros AS P ON (T.Empresa = P.Empresa) AND (T.Filial = P.Filial)) LEFT JOIN Usuarios AS U ON (T.Empresa = U.Empresa) AND (T.Filial = U.Filial) AND (T.Remetente = U.Usuario)');

qrremet.sql.text := '';
qrRemet.SQL.Append('select First(T.Codigo) AS Codigo, First(T.Destinatario) AS Destinatario, T.Remetente AS Remetente, T.Setor, First(T.Importador) AS Importador, First(S.descricao) AS descricao, U.Nome_Completo');
qrRemet.SQL.Append('FROM (((Transmittal AS T LEFT JOIN Setores AS S ON T.Setor = S.codigo) LEFT JOIN Importadores AS I ON (T.Importador = I.Codigo) AND (T.Filial = I.Filial) AND (T.Empresa = I.Empresa))');
qrRemet.SQL.Append(' LEFT JOIN Parametros AS P ON (T.Filial = P.Filial) AND (T.Empresa = P.Empresa)) LEFT JOIN Usuarios AS U ON (T.Remetente = U.Usuario) AND (T.Filial = U.Filial) AND (T.Empresa = U.Empresa)');
     qrRemet.SQL.Append(sqlaux);
If sqlaux = '' Then qrremet.SQL.Append('WHERE S.Codigo <> Null') ;

     qrRemet.SQL.Append('AND T.Setor Like :set AND T.Remetente Like :Rem');
     qrRemet.SQL.Append('GROUP BY T.Remetente, U.Nome_Completo, T.Setor');

     qrRemet.SQL.Append('ORDER BY T.Remetente, T.Setor');
//     showmessage(qrRemet.SQL.text);
//      SELECT First(Transmittal.Codigo) AS Codigo, First(Transmittal.Destinatario) AS Destinatario, First(Transmittal.Remetente) AS Remetente, Transmittal.Setor, First(Transmittal.Importador) AS Importador, First(Setores.descricao) AS descricao
//FROM (((Transmittal LEFT JOIN Setores ON Transmittal.Setor = Setores.codigo) LEFT JOIN Importadores ON (Transmittal.Importador = Importadores.Codigo) AND (Transmittal.Filial = Importadores.Filial) AND (Transmittal.Empresa = Importadores.Empresa)) LEFT JOIN Parametros ON (Transmittal.Filial = Parametros.Filial) AND (Transmittal.Empresa = Parametros.Empresa)) LEFT JOIN Usuarios ON (Transmittal.Remetente = Usuarios.Usuario) AND (Transmittal.Filial = Usuarios.Filial) AND (Transmittal.Empresa = Usuarios.Empresa)

     qrSetor0.SQL.Append(sqlaux);
     If sqlaux = '' Then qrSetor0.SQL.Append('WHERE S.Codigo <> Null') ;

     qrSetor0.SQL.Append('AND T.Setor Like :set');
     qrSetor0.SQL.Append('AND T.Remetente Like :rem');
     qrSetor0.SQL.Append('GROUP BY T.Setor');
     qrSetor0.SQL.Append('ORDER BY T.Setor');
  //   showmessage(v_setor);
//     showmessage(v_rem);
//     showmessage(qrsetor0.sql.text);

     qrSetor0.Params[0].DataType := ftString;
     qrSetor0.Params[1].DataType := ftString;

     qrSetor0.Params[0].AsString := v_setor;
     qrSetor0.Params[1].AsString := v_rem;

//     showmessage('1'+v_setor);
  //   showmessage('2'+v_rem);

     //     qrSetor.SQL.addStrings := 'ORDER BY transmittal.descricao, nome_completo, (razao social), data, destinatario';
//     showmessage(qrsetor.sql.text);
//     qrSetor.Open;
     qrSetor0.Open;
     qrRemet.Open;
end;

procedure Tf_relTransAnal.qrSetorAfterScroll(DataSet: TDataSet);
begin
     qrItens.Close;
//     showmessage('dentro');
     qrItens.Params[0].AsString := qrSetorCodigo.AsString;//  '00003/04';//qrSetorCodigo.AsString;
//     showmessage(qrSetorCodigo.AsString);
     qrItens.Open;
end;

procedure Tf_relTransAnal.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var aux5 : integer;
begin
end;

procedure Tf_relTransAnal.qrRemetAfterScroll(DataSet: TDataSet);
begin
//     showmessage('rolou');
     qrdbnome.Enabled := true;
     qrSubDetail10.Frame.DrawTop := True;
     qrSetor.Close;
     qrSetor.Params[1].AsString := qrRemetRemetente.AsString;
//     showmessage(qrsetor.sql.text);
     qrSetor.Open;
{     If (qrRemetSetor.AsString = '') Or (qrRemetSetor.AsString = Null) Then Begin
       qrSetor.Next;
     End;
 }

end;

procedure Tf_relTransAnal.QRSubDetail10AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
     qrdbnome.enabled := false;
     qrSubDetail10.Frame.DrawTop := False;
end;

procedure Tf_relTransAnal.qrSetor0AfterScroll(DataSet: TDataSet);
begin


     aux1 := qrSetor0Setor.AsString;
     aux2 := qrSetor0Remetente.AsString;
     aux3 := qrSetor0Codigo.AsString;
     qrRemet.Close;
     qrRemet.Params[0].AsString := qrSetor0Setor.AsString;
     qrRemet.Params[1].AsString := v_rem;
     qrRemet.Open;
     qrSetor.Close;
     qrSetor.Params[0].AsString := qrSetor0Setor.AsString;
     qrSetor.Open;
end;

procedure Tf_relTransAnal.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
       qrsetor.Close;
       qrSetor.Params[0].AsString := qrSetor0Setor.AsString;
       qrSetor.Params[1].AsString := qrRemetRemetente.AsString;
       qrSetor.Open;

     qrSetor.Close;
     qrSetor.Params[0].AsString := qrSetor0Setor.AsString;
     qrSetor.Open;
end;

end.
