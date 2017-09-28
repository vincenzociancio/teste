unit u_relchecklist;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  Tqr_checklistdoc = class(TQuickRep)
    titulo: TQRBand;
    QRi_logo: TQRImage;
    qrlUsuario: TQRLabel;
    qrlDirect: TQRLabel;
    qrlOffice: TQRLabel;
    qrlFax: TQRLabel;
    t_checklistdoc: TTable;
    ds_checklistdoc: TDataSource;
    q_Processos: TQuery;
    q_ProcessosProcesso: TStringField;
    q_ProcessosRazao_Social: TStringField;
    q_ProcessosDescricao: TStringField;
    DataSource1: TDataSource;
    t_checklistdocDocumentacao: TStringField;
    t_checklistdocOriginal: TIntegerField;
    t_checklistdocAssinado: TIntegerField;
    t_checklistdocCarimbado: TIntegerField;
    t_checklistdocImpresso: TIntegerField;
    t_checklistdocCopia: TIntegerField;
    t_checklistdocFk_Codigo: TIntegerField;
    t_checklistdocCodigo: TIntegerField;
    q_ProcessosCodigo: TIntegerField;
    qrlEmail: TQRLabel;
    documentos: TQRSubDetail;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    GroupHeaderBand1: TQRBand;
    QRShape5: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    QRShape8: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape9: TQRShape;
    QRShape7: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape6: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape2: TQRShape;
    QRLabel6: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure t_checklistdocOriginalGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure t_checklistdocAssinadoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure t_checklistdocCarimbadoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure t_checklistdocImpressoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure t_checklistdocCopiaGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private

  public

  end;

var
  qr_checklistdoc: Tqr_checklistdoc;

implementation

uses U_MSCOMEX, u_checklist;
{$R *.DFM}

procedure Tqr_checklistdoc.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  t_checklistdoc.Close;
  t_checklistdoc.Open;

  QRLabel1.Caption := f_checklist.edProcesso.Text;
  QRLabel2.Caption := f_checklist.edRazaoSocial.Text;
  QRLabel3.Caption := f_checklist.edTipoProcesso.Text;
end;

procedure Tqr_checklistdoc.t_checklistdocOriginalGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if t_checklistdocOriginal.AsInteger = 0
   then Text := ''
   else Text := 'X';
end;

procedure Tqr_checklistdoc.t_checklistdocAssinadoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if t_checklistdocAssinado.AsInteger = 0
   then Text := ''
   else Text := 'X';
end;

procedure Tqr_checklistdoc.t_checklistdocCarimbadoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if t_checklistdocCarimbado.AsInteger = 0
   then Text := ''
   else Text := 'X';
end;

procedure Tqr_checklistdoc.t_checklistdocImpressoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if t_checklistdocImpresso.AsInteger = 0
   then Text := ''
   else Text := 'X';
end;

procedure Tqr_checklistdoc.t_checklistdocCopiaGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if t_checklistdocCopia.AsInteger = 0
   then Text := ''
   else Text := 'X';
end;

end.
