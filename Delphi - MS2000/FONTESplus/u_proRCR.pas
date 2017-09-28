unit u_proRCR;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, Db, DBTables, Buttons, ActnList, DBCtrls,
  Grids, DBGrids, Math;

type
  TF_proRCR = class(TForm)
    pnlTop: TPanel;
    Label26: TLabel;
    ME_nossaref: TMaskEdit;
    qrProcessos: TQuery;
    dsQProcessos: TDataSource;
    l_cliente: TLabel;
    tbProcessos: TTable;
    pnlPrincipal: TPanel;
    Label190: TLabel;
    Label191: TLabel;
    Label192: TLabel;
    Label193: TLabel;
    Label225: TLabel;
    pnlBaixo: TPanel;
    btnAlterar: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    btnImprimirConsumo: TBitBtn;
    btnImprimirRCR: TBitBtn;
    dsProcessos: TDataSource;
    alRCR: TActionList;
    acTempRCR: TAction;
    qrDelRCRTemp: TQuery;
    qrFaturas: TQuery;
    qrFilial: TQuery;
    dbEdtNumRCR: TDBEdit;
    dbEdtDtEntrada: TDBEdit;
    dbEdtDtAprov: TDBEdit;
    dbEdtTranp1: TDBEdit;
    dbEdtTranp2: TDBEdit;
    dbLcbFund: TDBLookupComboBox;
    qrFund: TQuery;
    dsFund: TDataSource;
    qrTransp: TQuery;
    qrInsertRCRTemp: TQuery;
    acRCRConsumo: TAction;
    qrItensRCR: TQuery;
    sbLimpaFund: TSpeedButton;
    dbEdtFund: TDBEdit;
    Label1: TLabel;
    me_local: TMaskEdit;
    Label2: TLabel;
    me_data: TMaskEdit;
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
    tbProcessosNumero_RCR: TStringField;
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
    qrFaturasProcesso: TStringField;
    qrFaturasCodigo: TStringField;
    qrFaturasMoeda: TStringField;
    qrTranspProcesso: TStringField;
    qrTranspTipodoccarga: TStringField;
    qrTranspNumerodoccarga: TStringField;
    qrTranspNumeromaster: TStringField;
    qrTranspEmbarcacao: TStringField;
    qrTranspRazao_Social: TStringField;
    qrTranspPais: TStringField;
    qrFilialDescricao: TStringField;
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
    qrProcessosFechado: TSmallintField;
    qrProcessosAtivo: TSmallintField;
    qrProcessosImportador: TStringField;
    qrProcessosURF_Despacho: TStringField;
    qrProcessosResponsavel_empresa: TStringField;
    qrProcessosResponsavel_empresac: TStringField;
    qrItensRCRCodigo: TStringField;
    qrItensRCRtdecla: TStringField;
    qrItensRCRNCM: TStringField;
    qrItensRCRProduto: TStringField;
    qrItensRCRNumero_serie: TStringField;
    qrItensRCRPO: TStringField;
    qrItensRCRPag_proporcional: TIntegerField;
    qrItensRCRdesc: TMemoField;
    qrItensRCRFatura: TStringField;
    qrItensRCRPagina: TStringField;
    qrItensRCRSequencial: TStringField;
    qrItensRCRSomaDeQuantidade: TFloatField;
    qrItensRCRSomaDeValor_Aduaneiro: TFloatField;
    qrItensRCRRegime_Tributacao_II: TStringField;
    qrItensRCRRegime_Tributacao_IPI: TStringField;
    qrItensRCRPrazo_permanencia: TIntegerField;
    qryObsEsp: TQuery;
    dtsObsEsp: TDataSource;
    qryObsEspPK_OBS: TAutoIncField;
    qryObsEspDESC_OBS: TStringField;
    pnlConsumo: TPanel;
    Label272: TLabel;
    me_destcon: TMaskEdit;
    pnlObs: TPanel;
    Label3: TLabel;
    Panel2: TPanel;
    btnConfirmar: TBitBtn;
    btnCancel: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    DBMemo1: TDBMemo;
    qryRCRT: TQuery;
    edtProcessoReceita: TMaskEdit;
    btnView: TSpeedButton;
    GroupBox1: TGroupBox;
    lblRepetro: TLabel;
    lblIns: TLabel;
    lblRepetroResp: TLabel;
    Label4: TLabel;
    qrProcessosContrato: TStringField;
    qrFundCodigo: TStringField;
    qrFundDescricao: TStringField;
    qrProcessosTipo: TStringField;
    qrValidarRCR: TQuery;
    qrValidarRCRCodigo: TStringField;
    qrValidarRCRNumero_RCR: TStringField;
    qrValidarRCRRazao_Social: TStringField;
    qrProcessosproc_vinc: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure ME_nossarefChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirRCRClick(Sender: TObject);
    procedure btnImprimirConsumoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure acTempRCRExecute(Sender: TObject);
    procedure dbEdtDtEntradaChange(Sender: TObject);
    procedure dbEdtDtAprovChange(Sender: TObject);
    procedure acRCRConsumoExecute(Sender: TObject);
    procedure sbLimpaFundClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure tbProcessosAfterPost(DataSet: TDataSet);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure tbProcessosAfterScroll(DataSet: TDataSet);
    procedure btnViewClick(Sender: TObject);
  private
    { Private declarations }
    function RCRNaoScaneado(Processo : string) : Boolean;
    procedure ApagaInfoLabelsContrato;
    procedure PreencheInfoLabelsContrato;
    function FiltrarRepetro : Boolean;
  public
    { Public declarations }
  end;

