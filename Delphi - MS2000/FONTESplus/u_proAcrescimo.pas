unit u_proAcrescimo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, Db, DBTables, DBCtrls, Grids, DBGrids, Buttons,
  ActnList;

type
  TF_proAcrescimo = class(TForm)
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
    tbAcrescimos: TTable;
    dsAcrescimos: TDataSource;
    meValor: TMaskEdit;
    btnIncluir: TBitBtn;
    btnExcluir: TBitBtn;
    Label1: TLabel;
    Label3: TLabel;
    dbGrdTipo: TDBGrid;
    dbGrdAcrescimo: TDBGrid;
    qrUpItens: TQuery;
    qrAcrescimos: TQuery;
    alRateio: TActionList;
    acRateio: TAction;
    qrSomaAcre: TQuery;
    qrSomaRedu: TQuery;
    acAtuFatura: TAction;
    qrUpFatura: TQuery;
    qrSomaItens: TQuery;
    q_up2: TQuery;
    qrAcrescimosEmpresa: TStringField;
    qrAcrescimosFilial: TStringField;
    qrAcrescimosProcesso: TStringField;
    qrAcrescimosFatura: TStringField;
    qrAcrescimosCD_MET_ACRES_VALOR: TStringField;
    qrAcrescimosDescricao: TStringField;
    qrAcrescimosVL_ACRESCIMO_MOEDA: TFloatField;
    qrAcrescimosCD_MD_NEGOC_ACRES: TStringField;
    qrAcrescimosVL_ACRESCIMO_MN: TFloatField;
    tbAcrescimosEmpresa: TStringField;
    tbAcrescimosFilial: TStringField;
    tbAcrescimosProcesso: TStringField;
    tbAcrescimosFatura: TStringField;
    tbAcrescimosCD_MET_ACRES_VALOR: TStringField;
    tbAcrescimosDescricao: TStringField;
    tbAcrescimosVL_ACRESCIMO_MOEDA: TFloatField;
    tbAcrescimosCD_MD_NEGOC_ACRES: TStringField;
    tbAcrescimosVL_ACRESCIMO_MN: TFloatField;
    qrTiposCodigo: TStringField;
    qrTiposDescricao: TStringField;
    qrSomaItensEmpresa: TStringField;
    qrSomaItensFilial: TStringField;
    qrSomaItensProcesso: TStringField;
    qrSomaItensFatura: TStringField;
    qrSomaItensSomaValorTotal: TFloatField;
    qrSomaItensSomaPesoTotal: TFloatField;
    qrSomaItensSomaPesoAcertado: TFloatField;
    qrSomaAcreValTot: TFloatField;
    qrSomaReduValTot: TFloatField;
    Query1: TQuery;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnSairClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure tbAcrescimosAfterOpen(DataSet: TDataSet);
    procedure qrTiposAfterOpen(DataSet: TDataSet);
    procedure tbAcrescimosBeforeDelete(DataSet: TDataSet);
    procedure tbAcrescimosAfterPost(DataSet: TDataSet);
    procedure acRateioExecute(Sender: TObject);
    procedure meValorChange(Sender: TObject);
    procedure meValorKeyPress(Sender: TObject; var Key: Char);
    procedure FormDeactivate(Sender: TObject);
    procedure acAtuFaturaExecute(Sender: TObject);
  private
    fImportadorCNPJ: string;
    { Private declarations }
  public
    { Public declarations }
    property ImportadorCNPJ : string read fImportadorCNPJ write fImportadorCNPJ;
  end;

var
   F_proAcrescimo: TF_proAcrescimo;
   vEmp, vFil, vPro, vFat, vInc, vMoe: String;
   vAlter: Boolean = False;
   //eduardo souza - frente incluso
   valorFrenteInternacional : double;
implementation

uses U_MSCOMEX, u_profaturas;

{$R *.DFM}

procedure TF_proAcrescimo.FormActivate(Sender: TObject);
begin
  Left := 0;
  Top  := 0;
end;

procedure TF_proAcrescimo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  If F_proFaturas <> nil Then
    With F_proFaturas Do Begin
      pnlTop.Enabled := True;
      pnlPrincipal.Enabled := True;
      pnlBaixo.Enabled := True;
      btnAcrescimo.Enabled := True;
      Show;
    End;

  F_proAcrescimo := Nil;
  Action := caFree;
