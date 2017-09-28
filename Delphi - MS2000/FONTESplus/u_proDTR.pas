unit u_proDTR;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, Db, DBTables, Buttons, ActnList, DBCtrls,
  Grids, DBGrids, Math;

type
  TF_proDTR = class(TForm)
    pnlTop: TPanel;
    l_cliente: TLabel;
    pnlPrincipal: TPanel;
    pnlBaixo: TPanel;
    btnAlterar: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    btnImprimirConsumo: TBitBtn;
    btnImprimirDTR: TBitBtn;
    alDTR: TActionList;
    acTempDTR: TAction;
    acDTRConsumo: TAction;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    lblRegime: TLabel;
    lblBenef: TLabel;
    lblCPF_CNPJ: TLabel;
    Label2: TLabel;
    lblCodRecFed: TLabel;
    lblCodRecAlfand: TLabel;
    txtBene1: TEdit;
    txtEnd1: TEdit;
    txtUnidRF1: TEdit;
    txtRegime2: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    txtBene2: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    txtEnd2: TEdit;
    txtUnidRF2: TEdit;
    txtRecinto2: TEdit;
    txtCPFCNPJ2: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    qrProcessos: TQuery;
    dsQProcessos: TDataSource;
    tbProcessos: TTable;
    tbProcessosEmpresa: TStringField;
    tbProcessosFilial: TStringField;
    tbProcessosCodigo: TStringField;
    tbProcessosData: TDateTimeField;
    tbProcessosImportador: TStringField;
    tbProcessosCodigo_Cliente: TStringField;
    tbProcessosTipo_Declaracao: TStringField;
    tbProcessosTipo: TStringField;
    tbProcessosContrato: TStringField;
    tbProcessosLocal_Inventario: TStringField;
    tbProcessosNR_DECL_IMP_MICRO: TStringField;
    tbProcessosNR_DECL_IMP_PROT: TStringField;
    tbProcessosNR_DECLARACAO_IMP: TStringField;
    tbProcessosDT_PROCESSAMENTO: TStringField;
    tbProcessosDT_TRANSMISSAO: TStringField;
    tbProcessosDT_REGISTRO_DI: TStringField;
    tbProcessosDT_DESEMBARACO: TDateTimeField;
    tbProcessosDT_DISTRIBUICAO: TDateTimeField;
    tbProcessosCanal: TStringField;
    tbProcessosFiscal: TStringField;
    tbProcessosStatus: TStringField;
    tbProcessosCOD_SIT: TStringField;
    tbProcessosCD_MOTIVO_TRANS: TStringField;
    tbProcessosIN_MOEDA_UNICA: TSmallintField;
    tbProcessosTX_INFO_COMPL: TMemoField;
    tbProcessosCD_TIPO_PGTO_TRIB: TStringField;
    tbProcessosData_Entrada_RCR: TDateTimeField;
    tbProcessosData_Aprovacao_RCR: TDateTimeField;
    tbProcessosFundamentacao_RCR: TStringField;
    tbProcessosProcurador: TStringField;
    tbProcessosNumero_TR: TStringField;
    tbProcessosData_Entrada_TR: TDateTimeField;
    tbProcessosData_vencimento_TR: TDateTimeField;
    tbProcessosData_Aprovacao_TR: TDateTimeField;
    tbProcessosData_Baixa_TR: TDateTimeField;
    tbProcessosData_CI: TDateTimeField;
    tbProcessosTipo_Garantia: TStringField;
    tbProcessosNome_banco_GAR: TStringField;
    tbProcessosAgencia_GAR: TStringField;
    tbProcessosData_deposito_GAR: TDateTimeField;
    tbProcessosNome_titulo_GAR: TStringField;
    tbProcessosnumeros_titulos_GAR: TStringField;
    tbProcessosNome_seguradora_GAR: TStringField;
    tbProcessosapolice_GAR: TStringField;
    tbProcessosnome_fiador_GAR: TStringField;
    tbProcessosCNPJ_fiador_GAR: TStringField;
    tbProcessosendereco_fiador_GAR: TStringField;
    tbProcessosQuantidade_LI: TFloatField;
    tbProcessosValor_FOB: TFloatField;
    tbProcessosValor_CIF: TFloatField;
    tbProcessosResponsavel_Empresa: TStringField;
    tbProcessosResponsavel_Importador: TStringField;
    tbProcessosSaldo_Faturamento: TFloatField;
    tbProcessosNR_DECL_IMP_MICROC: TStringField;
    tbProcessosNR_DECL_IMP_PROTC: TStringField;
    tbProcessosNR_DECLARACAO_IMPC: TStringField;
    tbProcessosDT_PROCESSAMENTOC: TStringField;
    tbProcessosDT_TRANSMISSAOC: TStringField;
    tbProcessosDT_REGISTRO_DIC: TStringField;
    tbProcessosDT_DESEMBARACOC: TDateTimeField;
    tbProcessosDT_DISTRIBUICAOC: TDateTimeField;
    tbProcessosCanalC: TStringField;
    tbProcessosFiscalC: TStringField;
    tbProcessosCOD_SITC: TStringField;
    tbProcessosData_CIC: TDateTimeField;
    tbProcessosValor_FOBC: TFloatField;
    tbProcessosValor_CIFC: TFloatField;
    tbProcessosident_meio1: TStringField;
    tbProcessosident_meio2: TStringField;
    tbProcessosCodevento: TStringField;
    tbProcessosCodobs: TStringField;
    tbProcessosObs_especifica: TStringField;
    tbProcessosData_ufollowup: TDateTimeField;
    tbProcessosHora_ufollowup: TStringField;
    tbProcessosData_liberacao: TDateTimeField;
    tbProcessosUrgente: TSmallintField;
    tbProcessosconsolidado: TSmallintField;
    tbProcessosPag_proporcional: TSmallintField;
    tbProcessosTR_VAL_FOB_US: TFloatField;
    tbProcessosTR_VAL_CIF_US: TFloatField;
    tbProcessosTR_VAL_II: TFloatField;
    tbProcessosTR_VAL_IPI: TFloatField;
    tbProcessosDDE: TStringField;
    tbProcessosProcesso_Adm: TStringField;
    tbProcessosProc_Adm_Data_Entrada: TDateTimeField;
    tbProcessosFaturado: TSmallintField;
    tbProcessosFechado: TSmallintField;
    tbProcessosCentro_Custo: TStringField;
    tbProcessosProcurador2: TStringField;
    tbProcessosTR_VAL_PIS: TFloatField;
    tbProcessosTR_VAL_COFINS: TFloatField;
    tbProcessosRCR_LOCAL: TStringField;
    tbProcessosResponsavel_EmpresaC: TStringField;
    tbProcessosvinc_processo: TSmallintField;
    tbProcessosproc_vinc: TStringField;
    dsProcessos: TDataSource;
    qrItensDTR: TQuery;
    qrItensDTRCodigo: TStringField;
    qrItensDTRtdecla: TStringField;
    qrItensDTRNCM: TStringField;
    qrItensDTRProduto: TStringField;
    qrItensDTRNumero_serie: TStringField;
    qrItensDTRPO: TStringField;
    qrItensDTRPag_proporcional: TSmallintField;
    qrItensDTRdesc: TMemoField;
    qrItensDTRFatura: TStringField;
    qrItensDTRPagina: TStringField;
    qrItensDTRSequencial: TStringField;
    qrItensDTRSomaDeQuantidade: TFloatField;
    qrItensDTRSomaDeValor_Aduaneiro: TFloatField;
    qrItensDTRRegime_Tributacao_II: TStringField;
    qrItensDTRRegime_Tributacao_IPI: TStringField;
    qrItensDTRPrazo_permanencia: TIntegerField;
    Label26: TLabel;
    ME_nossaref: TMaskEdit;
    tbProcessosnumero_rcr: TStringField;
    qrDelDTRTemp: TQuery;
    qrInsertDTRTemp: TQuery;
    txtRecinto1: TEdit;
    qrFaturas: TQuery;
    qrFaturasProcesso: TStringField;
    qrFaturasCodigo: TStringField;
    qrFaturasMoeda: TStringField;
    txtCPFCNPJ1: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    ME_nossaref_2: TMaskEdit;
    qrProcessosEmpresa: TStringField;
    qrProcessosFilial: TStringField;
    qrProcessosProcesso: TStringField;
    qrProcessosData: TDateTimeField;
    qrProcessosrefcli: TStringField;
    qrProcessosNumero_RCR: TStringField;
    qrProcessosCodigo: TStringField;
    qrProcessosCliente: TStringField;
    qrProcessostipodecla: TStringField;
    qrProcessostipopro: TStringField;
    qrProcessosqcontrato: TStringField;
    qrProcessosqlocal: TStringField;
    qrProcessosqcnpj: TStringField;
    qrProcessosFechado: TIntegerField;
    qrProcessosAtivo: TIntegerField;
    qrProcessosImportador: TStringField;
    qrProcessosURF_Despacho: TStringField;
    qrProcessosResponsavel_empresa: TStringField;
    qrProcessosResponsavel_empresac: TStringField;
    qrProcessosEndereco: TStringField;
    qrProcessosNumero: TStringField;
    qrProcessosComplemento: TStringField;
    qrProcessosBairro: TStringField;
    qrProcessosCidade: TStringField;
    qrProcessosCEP: TStringField;
    qrProcessosUF: TStringField;
    qrProcessosDSI: TStringField;
    qrProcessosRecinto_Alfandegario: TStringField;
    qrProcessosSetor_Alfandegario: TStringField;
    qrProcessosURF_chegada: TStringField;
    txtDSI: TMaskEdit;
    qrRegime: TQuery;
    qrRegimeQREGIME: TStringField;
    txtRegime1: TDBLookupComboBox;
    qrFund: TQuery;
    dsFund: TDataSource;
    txtLocal: TEdit;
    txtData: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    qrProcessosTipo: TStringField;
    procedure ME_nossarefChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirDTRClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