var
  F_proRCR: TF_proRCR;
  vEmp, vFil: String;
  DaFatura : Boolean;
  SiglaMoeda,procVinculado : Boolean;

implementation

uses U_MSCOMEX, U_RCR, U_relconsumo;

{$R *.DFM}

procedure TF_proRCR.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;

  With qrFaturas Do
   Begin
     Close;
     Params[0].AsString := qrProcessosProcesso.AsString;
     Open;
   End;

  With qrTransp Do
   Begin
     Close;
     Params[0].AsString := qrProcessosProcesso.AsString;
     Open;
   End;

  With qrFilial Do
   Begin
     Close;
     Open;
   End;

  With qrFund Do
   Begin
     Close;
     Open;
   End;
end;

procedure TF_proRCR.ME_nossarefChange(Sender: TObject);
var
  cnpj : String;
begin
  if Length(F_MSCOMEX.LRTrim(me_nossaref.Text)) <> 8
   then Exit;
  // eduardo.souza 01/02/2012 - Para processos fechados - Exibi mensagem e fecha a tela
  If (v_usuario <> 'IRENE')then begin
    If (IsClosedProcess( me_nossaref.Text, F_proRCR )) Then
    Abort;
  End;
  //--
  Screen.Cursor := crHourGlass;

  qryObsEsp.Close;
  qryObsEsp.Open;
  {Inicio eduardo.souza 02/06/2011}
     {
     With qrProcessos Do Begin
         Close;
         Open;
     End;
     }
  qrProcessos.ParamByName( 'Processo' ).Value := me_nossaref.Text;
  qrProcessos.Close;
  qrProcessos.Open;
  {Obs: Que porra é essa, aqui!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!}

  //If qrProcessos.Locate('Processo', me_nossaref.Text, [loCaseInsensitive]) Then Begin
  if ( not qrProcessos.IsEmpty )
   then begin
     {Fim eduardo.souza 02/06/2011}

     {roda a sql de itens de rcr}
     vEmp := qrProcessosEmpresa.AsString;
     vFil := qrProcessosFilial.AsString;

     if F_MSCOMEX.AcessaPasta(ME_nossaref.Text, qrProcessosTipo.AsString, F_proRCR)
      then v_AlteraPRO := 1;

     with qrItensRCR do
      begin
        Close;
        Params[0].AsString := me_nossaref.Text;
        Params[1].AsString := vEmp;
        Params[2].AsString := vFil;
        Open;
      end;

     if ((qrItensRCR.RecordCount = 0) and (qrProcessosnumero_rcr.asstring=''))
      then begin
        MessageDlg('Declaração não é de Admissão Temporária ou não possui Tributação Suspensa!', mtInformation,[mbOk], 0);
        pnlPrincipal.Visible := False;
        pnlConsumo.Visible   := False;
        pnlBaixo.Visible     := False;
        l_cliente.Caption    := '';
        Screen.Cursor        := crDefault;
        Exit;
      end;


     with qrFaturas do
      begin
        Close;
        Params[0].AsString := qrProcessosProcesso.AsString;
        Params[1].AsString := vEmp;
        Params[2].AsString := vFil;
        Open;
      end;
      
     with qrTransp do
      begin
        Close;
        Params[0].AsString := qrProcessosProcesso.AsString;
        Params[1].AsString := vEmp;
        Params[2].AsString := vFil;
        Open;
      end;

     with qrFilial do
      begin
        Close;
        Params[0].AsString := vEmp;
        Params[1].AsString := vFil;
        Open;
      end;

     if qrFund.State = dsInactive
      then qrFund.Open;

     if tbProcessos.State = dsInactive
      then tbProcessos.Open;

     if not Assigned(QR_RelConsumo)
      then Application.CreateForm(TQR_RelConsumo, QR_RelConsumo);

     if not Assigned(QR_RCR)
      then Application.CreateForm(TQR_RCR, QR_RCR);

     {0717700 - ILMO SR. INSPETOR DA ALFÂNDEGA DO AEROPORTO INTERNACIONAL DO RIO DE JANEIRO.
      0710200 - À DELEGACIA DA RECEITA FEDERAL EM NITERÓI.
      0717600 - ILMO SR. INSPETOR DA ALFÂNDEGA DO PORTO DO RIO DE JANEIRO.
      0717800 - À ALFÂNDEGA DO PORTO DE SEPETIBA.}
      
     me_destcon.Text := '';

     if qrProcessosURF_despacho.asstring = '0717700'
      then me_destcon.Text := 'ILMO SR. INSPETOR DA ALFÂNDEGA DO AEROPORTO INTERNACIONAL DO RIO DE JANEIRO.';

     if qrProcessosURF_despacho.asstring = '0710200'
      then me_destcon.Text := 'À DELEGACIA DA RECEITA FEDERAL EM NITERÓI.';

     if qrProcessosURF_despacho.asstring = '0717600'
      then me_destcon.Text := 'ILMO SR. INSPETOR DA ALFÂNDEGA DO PORTO DO RIO DE JANEIRO.';

     if qrProcessosURF_despacho.asstring = '0717800'
      then me_destcon.Text := 'À ALFÂNDEGA DO PORTO DE SEPETIBA.';

     { alterei em 03062008 }
     if tbProcessosRCR_LOCAL.AsString = ''
      then me_local.text := qrFilialDescricao.AsString
      else me_local.text := tbProcessosRCR_LOCAL.AsString;

     me_data.text := tbProcessosData_Entrada_RCR.AsString;

      PreencheInfoLabelsContrato;

     {alterei em 27/07/2005 - mm - chupisco!!!}
     v_AlteraPRO := 1;

     if (not qrprocessosAtivo.asinteger = 1)
      then begin
        if (v_Edita_cliente_inativo = 0)
         then begin
           Showmessage(v_usuario+', este Cliente está Inativo. Somente usuários habilitados para editar clientes inativos poderão alterar as informações do processo.');
           v_AlteraPRO := 0;
         end;
      end;
      
     if (qrprocessosFechado.asinteger = 1)
      then begin
        if (v_Edita_Processo_Fechado = 0)
         then begin
           Showmessage(v_usuario+', este Processo está Fechado. Somente usuários habilitados em editar processos fechados poderão alterar as informações do processo.');
           v_AlteraPRO := 0;
         end
         else v_AlteraPRO := 1;
      end;

     {mm 24/07/2006 - usuariosclientes}
     if f_mscomex.q_usucli.recordcount > 0
      then begin
        if f_mscomex.q_usucli.locate('Importador',qrProcessosimportador.asstring,[])
         then v_autorizadocli := 1
         else v_autorizadocli := 0;
      end
      else v_autorizadocli := 1;

     F_MSCOMEX.atualizacpastas(ME_nossaref.text);

     if (v_autorizadocli = 1)
      then begin
        cnpj := qrprocessosqcnpj.asstring;
        cnpj := Copy(cnpj,1,2)+'.'+Copy(cnpj,3,3)+'.'+Copy(cnpj,6,3)+'/'+Copy(cnpj,9,4)+'-'+Copy(cnpj,13,2);

        l_cliente.Caption    := qrProcessosCliente.AsString+' - CNPJ: '+cnpj;
        pnlPrincipal.Visible := True;
        pnlConsumo.Visible   := True;
        pnlBaixo.Visible     := True;
      end
      else begin
        l_cliente.Caption := '';
        pnlPrincipal.Visible := false;
        pnlConsumo.Visible   := false;
        pnlBaixo.Visible     := false;
        Showmessage(v_usuario+', este Processo pertence a um Cliente que seu acesso não está permitido!');
      end;
   end
   else begin
     MessageDlg('Processo não encontrado!', mtInformation,[mbOk], 0);
     l_cliente.Caption := '';
     me_nossaref.Clear;
     pnlPrincipal.Visible := False;
     pnlConsumo.Visible   := False;
     pnlBaixo.Visible     := False;
     me_nossaref.SetFocus
   end;

  Screen.Cursor := crDefault;
