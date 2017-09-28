unit u_procargas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, Db, DBTables, Grids, DBGrids, Buttons, ComCtrls,
  DBCtrls, ActnList;

type
  TF_proCargas = class(TForm)
    pnlTop: TPanel;
    Label26: TLabel;
    ME_nossaref: TMaskEdit;
    qrProcessos: TQuery;
    dsQProcessos: TDataSource;
    l_cliente: TLabel;
    tbConhecimento: TTable;
    dsConhecimentos: TDataSource;
    dsPais: TDataSource;
    dsURF: TDataSource;
    tbConCargas: TTable;
    dsConCargas: TDataSource;
    dsTipoCargas: TDataSource;
    pnlPrincipal: TPanel;
    Label55: TLabel;
    Label62: TLabel;
    Label135: TLabel;
    Label134: TLabel;
    Label136: TLabel;
    Label213: TLabel;
    gbFrete: TGroupBox;
    Label148: TLabel;
    Label150: TLabel;
    Label151: TLabel;
    Label152: TLabel;
    Label212: TLabel;
    edtFreteTotal: TMaskEdit;
    gbSeguro: TGroupBox;
    Label153: TLabel;
    Label154: TLabel;
    gbDespFob: TGroupBox;
    Label173: TLabel;
    Label174: TLabel;
    dbLcbPais: TDBLookupComboBox;
    dbLcbURF: TDBLookupComboBox;
    dbEdtPsLiquido: TDBEdit;
    dbEdtPsBruto: TDBEdit;
    dbEdtAgente: TDBEdit;
    tbEmbalagem: TTable;
    dsEmbalagem: TDataSource;
    dsTipoEmb: TDataSource;
    dbEdtFretePre: TDBEdit;
    dbEdtFreteCol: TDBEdit;
    dbEdtFreteTer: TDBEdit;
    dbLcbMoedaFrete: TDBLookupComboBox;
    dsMoedaFrete: TDataSource;
    dsMoedaSeguro: TDataSource;
    dbLcbMoedaSeguro: TDBLookupComboBox;
    dsMoedaFOB: TDataSource;
    dbLcbMoedaFOB: TDBLookupComboBox;
    dbEdtValSeguro: TDBEdit;
    dbEdtValFOB: TDBEdit;
    pnlBaixo: TPanel;
    btnAlterar: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    qrPais: TQuery;
    qrURF: TQuery;
    qrTipoCargas: TQuery;
    qrTipoEmb: TQuery;
    qrMoedaFrete: TQuery;
    qrMoedaSeguro: TQuery;
    qrMoedaFOB: TQuery;
    pnlCarga: TPanel;
    dbGrdCargas: TDBGrid;
    btnIncCarga: TBitBtn;
    btnExcCarga: TBitBtn;
    Panel2: TPanel;
    pnlEmbalagem: TPanel;
    dbGrdEmbalagem: TDBGrid;
    btnIncEmbalagem: TBitBtn;
    btnExcEmbalagem: TBitBtn;
    Panel4: TPanel;
    btnAltCarga: TBitBtn;
    pnlTipoCarga: TPanel;
    Panel1: TPanel;
    btnSalvarCarga: TBitBtn;
    btnCancelarCarga: TBitBtn;
    Label137: TLabel;
    dbEdtCod: TDBEdit;
    Label138: TLabel;
    dbLcbCarga: TDBLookupComboBox;
    Label139: TLabel;
    dbEdtLacre: TDBEdit;
    pnlVolume: TPanel;
    Panel5: TPanel;
    btnSalvarVolume: TBitBtn;
    btnCancelarVolume: TBitBtn;
    Label146: TLabel;
    dbLcbEmbalagem: TDBLookupComboBox;
    Label149: TLabel;
    dbEdtQtd: TDBEdit;
    btnAltEmbalagem: TBitBtn;
    sbLimpaPais: TSpeedButton;
    sbLimpaURF: TSpeedButton;
    sbLimpaMoedaFrete: TSpeedButton;
    sbLimpaMoedaSeguro: TSpeedButton;
    sbLimpaMoedaFOB: TSpeedButton;
    qrConCargas: TQuery;
    qrEmbalagem: TQuery;
    dsQConCargas: TDataSource;
    dsQEmbalagem: TDataSource;
    qrVMLE: TQuery;
    dbEdtVMLE: TDBEdit;
    dsVMLE: TDataSource;
    qrTaxa: TQuery;
    dbEdtPais: TDBEdit;
    dbEdtURF: TDBEdit;
    alAtuTabelas: TActionList;
    acAtuTabelas: TAction;
    dbEdtEmbalagem: TDBEdit;
    dbEdtMoedaFrete: TDBEdit;
    dbEdtMoedaSeguro: TDBEdit;
    dbEdtMoedaFOB: TDBEdit;
    Label2: TLabel;
    Label1: TLabel;
    tbConhecimentoEmpresa: TStringField;
    tbConhecimentoFilial: TStringField;
    tbConhecimentoProcesso: TStringField;
    tbConhecimentoVia: TStringField;
    tbConhecimentoMultimodal: TSmallintField;
    tbConhecimentoPLaca: TStringField;
    tbConhecimentoLacre: TStringField;
    tbConhecimentoEmbarcacao: TStringField;
    tbConhecimentoTransportador: TStringField;
    tbConhecimentoTipodoccarga: TStringField;
    tbConhecimentoNumerodoccarga: TStringField;
    tbConhecimentoNumeromaster: TStringField;
    tbConhecimentoLocal: TStringField;
    tbConhecimentoData: TDateTimeField;
    tbConhecimentoUtilizacao: TStringField;
    tbConhecimentoTipomanifesto: TStringField;
    tbConhecimentoNumeromanifesto: TStringField;
    tbConhecimentoCodigo_Presenca_Carga: TStringField;
    tbConhecimentoPeso_Bruto: TFloatField;
    tbConhecimentoPeso_Liquido: TFloatField;
    tbConhecimentoAgente: TStringField;
    tbConhecimentoPais_Procedencia: TStringField;
    tbConhecimentoURF_chegada: TStringField;
    tbConhecimentoData_Chegada_URF_Cheg: TDateTimeField;
    tbConhecimentoURF_Despacho: TStringField;
    tbConhecimentoData_Chegada_URF_Desp: TDateTimeField;
    tbConhecimentoRecinto_Alfandegario: TStringField;
    tbConhecimentoSetor_Alfandegario: TStringField;
    tbConhecimentoArmazem: TStringField;
    tbConhecimentoOperacao_FUNDAP: TSmallintField;
    tbConhecimentoContratante_OPCAMBIAL: TStringField;
    tbConhecimentoMoeda_Frete: TStringField;
    tbConhecimentoFrete_Prepaid: TFloatField;
    tbConhecimentoFrete_Collect: TFloatField;
    tbConhecimentoFrete_Ter_Nac: TFloatField;
    tbConhecimentoMoeda_Seguro: TStringField;
    tbConhecimentoValor_Seguro: TFloatField;
    tbConhecimentoMoeda_Despesas_ate_FOB: TStringField;
    tbConhecimentoValor_Despesas_ate_FOB: TFloatField;
    tbConhecimentoUnidade: TStringField;
    tbConhecimentoQuantidade: TFloatField;
    qrPaisCODIGO: TStringField;
    qrPaisDESCRICAO: TStringField;
    qrURFCODIGO: TStringField;
    qrURFDESCRICAO: TStringField;
    qrConCargasEmpresa: TStringField;
    qrConCargasFilial: TStringField;
    qrConCargasProcesso: TStringField;
    qrConCargasCodigo: TStringField;
    qrConCargasTipo_Carga: TStringField;
    qrConCargasDescricao: TStringField;
    qrConCargasLacre: TStringField;
    tbConCargasEmpresa: TStringField;
    tbConCargasFilial: TStringField;
    tbConCargasProcesso: TStringField;
    tbConCargasCodigo: TStringField;
    tbConCargasTipo_Carga: TStringField;
    tbConCargasDescricao_tipo: TStringField;
    tbConCargasLacre: TStringField;
    qrTipoCargasCodigo: TStringField;
    qrTipoCargasDescricao: TStringField;
    qrEmbalagemEmpresa: TStringField;
    qrEmbalagemFilial: TStringField;
    qrEmbalagemProcesso: TStringField;
    qrEmbalagemTipoEmbalagem: TStringField;
    qrEmbalagemDescricao: TStringField;
    qrEmbalagemQuantidade: TStringField;
    tbEmbalagemEmpresa: TStringField;
    tbEmbalagemFilial: TStringField;
    tbEmbalagemProcesso: TStringField;
    tbEmbalagemTipoEmbalagem: TStringField;
    tbEmbalagemDescricaoEmbalagem: TStringField;
    tbEmbalagemQuantidade: TStringField;
    qrTipoEmbCodigo: TStringField;
    qrTipoEmbDescricao: TStringField;
    qrVMLESomaDoVMLE: TFloatField;
    qrMoedaFreteCODIGO: TStringField;
    qrMoedaFreteDESCRICAO: TStringField;
    qrTaxaProcesso: TStringField;
    qrTaxaMoeda: TStringField;
    qrTaxaTaxa_conversao: TFloatField;
    qrTaxaTaxa_conversaoc: TFloatField;
    qrMoedaSeguroCODIGO: TStringField;
    qrMoedaSeguroDESCRICAO: TStringField;
    qrMoedaFOBCODIGO: TStringField;
    qrMoedaFOBDESCRICAO: TStringField;
    qrProcessosEmpresa: TStringField;
    qrProcessosFilial: TStringField;
    qrProcessosProcesso: TStringField;
    qrProcessosData: TDateTimeField;
    qrProcessosrefcli: TStringField;
    qrProcessosCliente: TStringField;
    qrProcessostipodecla: TStringField;
    qrProcessostipopro: TStringField;
    qrProcessosqcontrato: TStringField;
    qrProcessosqlocal: TStringField;
    qrProcessosqcnpj: TStringField;
    qrProcessosFechado: TSmallintField;
    qrProcessosATIVO: TSmallintField;
    qrProcessosImportador: TStringField;
    qrProcessosResponsavel_empresa: TStringField;
    qrProcessosResponsavel_empresac: TStringField;
    qrProcessosTipo: TStringField;
    Query1: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    DateTimeField1: TDateTimeField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    SmallintField1: TSmallintField;
    SmallintField2: TSmallintField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure ME_nossarefChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbConhecimentoAfterPost(DataSet: TDataSet);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnIncCargaClick(Sender: TObject);
    procedure btnAltCargaClick(Sender: TObject);
    procedure btnIncEmbalagemClick(Sender: TObject);
    procedure btnAltEmbalagemClick(Sender: TObject);
    procedure btnExcCargaClick(Sender: TObject);
    procedure btnExcEmbalagemClick(Sender: TObject);
    procedure tbConCargasAfterOpen(DataSet: TDataSet);
    procedure tbEmbalagemAfterOpen(DataSet: TDataSet);
    procedure btnSalvarCargaClick(Sender: TObject);
    procedure btnSalvarVolumeClick(Sender: TObject);
    procedure btnCancelarCargaClick(Sender: TObject);
    procedure btnCancelarVolumeClick(Sender: TObject);
    procedure sbLimpaPaisClick(Sender: TObject);
    procedure sbLimpaURFClick(Sender: TObject);
    procedure sbLimpaMoedaFreteClick(Sender: TObject);
    procedure sbLimpaMoedaSeguroClick(Sender: TObject);
    procedure sbLimpaMoedaFOBClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure tbConCargasAfterDelete(DataSet: TDataSet);
    procedure tbEmbalagemAfterDelete(DataSet: TDataSet);
    procedure qrConCargasAfterOpen(DataSet: TDataSet);
    procedure qrEmbalagemAfterOpen(DataSet: TDataSet);
    procedure tbConCargasBeforeDelete(DataSet: TDataSet);
    procedure tbConCargasAfterEdit(DataSet: TDataSet);
    procedure tbConCargasAfterInsert(DataSet: TDataSet);
    procedure acAtuTabelasExecute(Sender: TObject);
    procedure dbEdtPaisKeyPress(Sender: TObject; var Key: Char);
    procedure dbLcbPaisKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtURFKeyPress(Sender: TObject; var Key: Char);
    procedure dbLcbURFKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtPsBrutoKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtAgenteKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtVMLEKeyPress(Sender: TObject; var Key: Char);
    procedure dbLcbMoedaFreteKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtFretePreKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtFreteColKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtFreteTerKeyPress(Sender: TObject; var Key: Char);
    procedure dbLcbMoedaSeguroKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtValSeguroKeyPress(Sender: TObject; var Key: Char);
    procedure dbLcbMoedaFOBKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtValFOBKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtQtdKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtMoedaFreteKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtMoedaSeguroKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtMoedaFOBKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_proCargas: TF_proCargas;
  vEmp, vFil, vPro: String;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure TF_proCargas.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure TF_proCargas.ME_nossarefChange(Sender: TObject);
