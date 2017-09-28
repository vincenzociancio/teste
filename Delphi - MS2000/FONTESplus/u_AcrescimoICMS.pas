unit u_AcrescimoICMS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, Mask, ExtCtrls, Db, DBTables, DBCtrls;

type
  TfrmAcrescimoICMS = class(TForm)
    pnlTop: TPanel;
    Label26: TLabel;
    l_cliente: TLabel;
    Label2: TLabel;
    ME_nossaref: TMaskEdit;
    edtFatura: TEdit;
    pnlPrincipal: TPanel;
    Label35: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    meValor: TMaskEdit;
    btnIncluir: TBitBtn;
    btnExcluir: TBitBtn;
    dbGrdTipo: TDBGrid;
    dbGrdAcrescimo: TDBGrid;
    pnlBaixo: TPanel;
    btnSair: TBitBtn;
    qAcrescimosICMS: TQuery;
    qAcrescimosICMSCD_ACRESC_ICMS: TAutoIncField;
    qAcrescimosICMSDESCRICAO: TStringField;
    dsAcrescimosICMS: TDataSource;
    dsAcrescimosICMSInc: TDataSource;
    qAcrescimosICMInc: TQuery;
    qAcrescimosICMIncCD_ACRESC_ICMS: TAutoIncField;
    qAcrescimosICMIncDESCRICAO: TStringField;
    qIncluir: TQuery;
    qExcluir: TQuery;
    qVL_ACRESCIMO: TQuery;
    DBEdit1: TDBEdit;
    dsVL_ACRESCIMO: TDataSource;
    qTOTAL_VL_ACRESCIMO: TQuery;
    dsTOTAL_VL_ACRESCIMO: TDataSource;
    qVL_ACRESCIMOvl_acrescimo: TFloatField;
    qTOTAL_VL_ACRESCIMOsoma_acrescimo: TFloatField;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    qVerificaSeMaritimoOuAereo: TQuery;
    qVerificaSeMaritimoOuAereoVL_ACRESCIMO: TFloatField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure meValorChange(Sender: TObject);
    procedure meValorKeyPress(Sender: TObject; var Key: Char);
    procedure qAcrescimosICMIncAfterOpen(DataSet: TDataSet);
    procedure qAcrescimosICMSAfterOpen(DataSet: TDataSet);
    procedure qAcrescimosICMIncAfterScroll(DataSet: TDataSet);
    procedure btnSairClick(Sender: TObject);
  private
//    procedure FormDeactivate(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAcrescimoICMS: TfrmAcrescimoICMS;
   vEmp, vFil, vPro, vFat, vInc, vMoe: String;
   vAlter: Boolean = False;   

implementation

uses u_profaturas, U_MSCOMEX;

{$R *.DFM}

procedure TfrmAcrescimoICMS.FormActivate(Sender: TObject);
begin
     Left := 0;
     Top  := 0;
end;

procedure TfrmAcrescimoICMS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     If F_proFaturas <> nil Then
        With F_proFaturas Do Begin
            pnlTop.Enabled := True;
            pnlPrincipal.Enabled := True;
            pnlBaixo.Enabled := True;
            btnAcrescICMS.Enabled := True;
            Show;
        End;  
     frmAcrescimoICMS := Nil;
     Action := caFree;
end;

procedure TfrmAcrescimoICMS.FormCreate(Sender: TObject);
begin
     vPro := F_proFaturas.tbFaturasProcesso.AsString;
     vFat := F_proFaturas.tbFaturasCodigo.AsString;
     me_nossaref.Text := vPro;
     edtFatura.Text := vFat;
     l_cliente.Caption := F_proFaturas.l_cliente.Caption;

     With qAcrescimosICMS Do Begin
         Close;
         Params[0].AsString := vPro;
         Params[1].AsString := vFat;
         Open;
     End;
     With qAcrescimosICMInc Do Begin
         Close;
         Params[0].AsString := vPro;
         Params[1].AsString := vFat;
         Open;
     End;
     With qVL_ACRESCIMO Do Begin
         Close;
         Params[0].AsString := vPro;
         Params[1].AsString := vFat;
         Params[2].AsString := qAcrescimosICMIncCD_ACRESC_ICMS.asString;
         Open;
     End;
     With qTOTAL_VL_ACRESCIMO Do Begin
         Close;
         Params[0].AsString := vPro;
         Params[1].AsString := vFat;
         Open;
     End;