end;

procedure TF_proRCR.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  f_mscomex.RCR1.Enabled := True;
  F_proRCR := nil;
  Action := cafree;
end;

procedure TF_proRCR.btnImprimirRCRClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

  acTempRCR.Execute;

  if MessageDlg('Imprime "itens" para identificação no RCR?', mtConfirmation,[mbYes, mbNo], 0) = mrYes Then
        With QR_RCR Do Begin
            qrl_itens.Enabled := True;
            qrl_itens.Transparent := False;
            qrl_item.Enabled := True;
            qrl_item.Transparent := False;
        End
     Else
        With QR_RCR Do Begin
            qrl_itens.Enabled := False;
            qrl_itens.Transparent := True;
            qrl_item.Enabled := False;
            qrl_item.Transparent := True;
        End;
     Screen.Cursor := crDefault;
     {eduardo.souza 01/06/2011}
     DBLookupComboBox1.KeyValue := -1;
     DBMemo1.Clear;
     pnlObs.Visible := true;
     {------------------------}
end;

procedure TF_proRCR.btnImprimirConsumoClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

  {roda a sql de itens de rcr}
  with QR_RelConsumo.qrItensRCR do
   begin
     Close;
     Params[0].AsString := qrProcessosProcesso.AsString;
     Params[1].AsString := vEmp;
     Params[2].AsString := vFil;
     Open;
   end;

  if QR_RelConsumo.qrItensRCR.RecordCount = 0
   then begin
     MessageDlg('Este processo não possui itens tributados integralmente!', mtInformation,[mbOk], 0);
     Screen.Cursor := crDefault;
     Exit;
   end;

  acRCRConsumo.Execute;
  Screen.Cursor := crDefault;
  QR_RelConsumo.Preview;
end;


