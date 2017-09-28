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
     { ENDEREÇO }
     With frmTermoSunDrawH Do Begin
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
             +', inscrita no CNPJ sob o nº '
             + FormatFloat('##"."###"."###/####-##', qrLocProcCNPJ_CPF_COMPLETO.AsFloat);

     vTexto := 'Aos 14 dias do mês de abril de 2004, no Departamento de Marinha Mercante no Rio de Janeiro, '
             + 'compareceu '+ vTexto +', e declarou ter importado pelo navio '
             + edtCmp7.Text +', operado no porto do Rio de Janeiro em '+ edtCmp10.Text +', '
             + 'espec. da mercadoria '+ edtCmp13.Text +', embarcada no porto de '+ edtCmp7.Text +', '
             + 'com o frete no valor de R$ '+ edtCmp17.Text +' ('+ Extenso(StrToFloat(StringReplace(edtCmp17.Text, '.', '', [rfReplaceAll]))) +') '
             + 'conforme conhecimento(s) de Embarque(s) nº '+ edtCmp5.Text +' datado de '+ edtCmp6.Text +', '
             + 'procedente de Houston, Declaração de Importação nº '+ qrLocProcNR_DECLARACAO_IMP.AsString
             + ' de 14/04/2004.'+#13#10+#13#10
             + 'A referida mercadoria está sujeita ao Regime de Drawback/Suspensão, conforme '
             + 'Ato Concessório nº '+ edtCmp4.Text +', "partes e peças para produção de '
             + 'duas unidades flutuantes", o prazo do ato concessório é até 07/12/2005, '
             + 'após a comprovação de venda das mercadorias no mercado interno e assim '
             + 'a baixa do Ato Concessório, solicitaremos a baixa do processo de suspensão.'+#13#10+#13#10
             + 'O importador apresentará, no prazo previsto no Ato Consessório, o relatório '
             + 'unificado de "Drawback", regulamentado pelo Comunicado DECEX nº 02/00, '
             + 'de 31/01/2000, protocolado pelo Banco do Brasil S/A,. acompanhado dos extratos '
             + 'das Declarações de Importação, com os comprovantes de Importação e os '
             + 'comprovantes de venda das embarcações, pertinentes.'+#13#10+#13#10
             + 'O não cumprimento dos compromissos assumidos, no prazo determinado no Ato Concessório, '
             + 'implicará no recolhimento do valor originário do AFRMM, "na data do pagamento", '
             + 'com os acréscimos previstos nas alíneas "a" e "b" do parágrafo 3º do art. 6º, '
             + 'do Decreto-lei nº 2.404/87, alterado pela Medida Provisória nº 1.960-64, '
             + 'de 28 julho de 2000, que depende de regulamentação, e Portaria Interministerial nº 754, '
             + 'de 30/11/1978, em caso de comprovação da exportação de somente parte da mercadoria, '
             + 'o valor do AFRMM a ser recolhido será proporcional a parcela não exportada, '
             + 'sobre a qual incidirão os acréscimos tratados neste parágrafo. O não recolhimento '
             + 'dos valores do AFRMM e seus acréscimos legais implicará na inscrição do débito '
             + 'na Dívida Ativa da União, para posterior cobrança executiva, conforme disposições '
             + 'do parágrafo 2º, do artigo 2º da Lei 10.206 de 29/03/2001.';
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