end;

procedure TfrmAcrescimoICMS.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
//     If vAlter Then  FormDeactivate(Sender);

{     If tbAcrescimos.State In [dsInsert] Then Begin
        MessageDlg('O Acr�scimo da Fatura est� sendo incluido!', mtInformation,[mbOk], 0);
        CanClose := False;
     End
     Else
        CanClose := True;}
end;
{
procedure TfrmAcrescimoICMS.FormDeactivate(Sender: TObject);
begin
     If Not vAlter Then Exit;

//     If F_proFaturas.tbFaturasAcrescimos_Reducoes.Asinteger = 1 Then Exit;

     Screen.Cursor := crHourGlass;

     { ATUALIZA SALDOS DA FATURA }
//     acAtuFatura.Execute;

//     f_mscomex.AtualizaTaxaConversao(vPro);
 {
     With F_proFaturas.qrFaturas Do Begin
         Close;
         Open;
         Locate('Codigo',vFat,[]);
     End;

     vAlter := False;
     Screen.Cursor := crDefault;
end;
}
procedure TfrmAcrescimoICMS.btnIncluirClick(Sender: TObject);
begin
if (v_AlteraPRO = 1) then
begin
   with qVerificaSeMaritimoOuAereo do
   begin
       {Leandro Serra - 30/04/2013 - Refazendo o Acr�scimo do ICMS
       Obs: At� ent�o s� existe dois tipos de acr�scimo do ICMS o Mar�timo e o A�reo
       Esta verifica��o � importante pq n�o pode haver os dois no processo
       a para entrar no c�lculo da base ICMS utiliza-se f�rmulas diferentes.
       N�o utilizei o Tipo de processo A�reo ou Mar�timo pois existe v�rios c�digos e seria mais complexo para
       controlar e como volta e meia incluem e alteram ia dar merda rsrsrrss.

       Como na MS as solicita��es n�o s�o planejadas e existem v�rias exce��es, SE SOLICITAREM incluir
       o acr�scimo OUTROS como um gen�rico vai quebrar a firma rsrsrs
       Ser� necess�rio passar a f�rmula para esse OUTROS.
       No momento s� existe Mar�timo e A�reo.

       Segue o c�lculo que � inclu�do na BASE_ICMS

       ATA A�REO
       ACR�SCIMO ATA A�REO / VA = CONSTANTE
       CONSTANTE X VA DA ADI��O

       MAR�TIMO

       ACR�SCIMO MARINHA / FRETE TOTAL = CONSTANTE
       CONSTANTE * FRETE POR ADI��O

       }
       Close;
       ParamByName('pProcesso').asString := ME_nossaref.text;
       if (qAcrescimosICMSCD_ACRESC_ICMS.Value = 1) then
          ParamByName('pCod').asInteger := 8
       else
          ParamByName('pCod').asInteger := 1;
       ParamByName('pFatura').asString :=edtFatura.Text;;
       Open;
   end;
   if qVerificaSeMaritimoOuAereo.RecordCount = 1 then
   begin
               showmessage('N�o � poss�vel informar acr�scimo ICMS Mar�timo e A�reo no mesmo processo.');
               qVerificaSeMaritimoOuAereo.close;
               Exit;
   end;            
   If meValor.Text = '' Then Begin
      MessageDlg('O Valor de Acr�scimo na Moeda da Fatura n�o pode estar em branco!', mtInformation,[mbOk], 0);
      meValor.SetFocus;
      Exit;
   End;
   If StrToFloat(meValor.Text) <= 0 Then Begin
      MessageDlg('O Valor de Acr�scimo na Moeda da Fatura deve ser maior que zero!', mtInformation,[mbOk], 0);
      meValor.SetFocus;
      Exit;
   End;
   with qIncluir do
   begin
     Close;
     ParamByName('Processo').asString := ME_nossaref.text;
     ParamByName('Fatura').asString := edtFatura.Text;
     ParamByName('cd_acresc_icms').AsSmallInt :=  qAcrescimosICMSCD_ACRESC_ICMS.Value;
     ParamByName('vl_acrescimo').asFloat := strToFloat(meValor.text);
     ExecSQL;
   end;
//*****   logusu('I','Incluiu o Acr�scimo do ICMS: '+qAcrescimosICMSCD_ACRESC_ICMS.asString+', da Fatura: '+tbAcrescimosFatura.AsString+', do Processo: '+tbAcrescimosProcesso.AsString);
   meValor.Clear;
   { RATEIO DE ACR�SCIMOS
   acRateio.Execute;      }
   With qAcrescimosICMS Do Begin
        Close;
        Params[0].AsString := vPro;
        Params[1].AsString := vFat;
        Open;
   End;
   With qAcrescimosICMInc Do Begin
        Close;
        Params[0].AsString := vPro;
        Params[1].AsString := vFat;
        Open;
    End;
     With qVL_ACRESCIMO Do Begin
         Close;
         Params[0].AsString := vPro;
         Params[1].AsString := vFat;
         Params[2].AsString := qAcrescimosICMIncCD_ACRESC_ICMS.asString;
         Open;
     End;
     With qTOTAL_VL_ACRESCIMO Do Begin
         Close;
         Params[0].AsString := vPro;
         Params[1].AsString := vFat;
         Open;
     End;
end
else
   Showmessage(v_usuario+', ATEN��O! Acesso n�o permitido � processos sob Responsabilidade e/ou o processo est� fechado e/ou o Cliente est� Inativo.');
end;

procedure TfrmAcrescimoICMS.btnExcluirClick(Sender: TObject);
begin
if (v_AlteraPRO = 1) then
begin
   with qExcluir do
   begin
        close;
        ParamByName('Processo').asString := ME_nossaref.text;
        ParamByName('Fatura').asString := edtFatura.Text;
        ParamByName('cd_acresc_icms').AsSmallInt :=qAcrescimosICMIncCD_ACRESC_ICMS.Value;
        ExecSQL;
   end;
   With qAcrescimosICMS Do Begin
        Close;
        Params[0].AsString := vPro;
        Params[1].AsString := vFat;
        Open;
   End;
   With qAcrescimosICMInc Do Begin
        Close;
        Params[0].AsString := vPro;
        Params[1].AsString := vFat;
        Open;
   End;
     With qVL_ACRESCIMO Do Begin
         Close;
         Params[0].AsString := vPro;
         Params[1].AsString := vFat;
         Params[2].AsString := qAcrescimosICMIncCD_ACRESC_ICMS.asString;
         Open;
     End;
     With qTOTAL_VL_ACRESCIMO Do Begin
         Close;
         Params[0].AsString := vPro;
         Params[1].AsString := vFat;
         Open;
     End;
end
else
     Showmessage(v_usuario+', ATEN��O! Acesso n�o permitido � processos sob Responsabilidade e/ou o processo est� fechado e/ou o Cliente est� Inativo.');
end;

procedure TfrmAcrescimoICMS.meValorChange(Sender: TObject);
var tPos: Integer;
begin
     tPos := meValor.SelStart;
     meValor.Text := StringReplace(meValor.Text,' ','',[rfReplaceAll]);
     meValor.SelStart := tPos;
end;

procedure TfrmAcrescimoICMS.meValorKeyPress(Sender: TObject;   var Key: Char);
var tPos: Integer;
begin
     tPos := meValor.SelStart;
     If Not(Key In ['0'..'9',',',#8]) Then Begin
        Key := ' ';
        meValor.SelStart := tPos-1;
     End;
     If (Key = ',') AND (Pos(',', meValor.Text) > 0) Then Begin
        Key := ' ';
        meValor.SelStart := tPos-1;
     End;
end;

procedure TfrmAcrescimoICMS.qAcrescimosICMIncAfterOpen(DataSet: TDataSet);
begin
     If qAcrescimosICMInc.RecordCount <> 0 Then
        btnExcluir.Enabled := True
     Else
        btnExcluir.Enabled := False;
end;

procedure TfrmAcrescimoICMS.qAcrescimosICMSAfterOpen(DataSet: TDataSet);
begin
     If qAcrescimosICMS.RecordCount <> 0 Then
        btnIncluir.Enabled := True
     Else
        btnIncluir.Enabled := False;
end;

procedure TfrmAcrescimoICMS.qAcrescimosICMIncAfterScroll(
  DataSet: TDataSet);
begin
     With qVL_ACRESCIMO Do Begin
         Close;
         Params[0].AsString := vPro;
         Params[1].AsString := vFat;
         Params[2].AsString := qAcrescimosICMIncCD_ACRESC_ICMS.asString;
         Open;
     End;
end;

procedure TfrmAcrescimoICMS.btnSairClick(Sender: TObject);
begin
    Close;
end;

end.