procedure TF_proRCR.btnAlterarClick(Sender: TObject);
begin
  if (v_AlteraPRO = 1)
   then begin
   FiltrarRepetro;
     tbProcessos.Edit;

     if tbProcessosIdent_meio1.IsNull
      then begin
        dbEdtTranp1.Text := 'PROCEDENCIA: '+qrTranspPais.AsString+'  ';

        if qrTranspTipoDocCarga.AsString <> ''
         then begin
           case StrToInt(qrTranspTipoDocCarga.AsString) Of
             1  : dbEdtTranp1.Text := dbEdtTranp1.Text + 'AWB: ';
             3  : dbEdtTranp1.Text := dbEdtTranp1.Text + 'HOUSE AWB: ';
             14 : dbEdtTranp1.Text := dbEdtTranp1.Text + 'DSIC: ';
             13 : dbEdtTranp1.Text := dbEdtTranp1.Text + 'CRT: ';
             10 : dbEdtTranp1.Text := dbEdtTranp1.Text + 'B/L: ';
             12 : dbEdtTranp1.Text := dbEdtTranp1.Text + 'HOUSE B/L: ';
           end;

           dbEdtTranp1.Text := dbEdtTranp1.Text + qrTranspNumeroDocCarga.AsString+'/'+qrTranspNumeroMaster.AsString;
         end;
      end;

     if tbProcessosIdent_meio2.IsNull
      then if Not qrTranspEmbarcacao.IsNull
            then dbEdtTranp2.Text := 'EMBARCAÇÃO: '+ qrTranspEmbarcacao.AsString
            else dbEdtTranp2.Text := 'TRANSPORTADOR: '+ qrTranspRazao_Social.AsString;

     pnlTop.Enabled             := False;
     pnlPrincipal.Enabled       := True;
     btnAlterar.Enabled         := False;
     btnSalvar.Enabled          := True;
     btnCancelar.Enabled        := True;
     btnImprimirConsumo.Enabled := False;
     btnImprimirRCR.Enabled     := False;
     btnSair.Enabled            := False;
   end
   else Showmessage(v_usuario+', ATENÇÃO! Acesso não permitido à processos sob Responsabilidade e/ou o processo está fechado e/ou o Cliente está Inativo.');
end;

procedure TF_proRCR.btnSalvarClick(Sender: TObject);
var
  aux, auxAnt: String;
  dt, dtAnt: TDate;
begin
  { TESTA DATA DE ENTRADA }
  if dbEdtDtEntrada.Text <> ''
   then begin
     try
       aux := dbEdtDtEntrada.Text;

       if aux <> '  /  /    '
        then dt := StrToDate(aux);
     except
       MessageDlg('"Data de Entrada" Inválida!', mtWarning, [mbOk], 0);
       dbEdtDtEntrada.SetFocus;
       Exit;
     end;
   end;

  { TESTA DATA DE APROVAÇÃO }
  if dbEdtDtAprov.Text <> ''
   then begin
     try
       auxAnt := aux;
       aux := dbEdtDtAprov.Text;

       if aux <> '  /  /    '
        then begin
          dtAnt := dt;
          dt := StrToDate(aux);

          if dtAnt > dt
           then begin
             MessageDlg('"Data de Aprovação" é menor que a "Data de Entrada"!', mtWarning, [mbOk], 0);
             dbEdtDtAprov.SetFocus;
             Exit;
           end;
        end;
     except
       MessageDlg('"Data de Aprovação" Inválida!', mtWarning, [mbOk], 0);
       dbEdtDtAprov.SetFocus;
       Exit;
     end;
   end;

   if (dbEdtFund.Text <> '') and (dbLcbFund.Text = '')
    then begin
      MessageDlg('Fundamentação do Pedido inválido!', mtWarning, [mbOk], 0);
      dbEdtFund.SetFocus;
      Exit;
    end;

   { Wellington - 23/08/2011 - Solicitação da Odilma - Verificar cada vez que for informado o número do RCR se o RCR já foi scaneado}
  { if (Length(F_MSCOMEX.LRTrim(edtProcessoReceita.Text)) = 18)
    then begin
      if RCRNaoScaneado(ME_nossaref.Text)
       then begin
         MessageDlg('Processo com scaneamento do RCR pendente, não será possível salvar.', mtWarning ,[mbOk], 0);
         Exit;
       end;
    end;  }

   tbProcessosRCR_LOCAL.AsString := me_local.text;

   if ( Length(F_MSCOMEX.LRTrim(edtProcessoReceita.Text)) = 18 ) or
      ( edtProcessoReceita.Text = '     .      /  -  ' )
    then Begin
      if ( edtProcessoReceita.Text = '     .      /  -  ' )
       then tbProcessosNumero_RCR.AsString := ''
       else tbProcessosNumero_RCR.AsString := edtProcessoReceita.Text;
    end;

    qrValidarRCR.close;
    qrValidarRCR.Params[0].Value := edtProcessoReceita.Text;
    qrValidarRCR.Open;
    If qrValidarRCR.RecordCount > 0 then begin
     If qrValidarRCRCodigo.AsString <> ME_nossaref.text then begin
         procVinculado:= False;
         while not qrValidarRCR.Eof do begin
           If qrValidarRCRCodigo.AsString = qrProcessosproc_vinc.AsString then procVinculado := True;
              qrValidarRCR.next;
         End;
         If procVinculado = False then begin
            MessageDlg(v_usuario +',já existe um RCR '+ qrValidarRCRNumero_RCR.AsString +' vinculado ao processo: '+ qrValidarRCRCodigo.AsString +' - '+ qrValidarRCRRazao_Social.AsString+'. Não será possivél salvar o RCR.Favor Vincula-lo na Tela de Abertura' , mtWarning ,[mbOk], 0);
            exit;
         End;
     End;
    End;

    if (qrFundCodigo.AsString = 'NOVO') or (qrFundCodigo.AsString = '844') or (qrFundCodigo.AsString = '2º,C') or
       (qrFundCodigo.AsString = '200') or (qrFundCodigo.AsString = '27') or (qrFundCodigo.AsString = '12') then begin
       if(FiltrarRepetro = False) then begin
         MessageDlg(v_usuario +', Favor informar outra Fundamentação do Pedido,pois essa Fundamentaçao não é para contratos do tipo Repetro', mtWarning ,[mbOk], 0);
         exit;
       end;
    end
    Else begin
       if(FiltrarRepetro) then begin
         MessageDlg('A Fundamentação do Pedido selecionado não é compatível à Repetro.', mtWarning ,[mbOk], 0);
         exit;
       end;
    end;

  Screen.Cursor := crHourGlass;
  tbProcessos.Post;

  pnlTop.Enabled             := True;
  pnlPrincipal.Enabled       := False;
  btnAlterar.Enabled         := True;
  btnSalvar.Enabled          := False;
  btnCancelar.Enabled        := False;
  btnImprimirConsumo.Enabled := True;
  btnImprimirRCR.Enabled     := True;
  btnSair.Enabled            := True;

  MessageDlg(v_usuario+', RCR gravado.', mtInformation, [mbOk], 0);
  Screen.Cursor := crDefault;