//    procedure btnImprimirConsumoClick(Sender: TObject);
//    procedure btnAlterarClick(Sender: TObject);
//    procedure btnSalvarClick(Sender: TObject);
//    procedure btnCancelarClick(Sender: TObject);
    procedure acTempdtrExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnImprimirConsumoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ME_nossaref_2Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
//    procedure dbEdtDtEntradaChange(Sender: TObject);
//    procedure dbEdtDtAprovChange(Sender: TObject);
//    procedure acdtrConsumoExecute(Sender: TObject);
//    procedure sbLimpaFundClick(Sender: TObject);
//    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
//    procedure tbProcessosAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_proDTR: TF_proDTR;
  vEmp, vFil: String;
  DSI_Regime_Anterior:String;
  DaFatura : Boolean;  

implementation

uses U_MSCOMEX, U_DTR, U_relconsumo;

{$R *.DFM}

procedure TF_proDTR.ME_nossarefChange(Sender: TObject);
var cnpj: String;
begin
  If Length(F_MSCOMEX.LRTrim(me_nossaref.Text)) <> 8 Then
    Exit;
  // eduardo.souza 01/02/2012 - Para processos fechados - Exibi mensagem e fecha a tela
 { If (IsClosedProcess( me_nossaref.Text, F_proDTR )) Then
    Abort;   }
  //--
  Screen.Cursor := crHourGlass;

  With qrProcessos Do
  Begin
     Close;
     Params[0].asString := ME_nossaref.Text;
     Open;
  End;
  with qrRegime do
  begin
     Close;
     Params[0].asString := ME_nossaref.Text;
     Open;
  end;

 // If qrProcessos.Locate('Processo', me_nossaref.Text, [loCaseInsensitive]) Then
  If qrProcessos.RecordCount > 0 then
  Begin
      if F_MSCOMEX.AcessaPasta(me_nossaref.Text, qrProcessostipo.AsString, F_proDTR)
       then begin
         pnlPrincipal.Enabled := True;
         pnlBaixo.Enabled     := True;
       end;

      {roda a sql de itens de dtr}
      vEmp := qrProcessosEmpresa.AsString;
      vFil := qrProcessosFilial.AsString;
      With qrItensDTR Do
      Begin
          Close;
          Params[0].AsString := me_nossaref.Text;
          Params[1].AsString := vEmp;
          Params[2].AsString := vFil;
          Open;
      End;

      If ((qrItensDTR.RecordCount = 0) and (qrProcessosnumero_rcr.asstring='')) Then
      Begin
         MessageDlg('Declaração não é de Admissão Temporária ou não possui Tributação Suspensa!', mtInformation,[mbOk], 0);
         pnlPrincipal.Visible := False;
         pnlBaixo.Visible := False;
         //l_cliente.Caption := '';
         Screen.Cursor := crDefault;
         Exit;
      End;

       With qrFaturas Do Begin
            Close;
            Params[0].AsString := qrProcessosProcesso.AsString;
            Params[1].AsString := vEmp;
            Params[2].AsString := vFil;
            Open;
        End;
        {
        With qrTransp Do Begin
            Close;
            Params[0].AsString := qrProcessosProcesso.AsString;
            Params[1].AsString := vEmp;
            Params[2].AsString := vFil;
            Open;
        End;
        With qrFilial Do Begin
            Close;
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Open;
        End;

      If qrFund.State = dsInactive Then qrFund.Open;
        }
      If tbProcessos.State = dsInactive Then tbProcessos.Open;

      v_AlteraPRO := 1;

      if f_mscomex.q_usucli.recordcount>0 then
         if f_mscomex.q_usucli.locate('Importador',qrProcessosimportador.asstring,[]) then
             v_autorizadocli := 1
         else
            v_autorizadocli := 0

      else
            v_autorizadocli := 1;

      F_MSCOMEX.atualizacpastas(ME_nossaref.text);
      If (v_autorizadocli = 1) Then
      Begin
         if qrProcessosqcnpj.isnull then  cnpj := 'NÃO ENCONTRADO'
         Else
         begin
           cnpj := qrprocessosqcnpj.asstring;
           cnpj := Copy(cnpj,1,2)+'.'+Copy(cnpj,3,3)+'.'+Copy(cnpj,6,3)+'/'+Copy(cnpj,9,4)+'-'+Copy(cnpj,13,2);
         end;

        // txtCPFCNPJ1.Text := qrProcessosCliente.AsString+' - CNPJ: '+cnpj;
         txtCPFCNPJ2.Text := cnpj;
         pnlPrincipal.Visible := True;
         pnlBaixo.Visible := True;
      End
      Else
      begin
         pnlPrincipal.Visible := false;
         pnlBaixo.Visible := false;
         Showmessage(v_usuario+', este Processo pertence a um Cliente que seu acesso não está permitido!');
      End;
      If qrProcessosCliente.IsNull Then
        txtBene2.Text := ''
      Else
        txtBene2.Text := qrProcessosCliente.AsString;

     If qrProcessosEndereco.IsNull Then
     Begin
        txtEnd2.text  := '';
   //     txtEnd2.text := '';
     End
     Else
     Begin
        txtEnd2.text := '';
        txtEnd2.text  := qrProcessosEndereco.AsString+' - '+qrProcessosNumero.AsString+' - '+qrProcessosComplemento.AsString;
        txtEnd2.text := txtEnd2.text + ' '+ qrProcessosBairro.AsString+' - '+qrProcessosCidade.AsString+' - '+qrProcessosCEP.AsString+' - '+qrProcessosUF.AsString;
     End;
     if qrProcessosURF_Despacho.IsNull then
        txtUnidRF2.Text:= ''
     else
        txtUnidRF2.Text:= qrProcessosURF_Despacho.AsString;
     if qrProcessosRecinto_Alfandegario.IsNull then
        txtRecinto2.Text:= ''
     else
        txtRecinto2.Text:= qrProcessosRecinto_Alfandegario.AsString;
     if qrRegimeQREGIME.IsNull then
        txtRegime2.Text:= ''
     else
        txtRegime2.Text:=qrRegimeQREGIME.AsString;
    pnlPrincipal.enabled := True;
    btnImprimirDTR.Enabled := True;
    btnSair.Enabled := True;
    ME_nossaref_2.setfocus;
    DSI_Regime_Anterior:=qrProcessosDSI.AsString;
  End
  Else
  Begin
      MessageDlg('Processo não encontrado!', mtInformation,[mbOk], 0);
      me_nossaref.Clear;
      pnlPrincipal.Visible := False;
      pnlBaixo.Visible := False;
      me_nossaref.SetFocus;
  End;
  Screen.Cursor := crDefault;
  //btnAlterarClick(sender);