var cnpj: String;
begin
  if Length( F_MSCOMEX.LRTrim( me_nossaref.Text ) ) <> 8
   then Exit;

	Screen.Cursor := crHourGlass;

  {Inicio eduardo.souza 08/03/2013}
  qrProcessos.Close;
  qrProcessos.ParamByName( 'Processo' ).Value := me_nossaref.Text;
  qrProcessos.Open;

  if ( not qrProcessos.IsEmpty )
   then begin
     {Fim eduardo.souza 08/03/2013}
     vEmp := qrProcessosEmpresa.AsString;
     vFil := qrProcessosFilial.AsString;
     vPro := qrProcessosProcesso.AsString;

     { REFRESH NAS TABELAS }
     acAtuTabelas.Execute;

     if F_MSCOMEX.AcessaPasta(me_nossaref.Text, qrProcessosTipo.AsString, F_proCargas) and
        F_MSCOMEX.DINaoSolicitada(ME_nossaref.Text, F_proCargas)
      then begin
        pnlPrincipal.Visible := True;
        pnlPrincipal.Enabled := True;

        pnlBaixo.Visible     := True;
        pnlBaixo.Enabled     := True;
      end;

     if tbConCargas.State = dsInactive
      then tbConCargas.Open;

     if qrTipoCargas.State = dsInactive
      then qrTipoCargas.Open;

     with qrConCargas do
      begin
        Close;
        Params[0].AsString := vPro;
        Open;
      end;

     if tbEmbalagem.State = dsInactive
      then tbEmbalagem.Open;

     if qrTipoEmb.State = dsInactive
      then qrTipoEmb.Open;

     with qrEmbalagem do
      begin
        Close;
        Params[0].AsString := vPro;
        Open;
      end;

     //alterei em 27/07/2005 - mm - chupisco!!!
     v_AlteraPRO := 1;

     if (not qrprocessosAtivo.asinteger = 0)
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

     if tbConhecimento.State = dsInactive
      then tbConhecimento.Open;

     if tbConhecimento.RecordCount <> 0
      then begin
        with qrTaxa do
         begin
           Close;
           Params[0].AsString := tbConhecimentoProcesso.AsString;
           Params[1].AsString := tbConhecimentoMoeda_Frete.AsString;
           Open;
         end;

        edtFreteTotal.Text := FloatToStr(qrTaxaTaxa_conversao.AsFloat*(tbConhecimentoFrete_Prepaid.AsFloat + tbConhecimentoFrete_Collect.AsFloat - tbConhecimentoFrete_Ter_Nac.AsFloat));

        with qrVMLE do
         begin
           Close;
           Params[0].AsString := vPro;
           Open;
         end;
      end
      else begin
        // não achou conhecimento então grava
        tbConhecimento.Insert;
        btnAlterar.Click;
      end;

     if f_mscomex.q_usucli.recordcount > 0
      then begin
        if f_mscomex.q_usucli.locate('Importador',qrProcessosimportador.asstring,[])
         then v_autorizadocli := 1
         else v_autorizadocli := 0;
      end
      else v_autorizadocli := 1;

     F_MSCOMEX.atualizacpastas(ME_nossaref.text);

     if v_autorizadocli = 1
      then begin
        cnpj := qrprocessosqcnpj.asstring;
        cnpj := Copy(cnpj,1,2)+'.'+Copy(cnpj,3,3)+'.'+Copy(cnpj,6,3)+'/'+Copy(cnpj,9,4)+'-'+Copy(cnpj,13,2);

        l_cliente.Caption := qrProcessosCliente.AsString+' - CNPJ: '+cnpj;

        pnlPrincipal.Visible := True;
        pnlCarga.Visible     := True;
        pnlEmbalagem.Visible := True;
        pnlBaixo.Visible     := True;

        f_mscomex.AtualizaTaxaConversao(vPro);
      end
      else begin
        l_cliente.Caption := '';

        pnlPrincipal.Visible := False;
        pnlCarga.Visible     := False;
        pnlEmbalagem.Visible := False;
        pnlBaixo.Visible     := False;

        Showmessage(v_usuario+', este Processo pertence a um Cliente que seu acesso não está permitido!');
      end;
   end
   else begin
     MessageDlg('Processo não encontrado!', mtInformation,[mbOk], 0);

     l_cliente.Caption := '';

     me_nossaref.Clear;
     pnlPrincipal.Visible := False;
     pnlCarga.Visible     := False;
     pnlEmbalagem.Visible := False;
     pnlBaixo.Visible     := False;
     me_nossaref.SetFocus;
   end;

  // eduardo.souza 01/02/2012 - Para processos fechados -
  if (IsClosedProcess( me_nossaref.Text, F_proCargas ))
   then begin
     pnlBaixo.Visible := false;
     
     btnIncCarga.Enabled := false;
     btnAltCarga.Enabled := false;
     btnExcCarga.Enabled := false;

     btnIncEmbalagem.Enabled := false;
     btnAltEmbalagem.Enabled := false;
     btnExcEmbalagem.Enabled := false;
   end;
     //--

  Screen.Cursor := crDefault;
