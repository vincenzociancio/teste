unit u_ReqAgriculNovo18122006;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, DBCtrls, StdCtrls, ComCtrls, ExtCtrls, Db, DBTables, QuickRpt,
  Qrctrls, Mask, Buttons;

type
  TfrmReqAgriculNovo18122006 = class(TForm)
    alAcoes: TActionList;
    acAtualizarCampos: TAction;
    qrLocProc: TQuery;
    qrProcurador: TQuery;
    qrLocProcCodigo: TStringField;
    qrLocProcData: TDateTimeField;
    qrLocProcCodigo_Cliente: TStringField;
    qrLocProcRazao_Social: TStringField;
    qrLocProcCNPJ_CPF_COMPLETO: TStringField;
    qrLocProcPais_Procedencia: TStringField;
    qrLocProcDESCRICAO: TStringField;
    qrLocProcEndereco: TStringField;
    qrLocProcNumero: TStringField;
    qrLocProcComplemento: TStringField;
    qrLocProcBairro: TStringField;
    qrLocProcCidade: TStringField;
    qrLocProcUF: TStringField;
    qrLocProcExportador: TStringField;
    qrLocProcRazao_Social_1: TStringField;
    qrLocProcEndereco_1: TStringField;
    qrLocProcNumero_1: TStringField;
    qrLocProcComplemento_1: TStringField;
    qrLocProcBairro_1: TStringField;
    qrLocProcCidade_1: TStringField;
    qrLocProcUF_1: TStringField;
    qrLocProcTipoEmbalagem: TStringField;
    qrLocProcDescricaoEmbalagem: TStringField;
    qrLocProcQuantidade: TStringField;
    qrLocProcPeso_Bruto: TFloatField;
    qrLocProcLocal: TStringField;
    qrLocProcTipodoccarga: TStringField;
    qrLocProcdescricao_1: TStringField;
    qrLocProcNumerodoccarga: TStringField;
    qrLocProcNumeromaster: TStringField;
    qrLocProcEmbarcacao: TStringField;
    qrLocProcURF_chegada: TStringField;
    qrLocProcDESCRICAO_2: TStringField;
    qrLocProcData_Chegada_URF_Cheg: TDateTimeField;
    qrLocProcCodArmazem: TStringField;
    qrLocProcNome_Armazem: TStringField;
    qrLocProcValor_FOB: TFloatField;
    qrLocProcTaxa_conversao: TFloatField;
    qrLocProcVia: TStringField;
    qrProcuradorCodigo: TStringField;
    qrProcuradorRazao_Social: TStringField;
    qrProcuradorRegistro: TStringField;
    pnlTop: TPanel;
    Label38: TLabel;
    l_cliente: TLabel;
    ME_nossaref: TMaskEdit;
    ScrollBox1: TScrollBox;
    Label21: TLabel;
    dbTxtReg: TDBText;
    Label22: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    cbimportacao: TCheckBox;
    dbLcbProcurador: TDBLookupComboBox;
    edtchefe: TEdit;
    edtprotocolo: TEdit;
    cbexportacao: TCheckBox;
    edtSDA: TEdit;
    edtimportador: TEdit;
    edtcadastro: TEdit;
    edtCNPJ: TEdit;
    edtEND1: TEdit;
    edtEND2: TEdit;
    edtFONE: TEdit;
    edtCIDADE: TEdit;
    edtUF: TEdit;
    edtTIPO: TEdit;
    edtPAIS: TEdit;
    edtMEIO: TEdit;
    edtLOCAL: TEdit;
    edtBANCADA: TEdit;
    cbBRUTA: TCheckBox;
    cbESTIVA: TCheckBox;
    cbPROCESSADA: TCheckBox;
    cbOUTROS: TCheckBox;
    cbPALETES: TCheckBox;
    cbINTERNACIONAL: TCheckBox;
    cbMB: TCheckBox;
    cbHT: TCheckBox;
    cbKD: TCheckBox;
    cbCOPIA: TCheckBox;
    cbONPF: TCheckBox;
    cbORIGINAL: TCheckBox;
    edtLocal2: TEdit;
    edtDATA: TEdit;
    edtOUTROS: TEdit;
    edtconhecimento: TEdit;
    pnlBaixo: TPanel;
    btnIncluir: TBitBtn;
    btnSair: TBitBtn;
    dsProcurador: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtchefeEnter(Sender: TObject);
    procedure edtchefeExit(Sender: TObject);
    procedure acAtualizarCamposExecute(Sender: TObject);
    procedure edtCmp3Change(Sender: TObject);
    procedure cbCmp1Click(Sender: TObject);
    procedure cbimportacaoClick(Sender: TObject);
    procedure cbCmp3Click(Sender: TObject);
    procedure cbCmp4Click(Sender: TObject);
    procedure ME_nossarefChange(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  frmReqAgriculNovo18122006: TfrmReqAgriculNovo18122006;

implementation

uses U_MSCOMEX,u_RelReqAgriculNovo18122006;

{$R *.DFM}

procedure TfrmReqAgriculNovo18122006.FormCreate(Sender: TObject);
begin
    { With qrLocProc Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Params[2].AsString := vProc;
         Open;
     End;
     With qrProcurador Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Open;
         If RecordCount <> 0 Then
            dbLcbProcurador.KeyValue := qrProcuradorCodigo.AsString;
     End;
     acAtualizarCampos.Execute;
     edtlocal2.text := vDescFil;
     edtdata.text := datetostr(date());
     ScrollBox1.VertScrollBar.Position := 0;    }
end;

procedure TfrmReqAgriculNovo18122006.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     frmReqAgriculNovo18122006 := Nil;
     Action := caFree;
     F_MSCOMEX.RequerimentodeAgriculturaapartirde181220061.enabled := True;
end;

procedure TfrmReqAgriculNovo18122006.edtchefeEnter(Sender: TObject);
begin
     With TEdit(Sender) Do
         Color := clWhite;
end;

procedure TfrmReqAgriculNovo18122006.edtchefeExit(Sender: TObject);
begin
     With TEdit(Sender) Do
         Color := $00DFFFFF;
end;

procedure TfrmReqAgriculNovo18122006.acAtualizarCamposExecute(Sender: TObject);
var v_end: string;
begin

//     edtCmp3.WordWrap := True;

//     edtCmp1.Text := 'Sr. Chefe do';
if qrLocProcVia.AsInteger = 1 then edtMEIO.TEXT := 'Marítimo';
if qrLocProcVia.AsInteger = 2 then edtMEIO.TEXT := 'Fluvial';
if qrLocProcVia.AsInteger = 3 then edtMEIO.TEXT := 'Lacustre';
if qrLocProcVia.AsInteger = 4 then edtMEIO.TEXT := 'Aéreo';
if qrLocProcVia.AsInteger = 5 then edtMEIO.TEXT := 'Postal';
if qrLocProcVia.AsInteger = 6 then edtMEIO.TEXT := 'Ferroviário';
if qrLocProcVia.AsInteger = 7 then edtMEIO.TEXT := 'Rodoviário';
if qrLocProcVia.AsInteger = 8 then edtMEIO.TEXT := 'Ducto';
if qrLocProcVia.AsInteger = 9 then edtMEIO.TEXT := 'Meios Próprios';
if qrLocProcVia.Asstring = 'A' then edtMEIO.TEXT := 'Entrada Fícta';


//     edtCmp3.Lines.Text := 'com base na Instrução Normativa DAS nº 04, solicita '
//                         + 'à Vossa Senhoria inspeção do material discriminado abaixo:';
// IMPORTADOR
     edtimportador.Text := qrLocProcRazao_Social.AsString;
     edtcnpj.Text := FormatCurr('0#"."###"."###"/"####"-"##', StrToCurr(qrLocProcCNPJ_CPF_COMPLETO.AsString));
// ENDEREÇO
     v_end := qrLocProcEndereco.AsString;
     If qrLocProcNumero.AsString <> '' Then
        v_end := v_end +', '+ qrLocProcNumero.AsString;
     If (qrLocProcComplemento.AsString <> '') AND (qrLocProcComplemento.AsString <> '.') Then
        v_end := v_end +', '+ qrLocProcComplemento.AsString;
     If qrLocProcBairro.AsString <> '' Then
        v_end := v_end +', '+ qrLocProcBairro.AsString;
// CIDADE
     edtCIDADE.Text := qrLocProcCidade.AsString;
     If qrLocProcUF.AsString <> '' Then
        edtUF.Text := qrLocProcUF.AsString;

     if length(v_end) >= 40 then begin
        edtEND1.Text := copy(v_end,1,40);
        edtEND2.Text := copy(v_end,41,30);
     end
     else begin
        edtEND1.Text := copy(v_end,1,40);
        edtEND2.Text := ''; //copy(v_end,26,25);
     end;

//DESCRIÇÃO DAS MERCADORIAS
     If qrLocProcTipoEmbalagem.AsString <> '' Then
        edtTIPO.Text := qrLocProcTipoEmbalagem.AsString +' - '+ qrLocProcDescricaoEmbalagem.AsString
     Else
        edttIPO.Clear;

/// PAÍS DE ORIGEM
     edtPAIS.Text := qrLocProcDESCRICAO.AsString;

/// LOCAL DE ARMAZENAGEM
     If qrLocProcNome_Armazem.AsString <> '' Then
        edtLOCAL.Text := qrLocProcNome_Armazem.AsString
     Else
        edtLOCAL.Clear;

//     edtCmp13.Text := edtCmp4.Text;
//     edtCmp14.Text := v_end;

//     edtCmp18.Clear;
//     If qrLocProcURF_chegada.AsString <> '' Then
//        edtCmp18.Text := edtCmp18.Text + qrLocProcTUDESCRICAO.AsString +' - ';
//     If qrLocProcData_Chegada_URF_Cheg.AsString <> '' Then
//        edtCmp18.Text := edtCmp18.Text + qrLocProcData_Chegada_URF_Cheg.AsString;
     If qrLocProcnumerodoccarga.AsString <> '' Then
        edtconhecimento.Text := qrLocProcnumerodoccarga.AsString
     Else
        edtconhecimento.Clear;

     If qrLocProcnumeromaster.AsString <> '' Then
        edtconhecimento.Text := edtconhecimento.Text+'/Master:'+qrLocProcnumeromaster.AsString;



end;

procedure TfrmReqAgriculNovo18122006.edtCmp3Change(Sender: TObject);
begin
   //  TJustifyRichEdit(Sender).Justify;
end;

procedure TfrmReqAgriculNovo18122006.cbCmp1Click(Sender: TObject);
begin
{
     If cbCmp1.Checked Then Begin
        cbCmp2.Checked := False;
        cbCmp3.Checked := False;
        cbCmp4.Checked := False;

        edtCmp12.Enabled := False;
        edtCmp12.Clear;
     End;
     }
end;

procedure TfrmReqAgriculNovo18122006.cbimportacaoClick(Sender: TObject);
begin
{
     If cbCmp2.Checked Then Begin
        cbCmp1.Checked := False;
        cbCmp3.Checked := False;
        cbCmp4.Checked := False;

        edtCmp12.Enabled := False;
        edtCmp12.Clear;
     End;
}
end;

procedure TfrmReqAgriculNovo18122006.cbCmp3Click(Sender: TObject);
begin
{
     If cbCmp3.Checked Then Begin
        cbCmp1.Checked := False;
        cbCmp2.Checked := False;
        cbCmp4.Checked := False;

        edtCmp12.Enabled := False;
        edtCmp12.Clear;
     End;
     }
end;

procedure TfrmReqAgriculNovo18122006.cbCmp4Click(Sender: TObject);
begin
{
     If cbCmp4.Checked Then Begin
        cbCmp1.Checked := False;
        cbCmp2.Checked := False;
        cbCmp3.Checked := False;

        edtCmp12.Enabled := True;
     End;
     }
end;

procedure TfrmReqAgriculNovo18122006.ME_nossarefChange(Sender: TObject);
begin
 If Length(F_MSCOMEX.LRTrim(me_nossaref.Text)) <> 8 Then
    Exit;

     With qrLocProc Do Begin
         Close;
         Params[0].AsString := me_nossaref.Text;
         Open;
          If RecordCount = 0 Then Begin
           me_nossaref.Clear;
           MessageDlg('Processo não encontrado!', mtWarning, [mbOk], 0);
           me_nossaref.SetFocus;
           Exit;
         End;
     End;

    if F_MSCOMEX.AcessaPasta(me_nossaref.Text,'', frmReqAgriculNovo18122006)
     then ;

     With qrProcurador Do Begin
         Close;
         Open;
         If RecordCount <> 0 Then
         dbLcbProcurador.KeyValue := qrProcuradorCodigo.AsString;
   End;

    If ((qrLocProcVia.AsString <> '') or (not qrLocProcVia.IsNull)) then  acAtualizarCampos.Execute
    Else begin
      qrLocProc.close;
      qrLocProc.Open;
    ENd;
     scrollBox1.VertScrollBar.Position := 0;
     ScrollBox1.Visible := TRUE;
     edtlocal2.text := 'Rio de Janeiro';
     edtdata.text := datetostr(date());


end;

procedure TfrmReqAgriculNovo18122006.btnIncluirClick(Sender: TObject);
begin
   If Not Assigned(qrepReqAgriculNovo18122006) Then
     Application.CreateForm(TqrepReqAgriculNovo18122006, qrepReqAgriculNovo18122006);
     qrepReqAgriculNovo18122006.Preview;
     logusu('A','Acessou o Rel. do Requerimento de Agricultura. MS: '+ qrLocProcCodigo.AsString);
end;

procedure TfrmReqAgriculNovo18122006.btnSairClick(Sender: TObject);
begin
Close;
end;

end.