end;

procedure TF_proRCR.btnCancelarClick(Sender: TObject);
var
  Texto : String;
begin
  Texto := StringReplace( Trim( tbProcessosNumero_RCR.AsString ), '.', '', [rfReplaceAll] );
  Texto := StringReplace( Trim( Texto ), '/', '', [rfReplaceAll] );
  Texto := StringReplace( Trim( Texto ), '-', '', [rfReplaceAll] );
  
  edtProcessoReceita.Text := FormatMaskText('#####.######/##-##;0;', Texto);

  Screen.Cursor := crHourGlass;
  tbProcessos.Cancel;
  pnlTop.Enabled             := True;
  pnlPrincipal.Enabled       := False;
  btnAlterar.Enabled         := True;
  btnSalvar.Enabled          := False;
  btnCancelar.Enabled        := False;
  btnImprimirConsumo.Enabled := True;
  btnImprimirRCR.Enabled     := True;
  btnSair.Enabled            := True;
  Screen.Cursor              := crDefault;
end;

procedure TF_proRCR.acTempRCRExecute(Sender: TObject);
var
  qrcr : Integer;
  i, j : Integer;
  qmfpnpo : String;
  qdesc : String;
begin
  with qrDelRCRTemp do
   begin
     if TipoBanco = 1
      then begin
        sql.clear;
        sql.add('DELETE FROM RCRtemp ');
        sql.add('WHERE Processo = :pro ');
      end
      else begin
        sql.clear;
        sql.add('DELETE * FROM RCRtemp ');
        sql.add('WHERE Processo = :pro ');
      end;

     Params[0].AsString := qrProcessosProcesso.AsString;
     ExecSQL;
   end;

  with QR_RCR.qrItensRCR do
   begin
     Close;
     Params[0].AsString := qrProcessosProcesso.AsString;
     Params[1].AsString := vEmp;
     Params[2].AsString := vFil;
     Open;
   end;

  qrcr := 0;
  QR_RCR.qrItensRCR.First;

  while not QR_RCR.qrItensRCR.Eof do
   begin
     while qrInsertRCRTemp.State = dsInsert do
      begin
      End;

     qdesc := Trim(StringReplace(QR_RCR.qrItensRCRdesc.asstring, Chr(13)+Chr(10), ' ', [rfReplaceAll]));

     qmfpnpo := ' '+Trim('MFPN.'+QR_RCR.qrItensRCRProduto.AsString);

     if ((QR_RCR.qrItensRCRnumero_serie.asstring <> '') and (QR_RCR.qrItensRCRnumero_serie.asstring <> '.'))
      then qmfpnpo := qmfpnpo + ' NºSerie.'+Trim(QR_RCR.qrItensRCRnumero_serie.AsString);

     if (not QR_RCR.qrItensRCRPO.IsNull) and (QR_RCR.qrItensRCRPO.asstring<>'')
      then qmfpnpo := qmfpnpo + ' PO.'+Trim(QR_RCR.qrItensRCRPO.AsString);

     if Ceil(Length(qdesc)/70) = Ceil(Length(qdesc+qmfpnpo)/70)
       then begin
         qdesc   := qdesc + qmfpnpo;
         qmfpnpo := '';
       end;

     Inc(qrcr);

     qrInsertRCRTemp.Params[0].AsString := qrProcessosProcesso.AsString;
     qrInsertRCRTemp.Params[1].AsString := IntToStr(qrcr);
     qrInsertRCRTemp.Params[2].AsString := QR_RCR.qrItensRCRNCM.AsString;
     qrInsertRCRTemp.Params[3].AsString := Trim(Copy(qdesc,1,70));
     qrInsertRCRTemp.Params[4].AsString := QR_RCR.qrItensRCRFatura.AsString;
     qrInsertRCRTemp.Params[5].AsString := QR_RCR.qrItensRCRPagina.AsString;
     qrInsertRCRTemp.Params[6].AsString := stringreplace(QR_RCR.qrItensRCRSomaDeQuantidade.AsString,',','.',[]);
     qrInsertRCRTemp.Params[7].AsString := stringreplace(QR_RCR.qrItensRCRSomaDevalortotal.AsString,',','.',[]);
     qrInsertRCRTemp.ExecSQL;

     for i := 1 To Ceil(Length(qdesc)/70)-1 do
      begin
        while qrInsertRCRTemp.State = dsInsert do
         begin
         end;

        Inc(qrcr);
        with qrInsertRCRTemp do
         begin
           Params[0].AsString := qrProcessosProcesso.AsString;
           Params[1].AsString := IntToStr(qrcr);
           Params[2].AsString := ' ';
           Params[3].AsString := Trim(Copy(qdesc, (i*70)+1, 70));
           Params[4].AsString := ' ';
           Params[5].AsString := ' ';
           Params[6].AsString := '0';
           Params[7].AsString := '0';
           ExecSQL;
         end;
      end;

     if qmfpnpo <> ''
      then begin
        Inc(qrcr);

        with qrInsertRCRTemp do
         begin
           Params[0].AsString := qrProcessosProcesso.AsString;
           Params[1].AsString := IntToStr(qrcr);
           Params[2].AsString := ' ';
           Params[3].AsString := Trim(qmfpnpo);
           Params[4].AsString := ' ';
           Params[5].AsString := ' ';
           Params[6].AsString := '0';
           Params[7].AsString := '0';
           ExecSQL;
         end;
      end;

     QR_RCR.qrItensRCR.Next;
   end;

  for j := 1 to 18 - (qrcr mod 19) do
   begin
     while qrInsertRCRTemp.State = dsInsert do
      begin
      end;

     with qrInsertRCRTemp do
      begin
        Params[0].AsString := qrProcessosProcesso.AsString;
        Params[1].AsString := IntToStr(qrcr + 1);
        Params[2].AsString := ' ';
        Params[3].AsString := ' ';
        Params[4].AsString := ' ';
        Params[5].AsString := ' ';
        Params[6].AsString := '0';
        Params[7].AsString := '0';
        ExecSQL;
      end;
   end;
{ Leandro Serra - 26/10/2011 Estava pulando linhas desnecessárias
  // eduardo.souza 06/06/2011
  qryRCRT.params[0].value := qrProcessosProcesso.AsString;
  qryRCRT.Close;
  qryRCRT.Open;

  if ( qryRCRT.FieldByName( 'cont' ).AsInteger <= Ceil(Length( qryObsEspDESC_OBS.AsString )/70) )
   then for i := 1 to ( 5 - qryRCRT.FieldByName( 'cont' ).AsInteger ) do
         begin
           with qrInsertRCRTemp do
            begin
              Params[0].AsString := qrProcessosProcesso.AsString;
              Params[1].AsString := IntToStr( qryRCRT.FieldByName( 'seq' ).AsInteger + i );
              Params[2].AsString := ' ';
              Params[3].AsString := ' ';
              Params[4].AsString := ' ';
              Params[5].AsString := ' ';
              Params[6].AsString := '0';
              Params[7].AsString := '0';
              ExecSQL;
            end;
         end;

  qryRCRT.Close;}

  with QR_RCR.qrRCRTemp do
   begin
     Close;

     if TipoBanco = 1
      then begin
        sql.clear;
        sql.add('SELECT Processo, Sequencial, NCM, Descricao_Produto, Fatura, Pagina, Quantidade, Valor ');
        sql.add('  FROM RCRtemp WHERE Processo = :qproc ');
        sql.add(' ORDER BY cast(Sequencial as integer) ');
      end
      else begin
        sql.clear;
        sql.add('SELECT Processo, Sequencial, NCM, Descricao_Produto, Fatura, Pagina, Quantidade, Valor ');
        sql.add('  FROM RCRtemp WHERE Processo = :qproc ');
        sql.add('ORDER BY Val(Sequencial) ');
      end;

     Params[0].AsString := qrProcessosProcesso.AsString;
     Open;
   end;