end;

procedure TF_proDTR.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     f_mscomex.DTR1.Enabled := True;
     F_proDTR := nil;
     Action := cafree;
end;

procedure TF_proDTR.btnImprimirDTRClick(Sender: TObject);
begin
     If MessageDlg('Deseja imprimir o DTR com a moeda igual a registrada da fatura?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
            DaFatura := True
     else
            DaFatura := False;

     If Not Assigned(QR_DTR) Then Application.CreateForm(TQR_DTR, QR_DTR);

     Screen.Cursor := crHourGlass;
     If MessageDlg('Imprime "itens" para identificação no DTR?', mtConfirmation,[mbYes, mbNo], 0) = mrYes Then
        With QR_dtr Do Begin
            qrl_itens.Enabled := True;
            qrl_itens.Transparent := False;
            qrl_item.Enabled := True;
            qrl_item.Transparent := False;
        End
     Else
        With QR_dtr Do Begin
            qrl_itens.Enabled := False;
            qrl_itens.Transparent := True;
            qrl_item.Enabled := False;
            qrl_item.Transparent := True;
        End;
     Screen.Cursor := crDefault;
     

     acTempdtrExecute(Sender);
     QR_DTR.Preview;

end;
{
procedure TF_proDTR.btnImprimirConsumoClick(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;

     {roda a sql de itens de dtr}
     {With QR_RelConsumo.qrItensdtr Do Begin
         Close;
         Params[0].AsString := qrProcessosProcesso.AsString;
         Params[1].AsString := vEmp;
         Params[2].AsString := vFil;
         Open;
     End;

     If QR_RelConsumo.qrItensdtr.RecordCount = 0 Then Begin
        MessageDlg('Este processo não possui itens tributados integralmente!', mtInformation,[mbOk], 0);
        Screen.Cursor := crDefault;
        Exit;
     End;

     acdtrConsumo.Execute;
     Screen.Cursor := crDefault;
     QR_RelConsumo.Preview;
end;


procedure TF_proDTR.btnAlterarClick(Sender: TObject);
begin
if (v_AlteraPRO = 1) then begin
     tbProcessos.Edit;

     If tbProcessosIdent_meio1.IsNull Then Begin
        dbEdtTranp1.Text := 'PROCEDENCIA: '+qrTranspPais.AsString+'  ';
        if qrTranspTipoDocCarga.AsString<>'' then begin
        Case StrToInt(qrTranspTipoDocCarga.AsString) Of
            1:  dbEdtTranp1.Text := dbEdtTranp1.Text + 'AWB: ';
            3:  dbEdtTranp1.Text := dbEdtTranp1.Text + 'HOUSE AWB: ';
            14: dbEdtTranp1.Text := dbEdtTranp1.Text + 'DSIC: ';
            13: dbEdtTranp1.Text := dbEdtTranp1.Text + 'CRT: ';
            10: dbEdtTranp1.Text := dbEdtTranp1.Text + 'B/L: ';
            12: dbEdtTranp1.Text := dbEdtTranp1.Text + 'HOUSE B/L: ';
        End;
        dbEdtTranp1.Text := dbEdtTranp1.Text + qrTranspNumeroDocCarga.AsString+'/'+qrTranspNumeroMaster.AsString;
        end;
     End;
     If tbProcessosIdent_meio2.IsNull Then
        If Not qrTranspEmbarcacao.IsNull Then
           dbEdtTranp2.Text := 'EMBARCAÇÃO: '+ qrTranspEmbarcacao.AsString
        Else
           dbEdtTranp2.Text := 'TRANSPORTADOR: '+ qrTranspRazao_Social.AsString;

     pnlTop.Enabled := False;
     pnlPrincipal.Enabled := True;
     btnAlterar.Enabled := False;
     btnSalvar.Enabled := True;
     btnCancelar.Enabled := True;
     btnImprimirConsumo.Enabled := False;
     btnImprimirdtr.Enabled := False;
     btnSair.Enabled := False;
end

else begin
      Showmessage(v_usuario+', ATENÇÃO! Acesso não permitido à processos sob Responsabilidade e/ou o processo está fechado e/ou o Cliente está Inativo.');
end;


end;

procedure TF_proDTR.btnSalvarClick(Sender: TObject);
var
   aux, auxAnt: String;
   dt, dtAnt: TDate;

begin
     { TESTA DATA DE ENTRADA }
{     if dbEdtDtEntrada.Text<>'' then begin
     Try
        aux := dbEdtDtEntrada.Text;
        If aux <> '  /  /    ' Then
           dt := StrToDate(aux);
     Except
        MessageDlg('"Data de Entrada" Inválida!', mtWarning, [mbOk], 0);
        dbEdtDtEntrada.SetFocus;
        Exit;
     End;
     end;
     { TESTA DATA DE APROVAÇÃO }
{     if dbEdtDtAprov.Text<>'' then begin
     Try
        auxAnt := aux;
        aux := dbEdtDtAprov.Text;
        If aux <> '  /  /    ' Then Begin
           dtAnt := dt;
           dt := StrToDate(aux);
           If dtAnt > dt Then Begin
              MessageDlg('"Data de Aprovação" é menor que a "Data de Entrada"!', mtWarning, [mbOk], 0);
              dbEdtDtAprov.SetFocus;
              Exit;
           End;
        End;
     Except
        MessageDlg('"Data de Aprovação" Inválida!', mtWarning, [mbOk], 0);
        dbEdtDtAprov.SetFocus;
        Exit;
     End;
     end;

     If (dbEdtFund.Text <> '') AND (dbLcbFund.Text = '') Then Begin
        MessageDlg('Fundamentação do Pedido inválido!', mtWarning, [mbOk], 0);
        dbEdtFund.SetFocus;
        Exit;
     End;

     tbProcessosdtr_LOCAL.AsString := me_local.text;
     Screen.Cursor := crHourGlass;
     tbProcessos.Post;

     pnlTop.Enabled := True;
     pnlPrincipal.Enabled := False;
     btnAlterar.Enabled := True;
     btnSalvar.Enabled := False;
     btnCancelar.Enabled := False;
     btnImprimirConsumo.Enabled := True;
     btnImprimirdtr.Enabled := True;
     btnSair.Enabled := True;

     MessageDlg(v_usuario+', dtr gravado.', mtInformation, [mbOk], 0);
     Screen.Cursor := crDefault;
end;

procedure TF_proDTR.btnCancelarClick(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     tbProcessos.Cancel;

     pnlTop.Enabled := True;
     pnlPrincipal.Enabled := False;
     btnAlterar.Enabled := True;
     btnSalvar.Enabled := False;
     btnCancelar.Enabled := False;
     btnImprimirConsumo.Enabled := True;
     btnImprimirdtr.Enabled := True;
     btnSair.Enabled := True;
     Screen.Cursor := crDefault;
end;
 }
procedure TF_proDTR.acTempdtrExecute(Sender: TObject);
var
   qdtr: Integer;
   i, j: Integer;
   qmfpnpo: String;
   qdesc: String;
begin
     With qrDeldtrTemp Do
     Begin
        sql.clear;
        sql.add('DELETE FROM RCRtemp ');
        sql.add('WHERE Processo = :pro ');
        Params[0].AsString := qrProcessosProcesso.AsString;
        ExecSQL;
     End;
     With QR_dtr.qrItensdtr Do
     Begin
         Close;
         Params[0].AsString := qrProcessosProcesso.AsString;
         Params[1].AsString := vEmp;
         Params[2].AsString := vFil;
         Open;
     End;
     qdtr := 0;
     QR_dtr.qrItensdtr.First;
     While Not QR_dtr.qrItensdtr.Eof Do
     Begin
          qdesc := Trim(StringReplace(QR_dtr.qrItensdtrdesc.asstring, Chr(13)+Chr(10), ' ', [rfReplaceAll]));
          qmfpnpo := ' '+Trim('MFPN.'+QR_dtr.qrItensdtrProduto.AsString);
          If ((QR_dtr.qrItensdtrnumero_serie.asstring<>'') and (QR_dtr.qrItensdtrnumero_serie.asstring<>'.')) then
             qmfpnpo := qmfpnpo + ' NºSerie.'+Trim(QR_dtr.qrItensdtrnumero_serie.AsString);

          If (Not QR_dtr.qrItensdtrPO.IsNull) and (QR_dtr.qrItensdtrPO.asstring<>'') Then
             qmfpnpo := qmfpnpo + ' PO.'+Trim(QR_dtr.qrItensdtrPO.AsString);

          //de 70 para 60   
          If Ceil(Length(qdesc)/60) = Ceil(Length(qdesc+qmfpnpo)/60) Then
          Begin
             qdesc := qdesc + qmfpnpo;
             qmfpnpo := '';
          End;
          Inc(qdtr);
          qrInsertdtrTemp.Params[0].AsString := qrProcessosProcesso.AsString;
          qrInsertdtrTemp.Params[1].AsString := IntToStr(qdtr);
          qrInsertdtrTemp.Params[2].AsString := QR_dtr.qrItensdtrNCM.AsString;
          qrInsertdtrTemp.Params[3].AsString := Trim(Copy(qdesc,1,60));
          qrInsertdtrTemp.Params[4].AsString := QR_dtr.qrItensdtrFatura.AsString;
          qrInsertdtrTemp.Params[5].AsString := QR_dtr.qrItensdtrPagina.AsString;
          qrInsertdtrTemp.Params[6].AsString := stringreplace(QR_dtr.qrItensdtrSomaDeQuantidade.AsString,',','.',[]);
          qrInsertdtrTemp.Params[7].AsString := stringreplace(QR_dtr.qrItensdtrSomaDevalortotal.AsString,',','.',[]);
          qrInsertdtrTemp.Params[8].AsString := QR_dtr.qrItensDTRUnidade.AsString;
          qrInsertdtrTemp.ExecSQL;
          For i := 1 To Ceil(Length(qdesc)/60)-1 Do
          Begin
  {           While qrInsertdtrTemp.State = dsInsert Do Begin
             End;}
             Inc(qdtr);
             With qrInsertdtrTemp Do
             Begin
                 Params[0].AsString := qrProcessosProcesso.AsString;
                 Params[1].AsString := IntToStr(qdtr);
                 Params[2].AsString := ' ';
                 Params[3].AsString := Trim(Copy(qdesc, (i*60)+1, 60));
                 Params[4].AsString := ' ';
                 Params[5].AsString := ' ';
                 Params[6].AsString := '0';
                 Params[7].AsString := '0';
                 ExecSQL;
             End;
          End;
          If qmfpnpo <> '' Then
          Begin
             Inc(qdtr);
             With qrInsertdtrTemp Do
             Begin
                 Params[0].AsString := qrProcessosProcesso.AsString;
                 Params[1].AsString := IntToStr(qdtr);
                 Params[2].AsString := ' ';
                 Params[3].AsString := Trim(qmfpnpo);
                 Params[4].AsString := ' ';
                 Params[5].AsString := ' ';
                 Params[6].AsString := '0';
                 Params[7].AsString := '0';
                 ExecSQL;
             End;
          End;
          QR_dtr.qrItensdtr.Next;
     End;
     For j := 1 To 18 - (qdtr Mod 19) Do
     Begin
{        While qrInsertdtrTemp.State = dsInsert Do Begin
        End;}
        With qrInsertdtrTemp Do
        Begin
            Params[0].AsString := qrProcessosProcesso.AsString;
            Params[1].AsString := IntToStr(qdtr + 1);
            Params[2].AsString := ' ';
            Params[3].AsString := ' ';
            Params[4].AsString := ' ';
            Params[5].AsString := ' ';
            Params[6].AsString := '0';
            Params[7].AsString := '0';
            ExecSQL;
        End;
     End;  {
     With QR_dtr.qrdtrTemp Do
     Begin
      Close;
      sql.clear;
      sql.add('SELECT Unidade,Processo, Sequencial, NCM, Descricao_Produto, Fatura, Pagina, Quantidade, Valor ');
      sql.add('FROM RCRtemp WHERE Processo = :qproc ');
      sql.add('ORDER BY Sequencial '); 
      Params[0].AsString := qrProcessosProcesso.AsString;
      Open;
     End;  }
end;

{procedure TF_proDTR.dbEdtDtEntradaChange(Sender: TObject);
begin
     If tbProcessos.State In [dsEdit] Then
        If dbEdtDtEntrada.Text = '  /  /    ' Then
           tbProcessosData_Entrada_dtr.AsString := '';
end;

procedure TF_proDTR.dbEdtDtAprovChange(Sender: TObject);
begin
     If tbProcessos.State In [dsEdit] Then
        If dbEdtDtAprov.Text = '  /  /    ' Then
           tbProcessosData_Aprovacao_dtr.AsString := '';
end;

procedure TF_proDTR.acdtrConsumoExecute(Sender: TObject);
var
   qdtr: Integer;
   i: Integer;
   qmfpnpo: String;
   apri: Boolean;
   qdesc: String;

begin
     QR_RelConsumo.qrlabel3.Caption := me_destcon.Text;

     /// faturas do processo
     QR_RelConsumo.qrl_faturas.Caption := '';
     apri := True;
     qrFaturas.First;
     While Not qrFaturas.Eof Do Begin
          If apri Then Begin
             QR_RelConsumo.qrl_faturas.Caption := qrFaturasCodigo.AsString;
             apri := False;
          End
          Else
             QR_RelConsumo.qrl_faturas.Caption := QR_RelConsumo.qrl_faturas.Caption+', '+qrFaturasCodigo.AsString;
          qrFaturas.Next;
     End;

     With qrDeldtrTemp Do Begin
          if TipoBanco = 1 then begin
            sql.clear;
            sql.add('DELETE FROM dtrtemp ');
            sql.add('WHERE Processo = :pro ');
         end
         else begin
            sql.clear;
            sql.add('DELETE * FROM dtrtemp ');
            sql.add('WHERE Processo = :pro ');
         end;
          Params[0].AsString := qrProcessosProcesso.AsString;
          ExecSQL;
     End;

     qdtr := 0;
     QR_RelConsumo.qrItensdtr.First;
     While Not QR_RelConsumo.qrItensdtr.Eof Do Begin
          While qrInsertdtrTemp.State = dsInsert Do Begin
          End;

         // qrProdutos.Locate('Código',QR_RelConsumo.qrItensdtrProduto.AsString,[]);

          qdesc := Trim(StringReplace(QR_RelConsumo.qrItensdtrdesc.AsString, Chr(13)+Chr(10), ' ', [rfReplaceAll]));

          qmfpnpo := ' '+Trim('MFPN.'+QR_RelConsumo.qrItensdtrProduto.AsString);
          If Not QR_RelConsumo.qrItensdtrPO.IsNull Then
             qmfpnpo := qmfpnpo + ' PO.'+Trim(QR_RelConsumo.qrItensdtrPO.AsString);

          If Ceil(Length(qdesc)/70) = Ceil(Length(qdesc+qmfpnpo)/70) Then Begin
             qdesc := qdesc + qmfpnpo;
             qmfpnpo := '';
          End;

          Inc(qdtr);
          With qrInsertdtrTemp Do Begin
              Params[0].AsString := qrProcessosProcesso.AsString;
              Params[1].AsString := IntToStr(qdtr);
              Params[2].AsString := QR_RelConsumo.qrItensdtrNCM.AsString;
              Params[3].AsString := Trim(Copy(qdesc,1,70));
              Params[4].AsString := QR_RelConsumo.qrItensdtrFatura.AsString;
              Params[5].AsString := QR_RelConsumo.qrItensdtrPagina.AsString;
              Params[6].AsString := QR_RelConsumo.qrItensdtrSomaDeQuantidade.AsString;
////              Params[7].AsString := QR_RelConsumo.qrItensdtrSomaDeValor_Aduaneiro.AsString;
              Params[7].AsString := stringreplace(QR_RelConsumo.qrItensdtrSomaDeValortotal.AsString,',','.',[]);
              ExecSQL;
          End;

          For i := 1 To Ceil(Length(qdesc)/70)-1 Do Begin
             While qrInsertdtrTemp.State = dsInsert Do Begin
             End;

             Inc(qdtr);
             With qrInsertdtrTemp Do Begin
                 Params[0].AsString := qrProcessosProcesso.AsString;
                 Params[1].AsString := IntToStr(qdtr);
                 Params[2].AsString := ' ';
                 Params[3].AsString := Trim(Copy(qdesc, (i*70)+1, 70));
                 Params[4].AsString := ' ';
                 Params[5].AsString := ' ';
                 Params[6].AsString := '0';
                 Params[7].AsString := '0';
                 ExecSQL;
             End;
          End;

          If qmfpnpo <> '' Then Begin
             Inc(qdtr);
             With qrInsertdtrTemp Do Begin
                 Params[0].AsString := qrProcessosProcesso.AsString;
                 Params[1].AsString := IntToStr(qdtr);
                 Params[2].AsString := ' ';
                 Params[3].AsString := Trim(qmfpnpo);
                 Params[4].AsString := ' ';
                 Params[5].AsString := ' ';
                 Params[6].AsString := '0';
                 Params[7].AsString := '0';
                 ExecSQL;
             End;
          End;

          QR_RelConsumo.qrItensdtr.Next;
     End;

     With QR_RelConsumo.qrdtrTemp Do Begin
         Close;
         if TipoBanco = 1 then begin
           sql.clear;
           sql.add('SELECT Processo, Sequencial, NCM, Descricao_Produto, Fatura, Pagina, Quantidade, Valor ');
           sql.add('FROM dtrtemp WHERE Processo = :qproc ');
           sql.add('ORDER BY cast(Sequencial as integer) ');
         end
         else begin
           sql.clear;
           sql.add('SELECT Processo, Sequencial, NCM, Descricao_Produto, Fatura, Pagina, Quantidade, Valor ');
           sql.add('FROM dtrtemp WHERE Processo = :qproc ');
           sql.add('ORDER BY Val(Sequencial) ');
         end;
         Params[0].AsString := qrProcessosProcesso.AsString;
         Open;
     End;
end;

procedure TF_proDTR.sbLimpaFundClick(Sender: TObject);
begin
     tbProcessosFundamentacao_dtr.AsString := '';
end;

procedure TF_proDTR.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
     If tbProcessos.State In [dsEdit] Then Begin
        MessageDlg('O dtr está em edição!', mtInformation,[mbOk], 0);
        CanClose := False;
     End
     Else
        CanClose := True;
end;

procedure TF_proDTR.tbProcessosAfterPost(DataSet: TDataSet);
begin
     logusu('P','Alterou dtr do Processo: '+tbProcessosCodigo.AsString);
end;}

procedure TF_proDTR.btnAlterarClick(Sender: TObject);
begin
  {   pnlTop.Enabled := false;
     pnlPrincipal.enabled := True;
     btnSalvar.Enabled := True;
     btnCancelar.Enabled := True;
     btnImprimirConsumo.Enabled := False;
     btnImprimirDTR.Enabled := False;
     btnSair.Enabled := False;}
end;

procedure TF_proDTR.FormActivate(Sender: TObject);
begin
     {
      With qrFaturas Do Begin
         Close;
         Params[0].AsString := qrProcessosProcesso.AsString;
         Open;
      End;
      }
end;


procedure TF_proDTR.btnCancelarClick(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     tbProcessos.Cancel;

     pnlTop.Enabled := True;
     GroupBox1.Enabled := False;
     GroupBox2.Enabled := False;
     btnAlterar.Enabled := True;
     btnSalvar.Enabled := False;
     btnCancelar.Enabled := False;
     btnImprimirConsumo.Enabled := True;
     btnImprimirDTR.Enabled := True;
     btnSair.Enabled := True;
     Screen.Cursor := crDefault;
end;

procedure TF_proDTR.btnSalvarClick(Sender: TObject);
begin
     //tbProcessosRCR_LOCAL.AsString := me_local.text;
     Screen.Cursor := crHourGlass;
     tbProcessos.Post;

     pnlTop.Enabled := True;
     GroupBox1.Enabled := False;
     GroupBox2.Enabled := False;
     btnAlterar.Enabled := True;
     btnSalvar.Enabled := False;
     btnCancelar.Enabled := False;
     btnImprimirConsumo.Enabled := True;
     btnImprimirDTR.Enabled := True;
     btnSair.Enabled := True;

     MessageDlg(v_usuario+', DTR gravado.', mtInformation, [mbOk], 0);
     Screen.Cursor := crDefault;
end;

procedure TF_proDTR.btnImprimirConsumoClick(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;

     {roda a sql de itens de rcr}
     With QR_RelConsumo.qrItensRCR Do Begin
         Close;
         Params[0].AsString := qrProcessosProcesso.AsString;
         Params[1].AsString := vEmp;
         Params[2].AsString := vFil;
         Open;
     End;

     If QR_RelConsumo.qrItensRCR.RecordCount = 0 Then Begin
        MessageDlg('Este processo não possui itens tributados integralmente!', mtInformation,[mbOk], 0);
        Screen.Cursor := crDefault;
        Exit;
     End;
     
     //acRCRConsumo.Execute;
     Screen.Cursor := crDefault;
     QR_RelConsumo.Preview;
end;

procedure TF_proDTR.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //verifica se a tecla pressionada é a tecla ENTER, conhecida pelo Delphi como #13
  If key = #13 then
  Begin
    //se for, passa o foco para o próximo campo, zerando o valor da variável Key
    Key:= #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;

end;

procedure TF_proDTR.ME_nossaref_2Change(Sender: TObject);
var cnpj, DSI: String;
begin
  If Length(F_MSCOMEX.LRTrim(ME_nossaref_2.Text)) <> 8 Then
    Exit;

  Screen.Cursor := crHourGlass;

  qrFund.Close;
  qrFund.Open;

  With qrProcessos Do
  Begin
     Close;
     Params[0].asString := ME_nossaref_2.Text;
     Open;
  End;
  with qrRegime do
  begin
     Close;
     Params[0].asString := ME_nossaref_2.Text;
     Open;
  end;
//  If qrProcessos.Locate('Processo', me_nossaref_2.Text, [loCaseInsensitive]) Then
  If qrProcessos.RecordCount > 0 then
  Begin
      {roda a sql de itens de dtr}
      vEmp := qrProcessosEmpresa.AsString;
      vFil := qrProcessosFilial.AsString;
      With qrItensDTR Do
      Begin
          Close;
          Params[0].AsString := me_nossaref_2.Text;
          Params[1].AsString := vEmp;
          Params[2].AsString := vFil;
          Open;
      End;

      If ((qrItensDTR.RecordCount = 0) and (qrProcessosnumero_rcr.asstring='')) Then
      Begin
         MessageDlg('Declaração não é de Admissão Temporária ou não possui Tributação Suspensa!', mtInformation,[mbOk], 0);
         pnlPrincipal.Visible := False;
         pnlBaixo.Visible := False;
         //l_cliente.Caption := '';
         Screen.Cursor := crDefault;
         Exit;
      End;

       With qrFaturas Do Begin
            Close;
            Params[0].AsString := qrProcessosProcesso.AsString;
            Params[1].AsString := vEmp;
            Params[2].AsString := vFil;
            Open;
        End;
        {
        With qrTransp Do Begin
            Close;
            Params[0].AsString := qrProcessosProcesso.AsString;
            Params[1].AsString := vEmp;
            Params[2].AsString := vFil;
            Open;
        End;
        With qrFilial Do Begin
            Close;
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Open;
        End;

      If qrFund.State = dsInactive Then qrFund.Open;
        }
      If tbProcessos.State = dsInactive Then tbProcessos.Open;

      v_AlteraPRO := 1;

      if f_mscomex.q_usucli.recordcount>0 then
         if f_mscomex.q_usucli.locate('Importador',qrProcessosimportador.asstring,[]) then
             v_autorizadocli := 1
         else
            v_autorizadocli := 0

      else
            v_autorizadocli := 1;

      F_MSCOMEX.atualizacpastas(ME_nossaref_2.text);
      If (v_autorizadocli = 1) Then
      Begin
         cnpj := qrprocessosqcnpj.asstring;
         cnpj := Copy(cnpj,1,2)+'.'+Copy(cnpj,3,3)+'.'+Copy(cnpj,6,3)+'/'+Copy(cnpj,9,4)+'-'+Copy(cnpj,13,2);

        // txtCPFCNPJ1.Text := qrProcessosCliente.AsString+' - CNPJ: '+cnpj;
         txtCPFCNPJ1.Text := cnpj;
         pnlPrincipal.Visible := True;
         pnlBaixo.Visible := True;
      End
      Else
      begin
         pnlPrincipal.Visible := false;
         pnlBaixo.Visible := false;
         Showmessage(v_usuario+', este Processo pertence a um Cliente que seu acesso não está permitido!');
      End;
      If qrProcessosCliente.IsNull Then
        txtBene1.Text := ''
      Else
        txtBene1.Text := qrProcessosCliente.AsString;

     If qrProcessosEndereco.IsNull Then
     Begin
        txtEnd1.text  := '';
   //     txtEnd1.text := '';
     End
     Else
     Begin
        txtEnd1.text  :='';
        txtEnd1.text  := qrProcessosEndereco.AsString+' - '+qrProcessosNumero.AsString+' - '+qrProcessosComplemento.AsString;
        txtEnd1.text := txtEnd1.text + ' ' + qrProcessosBairro.AsString+' - '+qrProcessosCidade.AsString+' - '+qrProcessosCEP.AsString+' - '+qrProcessosUF.AsString;
     End;
     if qrProcessosURF_Despacho.IsNull then
        txtUnidRF1.Text:= ''
     else
        txtUnidRF1.Text:= qrProcessosURF_Despacho.AsString;

     if qrProcessosRecinto_Alfandegario.IsNull then
        txtRecinto1.Text:= ''
     else
        txtRecinto1.Text:= qrProcessosRecinto_Alfandegario.AsString;
     {if qrProcessosDSI.isnull then
         txtDSI.Text := ''
     else
     begin
         DSI := qrProcessosDSI.AsString;}
         DSI := DSI_Regime_Anterior;
         {eduardo.souza 30/05/2011}
         //DSI :=Copy(DSI,1,2)+'/'+Copy(DSI,3,8)+'-'+Copy(DSI,9,1);
         DSI := Copy(DSI,1,2)+'/'+Copy(DSI,3,7)+'-'+Copy(DSI,10,1);
         {fim eduardo.souza}
         txtDSI.Text := DSI;
         //09/00751600
     {end;}
     { eduardo.souza 25/05/2011
     if qrRegimeQREGIME.IsNull then
        txtRegime1.Text:= ''
     else
        txtRegime1.Text:= qrRegimeQREGIME.AsString;
     }
  End
  Else
  Begin
      MessageDlg('Processo não encontrado!', mtInformation,[mbOk], 0);
      me_nossaref_2.Clear;
     { pnlPrincipal.Visible := False;
      pnlBaixo.Visible := False;}
      me_nossaref_2.SetFocus;
  End;
  Screen.Cursor := crDefault;
  //btnAlterarClick(sender);
  {pnlPrincipal.enabled := True;
  btnImprimirDTR.Enabled := True;
  btnSair.Enabled := True;
  me_nossaref_2.setfocus;}
end;

procedure TF_proDTR.FormShow(Sender: TObject);
begin
// txtData.Text:= DataPorExtenso(Now);
 txtLocal.Text := 'Rio de Janeiro';
end;

end.
