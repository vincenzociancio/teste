unit u_ReqAgriculNovo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, DBCtrls, StdCtrls, ComCtrls, ExtCtrls, Db, DBTables, Buttons,
  Mask;

type
  TfrmReqAgriculNovo = class(TForm)
    ScrollBox1: TScrollBox;
    Bevel3: TBevel;
    Bevel2: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label23: TLabel;
    edtCmp3: TRichEdit;
    edtCmp1: TEdit;
    edtCmp2: TEdit;
    edtCmp4: TEdit;
    edtCmp5: TEdit;
    edtCmp6: TEdit;
    edtCmp8: TEdit;
    edtCmp9: TEdit;
    edtCmp7: TEdit;
    edtCmp10: TEdit;
    edtCmp11: TEdit;
    edtCmp12: TEdit;
    edtCmp13: TEdit;
    edtCmp14: TEdit;
    edtCmp17: TEdit;
    edtCmp18: TEdit;
    edtCmp15: TEdit;
    edtCmp16: TEdit;
    alAcoes: TActionList;
    acAtualizarCampos: TAction;
    qrLocProc: TQuery;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    cbCmp1: TCheckBox;
    cbCmp2: TCheckBox;
    cbCmp3: TCheckBox;
    cbCmp4: TCheckBox;
    Label6: TLabel;
    lblCopia: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label21: TLabel;
    dbTxtReg: TDBText;
    Label22: TLabel;
    dbLcbProcurador: TDBLookupComboBox;
    Bevel1: TBevel;
    qrProcurador: TQuery;
    dsProcurador: TDataSource;
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
    Label7: TLabel;
    l_cliente: TLabel;
    ME_nossaref: TMaskEdit;
    pnlBaixo: TPanel;
    btnIncluir: TBitBtn;
    btnSair: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtCmp1Enter(Sender: TObject);
    procedure edtCmp1Exit(Sender: TObject);
    procedure acAtualizarCamposExecute(Sender: TObject);
    procedure edtCmp3Change(Sender: TObject);
    procedure cbCmp1Click(Sender: TObject);
    procedure cbCmp2Click(Sender: TObject);
    procedure cbCmp3Click(Sender: TObject);
    procedure cbCmp4Click(Sender: TObject);
    procedure ME_nossarefChange(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReqAgriculNovo: TfrmReqAgriculNovo;

implementation

uses U_MSCOMEX,u_RelReqAgriculNovo ;

{$R *.DFM}

procedure TfrmReqAgriculNovo.FormCreate(Sender: TObject);
begin

    { With qrProcurador Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Open;
         If RecordCount <> 0 Then
            dbLcbProcurador.KeyValue := qrProcuradorCodigo.AsString;
     End; }

end;

procedure TfrmReqAgriculNovo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     frmReqAgriculNovo := Nil;
     Action := caFree;
    F_MSCOMEX.RequerimentodeAgricultura1.enabled := True;
end;

procedure TfrmReqAgriculNovo.edtCmp1Enter(Sender: TObject);
begin
     With TEdit(Sender) Do
         Color := clWhite;
end;

procedure TfrmReqAgriculNovo.edtCmp1Exit(Sender: TObject);
begin
     With TEdit(Sender) Do
         Color := $00DFFFFF;
end;

procedure TfrmReqAgriculNovo.acAtualizarCamposExecute(Sender: TObject);
begin
     edtCmp3.WordWrap := True;

     edtCmp1.Text := 'Sr. Chefe do';
     Case qrLocProcVia.AsInteger Of
         1: Begin
            edtCmp2.Text := 'VIGIAGRO PORTO DO RIO DE JANEIRO';
            lblCopia.Caption := 'Cópia do BL:';
            edtCmp10.Text := qrLocProcEmbarcacao.AsString;
         End;
         4: Begin
            edtCmp2.Text := 'VIGIAGRO AEROPORTO DO RIO DE JANEIRO';
            lblCopia.Caption := 'Cópia do AWB:';
            edtCmp10.Text := 'AÉREO';
         End;
         Else Begin
            edtCmp2.Clear;
            lblCopia.Caption := 'Cópia do AWB:';
            edtCmp10.Clear;
         End;
     End;

     edtCmp3.Lines.Text := 'com base na Instrução Normativa DAS nº 04, solicita '
                         + 'à Vossa Senhoria inspeção do material discriminado abaixo:';
     { IMPORTADOR }
     edtCmp4.Text := qrLocProcRazao_Social.AsString;
     edtCmp5.Text := FormatCurr('0#"."###"."###"/"####"-"##', StrToCurr(qrLocProcCNPJ_CPF_COMPLETO.AsString));
     { ENDEREÇO }
     edtCmp6.Text := qrLocProcEndereco.AsString;
     If qrLocProcNumero.AsString <> '' Then
        edtCmp6.Text := edtCmp6.Text +', '+ qrLocProcNumero.AsString;
     If (qrLocProcComplemento.AsString <> '') AND (qrLocProcComplemento.AsString <> '.') Then
        edtCmp6.Text := edtCmp6.Text +', '+ qrLocProcComplemento.AsString;
     If qrLocProcBairro.AsString <> '' Then
        edtCmp6.Text := edtCmp6.Text +', '+ qrLocProcBairro.AsString;
     { CIDADE }
     edtCmp7.Text := qrLocProcCidade.AsString;
     If qrLocProcUF.AsString <> '' Then
        edtCmp7.Text := edtCmp7.Text +' - '+ qrLocProcUF.AsString;

     { DESCRIÇÃO DAS MERCADORIAS }
     If qrLocProcTipoEmbalagem.AsString <> '' Then
        edtCmp8.Text := qrLocProcTipoEmbalagem.AsString +' - '+ qrLocProcDescricaoEmbalagem.AsString
     Else
        edtCmp8.Clear;

     { PAÍS DE ORIGEM }
     edtCmp9.Text := qrLocProcDESCRICAO.AsString;

     { LOCAL DE ARMAZENAGEM }
     If qrLocProcNome_Armazem.AsString <> '' Then
        edtCmp11.Text := qrLocProcNome_Armazem.AsString
     Else
        edtCmp11.Clear;

     edtCmp13.Text := edtCmp4.Text;
     edtCmp14.Text := edtCmp6.Text;

     edtCmp18.Clear;
     If qrLocProcURF_chegada.AsString <> '' Then
        edtCmp18.Text := edtCmp18.Text + qrLocProcDESCRICAO.AsString +' - ';
     If qrLocProcData_Chegada_URF_Cheg.AsString <> '' Then
        edtCmp18.Text := edtCmp18.Text + qrLocProcData_Chegada_URF_Cheg.AsString;
end;

procedure TfrmReqAgriculNovo.edtCmp3Change(Sender: TObject);
begin
  //   TJustifyRichEdit(Sender).Justify;
end;

procedure TfrmReqAgriculNovo.cbCmp1Click(Sender: TObject);
begin
     If cbCmp1.Checked Then Begin
        cbCmp2.Checked := False;
        cbCmp3.Checked := False;
        cbCmp4.Checked := False;

        edtCmp12.Enabled := False;
        edtCmp12.Clear;
     End;
end;

procedure TfrmReqAgriculNovo.cbCmp2Click(Sender: TObject);
begin
     If cbCmp2.Checked Then Begin
        cbCmp1.Checked := False;
        cbCmp3.Checked := False;
        cbCmp4.Checked := False;

        edtCmp12.Enabled := False;
        edtCmp12.Clear;
     End;
end;

procedure TfrmReqAgriculNovo.cbCmp3Click(Sender: TObject);
begin
     If cbCmp3.Checked Then Begin
        cbCmp1.Checked := False;
        cbCmp2.Checked := False;
        cbCmp4.Checked := False;

        edtCmp12.Enabled := False;
        edtCmp12.Clear;
     End;
end;

procedure TfrmReqAgriculNovo.cbCmp4Click(Sender: TObject);
begin
     If cbCmp4.Checked Then Begin
        cbCmp1.Checked := False;
        cbCmp2.Checked := False;
        cbCmp3.Checked := False;

        edtCmp12.Enabled := True;
     End;
end;

procedure TfrmReqAgriculNovo.ME_nossarefChange(Sender: TObject);
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

    if F_MSCOMEX.AcessaPasta(me_nossaref.Text, '', frmReqAgriculNovo)
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
      ScrollBox1.VertScrollBar.Position := 0;
      ScrollBox1.Visible := TRUE;
   
end;

procedure TfrmReqAgriculNovo.btnSairClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmReqAgriculNovo.btnIncluirClick(Sender: TObject);
begin
   If Not Assigned(qrepReqAgriculNovo) Then Application.CreateForm(TqrepReqAgriculNovo, qrepReqAgriculNovo);
   qrepReqAgriculNovo.Preview;
   logusu('A',' Acessou o Rel. do Requerimento de Agricultura. MS: '+ qrLocProcCodigo.AsString);
end;


end.