end;

procedure TF_proRCR.dbEdtDtEntradaChange(Sender: TObject);
begin
  if tbProcessos.State In [dsEdit]
   then if dbEdtDtEntrada.Text = '  /  /    '
         then tbProcessosData_Entrada_RCR.AsString := '';
end;

procedure TF_proRCR.dbEdtDtAprovChange(Sender: TObject);
begin
  if tbProcessos.State In [dsEdit]
   then if dbEdtDtAprov.Text = '  /  /    '
         then tbProcessosData_Aprovacao_RCR.AsString := '';
end;

procedure TF_proRCR.acRCRConsumoExecute(Sender: TObject);
var
  qrcr : Integer;
  i : Integer;
  qmfpnpo : String;
  apri : Boolean;
  qdesc : String;
begin
  QR_RelConsumo.qrlabel3.Caption := me_destcon.Text;

  { faturas do processo }
  QR_RelConsumo.qrl_faturas.Caption := '';
  apri := True;
  qrFaturas.First;

  while not qrFaturas.Eof do
   begin
     if apri
      then begin
        QR_RelConsumo.qrl_faturas.Caption := qrFaturasCodigo.AsString;
        apri := False;
      end
      else QR_RelConsumo.qrl_faturas.Caption := QR_RelConsumo.qrl_faturas.Caption+', '+qrFaturasCodigo.AsString;

     qrFaturas.Next;
   end;

  with qrDelRCRTemp do
   begin
     if TipoBanco = 1
      then begin
        sql.clear;
        sql.add('DELETE FROM RCRtemp ');
        sql.add('WHERE Processo = :pro ');
      end
      else begin
        sql.clear;
        sql.add('DELETE * FROM RCRtemp ');
        sql.add('WHERE Processo = :pro ');
      end;

     Params[0].AsString := qrProcessosProcesso.AsString;
     ExecSQL;
   end;

  qrcr := 0;
  QR_RelConsumo.qrItensRCR.First;

  while not QR_RelConsumo.qrItensRCR.Eof do
   begin
     while qrInsertRCRTemp.State = dsInsert do
      begin
      end;

     qdesc := Trim(StringReplace(QR_RelConsumo.qrItensRCRdesc.AsString, Chr(13)+Chr(10), ' ', [rfReplaceAll]));

     qmfpnpo := ' '+Trim('MFPN.'+QR_RelConsumo.qrItensRCRProduto.AsString);

     if not QR_RelConsumo.qrItensRCRPO.IsNull
      then qmfpnpo := qmfpnpo + ' PO.'+Trim(QR_RelConsumo.qrItensRCRPO.AsString);

     if Ceil(Length(qdesc)/70) = Ceil(Length(qdesc+qmfpnpo)/70)
      then begin
        qdesc   := qdesc + qmfpnpo;
        qmfpnpo := '';
      end;

     Inc(qrcr);
     with qrInsertRCRTemp do
      begin
        Params[0].AsString := qrProcessosProcesso.AsString;
        Params[1].AsString := IntToStr(qrcr);
        Params[2].AsString := QR_RelConsumo.qrItensRCRNCM.AsString;
        Params[3].AsString := Trim(Copy(qdesc,1,70));
        Params[4].AsString := QR_RelConsumo.qrItensRCRFatura.AsString;
        Params[5].AsString := QR_RelConsumo.qrItensRCRPagina.AsString;
        Params[6].AsString := QR_RelConsumo.qrItensRCRSomaDeQuantidade.AsString;
        Params[7].AsString := stringreplace(QR_RelConsumo.qrItensRCRSomaDeValortotal.AsString,',','.',[]);
        ExecSQL;
      end;

     for i := 1 to Ceil(Length(qdesc)/70)-1 do
      begin
        while qrInsertRCRTemp.State = dsInsert do
         begin
         end;

        Inc(qrcr);
        with qrInsertRCRTemp do
         begin
           Params[0].AsString := qrProcessosProcesso.AsString;
           Params[1].AsString := IntToStr(qrcr);
           Params[2].AsString := ' ';
           Params[3].AsString := Trim(Copy(qdesc, (i*70)+1, 70));
           Params[4].AsString := ' ';
           Params[5].AsString := ' ';
           Params[6].AsString := '0';
           Params[7].AsString := '0';
           ExecSQL;
         end;
      end;

     if qmfpnpo <> ''
      then begin
        Inc(qrcr);

        with qrInsertRCRTemp do
         begin
           Params[0].AsString := qrProcessosProcesso.AsString;
           Params[1].AsString := IntToStr(qrcr);
           Params[2].AsString := ' ';
           Params[3].AsString := Trim(qmfpnpo);
           Params[4].AsString := ' ';
           Params[5].AsString := ' ';
           Params[6].AsString := '0';
           Params[7].AsString := '0';
           ExecSQL;
         end;
      end;

     QR_RelConsumo.qrItensRCR.Next;
   end;

  with QR_RelConsumo.qrRCRTemp do
   begin
     Close;

     if TipoBanco = 1
      then begin
        sql.clear;
        sql.add('SELECT Processo, Sequencial, NCM, Descricao_Produto, Fatura, Pagina, Quantidade, Valor ');
        sql.add('  FROM RCRtemp WHERE Processo = :qproc ');
        sql.add('ORDER BY cast(Sequencial as integer) ');
      end
      else begin
        sql.clear;
        sql.add('SELECT Processo, Sequencial, NCM, Descricao_Produto, Fatura, Pagina, Quantidade, Valor ');
        sql.add('  FROM RCRtemp WHERE Processo = :qproc ');
        sql.add('ORDER BY Val(Sequencial) ');
      end;

     Params[0].AsString := qrProcessosProcesso.AsString;
     Open;
   end;
