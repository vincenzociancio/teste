unit u_proReducao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, Db, DBTables, DBCtrls, Grids, DBGrids, Buttons,
  ActnList;

type
  TF_proReducao = class(TForm)
    pnlPrincipal: TPanel;
    pnlTop: TPanel;
    Label26: TLabel;
    l_cliente: TLabel;
    ME_nossaref: TMaskEdit;
    pnlBaixo: TPanel;
    btnSair: TBitBtn;
    Label2: TLabel;
    edtFatura: TEdit;
    Label35: TLabel;
    qrTipos: TQuery;
    dsTipos: TDataSource;
    tbReducoes: TTable;
    dsReducoes: TDataSource;
    meValor: TMaskEdit;
    btnIncluir: TBitBtn;
    btnExcluir: TBitBtn;
    Label1: TLabel;
    Label3: TLabel;
    dbGrdTipo: TDBGrid;
    dbGrdReducao: TDBGrid;
    qrTiposCodigo: TStringField;
    qrTiposDescricao: TStringField;
    qrUpItens: TQuery;
    qrReducoes: TQuery;
    alRateio: TActionList;
    acRateio: TAction;
    tbReducoesEmpresa: TStringField;
    tbReducoesFilial: TStringField;
    tbReducoesProcesso: TStringField;
    tbReducoesFatura: TStringField;
    tbReducoesCD_MET_DEDUC_VALOR: TStringField;
    tbReducoesDescricao: TStringField;
    tbReducoesVL_DEDUCAO_MNEG: TFloatField;
    tbReducoesCD_MD_NEGOC_DEDUC: TStringField;
    tbReducoesVL_DEDUCAO_MN: TFloatField;
    qrReducoesSomaDeVL_DEDUCAO_MNEG: TFloatField;
    qrSomaAcre: TQuery;
    qrSomaAcreValTot: TFloatField;
    qrSomaRedu: TQuery;
    qrSomaReduValTot: TFloatField;
    qrUpFatura: TQuery;
    acAtuFatura: TAction;
    qrSomaItens: TQuery;
    qrSomaItensEmpresa: TStringField;
    qrSomaItensFilial: TStringField;
    qrSomaItensProcesso: TStringField;
    qrSomaItensFatura: TStringField;
    qrSomaItensSomaValorTotal: TFloatField;
    qrSomaItensSomaPesoTotal: TFloatField;
    qrSomaItensSomaPesoAcertado: TFloatField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnSairClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure tbReducoesAfterOpen(DataSet: TDataSet);
    procedure qrTiposAfterOpen(DataSet: TDataSet);
    procedure tbReducoesBeforeDelete(DataSet: TDataSet);
    procedure tbReducoesAfterPost(DataSet: TDataSet);
    procedure acRateioExecute(Sender: TObject);
    procedure meValorChange(Sender: TObject);
    procedure meValorKeyPress(Sender: TObject; var Key: Char);
    procedure FormDeactivate(Sender: TObject);
    procedure acAtuFaturaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
   F_proReducao: TF_proReducao;
   vEmp, vFil, vPro, vFat, vInc, vMoe: String;
   vAlter: Boolean = False;

implementation

uses U_MSCOMEX, u_profaturas;

{$R *.DFM}

procedure TF_proReducao.FormActivate(Sender: TObject);
begin
     Left := 0;
     Top  := 0;
end;

procedure TF_proReducao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     If F_proFaturas <> nil Then
        With F_proFaturas Do Begin
            pnlTop.Enabled := True;
            pnlPrincipal.Enabled := True;
            pnlBaixo.Enabled := True;
            btnReducao.Enabled := True;
            Show;
        End;

     F_proReducao := Nil;
     Action := caFree;
end;