end;

procedure TF_proCargas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  f_mscomex.Cargas1.Enabled := True;
  f_procargas := Nil;
  Action := caFree;
end;

procedure TF_proCargas.tbConhecimentoAfterPost(DataSet: TDataSet);
begin
  logusu('P','Alterou Informações da Carga do Processo:'+tbConhecimentoProcesso.AsString);
  f_mscomex.MSPGP(me_nossaref.text);
end;

procedure TF_proCargas.btnAlterarClick(Sender: TObject);
begin
  if (v_AlteraPRO = 1)
   then begin
     if tbConhecimento.State <> dsInsert
      then tbConhecimento.Edit;

     pnlTop.Enabled       := False;
     pnlPrincipal.Enabled := True;
     btnAlterar.Enabled   := False;
     btnSalvar.Enabled    := True;
     btnCancelar.Enabled  := True;
     btnSair.Enabled      := False;
     
     dbEdtPais.SetFocus;
   end
   else Showmessage(v_usuario+', ATENÇÃO! Acesso não permitido à processos sob Responsabilidade e/ou o processo está fechado e/ou o Cliente está Inativo.');
end;

procedure TF_proCargas.btnCancelarClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  tbConhecimento.Cancel;

  pnlTop.Enabled       := True;
  pnlPrincipal.Enabled := False;
  btnAlterar.Enabled   := True;
  btnSalvar.Enabled    := False;
  btnCancelar.Enabled  := False;
  btnSair.Enabled      := True;

  Screen.Cursor := crDefault;
