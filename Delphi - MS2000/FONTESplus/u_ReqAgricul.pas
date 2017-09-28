unit u_ReqAgricul;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, DBCtrls, StdCtrls, ComCtrls, ExtCtrls, Db, DBTables, Buttons,
  Mask;

type
  TfrmReqAgricul = class(TForm)
    ScrollBox1: TScrollBox;
    Bevel3: TBevel;
    Bevel2: TBevel;
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
    Label13: TLabel;
    Label14: TLabel;
    Label12: TLabel;
    Bevel1: TBevel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Label21: TLabel;
    dbTxtReg: TDBText;
    Label22: TLabel;
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
    edtCmp19: TEdit;
    edtCmp21: TEdit;
    edtCmp20: TEdit;
    edtCmp22: TEdit;
    edtCmp23: TRichEdit;
    edtCmp24: TRichEdit;
    dbLcbProcurador: TDBLookupComboBox;
    edtCmp16: TEdit;
    alAcoes: TActionList;
    acAtualizarCampos: TAction;
    dsProcurador: TDataSource;
    pnlTop: TPanel;
    Label24: TLabel;
    l_cliente: TLabel;
    ME_nossaref: TMaskEdit;
    pnlBaixo: TPanel;
    btnSair: TBitBtn;
    qrLocProc: TQuery;
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
    qrProcurador: TQuery;
    qrProcuradorCodigo: TStringField;
    qrProcuradorRazao_Social: TStringField;
    qrProcuradorRegistro: TStringField;
    qrParam: TQuery;
    qrParamEmpresa: TStringField;
    qrParamFilial: TStringField;
    qrParamCidade: TStringField;
    btnIncluir: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtCmp1Enter(Sender: TObject);
    procedure edtCmp1Exit(Sender: TObject);
    procedure acAtualizarCamposExecute(Sender: TObject);
    procedure edtCmp3Change(Sender: TObject);
    procedure ME_nossarefChange(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReqAgricul: TfrmReqAgricul;

implementation

uses U_MSCOMEX,u_RelReqAgricul;

{$R *.DFM}

procedure TfrmReqAgricul.FormCreate(Sender: TObject);
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

     ScrollBox1.VertScrollBar.Position := 0;  }
end;

procedure TfrmReqAgricul.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     frmReqAgricul := Nil;
     Action := caFree;
     F_MSCOMEX.RequerimentodeAgriculturaAntigo1.enabled := True;
end;

procedure TfrmReqAgricul.edtCmp1Enter(Sender: TObject);
begin
     With TEdit(Sender) Do
         Color := clWhite;
end;

procedure TfrmReqAgricul.edtCmp1Exit(Sender: TObject);
begin
     With TEdit(Sender) Do
         Color := $00DFFFFF;
end;

