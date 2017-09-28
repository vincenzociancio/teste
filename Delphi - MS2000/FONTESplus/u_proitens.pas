unit u_proitens;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, Db, DBTables, DBCtrls, Grids, DBGrids, Buttons,
  ActnList;

type
  TF_proItens = class(TForm)
    pnlPrincipal: TPanel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label44: TLabel;
    Label171: TLabel;
    pnlTop: TPanel;
    Label26: TLabel;
    l_cliente: TLabel;
    ME_nossaref: TMaskEdit;
    pnlBaixo: TPanel;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    dbGrdItens: TDBGrid;
    qrItens: TQuery;
    dsQItens: TDataSource;
    dbEdtPag: TDBEdit;
    dbEdtRefProjeto: TDBEdit;
    dbEdtRefEmb: TDBEdit;
    dbEdtNSerie: TDBEdit;
    qrNCM: TQuery;
    dsNCM: TDataSource;
    qrFabricantes: TQuery;
    dsFabricantes: TDataSource;
    Label1: TLabel;
    dbLcbUniMedComerc: TDBLookupComboBox;
    qrDelTributacao: TQuery;
    Label2: TLabel;
    edtFatura: TEdit;
    dbEdtSeq: TDBEdit;
    dbEdtNALADI: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dbLcbUniMedEstat: TDBLookupComboBox;
    dbEdtPO: TDBEdit;
    dbEdtSeqPO: TDBEdit;
    dbEdtQtd: TDBEdit;
    dbEdtValUnit: TDBEdit;
    dbLcbFabric: TDBLookupComboBox;
    Label282: TLabel;
    Label28: TLabel;
    Label185: TLabel;
    Label188: TLabel;
    Label285: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    dbLcbNCM: TDBLookupComboBox;
    qrUniMedComerc: TQuery;
    qrUniMedEstat: TQuery;
    dsUniMedEstat: TDataSource;
    dsUniMedComerc: TDataSource;
    qrUniMedComercCODIGO: TStringField;
    qrUniMedComercDESCRICAO: TStringField;
    qrUniMedComercABREV: TStringField;
    qrUniMedEstatCODIGO: TStringField;
    qrUniMedEstatDESCRICAO: TStringField;
    qrUniMedEstatABREV: TStringField;
    dsProdutos: TDataSource;
    dbEdtDestaque: TDBEdit;
    dbEdtcodigo: TDBEdit;
    sbLocProd: TSpeedButton;
    sbCadProd: TSpeedButton;
    qrSomaItens: TQuery;
    qrSomaItensEmpresa: TStringField;
    qrSomaItensFilial: TStringField;
    qrSomaItensProcesso: TStringField;
    qrSomaItensFatura: TStringField;
    qrSomaItensSomaValorTotal: TFloatField;
    qrSomaItensSomaPesoTotal: TFloatField;
    qrSomaItensSomaPesoAcertado: TFloatField;
    qrUltimoItem: TQuery;
    qrUltimoItemSequencial: TStringField;
    qrUltimoItemPagina: TStringField;
    qrUpFatura: TQuery;
    alAtuValor: TActionList;
    acAtuFatura: TAction;
    acRemanejar: TAction;
    qrUpItens: TQuery;
    acIncluirProduto: TAction;
    qrTributacao: TQuery;
    qrTributacaoEmpresa: TStringField;
    qrTributacaoFilial: TStringField;
    qrTributacaoProcesso: TStringField;
    qrTributacaoFatura: TStringField;
    qrTributacaoSequencial_Item: TStringField;
    qrTributacaoSequencial: TStringField;
    qrNCMCODIGO: TStringField;
    qrNCMDESCRICAO: TStringField;
    qrNCMUNIDADE_MEDIDA: TStringField;
    dbEdtNCM: TDBEdit;
    dbEdtFabric: TDBEdit;
    dbEdtUniMedComerc: TDBEdit;
    qrSomaAcre: TQuery;
    qrSomaAcrevalTot: TFloatField;
    qrSomaRedu: TQuery;
    qrSomaReduvalTot: TFloatField;
    Label6: TLabel;
    qrSomaFaturas: TQuery;
    qrSomaFaturasEmpresa: TStringField;
    qrSomaFaturasFilial: TStringField;
    qrSomaFaturasProcesso: TStringField;
    qrSomaFaturasSomaPesoAcertado: TFloatField;
    qrUpConhec: TQuery;
    sblocfab: TSpeedButton;
    sbcadfab: TSpeedButton;
    qrlocfabricante: TQuery;
    dsqlocfab: TDataSource;
    pnllocfabricante: TPanel;
    Label8: TLabel;
    btnlocfabcan: TBitBtn;
    btnlocfabOK: TBitBtn;
    Panel3: TPanel;
    edtlocfab: TEdit;
    btnfiltrarfab: TBitBtn;
    dbglocfab: TDBGrid;
    tbprodlog: TTable;
    tbprodlogEmpresa: TStringField;
    tbprodlogFilial: TStringField;
    tbprodlogCdigo: TStringField;
    tbprodlogDATA_INCLUSAO: TDateTimeField;
    tbprodlogUsuario_INCLUSAO: TStringField;
    tbprodlogDATA_ULTIMA_ALTERACAO: TDateTimeField;
    tbprodlogUsuario_ALTERACAO: TStringField;
    DBE_part: TDBEdit;
    Label9: TLabel;
    dbMemoDesc: TDBMemo;
    dbMemoDescIng: TDBMemo;
    pnlLocProdutos: TPanel;
    L_busca: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    btnLocProOk: TBitBtn;
    dbGrdProdutos: TDBGrid;
    meLocProdutos: TMaskEdit;
    Panel2: TPanel;
    btnLocProCanc: TBitBtn;
    btnFiltrarProd: TBitBtn;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    qrLocProdutos: TQuery;
    Label7: TLabel;
    EdtPsUnit: TEdit;
    EdtPsTot: TEdit;
    tbitens: TTable;
    dsitens: TDataSource;
    qrItensEmpresa: TStringField;
    qrItensFilial: TStringField;
    qrItensProcesso: TStringField;
    qrItensFatura: TStringField;
    qrItensSequencial: TStringField;
    qrItensPagina: TStringField;
    qrItensProduto: TStringField;
    qrItensFabricante: TStringField;
    qrItensNCM: TStringField;
    qrItensUnidade: TStringField;
    qrItensUnidade_Medida_Estat: TStringField;
    qrItensDestaque_NCM: TStringField;
    qrItensNALADI: TStringField;
    qrItensReferencia: TStringField;
    qrItensNumero_serie: TStringField;
    qrItensReferencia_projeto: TStringField;
    qrItensPO: TStringField;
    qrItensSeqpo: TStringField;
    qrItensQuantidade: TFloatField;
    qrItensValor_Unitario: TFloatField;
    qrItensPeso_Unitario: TFloatField;
    qrItensValor_Total: TFloatField;
    qrItensPeso_Total: TFloatField;
    qrItensPeso_Total_Acertado: TFloatField;
    qrItensPeso_Unitario_Acertado: TFloatField;
    qrItenscodigo_produto: TStringField;
    qrItenssequencial_produto: TIntegerField;
    qrlocfabricanteNOMEPAIS: TStringField;
    qrlocfabricanteEmpresa: TStringField;
    qrlocfabricanteFilial: TStringField;
    qrlocfabricanteCodigo: TStringField;
    qrlocfabricanteRazao_Social: TStringField;
    qrlocfabricantePais: TStringField;
    qrlocfabricanteCGC_CPF: TStringField;
    qrlocfabricanteEndereco: TStringField;
    qrlocfabricanteNumero: TStringField;
    qrlocfabricanteComplemento: TStringField;
    qrlocfabricanteBairro: TStringField;
    qrlocfabricanteCidade: TStringField;
    qrlocfabricanteCEP: TStringField;
    qrlocfabricanteUF: TStringField;
    qrlocfabricanteEstado: TStringField;
    qrlocfabricanteInscricao_Estadual: TStringField;
    qrlocfabricanteCODIGO_1: TStringField;
    qrlocfabricanteDESCRICAO: TStringField;
    qrFabricantesNOMEPAIS: TStringField;
    qrFabricantesEmpresa: TStringField;
    qrFabricantesFilial: TStringField;
    qrFabricantesCodigo: TStringField;
    qrFabricantesRazao_Social: TStringField;
    qrFabricantesPais: TStringField;
    qrFabricantesCGC_CPF: TStringField;
    qrFabricantesEndereco: TStringField;
    qrFabricantesNumero: TStringField;
    qrFabricantesComplemento: TStringField;
    qrFabricantesBairro: TStringField;
    qrFabricantesCidade: TStringField;
    qrFabricantesCEP: TStringField;
    qrFabricantesUF: TStringField;
    qrFabricantesEstado: TStringField;
    qrFabricantesInscricao_Estadual: TStringField;
    qrFabricantesCODIGO_1: TStringField;
    qrFabricantesDESCRICAO: TStringField;
    tbitensEmpresa: TStringField;
    tbitensFilial: TStringField;
    tbitensProcesso: TStringField;
    tbitensFatura: TStringField;
    tbitensSequencial: TStringField;
    tbitensPagina: TStringField;
    tbitensProduto: TStringField;
    tbitensDescricao_Produto: TMemoField;
    tbitensFabricante: TStringField;
    tbitensNCM: TStringField;
    tbitensUnidade: TStringField;
    tbitensUnidade_Medida_Estat: TStringField;
    tbitensDestaque_NCM: TStringField;
    tbitensNALADI: TStringField;
    tbitensReferencia: TStringField;
    tbitensNumero_serie: TStringField;
    tbitensReferencia_projeto: TStringField;
    tbitensPO: TStringField;
    tbitensSeqpo: TStringField;
    tbitensQuantidade: TFloatField;
    tbitensValor_Unitario: TFloatField;
    tbitensValor_Total: TFloatField;
    tbitensPeso_Unitario: TFloatField;
    tbitensPeso_Unitario_Acertado: TFloatField;
    tbitensPeso_Total: TFloatField;
    tbitensPeso_Total_Acertado: TFloatField;
    tbitensSaldo_Tributavel: TFloatField;
    tbitensRateio_Acrescimos: TFloatField;
    tbitensRateio_Deducoes: TFloatField;
    tbitensRateio_Embalagem: TFloatField;
    tbitensRateio_Frete_Interno_imp: TFloatField;
    tbitensRateio_Seguro_Interno: TFloatField;
    tbitensRateio_outras_import: TFloatField;
    tbitensRateio_startup: TFloatField;
    tbitensRateio_jurosfin: TFloatField;
    tbitensRateio_montagem: TFloatField;
    tbitensRateio_Frete_Interno_exp: TFloatField;
    tbitensRateio_carga_exp: TFloatField;
    tbitensRateio_outras_export: TFloatField;
    tbitensRateio_frete_fatura: TFloatField;
    tbitensRateio_seguro_fatura: TFloatField;
    tbitensRateio_carga_imp: TFloatField;
    tbitensRateio_Despesas_ate_FOB: TFloatField;
    tbitensRateio_Frete_prepaid: TFloatField;
    tbitensRateio_Frete_collect: TFloatField;
    tbitensRateio_Frete_ternac: TFloatField;
    tbitensRateio_Seguro: TFloatField;
    tbitensValor_Aduaneiro: TFloatField;
    tbitensValor_mercadoria: TFloatField;
    tbitensVMLE: TFloatField;
    tbitensBase_Calc_II: TFloatField;
    tbitensAcresc_reduc_Valaduan: TFloatField;
    tbitensCOD_SIT: TStringField;
    tbitensCNPJ: TStringField;
    tbitensFiel_nome: TStringField;
    tbitensFiel_cpf: TStringField;
    tbitensContrato: TStringField;
    tbitensLocal_Inventario: TStringField;
    tbitensRateio_Taxa_Siscomex: TFloatField;
    tbitensDescricao_Produto_ing: TMemoField;
    tbitensCodigo_Produto: TStringField;
    tbitensSequencial_Produto: TIntegerField;
    qrLocProdutosREG: TAutoIncField;
    qrLocProdutosCODIGO: TStringField;
    qrLocProdutosPART_NUMBER: TStringField;
    qrLocProdutosDescricao: TMemoField;
    qrLocProdutosDescricao_ing: TMemoField;
    qrLocProdutosNCM: TStringField;
    qrLocProdutosDestaque_NCM: TStringField;
    qrLocProdutosNALADI: TStringField;
    qrLocProdutosUnidade: TStringField;
    qrLocProdutosUnidade_Medida_Estat: TStringField;
    qrLocProdutosDATA_INCLUSAO: TDateTimeField;
    qrLocProdutosUsuario_INCLUSAO: TStringField;
    qrLocProdutosDATA_ULTIMA_ALTERACAO: TDateTimeField;
    qrLocProdutosUsuario_ALTERACAO: TStringField;
    qrLocProdutosRevisado: TIntegerField;
    qrLocProdutosRevisao_Data: TDateTimeField;
    qrLocProdutosRevisao_Usuario: TStringField;
    qrLocProdutosRevisao_OBS: TMemoField;
    qrLocProdutosImportador: TStringField;
    qrLocProdutosFabricante: TStringField;
    qrLocProdutoscodimp: TStringField;
    qrLocProdutoscodfab: TStringField;
    Label12: TLabel;
    RB_Item_Admissivel_Sim: TRadioButton;
    RB_Item_Admissivel_Nao: TRadioButton;
    qrItensItem_Admissivel: TIntegerField;
    tbitensItem_Admissivel: TIntegerField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure sbLimpaUniMedEstatClick(Sender: TObject);
    procedure qrItensAfterOpen(DataSet: TDataSet);
    procedure tbItensBeforeDelete(DataSet: TDataSet);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure sbCadProdClick(Sender: TObject);
    procedure sbLocProdClick(Sender: TObject);
    procedure btnFiltrarProdClick(Sender: TObject);
    procedure qrLocProdutosAfterOpen(DataSet: TDataSet);
    procedure acAtuFaturaExecute(Sender: TObject);
    procedure dbEdtPagChange(Sender: TObject);
    procedure dbEdtPagKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtSeqChange(Sender: TObject);
    procedure dbEdtSeqKeyPress(Sender: TObject; var Key: Char);
    procedure tbItensAfterEdit(DataSet: TDataSet);
    procedure acRemanejarExecute(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure memoDescKeyPress(Sender: TObject; var Key: Char);
    procedure dbLcbFabricKeyPress(Sender: TObject; var Key: Char);
    procedure dbLcbNCMKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtDestaqueKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtNALADIKeyPress(Sender: TObject; var Key: Char);
    procedure dbLcbUniMedComercKeyPress(Sender: TObject; var Key: Char);
    procedure dbLcbUniMedEstatKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtRefProjetoKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtRefEmbKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtNSerieKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtPOKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtSeqPOKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtQtdKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtValUnitKeyPress(Sender: TObject; var Key: Char);    
    procedure dbLcbNCMExit(Sender: TObject);
    procedure dbEdtNCMKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtFabricKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtUniMedComercKeyPress(Sender: TObject; var Key: Char);
    procedure memoDescIngKeyPress(Sender: TObject; var Key: Char);
    procedure sblocfabClick(Sender: TObject);
    procedure btnlocfabcanClick(Sender: TObject);
    procedure btnlocfabOKClick(Sender: TObject);
    procedure btnfiltrarfabClick(Sender: TObject);
    procedure sbcadfabClick(Sender: TObject);
    procedure qrlocfabricanteAfterOpen(DataSet: TDataSet);
    procedure tbItensAfterPost(DataSet: TDataSet);
    procedure btnLocProOkClick(Sender: TObject);
    procedure btnLocProCancClick(Sender: TObject);
    procedure tbItensAfterScroll(DataSet: TDataSet);
    procedure EdtPsTotExit(Sender: TObject);
    procedure EdtPsTotKeyPress(Sender: TObject; var Key: Char);
    procedure EdtPsUnitExit(Sender: TObject);
    procedure EdtPsUnitKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtQtdExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_proItens : TF_proItens;
  vEmp, vFil, vPro, vFat, vImp, vProd, vExp, vExpn : String;
  qItem : String;
  vAlter : Boolean = False;
  incProd : Boolean = False;

implementation

uses
  U_MSCOMEX, u_profaturas, U_produtos, U_fabricantes;

{$R *.DFM}

procedure TF_proItens.FormActivate(Sender: TObject);
begin
  Left := 0;
  Top  := 0;

  with qrFabricantes do
   begin
     Close;
     Open;
   end;
end;

procedure TF_proItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  I: Integer;
begin
  if F_proFaturas <> nil
   then with F_proFaturas do
         begin
           pnlTop.Enabled       := True;
           pnlPrincipal.Enabled := True;
           pnlBaixo.Enabled     := True;
           btnItens.Enabled     := True;
           Show;
         end;

  for I := 0 to pred(ComponentCount) do
   begin
     if Components[I] is TQuery
      then TQuery(Components[I]).Close
      else if Components[I] is TTable
            then TTable(Components[I]).Close;
   end;

  F_proItens := Nil;
  Action := caFree;
end;

procedure TF_proItens.FormCreate(Sender: TObject);
begin
  vEmp := F_proFaturas.tbFaturasEmpresa.AsString;
  vFil := F_proFaturas.tbFaturasFilial.AsString;
  vPro := F_proFaturas.tbFaturasProcesso.AsString;
  vFat := F_proFaturas.tbFaturasCodigo.AsString;
  vImp := F_proFaturas.qrProcessosImportador.AsString;

  vExp := F_proFaturas.tbFaturasExportador.AsString;
  F_proFaturas.qrExportadores.Locate('Codigo',vExp,[]);
  vExpn := F_proFaturas.qrExportadoresrazao_social.asstring;

  me_nossaref.Text := vPro;
  edtFatura.Text := vFat;
  l_cliente.Caption := F_proFaturas.l_cliente.Caption;

  with qrFabricantes do
   begin
     Params[0].AsString := vEmp;
     Params[1].AsString := vFil;
   end;

  with qrNCM do
   begin
     Close;
     Open;
   end;
   
  with qrUniMedComerc do
   begin
     Close;
     Open;
   end;

  with qrUniMedEstat do
   begin
     Close;
     Open;
   end;

  with qrItens do
   begin
     Close;
     Params[0].AsString := vEmp;
     Params[1].AsString := vFil;
     Params[2].AsString := vPro;
     Params[3].AsString := vFat;
     Open;
   end;

  tbItens.Open;

  with qrSomaItens do
   begin
     Params[0].AsString := vEmp;
     Params[1].AsString := vFil;
     Params[2].AsString := vPro;
     Params[3].AsString := vFat;
   end;

  with qrSomaAcre do
   begin
     Params[0].AsString := vEmp;
     Params[1].AsString := vFil;
     Params[2].AsString := vPro;
     Params[3].AsString := vFat;
   end;
   
  with qrSomaRedu do
   begin
     Params[0].AsString := vEmp;
     Params[1].AsString := vFil;
     Params[2].AsString := vPro;
     Params[3].AsString := vFat;
   end;

  with qrUpFatura do
   begin
     Params[3].AsString := vEmp;
     Params[4].AsString := vFil;
     Params[5].AsString := vPro;
     Params[6].AsString := vFat;
   end;

  with qrTributacao do
   begin
     Params[0].AsString := vEmp;
     Params[1].AsString := vFil;
     Params[2].AsString := vPro;
     Params[3].AsString := vFat;
   end;

  with qrDelTributacao do
   begin
     Params[0].AsString := vEmp;
     Params[1].AsString := vFil;
     Params[2].AsString := vPro;
     Params[3].AsString := vFat;
   end;

  with qrUltimoItem do
   begin
     Params[0].AsString := vEmp;
     Params[1].AsString := vFil;
     Params[2].AsString := vPro;
     Params[3].AsString := vFat;
   end;

  with qrUpItens do
   begin
     Params[1].AsString := vEmp;
     Params[2].AsString := vFil;
     Params[3].AsString := vPro;
     Params[4].AsString := vFat;
   end;

  with qrSomaFaturas do
   begin
     Params[0].AsString := vEmp;
     Params[1].AsString := vFil;
     Params[2].AsString := vPro;
   end;

  with qrUpConhec do
   begin
     Params[1].AsString := vEmp;
     Params[2].AsString := vFil;
     Params[3].AsString := vPro;
   end;
end;

procedure TF_proItens.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if vAlter
   then FormDeactivate(Sender);

  if tbItens.State in [dsInsert, dsEdit]
   then Begin
     MessageDlg('O Item da Fatura está em edição!', mtInformation,[mbOk], 0);
     CanClose := False;
   end
   else CanClose := True;
end;

procedure TF_proItens.sbLimpaUniMedEstatClick(Sender: TObject);
begin
  tbItensUnidade_Medida_Estat.AsString := '';
end;

procedure TF_proItens.qrItensAfterOpen(DataSet: TDataSet);
begin
  dbGrdItens.Enabled := True;

  dbEdtPag.Enabled := False;
  dbEdtSeq.Enabled := False;

  dbmemoDesc.Enabled    := False;
  dbmemoDescIng.Enabled := False;

  dbEdtFabric.Enabled := False;
  dbLcbFabric.Enabled := False;

  dbEdtNCM.Enabled      := False;
  dbLcbNCM.Enabled      := False;
  dbEdtDestaque.Enabled := False;
  dbEdtNALADI.Enabled   := False;

  dbEdtUniMedComerc.Enabled := False;
  dbLcbUniMedComerc.Enabled := False;

  dbLcbUniMedEstat.Enabled := False;

  dbEdtRefProjeto.Enabled := False;
  dbEdtRefEmb.Enabled     := False;
  dbEdtNSerie.Enabled     := False;
  dbEdtPO.Enabled         := False;
  dbEdtSeqPO.Enabled      := False;
  dbEdtQtd.Enabled        := False;
  dbEdtValUnit.Enabled    := False;
  EdtPsUnit.Enabled       := False;
  EdtPsTot.Enabled        := false;
  sbLocProd.Enabled       := False;
  sbCadProd.Enabled       := False;

  if qrItens.RecordCount <> 0
   then begin
     btnAlterar.Enabled := True;
     btnExcluir.Enabled := True;

     if tbItens.State = dsInactive
      then tbItens.Open;
   end
   else begin
     tbItens.Close;
     btnAlterar.Enabled := False;
     btnExcluir.Enabled := False;
   end;

  btnIncluir.Enabled  := True;
  btnSair.Enabled     := True;
  btnSalvar.Enabled   := False;
  btnCancelar.Enabled := False;
end;

procedure TF_proItens.tbItensBeforeDelete(DataSet: TDataSet);
begin
  logusu('E','Excluiu o Item: '+tbItensSequencial.AsString+', da Fatura: '+vFat+', do Processo: '+vPro);
end;

procedure TF_proItens.btnIncluirClick(Sender: TObject);
var
  vSeq, vPag: String;
begin
  if (v_AlteraPRO = 1)
   then begin
     if qrItens.RecordCount <> 0
      then begin
        with qrUltimoItem do
         begin
           Close;
           Open;
         end;

        vSeq := IntToStr(StrToInt(qrUltimoItemSequencial.AsString)+1);
        vPag := qrUltimoItemPagina.AsString;
        qrUltimoItem.Close;
      end
      else begin
        tbItens.Open;
        vSeq := '1';
        vPag := '1';
      end;

     tbItens.Append;

     tbItensEmpresa.AsString    := vEmp;
     tbItensFilial.AsString     := vFil;
     tbItensProcesso.AsString   := vPro;
     tbItensFatura.AsString     := vFat;
     tbItensSequencial.AsString := vSeq;
     tbItensPagina.AsString     := vPag;

     dbEdtPag.Enabled := True;
     dbEdtSeq.Enabled := True;

     sbLocProd.Enabled := True;
     sbCadProd.Enabled := True;

     btnSalvar.Tag := 1;

     dbEdtFabric.Enabled := True;
     dbLcbFabric.Enabled := True;

     dbEdtUniMedComerc.Enabled := True;
     dbLcbUniMedComerc.Enabled := True;

     dbEdtRefProjeto.Enabled := True;
     dbEdtRefEmb.Enabled     := True;
     dbEdtNSerie.Enabled     := True;
     dbEdtPO.Enabled         := True;
     dbEdtSeqPO.Enabled      := True;
     dbEdtQtd.Enabled        := True;
     dbEdtValUnit.Enabled    := True;
     EdtPsUnit.Enabled       := True;
     EdtPsTot.Enabled        := true;

     btnSalvar.Enabled := True;

     vProd := '';

     dbEdtPag.SetFocus;

     if ((vImp = '252') or (vImp = '265'))
      then begin
        RB_Item_Admissivel_Sim.Enabled := true;
        RB_Item_Admissivel_Nao.Enabled := true;
      end
      else begin
        RB_Item_Admissivel_Sim.Enabled := false;
        RB_Item_Admissivel_Nao.Enabled := false;
      end;

     RB_Item_Admissivel_Sim.Checked := false;
     RB_Item_Admissivel_Nao.Checked := true;
   end
   else Showmessage(v_usuario+', ATENÇÃO! Acesso não permitido à processos sob Responsabilidade e/ou o processo está fechado e/ou o Cliente está Inativo.');
end;

procedure TF_proItens.btnAlterarClick(Sender: TObject);
begin
  if (v_AlteraPRO = 1)
   then begin
     tbItens.Edit;

     dbEdtPag.Enabled := True;
     dbEdtSeq.Enabled := True;

     sbLocProd.Enabled := True;
     sbCadProd.Enabled := True;

     dbEdtUniMedComerc.Enabled := True;
     dbLcbUniMedComerc.Enabled := True;

     dbEdtRefProjeto.Enabled := True;
     dbEdtRefEmb.Enabled     := True;
     dbEdtNSerie.Enabled     := True;
     dbEdtPO.Enabled         := True;
     dbEdtSeqPO.Enabled      := True;
     dbEdtQtd.Enabled        := True;
     dbEdtValUnit.Enabled    := True;
     EdtPsUnit.Enabled       := True;
     EdtPsTot.Enabled        := true;
     btnSalvar.Enabled       := True;

     btnSalvar.Tag := 2;
     vProd := tbitenssequencial_produto.asstring;
     dbEdtPag.SetFocus;

     if ((vImp = '252') or (vImp = '265'))
      then begin
        RB_Item_Admissivel_Sim.Enabled := true;
        RB_Item_Admissivel_Nao.Enabled := true;
      end
      else begin
        RB_Item_Admissivel_Sim.Enabled := false;
        RB_Item_Admissivel_Nao.Enabled := false;
      end;
   end
   else Showmessage(v_usuario+', ATENÇÃO! Acesso não permitido à processos sob Responsabilidade e/ou o processo está fechado e/ou o Cliente está Inativo.');     Showmessage(v_usuario+', este processo está fechado e/ou o Cliente está Inativo. Somente usuários habilitados para editar clientes inativos e/ou editar processos fechados, poderão alterar as informações do processo.');
end;

procedure TF_proItens.btnExcluirClick(Sender: TObject);
begin
  if (v_AlteraPRO = 1)
   then begin
     if MessageDlg('Confirma exclusão do Item da Fatura e as Tributações?', mtConfirmation,[mbYes, mbNo], 0) = mrNo
      then Exit;

     Screen.Cursor := crHourGlass;

     { EXCLUINDO TRIBUTAÇÃO DOS ITENS DA FATURA }
     with qrDelTributacao do
      begin
        Params[4].AsString := tbItensSequencial.AsString;
        ExecSQL;
      end;

     { EXCLUINDO ITENS DA FATURA }
     tbItens.Delete;

     with qrItens do
      begin
        Close;
        Open;
      end;

     dbGrdItens.SetFocus;
     vAlter := True;
     Screen.Cursor := crDefault;
   end
   else Showmessage(v_usuario+', ATENÇÃO! Acesso não permitido à processos sob Responsabilidade e/ou o processo está fechado e/ou o Cliente está Inativo.');     Showmessage(v_usuario+', este processo está fechado e/ou o Cliente está Inativo. Somente usuários habilitados para editar clientes inativos e/ou editar processos fechados, poderão alterar as informações do processo.');
end;

procedure TF_proItens.btnSalvarClick(Sender: TObject);
begin
  tbItensPagina.AsString := StringReplace(dbEdtPag.Text,' ','',[rfReplaceAll]);

  if dbEdtSeq.Text = 'XXX'
   then begin
     ShowMessage('Sequencial Inválido!');
     dbEdtSeq.SetFocus;
     Exit;
   end;

  if dbEdtPag.Text = ''
   then begin
     ShowMessage('A Página do Item não pode estar em branco!');
     dbEdtPag.SetFocus;
     Exit;
   end;

  tbItensSequencial.AsString := StringReplace(dbEdtSeq.Text,' ','',[rfReplaceAll]);

  if dbEdtSeq.Text = ''
   then begin
     ShowMessage('O Sequencial do Item não pode estar em branco!');
     dbEdtSeq.SetFocus;
     Exit;
   end;

  qItem := tbItensSequencial.AsString;
  tbItensSequencial.AsString := 'XXX';

  if (tbItensDescricao_Produto.AsString = '')
   then begin
     ShowMessage('A Descrição do Produto não pode estar em branco!');
     dbmemoDesc.SetFocus;
     dbEdtSeq.Text := qItem;
     Exit;
   end;

  if (tbItensDescricao_Produto_Ing.AsString = '')
   then begin
     ShowMessage('A Descrição em inglês do Produto não pode estar em branco!');
     dbmemoDescIng.SetFocus;
     dbEdtSeq.Text := qItem;
     Exit;
   end;

  if dbEdtFabric.Text = ''
   then begin
     ShowMessage('O Fabricante não pode estar em branco!');
     dbEdtFabric.SetFocus;
     dbEdtSeq.Text := qItem;
     Exit;
   end
   else if dbLcbFabric.Text = ''
         then begin
           ShowMessage('Código do Fabricante inválido!');
           dbEdtFabric.SetFocus;
           dbEdtSeq.Text := qItem;
           Exit;
         end;

  //verificar se fabricante = exportador da fatura
  if qrFabricantesrazao_social.asstring = vExpn
   then begin
     if MessageDlg(v_usuario+', Atenção! Confirma Fabricante igual ao Exportador?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
      then logusu('A','CONFIRMOU AVISO FABRICANTE = EXPORTADOR, ITEM SEQUENCIAL: '+tbItensSequencial.AsString+', da Fatura: '+vFat+', do Processo: '+vPro)
      else begin
        logusu('A','NÃO CONFIRMOU AVISO FABRICANTE = EXPORTADOR, ITEM SEQUENCIAL: '+tbItensSequencial.AsString+', da Fatura: '+vFat+', do Processo: '+vPro);
        dblcbfabric.SetFocus;
        exit;
      end;
   end;

  if (dbEdtNCM.Text <> '') and (dbLcbNCM.Text = '')
   then begin
     ShowMessage('Código do NCM inválido!');
     dbEdtNCM.SetFocus;
     dbEdtSeq.Text := qItem;
     Exit;
   end;

  if (dbEdtNCM.Text = '85234920')
   then if (Trim(dbEdtValUnit.Text) <> '')
         then begin
           try
             StrToFloat(dbEdtValUnit.Text);

             if StrToFloat(dbEdtValUnit.Text) >= 100
              then begin
                MessageDlg('Atenção, valor unitário inválido para item com esse NCM.'
                          +#13#10 + 'Obs: Não informar o valor do programa e sim o valor do meio físico (CD).', mtInformation,[mbOk], 0);
                dbEdtValUnit.SetFocus;
                Exit;
              end;
           except
             MessageDlg('Atenção, valor unitário inválido para item com esse NCM.'
                       +#13#10 + 'Obs: Não informar o valor do programa e sim o valor do meio físico (CD).', mtInformation,[mbOk], 0);
             dbEdtValUnit.SetFocus;
             Exit;
           end;
         end;   

  if (dbLcbUniMedComerc.Text = '')
   then begin
     ShowMessage('Código da Unidade de Medida Comercializada inválido!');
     dbEdtUniMedComerc.SetFocus;
     dbEdtSeq.Text := qItem;
     Exit;
   end;

  if dbEdtQtd.Text = ''
   then dbEdtQtd.Text := '1';

  if StrToFloat(dbEdtQtd.Text) <= 0
   then begin
     ShowMessage('A Quantidade deve ser maior que zero!');
     dbEdtQtd.SetFocus;
     dbEdtSeq.Text := qItem;
     Exit;
   end;

  tbItensSaldo_Tributavel.AsString := dbEdtQtd.Text;

  if dbEdtValUnit.Text = ''
   then dbEdtValUnit.Text := '1';

  if StrToFloat(dbEdtValUnit.Text) <= 0
   then begin
     ShowMessage('O Valor Unitário deve ser maior que zero!');
     dbEdtValUnit.SetFocus;
     dbEdtSeq.Text := qItem;
     Exit;
   end;

  if EdtPsUnit.Text = ''
   then EdtPsUnit.Text := '0';

  if StrToFloat(EdtPsUnit.Text) < 0
   then begin
     ShowMessage('O Peso Unitário deve ser maior ou igual a zero!');
     EdtPsUnit.SetFocus;
     dbEdtSeq.Text := qItem;
     Exit;
   end;

  tbItensDestaque_NCM.AsString       := Trim(dbEdtDestaque.Text);
  tbItensNALADI.AsString             := Trim(dbEdtNALADI.Text);
  tbItensReferencia_projeto.AsString := Trim(dbEdtRefProjeto.Text);
  tbItensReferencia.AsString         := Trim(dbEdtRefEmb.Text);
  tbItensNumero_serie.AsString       := Trim(dbEdtNSerie.Text);

  if dbEdtNSerie.Text = ''
   then tbItensNumero_serie.AsString := '.';

  tbItensPO.AsString    := Trim(dbEdtPO.Text);
  tbItensSeqpo.AsString := Trim(dbEdtSeqPO.Text);

  tbItensValor_Total.AsFloat   := StrToFloat(dbEdtQtd.Text) * StrToFloat(dbEdtValUnit.Text);
  tbItensPeso_Unitario.AsFloat := StrToFloat(EdtPsUnit.Text);
  tbItensPeso_Total.AsFloat    := StrToFloat(dbEdtQtd.Text) * StrToFloat(EdtPsUnit.Text);

  if RB_Item_Admissivel_Sim.Checked = true
   then tbitensItem_Admissivel.AsInteger := 1;
   
  if RB_Item_Admissivel_Nao.Checked = true
   then tbitensItem_Admissivel.AsInteger := 0;

  if btnSalvar.Tag = 1
   then begin
     tbItensPeso_Unitario_Acertado.AsFloat := StrToFloat(EdtPsUnit.Text);
     tbItensPeso_Total_Acertado.AsFloat := StrToFloat(dbEdtQtd.Text) * StrToFloat(EdtPsUnit.Text);
   end
   else begin
     tbItensPeso_Unitario_Acertado.AsFloat := 0;
     tbItensPeso_Total_Acertado.AsFloat := 0;
     logusu('A','ALTERAÇÃO / PESOS ACERTADOS, Alteração de item da Fatura: '+vFat+', do Processo: '+vPro);
     showmessage(v_usuario+', ATENÇÃO!! Peso acertado deste item foi ZERADO. Favor verificar/processar o acerto de peso da fatura (por valor ou pelos pesos informados nos itens)!');
   end;

  Screen.Cursor := crHourGlass;

  if (btnSalvar.Tag = 1) or ((btnSalvar.Tag = 2) and (qItem <> qrItensSequencial.AsString))
   then begin
     with qrUltimoItem do
      begin
        Close;
        Open;
      end;

     if qrUltimoItem.Locate('Sequencial',qItem,[])
      then if MessageDlg('Sequencial já existente! Deseja inclui-lo mesmo assim?', mtConfirmation, [mbYes,mbNo], 0) = mrNo
            then begin
              dbEdtSeq.Text := qItem;
              dbEdtSeq.SetFocus;
              Screen.Cursor := crDefault;
              Exit;
            end
            else begin
              tbItens.Post;
              acRemanejar.Execute;
              tbItens.Edit;
            end;
   end;

  { SALVANDO O ITEM }
  tbItensSequencial.AsString := qItem;
  tbItensAcresc_reduc_Valaduan.AsFloat := 0.00;
  logusu('P','Alterou o Item: '+tbItensSequencial.AsString+', da Fatura: '+vFat+', do Processo: '+vPro);
  
  try
    acIncluirProduto.Execute;
    tbItens.Post;
  except
    MessageDlg('Erro na gravação do Item da Fatura!', mtInformation,[mbOk], 0);
    dbEdtSeq.SetFocus;
    Screen.Cursor := crDefault;
    Exit;
  end;

  if btnSalvar.Tag = 2
   then begin
     MessageDlg('ATENÇÃO! Alteração de um item já tributado, será necessário tributa-lo novamente.', mtInformation,[mbOk], 0);

     with qrDelTributacao do
      begin
        Params[4].AsString := tbItensSequencial.AsString;
        ExecSQL;
      end;

     if (( dbEdtQtd.Text > '0') or (tbItensquantidade.AsString <> tbItensSaldo_Tributavel.AsString))
      then begin
        tbItens.edit;
        tbItensSaldo_Tributavel.AsString := tbItensquantidade.AsString;
        tbItens.Post;
      end
      else begin
        ShowMessage ('Por favor, informar a quantidade do item da fatura diferente zero(0).');
        dbEdtQtd.SetFocus;
        exit;
      end;
   end;

  with qrItens do
   begin
     Close;
     Open;
     Locate('Sequencial',qItem,[]);
   end;

  btnSalvar.Tag := 0;
  dbGrdItens.SetFocus;
  vAlter := True;
  incProd := False;
  Screen.Cursor := crDefault;
  RB_Item_Admissivel_Sim.Enabled := false;
  RB_Item_Admissivel_Nao.Enabled := false;
end;

procedure TF_proItens.btnCancelarClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

  tbItens.Cancel;
  qrItens.Locate('Sequencial', qrItensSequencial.AsString, []);

  btnSalvar.Tag := 0;
  dbGrdItens.SetFocus;
  incProd := False;
  Screen.Cursor := crDefault;
  RB_Item_Admissivel_Sim.Enabled := false;
  RB_Item_Admissivel_Nao.Enabled := false;

  if tbitensItem_Admissivel.AsString = '0'
   then begin
     RB_Item_Admissivel_Sim.Checked := false;
     RB_Item_Admissivel_Nao.Checked := true;
   end;

  if tbitensItem_Admissivel.AsString = '1'
   then begin
     RB_Item_Admissivel_Sim.Checked := true;
     RB_Item_Admissivel_Nao.Checked := false;
   end;
end;

procedure TF_proItens.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TF_proItens.sbCadProdClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

  if not Assigned(F_Produtos)
   then Application.CreateForm(TF_Produtos, F_Produtos);

  F_Produtos.Show;
  f_mscomex.produtos1.Enabled := False;
  Screen.Cursor := crDefault;
end;

procedure TF_proItens.sbLocProdClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

  pnlLocProdutoS.Left    := 65;
  pnlLocProdutoS.Top     := 44;
  pnlLocProdutoS.Height  := 361;
  pnlLocProdutoS.width   := 649;
  
  pnlLocProdutoS.Visible := True;

  MELocProdUTOS.SetFocus;
  Screen.Cursor := crDefault;
end;

procedure TF_proItens.btnFiltrarProdClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  qrLocProdutos.close;
  qrLocProdutos.Params[0].AsString := '%'+ meLocProdutos.Text +'%';
  qrLocProdutos.Params[1].AsString := '%'+ meLocProdutos.Text +'%';
  qrLocProdutos.Params[2].AsString := '%'+ meLocProdutos.Text +'%';
  qrLocProdutos.Params[3].AsString := '%'+ meLocProdutos.Text +'%';

  qrLocProdutos.Params[4].AsString := vimp;
  qrLocProdutos.Params[5].AsString := '%';

  qrLocProdutos.Open;
  Screen.Cursor := crDefault;
  dbGrdProdutos.SetFocus;
end;

procedure TF_proItens.qrLocProdutosAfterOpen(DataSet: TDataSet);
begin
  if qrLocProdutos.RecordCount <> 0
   then btnLocProOk.Enabled := True
   else btnLocProOk.Enabled := False;
end;

procedure TF_proItens.acAtuFaturaExecute(Sender: TObject);
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

  if F_proFaturas.tbFaturasAcrescimos_Reducoes.Asinteger = 0
   then begin
     // Eduardo Souza - 22/03/20013 - Frente Incluso
     qrSomaAcre.Close;

     if(F_proFaturas.tbFaturasFrete_Incluso.AsInteger = 1)
      then qrSomaAcre.ParamByName('codAcres').Value := '13'
      else qrSomaAcre.ParamByName('codAcres').Value := '';
     //--

     qrSomaAcre.Open;
     valAcre := qrSomaAcreValTot.AsFloat;

     qrSomaRedu.Open;
     valRedu := qrSomaReduValTot.AsFloat;

     qrSomaAcre.Close;
     qrSomaRedu.Close;
   end;

  qrUpFatura.Params[0].AsFloat := valItem + valAcre - valRedu;
  qrUpFatura.Params[1].AsFloat := qrSomaItensSomaPesoTotal.AsFloat;
  qrUpFatura.Params[2].AsFloat := qrSomaItensSomaPesoAcertado.AsFloat;
  qrUpFatura.ExecSQL;

  qrSomaFaturas.Close;
  qrSomaFaturas.Open;

  if F_proFaturas.tbFaturaspeso_libra.asinteger = 1
   then qrUpConhec.Params[0].AsFloat := (qrSomaFaturasSomaPesoAcertado.AsFloat*0.4536)
   else qrUpConhec.Params[0].AsFloat := qrSomaFaturasSomaPesoAcertado.AsFloat;

  qrUpConhec.ExecSQL;

  qrSomaItens.Close;
end;

procedure TF_proItens.dbEdtPagChange(Sender: TObject);
var
  tPos: Integer;
begin
  tPos := dbEdtPag.SelStart;
  dbEdtPag.Text := StringReplace(dbEdtPag.Text,' ','',[rfReplaceAll]);
  dbEdtPag.SelStart := tPos;
end;

procedure TF_proItens.dbEdtPagKeyPress(Sender: TObject; var Key: Char);
var
  tPos: Integer;
begin
  if Key = #13
   then begin
     dbEdtSeq.SetFocus;
     Exit;
   end;

  tPos := dbEdtPag.SelStart;

  if not(Key In ['0'..'9',#8])
   then begin
     Key := ' ';

     if Length(dbEdtPag.Text) = dbEdtPag.MaxLength
      then dbEdtPag.SelStart := tPos
      else dbEdtPag.SelStart := tPos-1;
   end;
end;

procedure TF_proItens.dbEdtSeqChange(Sender: TObject);
var
  tPos: Integer;
begin
  tPos := dbEdtSeq.SelStart;
  dbEdtSeq.Text := StringReplace(dbEdtSeq.Text,' ','',[rfReplaceAll]);
  dbEdtSeq.SelStart := tPos;
end;

procedure TF_proItens.dbEdtSeqKeyPress(Sender: TObject; var Key: Char);
var
  tPos: Integer;
begin
  if Key = #13
   then begin
     dbEdtfabric.SetFocus;
     Exit;
   end;

  tPos := dbEdtSeq.SelStart;

  if Not(Key In ['0'..'9',#8])
   then begin
     Key := ' ';

     if Length(dbEdtSeq.Text) = dbEdtSeq.MaxLength
      then dbEdtSeq.SelStart := tPos
      else dbEdtSeq.SelStart := tPos-1;
   end;
end;

procedure TF_proItens.tbItensAfterEdit(DataSet: TDataSet);
begin
  dbGrdItens.Enabled  := False;
  btnIncluir.Enabled  := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnSair.Enabled     := False;
  btnCancelar.Enabled := True;
end;

procedure TF_proItens.acRemanejarExecute(Sender: TObject);
var
  k: Integer;
  new: String;
begin
  with qrUltimoItem do
   begin
     Close;
     k := SQL.Count-1;
     SQL.Insert(k,' AND Cast(Sequencial as Real) >= '+ qItem + ' AND Sequencial <> ''XXX'' ');
     Open;

     while not Eof do
      begin
        new := IntToStr(qrUltimoItemSequencial.AsInteger + 1);

        with qrUpItens do
         begin
           Params[0].AsString := new;
           Params[5].AsString := qrUltimoItemSequencial.AsString;
           ExecSQL;
         end;

        with qrDelTributacao do
         begin
           Params[4].AsString := new;
           ExecSQL;
         end;

        Next;
      end;

     Close;
     SQL.Delete(k);
   end;

  with qrUpItens do
   begin
     Params[0].AsString := qItem;
     Params[5].AsString := 'XXX';
     ExecSQL;
   end;
end;


procedure TF_proItens.FormDeactivate(Sender: TObject);
begin
  if not vAlter
   then Exit;

  Screen.Cursor := crHourGlass;

  { ATUALIZA SALDOS DA FATURA }
  acAtuFatura.Execute;

  f_mscomex.AtualizaTaxaConversao(vPro);

  with F_proFaturas.qrFaturas do
   begin
     Close;
     Open;
     Locate('Codigo',vFat,[]);
   end;

  vAlter := False;
  Screen.Cursor := crDefault;
end;

procedure TF_proItens.memoDescKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13
   then begin
     ShowMessage('Para pular de linha preencha com espaços!');
     Key := #0;
   end;
end;

procedure TF_proItens.dbLcbFabricKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13
   then dbEdtNCM.SetFocus;
end;

procedure TF_proItens.dbLcbNCMKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13
   then dbEdtDestaque.SetFocus;
end;

procedure TF_proItens.dbEdtDestaqueKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13
   then dbEdtNALADI.SetFocus;
end;

procedure TF_proItens.dbEdtNALADIKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13
   then dbEdtUniMedComerc.SetFocus;
end;

procedure TF_proItens.dbLcbUniMedComercKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13
   then dbLcbUniMedEstat.SetFocus;
end;

procedure TF_proItens.dbLcbUniMedEstatKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13
   then dbEdtRefProjeto.SetFocus;
end;

procedure TF_proItens.dbEdtRefProjetoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13
   then dbEdtRefEmb.SetFocus;
end;

procedure TF_proItens.dbEdtRefEmbKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13
   then dbEdtNSerie.SetFocus;
end;

procedure TF_proItens.dbEdtNSerieKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13
   then dbEdtPO.SetFocus;
end;

procedure TF_proItens.dbEdtPOKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13
   then dbEdtSeqPO.SetFocus;
end;

procedure TF_proItens.dbEdtSeqPOKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13
   then dbEdtQtd.SetFocus;
end;

procedure TF_proItens.dbEdtQtdKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13
   then dbEdtValUnit.SetFocus;
end;

procedure TF_proItens.dbEdtValUnitKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13
   then EdtPsUnit.SetFocus;
end;

procedure TF_proItens.dbLcbNCMExit(Sender: TObject);
begin
  if tbItens.State in [dsInsert, dsEdit]
   then tbItensUnidade_Medida_Estat.AsString := qrNCMUNIDADE_MEDIDA.AsString;
end;

procedure TF_proItens.dbEdtNCMKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13
   then dbLcbNCM.SetFocus;
end;

procedure TF_proItens.dbEdtFabricKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13
   then dbLcbFabric.SetFocus;
end;

procedure TF_proItens.dbEdtUniMedComercKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13
   then dbLcbUniMedComerc.SetFocus;
end;

procedure TF_proItens.memoDescIngKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13
   then begin
     ShowMessage('Para pular de linha preencha com espaços!');
     Key := #0;
   end;
end;

procedure TF_proItens.sblocfabClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  
  with pnlLocfabricante do
   begin
     Left   := 67;
     Top    := 101;
     Height := 285;
     
     Visible := True;
   end;

  pnlTop.Enabled       := False;
  pnlPrincipal.Enabled := False;
  pnlBaixo.Enabled     := False;
  
  edtLocfab.SetFocus;
  Screen.Cursor := crDefault;
end;

procedure TF_proItens.btnlocfabcanClick(Sender: TObject);
begin
  pnlLocfabricante.Visible := False;
  pnlTop.Enabled           := True;
  pnlPrincipal.Enabled     := True;
  pnlBaixo.Enabled         := True;
end;

procedure TF_proItens.btnlocfabOKClick(Sender: TObject);
begin
  tbItensFabricante.AsString := qrLocFabricanteCODIGO.AsString;
  pnlLocFabricante.Visible   := False;
  pnlTop.Enabled             := True;
  pnlPrincipal.Enabled       := True;
  pnlBaixo.Enabled           := True;
  
  dblcbfabric.SetFocus;
end;

procedure TF_proItens.btnfiltrarfabClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  
  with qrLocfabricante do
   begin
     Filtered := False;
     Close;
     Params[0].AsString := v_empresa;
     Params[1].AsString := v_filial;
     Params[2].AsString := '%'+ edtLocfab.Text +'%';
     Open;
   end;

  Screen.Cursor := crDefault;
  dbglocfab.SetFocus;
end;

procedure TF_proItens.sbcadfabClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

  if not assigned (F_Fabricantes)
   then Application.CreateForm(TF_fabricantes, F_fabricantes);

  F_fabricantes.show;
  Screen.Cursor := crDefault;
end;

procedure TF_proItens.qrlocfabricanteAfterOpen(DataSet: TDataSet);
begin
  if qrLocfabricante.RecordCount <> 0
   then btnLocfabOk.Enabled := True
   else btnLocfabOk.Enabled := False;
end;

procedure TF_proItens.tbItensAfterPost(DataSet: TDataSet);
begin
  f_mscomex.MSPGP(me_nossaref.text);
  tbItens.refresh;
end;

procedure TF_proItens.btnLocProOkClick(Sender: TObject);
begin
  tbitens.edit;
  tbitensfabricante.asstring            := qrlocprodutoscodfab.asstring;
  tbitenscodigo_produto.asstring        := qrlocprodutoscodigo.asstring;
  tbitensproduto.asstring               := qrlocprodutospart_number.asstring;
  tbitensdescricao_produto.asstring     := qrlocprodutosdescricao.asstring;
  tbitensdescricao_produto_ing.asstring := qrlocprodutosdescricao_ing.asstring;

  tbitensncm.asstring                  := qrlocprodutosncm.asstring;
  tbitensdestaque_ncm.asstring         := qrlocprodutosdestaque_ncm.asstring;
  tbitensnaladi.asstring               := qrlocprodutosnaladi.asstring;
  tbitensunidade.asstring              := qrlocprodutosunidade.asstring;
  tbitensunidade_medida_estat.asstring := qrlocprodutosunidade_medida_estat.asstring;

  tbitenssequencial_produto.asinteger := qrlocprodutosreg.asinteger;

  pnlLocProdutoS.Visible := false;
end;

procedure TF_proItens.btnLocProCancClick(Sender: TObject);
begin
  pnlLocProdutoS.Visible := false;
end;

procedure TF_proItens.tbItensAfterScroll(DataSet: TDataSet);
begin
  EdtPsUnit.Text := tbItensPeso_Unitario.Asstring;
  EdtPsTot.Text  := tbItensPeso_Total.Asstring;

  if tbitensItem_Admissivel.AsString = '0'
   then begin
     RB_Item_Admissivel_Sim.Checked := false;
     RB_Item_Admissivel_Nao.Checked := true;
   end;

  if tbitensItem_Admissivel.AsString = '1'
   then begin
     RB_Item_Admissivel_Sim.Checked := true;
     RB_Item_Admissivel_Nao.Checked := false;
   end;
end;

procedure TF_proItens.EdtPsTotExit(Sender: TObject);
begin
  EdtPsUnit.Text :=  floattostr( StrToFloat(EdtPsTot.Text) / StrToFloat(dbEdtQtd.Text) );
end;

procedure TF_proItens.EdtPsTotKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13
   then btnSalvar.SetFocus;
end;

procedure TF_proItens.EdtPsUnitExit(Sender: TObject);
begin
  EdtPsTot.Text := floattostr(StrToFloat(EdtPsUnit.Text) * StrToFloat(dbEdtQtd.Text));
end;

procedure TF_proItens.EdtPsUnitKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13
   then edtpstot.SetFocus;
end;

procedure TF_proItens.dbEdtQtdExit(Sender: TObject);
begin
  if EdtPsUnit.Text = ''
   then EdtPsUnit.Text := '0';

  EdtPsTot.Text :=  floattostr(StrToFloat(EdtPsUnit.Text) * StrToFloat(dbEdtQtd.Text));
end;

end.