end;

procedure TF_proCargas.btnSalvarClick(Sender: TObject);
begin
  if (dbEdtPais.Text <> '') and (dbLcbPais.Text = '')
   then begin
     MessageDlg('País de Procedência inválido!', mtWarning, [mbOk], 0);
     dbEdtPais.SetFocus;
     Exit;
   end;

  if (dbEdtURF.Text <> '') and (dbLcbURF.Text = '')
   then begin
     MessageDlg('URF de Entrada no País inválido!', mtWarning, [mbOk], 0);
     dbEdtURF.SetFocus;
     Exit;
   end;

  if (dbEdtMoedaFrete.Text <> '') and (dbLcbMoedaFrete.Text = '')
   then begin
     MessageDlg('Código da Moeda do Frete inválido!', mtWarning, [mbOk], 0);
     dbEdtMoedaFrete.SetFocus;
     Exit;
   end;
   
  if (dbEdtMoedaSeguro.Text <> '') and (dbLcbMoedaSeguro.Text = '')
   then begin
     MessageDlg('Código da Moeda do Seguro inválido!', mtWarning, [mbOk], 0);
     dbEdtMoedaSeguro.SetFocus;
     Exit;
   end;
   
  if (dbEdtMoedaFOB.Text <> '') and (dbLcbMoedaFOB.Text = '')
   then begin
     MessageDlg('Código da Moeda do FOB inválido!', mtWarning, [mbOk], 0);
     dbEdtMoedaFOB.SetFocus;
     Exit;
   end;

  Screen.Cursor := crHourGlass;

  If dbEdtPsBruto.Text = ''   Then  dbEdtPsBruto.Text := '0';
  If dbEdtFretePre.Text = ''  Then  dbEdtFretePre.Text := '0';
  If dbEdtFreteCol.Text = ''  Then  dbEdtFreteCol.Text := '0';
  If dbEdtFreteTer.Text = ''  Then  dbEdtFreteTer.Text := '0';
  If dbEdtValSeguro.Text = '' Then  dbEdtValSeguro.Text := '0';
  If dbEdtValFOB.Text = ''    Then  dbEdtValFOB.Text := '0';

  tbConhecimento.Post;

  f_mscomex.AtualizaTaxaConversao(vPro);

  with qrTaxa do
   begin
     Close;
     Params[0].AsString := tbConhecimentoProcesso.AsString;
     Params[1].AsString := tbConhecimentoMoeda_Frete.AsString;
     Open;
   end;

  edtFreteTotal.Text := FloatToStr(qrTaxaTaxa_conversao.AsFloat*(tbConhecimentoFrete_Prepaid.AsFloat + tbConhecimentoFrete_Collect.AsFloat - tbConhecimentoFrete_Ter_Nac.AsFloat));

  with qrVMLE do
   begin
     Close;
     Open;
   end;

  pnlTop.Enabled := True;

  pnlPrincipal.Enabled := False;
  btnAlterar.Enabled   := True;
  btnSalvar.Enabled    := False;
  btnCancelar.Enabled  := False;
  btnSair.Enabled      := True;

  Screen.Cursor := crDefault;
