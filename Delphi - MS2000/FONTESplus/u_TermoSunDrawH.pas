unit u_TermoSunDrawH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ActnList, DBCtrls, StdCtrls, ComCtrls, ExtCtrls, Buttons,
  Mask;

type
  TfrmTermoSunDrawH = class(TForm)
    ScrollBox1: TScrollBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label20: TLabel;
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
    edtCmp19: TRichEdit;
    edtCmp16: TEdit;
    alAcoes: TActionList;
    acAtualizarCampos: TAction;
    qrLocProc: TQuery;
    Label6: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    btnTermo: TBitBtn;
    qrLocProcCodigo: TStringField;
    qrLocProcDataProc: TDateTimeField;
    qrLocProcRazao_Social: TStringField;
    qrLocProcCNPJ_CPF_COMPLETO: TStringField;
    qrLocProcEndereco: TStringField;
    qrLocProcNumero: TStringField;
    qrLocProcComplemento: TStringField;
    qrLocProcBairro: TStringField;
    qrLocProcCidade: TStringField;
    qrLocProcUF: TStringField;
    qrLocProcCEP: TStringField;
    qrLocProcNumero_1: TStringField;
    qrLocProcNumerodoccarga: TStringField;
    qrLocProcData: TDateTimeField;
    qrLocProcLocal: TStringField;
    qrLocProcDESCRICAO: TStringField;
    qrLocProcEmbarcacao: TStringField;
    qrLocProcData_Chegada_URF_Cheg: TDateTimeField;
    qrLocProcTaxa_conversao: TFloatField;
    qrLocProcPeso_Bruto: TFloatField;
    qrLocProcPeso_Liquido: TFloatField;
    qrLocProcFrete_Prepaid: TFloatField;
    qrLocProcNR_DECLARACAO_IMP: TStringField;
    pnlTop: TPanel;
    Label16: TLabel;
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
    procedure btnTermoClick(Sender: TObject);
    procedure edtCmp3Change(Sender: TObject);
    procedure ME_nossarefChange(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTermoSunDrawH: TfrmTermoSunDrawH;

implementation

uses U_MSCOMEX, u_TermoRespSunDrawH,u_RelTermoSunDrawH;

{$R *.DFM}

procedure TfrmTermoSunDrawH.FormCreate(Sender: TObject);
begin
    { With qrLocProc Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Params[2].AsString := vProc;
         Open;
     End;
     If qrLocProc.Recordcount = 0 Then Begin
        MessageDlg('Este processo não tem Conhecimento!', mtWarning, [mbOk], 0);
        Close;
        Exit;
     End;
     acAtualizarCampos.Execute;

     ScrollBox1.VertScrollBar.Position := 0;    }
end;

procedure TfrmTermoSunDrawH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     frmTermoSunDrawH := Nil;
     Action := caFree;
     F_MSCOMEX.CapaDISepetiba1.enabled := True;
end;

procedure TfrmTermoSunDrawH.edtCmp1Enter(Sender: TObject);
begin
     With TEdit(Sender) Do
         Color := clWhite;
end;

procedure TfrmTermoSunDrawH.edtCmp1Exit(Sender: TObject);
begin
     With TEdit(Sender) Do
         Color := $00DFFFFF;
end;

procedure TfrmTermoSunDrawH.acAtualizarCamposExecute(Sender: TObject);
var vTexto: String;

begin
     { CONTEÚDO }
     edtCmp13.Clear;
     { VALOR DO AFRMM }
     edtCmp18.Clear;

     { VALORES PADRÕES }
     edtCmp1.Text := 'Ao Departamento de Marinha Mercante.';
     edtCmp2.Text := 'Responsável pelo Serviço de arrecadação.';

     vTexto := qrLocProcRazao_Social.AsString;
     { ENDEREÇO }
     vTexto := vTexto +', '+ qrLocProcEndereco.AsString;
     If qrLocProcNumero.AsString <> '' Then
        vTexto := vTexto +', Nº '+ qrLocProcNumero.AsString;
     If (qrLocProcComplemento.AsString <> '') AND (qrLocProcComplemento.AsString <> '.') Then
        vTexto := vTexto +', '+ qrLocProcComplemento.AsString;
     If qrLocProcBairro.AsString <> '' Then
        vTexto := vTexto +', '+ qrLocProcBairro.AsString;
     If qrLocProcCidade.AsString <> '' Then
        vTexto := vTexto +' - '+ qrLocProcCidade.AsString;
     If qrLocProcUF.AsString <> '' Then
        vTexto := vTexto +' - '+ qrLocProcUF.AsString;
     If qrLocProcCEP.AsString <> '' Then
        vTexto := vTexto +' - CEP: '+ qrLocProcCEP.AsString;

     vTexto := vTexto
             +', Inscrita no CNPJ sob o nº '
             + FormatFloat('##"."###"."###/####-##', qrLocProcCNPJ_CPF_COMPLETO.AsFloat)
             +', vem mui respeitosamente solicitar a V.S.ª. a suspensão total ou '
             +'parcial do pagamento do AFRMM nos termos do Decreto-lei nº 1.626/78, '
             +'mediante assinatura de Termo de Responsabilidade.';

     edtCmp3.Lines.Text := vTexto;

     { ATO CONCESSÓRIO }
     If qrLocProcNumero.AsString <> '' Then
        edtCmp4.Text := qrLocProcNumero.AsString
     Else
        edtCmp4.Clear;
     { B/L }
     If qrLocProcNumerodoccarga.AsString <> '' Then
        edtCmp5.Text := qrLocProcNumerodoccarga.AsString
     Else
        edtCmp5.Clear;
     { DATA }
     If qrLocProcData.AsString <> '' Then
        edtCmp6.Text := qrLocProcData.AsString
     Else
        edtCmp6.Clear;
     { PORTO DE ORIGEM }
     If qrLocProcLocal.AsString <> '' Then
        edtCmp7.Text := qrLocProcLocal.AsString
     Else
        edtCmp7.Clear;
     { NACIONALIDADE }
     If qrLocProcDESCRICAO.AsString <> '' Then
        edtCmp8.Text := qrLocProcDESCRICAO.AsString
     Else
        edtCmp8.Clear;
     { NAVIO }
     If qrLocProcEmbarcacao.AsString <> '' Then
        edtCmp9.Text := qrLocProcEmbarcacao.AsString
     Else
        edtCmp9.Clear;
     { DATA DE OPERAÇÃO }
     If qrLocProcData_Chegada_URF_Cheg.AsString <> '' Then
        edtCmp10.Text := qrLocProcData_Chegada_URF_Cheg.AsString
     Else
        edtCmp10.Clear;
     { DATA DA TAXA DE CONVERSÃO }
     edtCmp11.Text := FormatDateTime('dd/mm/yyyy', Now);
     { USD }
     If qrLocProcTaxa_conversao.AsString <> '' Then
        edtCmp12.Text := FormatFloat('#,##0.00##', qrLocProcTaxa_conversao.AsFloat)
     Else
        edtCmp12.Clear;
     { PESO BRUTO }
     If qrLocProcPeso_Bruto.AsString <> '' Then
        edtCmp14.Text := FormatFloat('#,##0.00000 "Kg"', qrLocProcPeso_Bruto.AsFloat)
     Else
        edtCmp14.Clear;
     { PESO LÍQUIDO }
     If qrLocProcPeso_Liquido.AsString <> '' Then
        edtCmp15.Text := FormatFloat('#,##0.00000 "Kg"', qrLocProcPeso_Liquido.AsFloat)
     Else
        edtCmp15.Clear;
     { FRETE US$ }
     If qrLocProcFrete_Prepaid.AsString <> '' Then
        edtCmp16.Text := FormatFloat('#,##0.00', qrLocProcFrete_Prepaid.AsFloat)
     Else
        edtCmp16.Clear;
     { FRETE R$ }
     If qrLocProcFrete_Prepaid.AsString <> '' Then
        edtCmp17.Text := FormatFloat('#,##0.00', qrLocProcFrete_Prepaid.AsFloat*qrLocProcTaxa_conversao.AsFloat)
     Else
        edtCmp17.Clear;
end;

procedure TfrmTermoSunDrawH.btnTermoClick(Sender: TObject);
begin
     Application.CreateForm(TfrmTermoRespSunDrawH, frmTermoRespSunDrawH);
     With frmTermoRespSunDrawH Do Begin
        //parent := frmMSForm.PageControl1;
         Show;
     End;
end;

procedure TfrmTermoSunDrawH.edtCmp3Change(Sender: TObject);
begin
   //  TJustifyRichEdit(Sender).Justify;
end;

procedure TfrmTermoSunDrawH.ME_nossarefChange(Sender: TObject);
begin
If Length(F_MSCOMEX.LRTrim(me_nossaref.Text)) <> 8 Then
    Exit;

    if F_MSCOMEX.AcessaPasta(me_nossaref.Text,'',frmTermoSunDrawH)
     then ;

     With qrLocProc Do Begin
         Close;
         Params[0].AsString := me_nossaref.Text;
         Open;
     End;
     If qrLocProc.Recordcount = 0 Then Begin
        MessageDlg('Este processo não tem Conhecimento!', mtWarning, [mbOk], 0);
        Close;
        Exit;
     End;
     acAtualizarCampos.Execute;
     ScrollBox1.VertScrollBar.Position := 0;
     ScrollBox1.Visible := TRUE;

end;

procedure TfrmTermoSunDrawH.btnSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmTermoSunDrawH.btnIncluirClick(Sender: TObject);
begin
 If Not Assigned( qrepTermoSunDrawH) Then
     Application.CreateForm(TqrepTermoSunDrawH,  qrepTermoSunDrawH);
     qrepTermoSunDrawH.Preview;
     logusu('A',' Acessou o Rel. da Capa da DI de Niterói. MS: '+ qrLocProcCodigo.AsString);
end;

end.