end;

procedure TF_proAcrescimo.FormCreate(Sender: TObject);
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
  With qrAcrescimos Do Begin
   Params[0].AsString := vEmp;
   Params[1].AsString := vFil;
   Params[2].AsString := vPro;
   Params[3].AsString := vFat;
  End;
  With tbAcrescimos Do Begin
   Filter := 'Empresa = '''+vEmp+''' '
           + 'AND Filial = '''+vFil+''' '
           + 'AND Processo = '''+vPro+''' '
           + 'AND Fatura = '''+vFat+''' ';
   Filtered := True;
   Open;
  End;
  With qrUpItens Do Begin
   Params[14].AsString := vEmp;
   Params[15].AsString := vFil;
   Params[16].AsString := vPro;
   Params[17].AsString := vFat;
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

procedure TF_proAcrescimo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  If vAlter Then
    FormDeactivate(Sender);

  If tbAcrescimos.State In [dsInsert] Then Begin
    MessageDlg('O Acréscimo da Fatura está sendo incluido!', mtInformation,[mbOk], 0);
    CanClose := False;
  End
  Else
    CanClose := True;
end;

procedure TF_proAcrescimo.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TF_proAcrescimo.btnIncluirClick(Sender: TObject);
begin
  if (v_AlteraPRO = 1) then begin
    If F_proFaturas.tbFaturasPeso_Total_acertado.AsFloat = 0 Then Begin
      MessageDlg('O peso acertado da Fatura está zerado! Acerte o peso da Fatura.', mtInformation,[mbOk], 0);
      meValor.Clear;
      Exit;
    End;

    If meValor.Text = '' Then Begin
      MessageDlg('O Valor de Acréscimo na Moeda da Fatura não pode estar em branco!', mtInformation,[mbOk], 0);
      meValor.SetFocus;
      Exit;
    End;
    If StrToFloat(meValor.Text) <= 0 Then Begin
      MessageDlg('O Valor de Acréscimo na Moeda da Fatura deve ser maior que zero!', mtInformation,[mbOk], 0);
      meValor.SetFocus;
      Exit;
    End;

    tbAcrescimos.Append;
    tbAcrescimosEmpresa.AsString            := vEmp;
    tbAcrescimosFilial.AsString             := vFil;
    tbAcrescimosProcesso.AsString           := vPro;
    tbAcrescimosFatura.AsString             := vFat;
    tbAcrescimosCD_MD_NEGOC_ACRES.AsString  := vMoe;
    // eduardo.souza 16/12/2011
    {if (qrTiposCodigo.AsString = '5') then
    tbAcrescimosCD_MET_ACRES_VALOR.AsString := '16'
    else }
    tbAcrescimosCD_MET_ACRES_VALOR.AsString := qrTiposCodigo.AsString;
    //---
    tbAcrescimosDescricao.AsString          := qrTiposDescricao.AsString;
    tbAcrescimosVL_ACRESCIMO_MOEDA.AsString := meValor.Text;
    //tbAcrescimosVL_ACRESCIMO_MN.AsString    := '';
    tbAcrescimos.Post;

    meValor.Clear;
    vAlter := True;

    { RATEIO DE ACRÉSCIMOS }
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

procedure TF_proAcrescimo.btnExcluirClick(Sender: TObject);
begin
  if (v_AlteraPRO = 1) then begin
    If F_proFaturas.tbFaturasPeso_Total_acertado.AsFloat = 0 Then Begin
      MessageDlg('O peso acertado da Fatura está zerado! Acerte o peso da Fatura.', mtInformation,[mbOk], 0);
      meValor.Clear;
      Exit;
    End;

    If MessageDlg('Confirma exclusão do Acréscimo da Fatura?', mtConfirmation,[mbYes, mbNo], 0) = mrNo Then
      Exit;

    tbAcrescimos.Delete;
    vAlter := True;

    { RATEIO DE ACRÉSCIMOS }
    acRateio.Execute;

    With qrTipos Do Begin
       Close;  Open;
    End;

    dbGrdAcrescimo.SetFocus;
  end
  else begin
    Showmessage(v_usuario+', ATENÇÃO! Acesso não permitido à processos sob Responsabilidade e/ou o processo está fechado e/ou o Cliente está Inativo.');
  end; 
end;

procedure TF_proAcrescimo.tbAcrescimosAfterOpen(DataSet: TDataSet);
begin
     If tbAcrescimos.RecordCount <> 0 Then
        btnExcluir.Enabled := True
     Else
        btnExcluir.Enabled := False;
end;

procedure TF_proAcrescimo.qrTiposAfterOpen(DataSet: TDataSet);
begin
  If qrTipos.RecordCount <> 0 Then
    btnIncluir.Enabled := True
  Else
    btnIncluir.Enabled := False;
end;

procedure TF_proAcrescimo.tbAcrescimosBeforeDelete(DataSet: TDataSet);
begin
  logusu('E','Excluiu o Acréscimo: '+tbAcrescimosCD_MET_ACRES_VALOR.AsString+', da Fatura: '+tbAcrescimosFatura.AsString+', do Processo: '+tbAcrescimosProcesso.AsString);
end;

procedure TF_proAcrescimo.tbAcrescimosAfterPost(DataSet: TDataSet);
begin
  tbAcrescimosAfterOpen(DataSet);
  logusu('I','Incluiu o Acréscimo: '+tbAcrescimosCD_MET_ACRES_VALOR.AsString+', da Fatura: '+tbAcrescimosFatura.AsString+', do Processo: '+tbAcrescimosProcesso.AsString);
end;

procedure TF_proAcrescimo.acRateioExecute(Sender: TObject);
var
   totAcres           : Real;
   totEmb             : Real;
   totFreteInt        : Real;
   totSeguroInt       : Real;
   totOutrasImport    : Real;
   totStartup         : Real;
   totJurosFin        : Real;
   totMontagem        : Real;
   totFreteInternoExp : Real;
   totCargaExp        : Real;
   totOutrasExport    : Real;
   totFreteFatura     : Real;
   totSeguroFatura    : Real;
   totCargaImp        : Real;

   valAcre: Real;
   tipoAcre: String;
   psTotAcertado,valtotal: Real;
   valorTotalItens : double;
begin
  totAcres           := 0;
  totEmb             := 0;
  totFreteInt        := 0;
  totSeguroInt       := 0;
  totOutrasImport    := 0;
  totStartup         := 0;
  totJurosFin        := 0;
  totMontagem        := 0;
  totFreteInternoExp := 0;
  totCargaExp        := 0;
  totOutrasExport    := 0;
  totFreteFatura     := 0;
  totSeguroFatura    := 0;
  totCargaImp        := 0;

  qrAcrescimos.Close;
  qrAcrescimos.Open;

  psTotAcertado := F_proFaturas.tbFaturasPeso_Total_acertado.AsFloat;
  valtotal      := F_proFaturas.tbFaturasvalor_total.AsFloat;
  valorFrenteInternacional := 0;

  if F_proFaturas.tbFaturasacrescimos_reducoes.asinteger = 1 then begin
    While Not qrAcrescimos.Eof Do Begin
      valtotal := valtotal - qrAcrescimosVL_ACRESCIMO_MOEDA.AsFloat;
      qrAcrescimos.Next;
    End;
  End
  Else Begin
    // Eduardo Souza - 22/03/20013 - Frente Incluso
    if(F_proFaturas.tbFaturasFrete_Incluso.AsInteger = 1)then Begin
      While Not qrAcrescimos.Eof Do Begin
        if (qrAcrescimosCD_MET_ACRES_VALOR.AsString = '13') then begin // Igual a frente internacional
          valorFrenteInternacional := qrAcrescimosVL_ACRESCIMO_MOEDA.AsFloat;
          valtotal := valtotal - qrAcrescimosVL_ACRESCIMO_MOEDA.AsFloat;
        end;
        qrAcrescimos.Next;
      end;
    end;
  End;
  // Para calcular seguro LUBRIZOL - Eduardo Souza - 26/03/2013
  if(F_proFaturas.tbFaturasFrete_Incluso.AsInteger = 1)Then begin
    qrSomaItens.Open;
    valorTotalItens := qrSomaItensSomaValorTotal.AsFloat;
    qrSomaItens.Close;
  end
  else begin
    qrSomaItens.Open;
    valorTotalItens := valorFrenteInternacional + qrSomaItensSomaValorTotal.AsFloat;
    qrSomaItens.Close;
  end;
  //---
  qrAcrescimos.first;
  While Not qrAcrescimos.Eof Do Begin
    tipoAcre := Trim(qrAcrescimosCD_MET_ACRES_VALOR.AsString);
    valAcre := qrAcrescimosVL_ACRESCIMO_MOEDA.AsFloat;
    { eduardo.souza 16/12/2011
    totAcres := totAcres + valAcre;
    If tipoAcre = '1'  Then  totEmb             := valAcre / psTotAcertado;
    If tipoAcre = '2'  Then  totJurosFin        := valAcre / psTotAcertado;
    If tipoAcre = '3'  Then  totMontagem        := valAcre / psTotAcertado;
    If tipoAcre = '4'  Then  totFreteInternoExp := valAcre / psTotAcertado;
    If tipoAcre = '5'  Then  totCargaExp        := valAcre / psTotAcertado;
    If tipoAcre = '6'  Then  totOutrasExport    := valAcre / psTotAcertado;
    If tipoAcre = '7'  Then  totFreteFatura     := valAcre / psTotAcertado;
    If tipoAcre = '8'  Then  totSeguroFatura    := valAcre / valtotal; ////psTotAcertado;
    If tipoAcre = '9'  Then  totCargaImp        := valAcre / psTotAcertado;
    If tipoAcre = '10' Then  totFreteInt        := valAcre / psTotAcertado;
    If tipoAcre = '11' Then  totSeguroInt       := valAcre / psTotAcertado;
    If tipoAcre = '12' Then  totOutrasImport    := valAcre / psTotAcertado;
    If tipoAcre = '13' Then  totStartup         := valAcre / psTotAcertado;
    qrAcrescimos.Next;
    }
    {totAcres := totAcres + valAcre;
    If tipoAcre = '1'  Then  totEmb             := valAcre / psTotAcertado;
    If tipoAcre = '2'  Then  totJurosFin        := valAcre / psTotAcertado;
    If tipoAcre = '3'  Then  totMontagem        := valAcre / psTotAcertado;
    If tipoAcre = '4'  Then  totFreteInternoExp := valAcre / psTotAcertado;
    If tipoAcre = '16' Then  totCargaExp        := valAcre / psTotAcertado; ///eduardo.souza 16/12/2011
    If tipoAcre = '6'  Then  totOutrasExport    := valAcre / psTotAcertado;
    If tipoAcre = '7'  Then  totFreteFatura     := valAcre / psTotAcertado;
    If tipoAcre = '8'  Then  totSeguroFatura    := valAcre / valtotal; ////psTotAcertado;
    If tipoAcre = '9'  Then  totCargaImp        := valAcre / psTotAcertado;
    If tipoAcre = '10' Then  totFreteInt        := valAcre / psTotAcertado;
    If tipoAcre = '11' Then  totSeguroInt       := valAcre / psTotAcertado;
    If tipoAcre = '12' Then  totOutrasImport    := valAcre / psTotAcertado;
    If tipoAcre = '13' Then  totStartup         := valAcre / psTotAcertado; }

    totAcres := totAcres + valAcre;
    If tipoAcre = '2' Then
      totEmb := valAcre / psTotAcertado; //EMBALAGENS E RECIPIENTES

    // Eduardo Souza - 21/03/2013 - Adequação para o cliente LUBRIZOL,
    //base de calculo da capatazia é igual ao do seguro internacional.
    if(tipoAcre = '9')then begin
      if(ImportadorCNPJ = '4259396200')then begin
        totCargaImp := valAcre / valorTotalItens; //VALOR QUALQUER PARCELA
      end
      else begin
        totCargaImp := valAcre / psTotAcertado; //VALOR QUALQUER PARCELA
      end;
    end;

    If tipoAcre = '10' Then  totFreteInternoExp := valAcre / psTotAcertado; //FRETE INTERNO -PAIS DE EXPORTAÇÃO
    If tipoAcre = '11' Then  totSeguroInt       := valAcre / psTotAcertado; //SEGURO INTERNO -PAIS DE EXPORTAÇÃO
    If tipoAcre = '12' Then  totCargaExp        := valAcre / psTotAcertado; //CARGA,DESCARGA E MANUSEIO - PAIS DE EXPORTAÇÃO
    // Eduardo Souza - 22/03/20013 - Frente Incluso
    if(F_proFaturas.tbFaturasFrete_Incluso.AsInteger <> 1)then Begin
     If tipoAcre = '13' Then  totFreteFatura     := valAcre / psTotAcertado; //FRETE INTERNACIONAL
    End;

    If tipoAcre = '14' Then  totSeguroFatura    := valAcre / valtotal; //SEGURO INTERNACIONAL
    If tipoAcre = '15' Then  totOutrasImport    := valAcre / psTotAcertado; //CARGA,DESCARGA E MANUSEIO INTERNACIONAIS
    If tipoAcre = '16' Then  totFreteInt        := valAcre / psTotAcertado; //CARGA,DESCARGA E MANUSEIO NA ENTRADA - PAIS DE IMPORTAÇÃO
    If tipoAcre = '17' Then  totOutrasExport    := valAcre / psTotAcertado; //OUROS ACRESCIMO AO VALOR ADUANEIRO

    //If tipoAcre = '2'  Then  totJurosFin        := valAcre / psTotAcertado;
    // If tipoAcre = '3'  Then  totMontagem        := valAcre / psTotAcertado;
    // If tipoAcre = '13' Then  totStartup         := valAcre / psTotAcertado;
    qrAcrescimos.Next;
  End;
  totAcres := totAcres / psTotAcertado;

  With qrUpItens Do Begin
     Params[0].AsFloat  := 0;//totAcres;
     Params[1].AsFloat  := totEmb;
     Params[2].AsFloat  := totFreteInt;
     Params[3].AsFloat  := totSeguroInt;
     Params[4].AsFloat  := totOutrasImport;
     Params[5].AsFloat  := totStartup;
     Params[6].AsFloat  := totJurosFin;
     Params[7].AsFloat  := totMontagem;
     Params[8].AsFloat  := totFreteInternoExp;
     Params[9].AsFloat  := totCargaExp;
     Params[10].AsFloat := totOutrasExport;
     Params[11].AsFloat := totFreteFatura;
     Params[12].AsFloat := totSeguroFatura;
     // Eduardo Souza - 21/03/2013 - Adequação para o cliente LUBRIZOL,
     //base de calculo da capatazia é igual ao do seguro internacional.
     if(ImportadorCNPJ = '4259396200')then
       SQL.Strings[15]:= 'Rateio_carga_imp = Cast(:rat14 * valor_unitario as varchar)'
     else
       SQL.Strings[15]:= 'Rateio_carga_imp = Cast(:rat14 * Peso_Unitario_Acertado as varchar)';
     try
        Params[13].AsFloat := totCargaImp;
        ExecSQL;
        SQL.SaveToFile('c:\txt.txt');
     except
           ShowMessage('Erro: rateio não atualizado!');
     end;
  End;
  With q_uP2 Do Begin
    Params[0].AsString := vEmp;
    Params[1].AsString := vFil;
    Params[2].AsString := vPro;
    Params[3].AsString := vFat;
    ExecSQL;
  End;
end;

procedure TF_proAcrescimo.meValorChange(Sender: TObject);
  var
  tPos: Integer;
begin
  tPos := meValor.SelStart;
  meValor.Text := StringReplace(meValor.Text,' ','',[rfReplaceAll]);
  meValor.SelStart := tPos;
end;

procedure TF_proAcrescimo.meValorKeyPress(Sender: TObject; var Key: Char);
  var
  tPos: Integer;
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

procedure TF_proAcrescimo.FormDeactivate(Sender: TObject);
begin
  If Not vAlter Then
   Exit;

  If F_proFaturas.tbFaturasAcrescimos_Reducoes.Asinteger = 1 Then
   Exit;

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

procedure TF_proAcrescimo.acAtuFaturaExecute(Sender: TObject);
  var
   valItem,
   valAcre,
   valRedu: Real;
begin
  valItem := 0;
  valAcre := 0;
  valRedu := 0;

  qrSomaItens.Open;
  valItem := qrSomaItensSomaValorTotal.AsFloat;

  qrSomaAcre.Open;
  valAcre := qrSomaAcreValTot.AsFloat;

  if(F_proFaturas.tbFaturasFrete_Incluso.AsInteger = 1)and
    ( valorFrenteInternacional > 0 )then Begin
    valAcre := valAcre - valorFrenteInternacional;
  end;

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