end;

procedure TF_proCargas.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TF_proCargas.btnIncCargaClick(Sender: TObject);
begin
  pnlTop.Enabled       := False;
  pnlPrincipal.Enabled := False;
  pnlCarga.Enabled     := False;
  pnlEmbalagem.Enabled := False;
  pnlBaixo.Enabled     := False;

  with pnlTipoCarga do
   begin
     Left := 248;
     Top  := 120;
     Visible := True;
   end;

  dbEdtCod.SetFocus;

  tbConCargas.Insert;
  tbConCargasCodigo.AsString := '';
end;

procedure TF_proCargas.btnAltCargaClick(Sender: TObject);
begin
  pnlTop.Enabled       := False;
  pnlPrincipal.Enabled := False;
  pnlCarga.Enabled     := False;
  pnlEmbalagem.Enabled := False;
  pnlBaixo.Enabled     := False;
  
  with pnlTipoCarga do
   begin
     Left := 248;
     Top  := 120;
     Visible := True;
   end;

  dbEdtCod.SetFocus;

  tbConCargas.Edit;
end;

procedure TF_proCargas.btnIncEmbalagemClick(Sender: TObject);
begin
  pnlTop.Enabled       := False;
  pnlPrincipal.Enabled := False;
  pnlCarga.Enabled     := False;
  pnlEmbalagem.Enabled := False;
  pnlBaixo.Enabled     := False;

  with pnlVolume do
   begin
     Left := 224;
     Top  := 144;
     Visible := True;
   end;

  dbEdtEmbalagem.SetFocus;

  tbEmbalagem.Append;
  tbEmbalagemTipoEmbalagem.AsString := '';