procedure TF_proReducao.FormCreate(Sender: TObject);
begin
     vEmp := F_proFaturas.tbFaturasEmpresa.AsString;
     vFil := F_proFaturas.tbFaturasFilial.AsString;
     vPro := F_proFaturas.tbFaturasProcesso.AsString;
     vFat := F_proFaturas.tbFaturasCodigo.AsString;
     vInc := F_proFaturas.tbFaturasIncoterm.AsString;
     vMoe := F_proFaturas.tbFaturasMoeda.AsString;

     me_nossaref.Text := vPro;
     edtFatura.Text := vFat;
     l_cliente.Caption := F_proFaturas.l_cliente.Caption;

     With qrTipos Do Begin
         Close;
         Params[0].AsString := vInc;
         Params[1].AsString := vEmp;
         Params[2].AsString := vFil;
         Params[3].AsString := vPro;
         Params[4].AsString := vFat;
         Open;
     End;
     With qrReducoes Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Params[2].AsString := vPro;
         Params[3].AsString := vFat;
     End;
     With tbReducoes Do Begin
         Filter := 'Empresa = '''+vEmp+''' '
                 + 'AND Filial = '''+vFil+''' '
                 + 'AND Processo = '''+vPro+''' '
                 + 'AND Fatura = '''+vFat+''' ';
         Filtered := True;
         Open;
     End;

     With qrSomaItens Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Params[2].AsString := vPro;
         Params[3].AsString := vFat;
     End;
     With qrSomaAcre Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Params[2].AsString := vPro;
         Params[3].AsString := vFat;
     End;
     With qrSomaRedu Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Params[2].AsString := vPro;
         Params[3].AsString := vFat;
     End;

     With qrUpFatura Do Begin
         Params[1].AsString := vEmp;
         Params[2].AsString := vFil;
         Params[3].AsString := vPro;
         Params[4].AsString := vFat;
     End;
end;

procedure TF_proReducao.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     If vAlter Then  FormDeactivate(Sender);

     If tbReducoes.State In [dsInsert] Then Begin
        MessageDlg('A Redução da Fatura está sendo incluida!', mtInformation,[mbOk], 0);
        CanClose := False;
     End
     Else
        CanClose := True;
end;

procedure TF_proReducao.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure TF_proReducao.btnIncluirClick(Sender: TObject);
begin
if (v_AlteraPRO = 1) then begin
 //if (f_profaturas.qrprocessosqresp.asstring = v_usuario) or (v_nivel<='7') then begin

     If F_proFaturas.tbFaturasPeso_Total_acertado.AsFloat = 0 Then Begin
        MessageDlg('O peso acertado da Fatura está zerado! Acerte o peso da Fatura.', mtInformation,[mbOk], 0);
        meValor.Clear;
        Exit;
     End;

     If meValor.Text = '' Then Begin
        MessageDlg('O Valor de Redução na Moeda da Fatura não pode estar em branco!', mtInformation,[mbOk], 0);
        meValor.SetFocus;
        Exit;
     End;
     If StrToFloat(meValor.Text) <= 0 Then Begin
        MessageDlg('O Valor de Redução na Moeda da Fatura deve ser maior que zero!', mtInformation,[mbOk], 0);
        meValor.SetFocus;
        Exit;
     End;

     tbReducoes.Append;
     tbReducoesEmpresa.AsString            := vEmp;
     tbReducoesFilial.AsString             := vFil;
     tbReducoesProcesso.AsString           := vPro;
     tbReducoesFatura.AsString             := vFat;
     tbReducoesCD_MD_NEGOC_DEDUC.AsString  := vMoe;
     tbReducoesCD_MET_DEDUC_VALOR.AsString := qrTiposCodigo.AsString;
     tbReducoesDescricao.AsString          := qrTiposDescricao.AsString;
     tbReducoesVL_DEDUCAO_MNEG.AsString    := meValor.Text;
     //tbReducoesVL_DEDUCAO_MN.AsString      := '';
     tbReducoes.Post;

     meValor.Clear;
     vAlter := True;

     { RATEIO DE REDUÇÕES }
     acRateio.Execute;

     With qrTipos Do Begin
         Close;  Open;
     End;

     dbGrdTipo.SetFocus;

end
else begin
      Showmessage(v_usuario+', ATENÇÃO! Acesso não permitido à processos sob Responsabilidade e/ou o processo está fechado e/ou o Cliente está Inativo.');
end;

end;

procedure TF_proReducao.btnExcluirClick(Sender: TObject);
begin
if (v_AlteraPRO = 1) then begin
 //if (f_profaturas.qrprocessosqresp.asstring = v_usuario) or (v_nivel<='7') then begin

     If F_proFaturas.tbFaturasPeso_Total_acertado.AsFloat = 0 Then Begin
        MessageDlg('O peso acertado da Fatura está zerado! Acerte o peso da Fatura.', mtInformation,[mbOk], 0);
        meValor.Clear;
        Exit;
     End;

     If MessageDlg('Confirma exclusão da Redução da Fatura?', mtConfirmation,[mbYes, mbNo], 0) = mrNo Then
        Exit;

     tbReducoes.Delete;
     vAlter := True;

     { RATEIO DE ACRÉSCIMOS }
     acRateio.Execute;

     With qrTipos Do Begin
         Close;  Open;
     End;

     dbGrdReducao.SetFocus;

end
else begin
     Showmessage(v_usuario+', ATENÇÃO! Acesso não permitido à processos sob Responsabilidade e/ou o processo está fechado e/ou o Cliente está Inativo.');
end;

end;

procedure TF_proReducao.tbReducoesAfterOpen(DataSet: TDataSet);
begin
     If tbReducoes.RecordCount <> 0 Then
        btnExcluir.Enabled := True
     Else
        btnExcluir.Enabled := False;
end;

procedure TF_proReducao.qrTiposAfterOpen(DataSet: TDataSet);
begin
     If qrTipos.RecordCount <> 0 Then
        btnIncluir.Enabled := True
     Else
        btnIncluir.Enabled := False;
end;

procedure TF_proReducao.tbReducoesBeforeDelete(DataSet: TDataSet);
begin
     logusu('E','Excluiu a Redução: '+tbReducoesCD_MET_DEDUC_VALOR.AsString+', da Fatura: '+tbReducoesFatura.AsString+', do Processo: '+tbReducoesProcesso.AsString);
end;

procedure TF_proReducao.tbReducoesAfterPost(DataSet: TDataSet);
begin
     tbReducoesAfterOpen(DataSet);
     logusu('I','Incluiu a Redução: '+tbReducoesCD_MET_DEDUC_VALOR.AsString+', da Fatura: '+tbReducoesFatura.AsString+', do Processo: '+tbReducoesProcesso.AsString);
end;

procedure TF_proReducao.acRateioExecute(Sender: TObject);
var totDedu: Real;

begin
     With qrReducoes Do Begin
         Close;  Open;
     End;
     totDedu := qrReducoesSomaDeVL_DEDUCAO_MNEG.AsFloat / F_proFaturas.tbFaturasPeso_Total_Acertado.AsFloat;

     With qrUpItens Do Begin
         Params[0].AsFloat  := totDedu;

         Params[1].AsString := vEmp;
         Params[2].AsString := vFil;
         Params[3].AsString := vPro;
         Params[4].AsString := vFat;
         ExecSQL;
     End;
end;

procedure TF_proReducao.meValorChange(Sender: TObject);
var tPos: Integer;

begin
     tPos := meValor.SelStart;
     meValor.Text := StringReplace(meValor.Text,' ','',[rfReplaceAll]);
     meValor.SelStart := tPos;
end;

procedure TF_proReducao.meValorKeyPress(Sender: TObject; var Key: Char);
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

procedure TF_proReducao.FormDeactivate(Sender: TObject);
begin
     If Not vAlter Then Exit;
     //If F_proFaturas.tbFaturasAcrescimos_Reducoes.AsBoolean Then Exit;
     If F_proFaturas.tbFaturasAcrescimos_Reducoes.Asinteger = 1 Then Exit;

     Screen.Cursor := crHourGlass;

     { ATUALIZA SALDOS DA FATURA }
     acAtuFatura.Execute;

     f_mscomex.AtualizaTaxaConversao(vPro);

     With F_proFaturas.qrFaturas Do Begin
         Close;
         Open;
         Locate('Codigo',vFat,[]);
     End;

     vAlter := False;
     Screen.Cursor := crDefault;
end;

procedure TF_proReducao.acAtuFaturaExecute(Sender: TObject);
var valItem, valAcre, valRedu: Real;

begin
     valItem := 0;
     valAcre := 0;
     valRedu := 0;

     qrSomaItens.Open;
     valItem := qrSomaItensSomaValorTotal.AsFloat;

     qrSomaAcre.Open;
     valAcre := qrSomaAcreValTot.AsFloat;

     qrSomaRedu.Open;
     valRedu := qrSomaReduValTot.AsFloat;

     With qrUpFatura Do Begin
         Params[0].AsFloat := valItem + valAcre - valRedu;
         ExecSQL;
     End;

     qrSomaItens.Close;
     qrSomaAcre.Close;
     qrSomaRedu.Close;

end;

end.