end;

procedure TF_proRCR.sbLimpaFundClick(Sender: TObject);
begin
  tbProcessosFundamentacao_RCR.AsString := '';
end;

procedure TF_proRCR.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if tbProcessos.State in [dsEdit]
   then begin
     MessageDlg('O RCR está em edição!', mtInformation,[mbOk], 0);
     CanClose := False;
   end
   else CanClose := True;
end;

procedure TF_proRCR.tbProcessosAfterPost(DataSet: TDataSet);
begin
  logusu('P','Alterou RCR do Processo: '+tbProcessosCodigo.AsString);
end;

procedure TF_proRCR.btnConfirmarClick(Sender: TObject);
begin
  QR_RCR.ObsEspecifica := ( StringReplace(qryObsEsp.fieldByName( 'DESC_OBS' ).AsString, Chr(13)+Chr(10), ' ', [rfReplaceAll]));
  pnlObs.Visible := False;
  If MessageDlg('Deseja imprimir o RCR com a moeda igual a registrada da fatura?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
        DaFatura := True
  else
        DaFatura := False;
  If MessageDlg('Deseja imprimir o RCR com a sigla da moeda no Rótulo do VALOR?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
        SiglaMoeda := True
  else
        SiglaMoeda := False;
  QR_RCR.Preview;
end;

procedure TF_proRCR.btnCancelClick(Sender: TObject);
begin
  QR_RCR.ObsEspecifica := '';
  pnlObs.Visible := False;
  QR_RCR.Preview;
end;

procedure TF_proRCR.tbProcessosAfterScroll(DataSet: TDataSet);
var
  Texto : String;
begin
  Texto := StringReplace( Trim( tbProcessosNumero_RCR.AsString ), '.', '', [rfReplaceAll] );
  Texto := StringReplace( Trim( Texto ), '/', '', [rfReplaceAll] );
  Texto := StringReplace( Trim( Texto ), '-', '', [rfReplaceAll] );
  edtProcessoReceita.Text := FormatMaskText('#####.######/##-##;0;', Texto);
end;

procedure TF_proRCR.btnViewClick(Sender: TObject);
begin
  Application.MessageBox(PChar('Número RCR sem mascara: '+tbProcessosNumero_RCR.AsString ), 'Visualização Nº RCR', MB_OK+MB_ICONINFORMATION);
end;

function TF_proRCR.RCRNaoScaneado(Processo : string): Boolean;
var
  QryAux : TQuery;
begin
  QryAux := TQuery.Create(nil);
  QryAux.DatabaseName := 'DBNMSCOMEX';

  try
    QryAux.SQL.Clear;
    QryAux.SQL.Add(' SELECT D.PROCESSO                                                                                                  ');
    QryAux.SQL.Add('   FROM DOCUMENTOS AS D LEFT JOIN SUB_TIPO_DOCUMENTOS AS S ON D.TIPO_DOC = S.TIPO_DOC AND D.SUB_TIPO_DOC = S.CODIGO ');
    QryAux.SQL.Add('  WHERE D.TIPO_DOC = ''PROC'' AND D.SUB_TIPO_DOC = ''14'' AND D.PROCESSO =:PROCESSO                                 ');
    QryAux.ParamByName('Processo').Value := Processo;
    QryAux.Open;

    if QryAux.RecordCount = 0
     then Result := True
     else Result := False;
  finally
    QryAux.Free;
  end;
end;
procedure TF_proRCR.PreencheInfoLabelsContrato;
var
  QrAux : TQuery;
begin
  try
    QrAux := TQuery.Create(nil);
    QrAux.DatabaseName := 'DBNMSCOMEX';

    QrAux.SQL.Clear;
    QrAux.SQL.Add('SELECT Descricao, INs, Repetro FROM Contratos WHERE Importador = :p0 AND Contrato = :p1 ');
    QrAux.Params[0].Value := qrProcessosImportador.AsString;
    QrAux.Params[1].Value := qrProcessosContrato.AsString;
    QrAux.Open;

    if QrAux.RecordCount > 0
     then begin
     //  lblDescricao.Caption   := QrAux.FieldByName('Descricao').AsString;
       lblIns.Caption         := QrAux.FieldByName('INs').AsString;

       if QrAux.FieldByName('Repetro').Value = 1
        then begin
          lblRepetroResp.Color   := clGreen;
          lblRepetroResp.Caption := 'Sim';
        end
        else begin
          lblRepetroResp.Color   := clRed;
          lblRepetroResp.Caption := 'Não';
        end;
     end
     else ApagaInfoLabelsContrato;
  finally
    QrAux.Free;
  end;
end;

procedure TF_proRCR.ApagaInfoLabelsContrato;
begin
 // lblDescricao.Caption   := '-';
  lblIns.Caption         := '-';
  lblRepetroResp.Caption := '-';
end;


Function TF_proRCR.FiltrarRepetro : Boolean;
var
  QrAux : TQuery;
begin
  try
    QrAux := TQuery.Create(nil);
    QrAux.DatabaseName := 'DBNMSCOMEX';

    QrAux.SQL.Clear;
    QrAux.SQL.Add('SELECT Descricao, INs, Repetro FROM Contratos WHERE Importador = :p0 AND Contrato = :p1 ');
    QrAux.Params[0].Value := qrProcessosImportador.AsString;
    QrAux.Params[1].Value := qrProcessosContrato.AsString;
    QrAux.Open;

     if QrAux.FieldByName('Repetro').Value = 1
        then  Result := True
        else Result := False;

     finally
    QrAux.Free;
  end;
end;

end.