procedure TfrmReqAgricul.acAtualizarCamposExecute(Sender: TObject);
var vVia: String;
begin
     edtCmp3.WordWrap := True;
     edtCmp23.WordWrap := True;
     edtCmp24.WordWrap := True;

     { VALORES PADRÕES }
     edtCmp1.Text := 'Ao Senhor Chefe';
     If qrLocProcVia.AsString = '4' Then
        vVia := 'o Comunicado de Serviço nº 003'
     Else
        vVia := 'a Portaria Interministerial nº 499';
     edtCmp3.Lines.Text := #9 +'Solicitamos o exame, bem como o fornecimento de anuência referente '
                   + vVia
                   + ', para a(s) embalagens, caixas, escoras de madeira, etc., '
                   + 'conforme descrição abaixo.';
     edtCmp23.Text:= '';
     edtCmp24.Lines.Text := #9 +'Declaramos conhecer os Procedimentos da VIGILANCIA AGROPECUÁRIA, estando ciente que deveremos solicitar a fiscalização e coleta de amostras quando a mercadoria já estiver em condições de ser inspecionada.';

     If qrParamFilial.AsString = 'RJO' Then Begin
        edtCmp2.Text := 'VIGIAGRO/AEROPORTO DO RIO DE JANEIRO';
        edtCmp7.Text := 'VIGIAGRO/AEROPORTO DO RIO DE JANEIRO nr.__________';
        edtCmp12.Text := 'DIVERSOS';
     End
     Else Begin
        edtCmp2.Clear;
        edtCmp7.Clear;
        edtCmp12.Clear;
     End;

     { PAÍS DE ORIGEM }
     edtCmp4.Text := qrLocProcDESCRICAO.AsString;
     { IMPORTADOR }
     edtCmp5.Text := qrLocProcRazao_Social.AsString;
     { ENDEREÇO }
     edtCmp6.Text := qrLocProcEndereco.AsString;
     If qrLocProcNumero.AsString <> '' Then
        edtCmp6.Text := edtCmp6.Text +', '+ qrLocProcNumero.AsString;
     If (qrLocProcComplemento.AsString <> '') AND (qrLocProcComplemento.AsString <> '.') Then
        edtCmp6.Text := edtCmp6.Text +', '+ qrLocProcComplemento.AsString;
     If qrLocProcBairro.AsString <> '' Then
        edtCmp6.Text := edtCmp6.Text +', '+ qrLocProcBairro.AsString;
     If qrLocProcCidade.AsString <> '' Then
        edtCmp6.Text := edtCmp6.Text +' - '+ qrLocProcCidade.AsString;
     If qrLocProcUF.AsString <> '' Then
        edtCmp6.Text := edtCmp6.Text +' - '+ qrLocProcUF.AsString;
     { EXPORTADOR }
     edtCmp8.Text := qrLocProcRazao_Social.AsString;
     { ENDEREÇO }
     edtCmp9.Text := qrLocProcEndereco.AsString;
     If qrLocProcNumero.AsString <> '' Then
        edtCmp9.Text := edtCmp9.Text +', '+ qrLocProcNumero.AsString;
     If (qrLocProcComplemento.AsString <> '') AND (qrLocProcComplemento.AsString <> '.') Then
        edtCmp9.Text := edtCmp9.Text +', '+ qrLocProcComplemento.AsString;
     If qrLocProcBairro.AsString <> '' Then
        edtCmp9.Text := edtCmp9.Text +', '+ qrLocProcBairro.AsString;
     If qrLocProcCidade.AsString <> '' Then
        edtCmp9.Text := edtCmp9.Text +' - '+ qrLocProcCidade.AsString;
     If qrLocProcUF.AsString <> '' Then
        edtCmp9.Text := edtCmp9.Text +' - '+ qrLocProcUF.AsString;
     { DESCRIÇÃO DAS MERCADORIAS }
     If qrLocProcTipoEmbalagem.AsString <> '' Then
        edtCmp10.Text := qrLocProcTipoEmbalagem.AsString +' - '+ qrLocProcDescricaoEmbalagem.AsString +' - '+ qrLocProcQuantidade.AsString
     Else
        edtCmp10.Clear;
     If qrLocProcPeso_Bruto.AsString <> '' Then
        edtCmp13.Text := FormatFloat('#,##0.000', qrLocProcPeso_Bruto.AsFloat) +' Kgs'
     Else
        edtCmp13.Clear;
     If qrLocProcLocal.AsString <> '' Then
        edtCmp14.Text := qrLocProcLocal.AsString
     Else
        edtCmp14.Clear;
     If qrLocProcURF_chegada.AsString <> '' Then
        edtCmp15.Text := qrLocProcDESCRICAO.AsString
     Else
        edtCmp15.Clear;
     If qrLocProcEmbarcacao.AsString <> '' Then
        edtCmp16.Text := qrLocProcEmbarcacao.AsString
     Else
        edtCmp16.Clear;
     If qrLocProcTipodoccarga.AsString <> '' Then
        edtCmp17.Text := qrLocProcDESCRICAO.AsString +': '+ qrLocProcNumerodoccarga.AsString
     Else
        edtCmp17.Clear;
     If qrLocProcLocal.AsString <> '' Then
        edtCmp18.Text := qrLocProcLocal.AsString
     Else
        edtCmp18.Clear;
     { OUTRAS INFORMAÇÕES }
     If qrLocProcValor_FOB.AsString <> '' Then
        edtCmp19.Text := FormatFloat('US$ #,##0.00', qrLocProcValor_FOB.AsFloat / qrLocProcTaxa_conversao.AsFloat)
     Else
        edtCmp19.Clear;
     If qrLocProcNome_Armazem.AsString <> '' Then
        edtCmp20.Text := qrLocProcNome_Armazem.AsString
     Else
        edtCmp20.Clear;
     If qrLocProcData_Chegada_URF_Cheg.AsString <> '' Then
        edtCmp22.Text := qrLocProcData_Chegada_URF_Cheg.AsString
     Else
        edtCmp22.Clear;
end;

procedure TfrmReqAgricul.edtCmp3Change(Sender: TObject);
begin
  //   TJustifyRichEdit(Sender).Justify;
end;

procedure TfrmReqAgricul.ME_nossarefChange(Sender: TObject);
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

    if F_MSCOMEX.AcessaPasta(me_nossaref.Text,'',frmReqAgricul)
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

end;


procedure TfrmReqAgricul.btnIncluirClick(Sender: TObject);
begin
    If Not Assigned(qrepReqAgricul) Then
      Application.CreateForm(TqrepReqAgricul, qrepReqAgricul);
     qrepReqAgricul.Preview;
     logusu('A','MSForm: Acessou o Rel. do Requerimento de Agricultura. MS: '+ qrLocProcCodigo.AsString);
end;

procedure TfrmReqAgricul.btnSairClick(Sender: TObject);
begin
close;
end;

End.
