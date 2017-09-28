unit u_TermoRespSunDrawH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Db, DBTables, ActnList, Buttons, ExtCtrls;

type
  TfrmTermoRespSunDrawH = class(TForm)
    edtCmp1: TRichEdit;
    alAcoes: TActionList;
    acAtualizarCampos: TAction;
    Panel1: TPanel;
    Label1: TLabel;
    btnVoltar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtCmp1Enter(Sender: TObject);
    procedure edtCmp1Exit(Sender: TObject);
    procedure acAtualizarCamposExecute(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure edtCmp1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTermoRespSunDrawH: TfrmTermoRespSunDrawH;

implementation

uses U_MSCOMEX, u_TermoSunDrawH, u_extenso;

{$R *.DFM}

procedure TfrmTermoRespSunDrawH.FormCreate(Sender: TObject);
begin
     acAtualizarCampos.Execute;
end;

procedure TfrmTermoRespSunDrawH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     frmTermoRespSunDrawH := Nil;
     Action := caFree;
end;

procedure TfrmTermoRespSunDrawH.edtCmp1Enter(Sender: TObject);
begin
     With TEdit(Sender) Do
         Color := clWhite;
end;

procedure TfrmTermoRespSunDrawH.edtCmp1Exit(Sender: TObject);
begin
     With TEdit(Sender) Do
         Color := $00DFFFFF;
end;

procedure TfrmTermoRespSunDrawH.acAtualizarCamposExecute(Sender: TObject);
var vTexto: String;

begin
     vTexto := vTexto;
     { ENDERE�O }
     With frmTermoSunDrawH Do Begin
     vTexto := vTexto +', '+ qrLocProcEndereco.AsString;
     If qrLocProcNumero.AsString <> '' Then
        vTexto := vTexto +', N� '+ qrLocProcNumero.AsString;
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
             +', inscrita no CNPJ sob o n� '
             + FormatFloat('##"."###"."###/####-##', qrLocProcCNPJ_CPF_COMPLETO.AsFloat);

     vTexto := 'Aos 14 dias do m�s de abril de 2004, no Departamento de Marinha Mercante no Rio de Janeiro, '
             + 'compareceu '+ vTexto +', e declarou ter importado pelo navio '
             + edtCmp7.Text +', operado no porto do Rio de Janeiro em '+ edtCmp10.Text +', '
             + 'espec. da mercadoria '+ edtCmp13.Text +', embarcada no porto de '+ edtCmp7.Text +', '
             + 'com o frete no valor de R$ '+ edtCmp17.Text +' ('+ Extenso(StrToFloat(StringReplace(edtCmp17.Text, '.', '', [rfReplaceAll]))) +') '
             + 'conforme conhecimento(s) de Embarque(s) n� '+ edtCmp5.Text +' datado de '+ edtCmp6.Text +', '
             + 'procedente de Houston, Declara��o de Importa��o n� '+ qrLocProcNR_DECLARACAO_IMP.AsString
             + ' de 14/04/2004.'+#13#10+#13#10
             + 'A referida mercadoria est� sujeita ao Regime de Drawback/Suspens�o, conforme '
             + 'Ato Concess�rio n� '+ edtCmp4.Text +', "partes e pe�as para produ��o de '
             + 'duas unidades flutuantes", o prazo do ato concess�rio � at� 07/12/2005, '
             + 'ap�s a comprova��o de venda das mercadorias no mercado interno e assim '
             + 'a baixa do Ato Concess�rio, solicitaremos a baixa do processo de suspens�o.'+#13#10+#13#10
             + 'O importador apresentar�, no prazo previsto no Ato Consess�rio, o relat�rio '
             + 'unificado de "Drawback", regulamentado pelo Comunicado DECEX n� 02/00, '
             + 'de 31/01/2000, protocolado pelo Banco do Brasil S/A,. acompanhado dos extratos '
             + 'das Declara��es de Importa��o, com os comprovantes de Importa��o e os '
             + 'comprovantes de venda das embarca��es, pertinentes.'+#13#10+#13#10
             + 'O n�o cumprimento dos compromissos assumidos, no prazo determinado no Ato Concess�rio, '
             + 'implicar� no recolhimento do valor origin�rio do AFRMM, "na data do pagamento", '
             + 'com os acr�scimos previstos nas al�neas "a" e "b" do par�grafo 3� do art. 6�, '
             + 'do Decreto-lei n� 2.404/87, alterado pela Medida Provis�ria n� 1.960-64, '
             + 'de 28 julho de 2000, que depende de regulamenta��o, e Portaria Interministerial n� 754, '
             + 'de 30/11/1978, em caso de comprova��o da exporta��o de somente parte da mercadoria, '
             + 'o valor do AFRMM a ser recolhido ser� proporcional a parcela n�o exportada, '
             + 'sobre a qual incidir�o os acr�scimos tratados neste par�grafo. O n�o recolhimento '
             + 'dos valores do AFRMM e seus acr�scimos legais implicar� na inscri��o do d�bito '
             + 'na D�vida Ativa da Uni�o, para posterior cobran�a executiva, conforme disposi��es '
             + 'do par�grafo 2�, do artigo 2� da Lei 10.206 de 29/03/2001.';
     End;
     edtCmp1.Lines.Text := vTexto;
end;

procedure TfrmTermoRespSunDrawH.btnVoltarClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmTermoRespSunDrawH.edtCmp1Change(Sender: TObject);
begin
   //TJustifyRichEdit(Sender).Justify;
end;

end.