end;

procedure TF_proCargas.btnAltEmbalagemClick(Sender: TObject);
begin
  pnlTop.Enabled       := False;
  pnlPrincipal.Enabled := False;
  pnlCarga.Enabled     := False;
  pnlEmbalagem.Enabled := False;
  pnlBaixo.Enabled     := False;

  with pnlVolume do
   begin
     Left := 224;
     Top  := 144;
     Visible := True;
   end;

  dbEdtEmbalagem.SetFocus;

  tbEmbalagem.Edit;
end;

procedure TF_proCargas.btnExcCargaClick(Sender: TObject);
begin
  if MessageDlg('Confirma exclusão da Carga?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
   then tbConCargas.Delete;
end;

procedure TF_proCargas.btnExcEmbalagemClick(Sender: TObject);
begin
  if MessageDlg('Confirma exclusão do Volume?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
   then tbEmbalagem.Delete;
end;

procedure TF_proCargas.tbConCargasAfterOpen(DataSet: TDataSet);
begin
  if tbConCargas.RecordCount <> 0
   then begin
     btnAltCarga.Enabled := True;
     btnExcCarga.Enabled := True;
   end
   else begin
     btnAltCarga.Enabled := False;
     btnExcCarga.Enabled := False;
   end;
end;

procedure TF_proCargas.tbEmbalagemAfterOpen(DataSet: TDataSet);
begin
  if tbEmbalagem.RecordCount <> 0
   then begin
     btnAltEmbalagem.Enabled := True;
     btnExcEmbalagem.Enabled := True;
   end
   else begin
     btnAltEmbalagem.Enabled := False;
     btnExcEmbalagem.Enabled := False;
   end;
end;

procedure TF_proCargas.btnSalvarCargaClick(Sender: TObject);
var
  qcod: String;
begin
  if Trim(dbEdtCod.Text) = ''
   then begin
     ShowMessage('O Código da Carga não pode estar em branco!');
     dbEdtCod.SetFocus;
     Exit;
   end;

  if tbConCargasTipo_Carga.AsString = ''
   then begin
     ShowMessage('Selecione um Tipo de Carga!');
     dbLcbCarga.SetFocus;
     Exit;
   end;

  if Trim(dbEdtLacre.Text) = ''
   then begin
     ShowMessage('O Lacre não pode estar em branco!');
     dbEdtLacre.SetFocus;
     Exit;
   end;

  qcod := tbConCargasCodigo.AsString;

  tbConCargas.Post;

  with qrConCargas do
   begin
     Close;
     Open;
     Locate('Codigo', qcod, [loCaseInsensitive]);
   end;

  pnlTop.Enabled       := True;
  pnlCarga.Enabled     := True;
  pnlEmbalagem.Enabled := True;
  pnlBaixo.Enabled     := True;
  pnlTipoCarga.Visible := False;
end;


procedure TF_proCargas.btnSalvarVolumeClick(Sender: TObject);
var
  qcod: String;
begin
  if dbEdtEmbalagem.Text = ''
   then begin
     MessageDlg('O Tipo de Embalagem não pode estar em branco!', mtWarning, [mbOk], 0);
     dbEdtEmbalagem.SetFocus;
     Exit;
   end
   else if dbLcbEmbalagem.Text = ''
         then begin
           MessageDlg('Código do Tipo de Embalagem inválido!', mtWarning, [mbOk], 0);
           dbEdtEmbalagem.SetFocus;
           Exit;
         end;

  if Trim(dbEdtQtd.Text) = ''
   then begin
     MessageDlg('A Quantidade não pode estar em branco!', mtWarning, [mbOk], 0);
     dbEdtQtd.SetFocus;
     Exit;
   end
   else tbEmbalagemQuantidade.AsInteger := StrToInt(Trim(dbEdtQtd.Text));

  qcod := tbEmbalagemTipoEmbalagem.AsString;

  try
    tbEmbalagemDescricaoEmbalagem.asstring := qrtipoembdescricao.asstring;
    tbEmbalagem.Post;
  except
    MessageDlg('Erro na gravação do Volume! Não pode haver Volumes com o mesmo Tipo de Embalagem.', mtError, [mbOk], 0);
    dbEdtEmbalagem.SetFocus;
    Exit;
  end;

  with qrEmbalagem do
   begin
     Close;
     Open;
     Locate('TipoEmbalagem', qcod, [loCaseInsensitive]);
   end;

  pnlTop.Enabled       := True;
  pnlCarga.Enabled     := True;
  pnlEmbalagem.Enabled := True;
  pnlBaixo.Enabled     := True;
  pnlVolume.Visible    := False;
end;

procedure TF_proCargas.btnCancelarCargaClick(Sender: TObject);
begin
  tbConCargas.Cancel;

  pnlTop.Enabled       := True;
  pnlCarga.Enabled     := True;
  pnlEmbalagem.Enabled := True;
  pnlBaixo.Enabled     := True;
  pnlTipoCarga.Visible := False;
end;

procedure TF_proCargas.btnCancelarVolumeClick(Sender: TObject);
begin
  tbEmbalagem.Cancel;

  pnlTop.Enabled       := True;
  pnlCarga.Enabled     := True;
  pnlEmbalagem.Enabled := True;
  pnlBaixo.Enabled     := True;
  pnlVolume.Visible    := False;
end;

procedure TF_proCargas.sbLimpaPaisClick(Sender: TObject);
begin
  tbConhecimentoPais_Procedencia.AsString := '';
end;

procedure TF_proCargas.sbLimpaURFClick(Sender: TObject);
begin
  tbConhecimentoURF_chegada.AsString := '';
end;

procedure TF_proCargas.sbLimpaMoedaFreteClick(Sender: TObject);
begin
  tbConhecimentoMoeda_Frete.AsString := '';
end;

procedure TF_proCargas.sbLimpaMoedaSeguroClick(Sender: TObject);
begin
  tbConhecimentoMoeda_Seguro.AsString := '';
end;

procedure TF_proCargas.sbLimpaMoedaFOBClick(Sender: TObject);
begin
  tbConhecimentoMoeda_Despesas_ate_FOB.AsString := '';
end;

procedure TF_proCargas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if tbConCargas.State in [dsInsert, dsEdit]
   then begin
     MessageDlg('O Tipo de Carga está em edição!', mtInformation,[mbOk], 0);
     CanClose := False;
     Exit;
   end;

  if tbEmbalagem.State in [dsInsert, dsEdit]
   then begin
     MessageDlg('O Volume está em edição!', mtInformation,[mbOk], 0);
     CanClose := False;
     Exit;
   end;

  if tbConhecimento.State in [dsEdit]
   then begin
     MessageDlg('As Informações da Carga estão em edição!', mtInformation,[mbOk], 0);
     CanClose := False;
     Exit;
   end;
end;

procedure TF_proCargas.tbConCargasAfterDelete(DataSet: TDataSet);
begin
  with qrConCargas do
   begin
     Close;
     Open;
   end;
end;

procedure TF_proCargas.tbEmbalagemAfterDelete(DataSet: TDataSet);
begin
  with qrEmbalagem do
   begin
     Close;
     Open;
   end;
end;

procedure TF_proCargas.qrConCargasAfterOpen(DataSet: TDataSet);
begin
  tbConCargas.Locate('Codigo',qrConCargasCodigo.AsString,[]);
end;

procedure TF_proCargas.qrEmbalagemAfterOpen(DataSet: TDataSet);
begin
  tbEmbalagem.Locate('TipoEmbalagem',qrEmbalagemTipoEmbalagem.AsString,[]);
end;

procedure TF_proCargas.tbConCargasBeforeDelete(DataSet: TDataSet);
begin
  logusu('P','Excluiu o ConCargas: '+tbConCargasCodigo.AsString+', do Processo: '+tbConCargasProcesso.AsString);
end;

procedure TF_proCargas.tbConCargasAfterEdit(DataSet: TDataSet);
begin
  logusu('P','Alterou o ConCargas: '+tbConCargasCodigo.AsString+', do Processo: '+tbConCargasProcesso.AsString);
end;

procedure TF_proCargas.tbConCargasAfterInsert(DataSet: TDataSet);
begin
  logusu('I','Incluiu o ConCargas: '+tbConCargasCodigo.AsString+', do Processo: '+tbConCargasProcesso.AsString);
end;

procedure TF_proCargas.acAtuTabelasExecute(Sender: TObject);
begin
  with qrPais do
   begin
     Close;
     Open;
   end;

  with qrURF do
   begin
     Close;
     Open;
   end;

  with qrMoedaFrete do
   begin
     Close;
     Open;
   end;

  with qrMoedaSeguro do
   begin
     Close;
     Open;
   end;

  with qrMoedaFOB do
   begin
     Close;
     Open;
   end;
end;

procedure TF_proCargas.dbEdtPaisKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13
   then dbLcbPais.SetFocus;
end;

procedure TF_proCargas.dbLcbPaisKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13
   then dbEdtURF.SetFocus;
end;

procedure TF_proCargas.dbEdtURFKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13
   then dbLcbURF.SetFocus;
end;

procedure TF_proCargas.dbLcbURFKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13
   then dbEdtPsBruto.SetFocus;
end;

procedure TF_proCargas.dbEdtPsBrutoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13
   then dbEdtAgente.SetFocus;
end;

procedure TF_proCargas.dbEdtAgenteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13
   then dbEdtVMLE.SetFocus;
end;

procedure TF_proCargas.dbEdtVMLEKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13
   then dbEdtMoedaFrete.SetFocus;
end;

procedure TF_proCargas.dbLcbMoedaFreteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13
   then dbEdtFretePre.SetFocus;
end;

procedure TF_proCargas.dbEdtFretePreKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13
   then dbEdtFreteCol.SetFocus;
end;

procedure TF_proCargas.dbEdtFreteColKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13
   then dbEdtFreteTer.SetFocus;
end;

procedure TF_proCargas.dbEdtFreteTerKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13
   then dbEdtMoedaSeguro.SetFocus;
end;

procedure TF_proCargas.dbLcbMoedaSeguroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13
   then dbEdtValSeguro.SetFocus;
end;

procedure TF_proCargas.dbEdtValSeguroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13
   then dbEdtMoedaFOB.SetFocus;
end;

procedure TF_proCargas.dbLcbMoedaFOBKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13
   then dbEdtValFOB.SetFocus;
end;

procedure TF_proCargas.dbEdtValFOBKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13
   then btnSalvar.SetFocus;
end;

procedure TF_proCargas.dbEdtQtdKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0'..'9',#8])
   then Key := #0;
end;

procedure TF_proCargas.dbEdtMoedaFreteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13
   then dbLcbMoedaFrete.SetFocus;
end;

procedure TF_proCargas.dbEdtMoedaSeguroKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13
   then dbLcbMoedaSeguro.SetFocus;
end;

procedure TF_proCargas.dbEdtMoedaFOBKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13
   then dbLcbMoedaFOB.SetFocus;
end;

end.
