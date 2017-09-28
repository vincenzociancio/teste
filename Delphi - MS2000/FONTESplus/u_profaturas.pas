unit u_profaturas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Db, Grids, DBGrids, DBTables, Buttons, ComCtrls, Mask,
  ExtCtrls, ComObj, jpeg, ActnList;

{uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, Db, DBTables, DBCtrls, Grids, DBGrids, Buttons,
  ActnList, jpeg;/}

type
  TF_proFaturas = class(TForm)
    qrProcessos: TQuery;
    dsQProcessos: TDataSource;
    pnlPrincipal: TPanel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label29: TLabel;
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
    dbGrdFaturas: TDBGrid;
    qrFaturas: TQuery;
    dsQFaturas: TDataSource;
    tbFaturas: TTable;
    dsFaturas: TDataSource;
    dbEdtFatura: TDBEdit;
    dbLcbIncoterm: TDBLookupComboBox;
    dbEdtLocal: TDBEdit;
    dbLcbMoeda: TDBLookupComboBox;
    dbEdtValTot: TDBEdit;
    dbEdtPsTot: TDBEdit;
    dbEdtPsAcertado: TDBEdit;
    qrMoeda: TQuery;
    qrMoedaCODIGO: TStringField;
    qrMoedaDESCRICAO: TStringField;
    dsMoeda: TDataSource;
    dbLcbExportadores: TDBLookupComboBox;
    qrIncoterm: TQuery;
    dsIncoterm: TDataSource;
    qrExportadores: TQuery;
    dsExportadores: TDataSource;
    qrIncotermCodigo: TStringField;
    qrIncotermDescricao: TStringField;
    Label1: TLabel;
    dbLcbVinc: TDBLookupComboBox;
    qrVinc: TQuery;
    dsVinc: TDataSource;
    sbLimpaVinc: TSpeedButton;
    qrTributacao: TQuery;
    qrDelTributacao: TQuery;
    qrItens: TQuery;
    qrDelItens: TQuery;
    btnItens: TBitBtn;
    pnlTotPag: TPanel;
    dbGrdTotPag: TDBGrid;
    btnOk: TBitBtn;
    Panel7: TPanel;
    pnlRecalculo: TPanel;
    Label170: TLabel;
    mePesoInformado: TMaskEdit;
    Panel1: TPanel;
    qrTotPag: TQuery;
    dsTotPag: TDataSource;
    btnRecOk: TBitBtn;
    btnRecCanc: TBitBtn;
    qrUpItens: TQuery;
    qrMoedaConv: TQuery;
    btnAcrescimo: TBitBtn;
    btnReducao: TBitBtn;
    btnCambio: TBitBtn;
    sbRecalculo: TSpeedButton;
    sbTotPag: TSpeedButton;
    sbEuro: TSpeedButton;
    Bevel1: TBevel;
    qrIncConhec: TQuery;
    qrConhec: TQuery;
    qrSomaFaturas: TQuery;
    qrUpConhec: TQuery;
    alAtuTabelas: TActionList;
    acAtuTabelas: TAction;
    acAtuFatura: TAction;
    qrSomaAcre: TQuery;
    qrSomaRedu: TQuery;
    qrSomaItens: TQuery;
    qrDelReducao: TQuery;
    qrDelAcrescimo: TQuery;
    btnTraCla: TBitBtn;
    dbEdtMoeda: TDBEdit;
    Label2: TLabel;
    dbedtdtemissao: TDBEdit;
    dbEdtExportador: TDBEdit;
    qrRENUFAT: TQuery;
    acRENUFAT: TAction;
    sb_planilhaitens: TSpeedButton;
    Image1: TImage;
    q_plafat: TQuery;
    dbcblibra: TDBCheckBox;
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
    qrProcessosImportador: TStringField;
    qrProcessosqresp: TStringField;
    qrProcessosCGC_CPF: TStringField;
    qrProcessosqcnpj: TStringField;
    qrProcessosqdi: TStringField;
    qrProcessosFechado: TSmallintField;
    qrProcessosATIVO: TSmallintField;
    qrProcessosResponsavel_empresa: TStringField;
    qrProcessosResponsavel_empresac: TStringField;
    qrVincCodigo: TStringField;
    qrVincDescricao: TStringField;
    qrTributacaoEmpresa: TStringField;
    qrTributacaoFilial: TStringField;
    qrTributacaoProcesso: TStringField;
    qrTributacaoFatura: TStringField;
    qrTributacaoSequencial_Item: TStringField;
    qrTributacaoSequencial: TStringField;
    qrMoedaConvCODIGO: TStringField;
    qrMoedaConvDESCRICAO: TStringField;
    qrMoedaConvTaxa_conversao: TFloatField;
    qrTotPagEmpresa: TStringField;
    qrTotPagFilial: TStringField;
    qrTotPagProcesso: TStringField;
    qrTotPagFatura: TStringField;
    qrTotPagPagina: TStringField;
    qrTotPagSomaDeQuantidade: TFloatField;
    qrTotPagSomaDeValorTotal: TFloatField;
    qrTotPagSomaDePesoUnitario: TFloatField;
    qrTotPagSomaDePesoTotal: TFloatField;
    qrSomaAcreValTot: TFloatField;
    qrSomaReduValTot: TFloatField;
    qrSomaFaturasEmpresa: TStringField;
    qrSomaFaturasFilial: TStringField;
    qrSomaFaturasProcesso: TStringField;
    qrSomaFaturasSomaPesoAcertado: TFloatField;
    qrFaturasEmpresa: TStringField;
    qrFaturasFilial: TStringField;
    qrFaturasProcesso: TStringField;
    qrFaturasCodigo: TStringField;
    qrFaturasIncoterm: TStringField;
    qrFaturasExportador: TStringField;
    qrFaturasCondicao: TStringField;
    qrFaturasMoeda: TStringField;
    qrFaturasValor_Total: TFloatField;
    qrFaturasPeso_Total: TFloatField;
    qrFaturasPeso_Total_Acertado: TFloatField;
    qrFaturasVinculacao: TStringField;
    qrFaturasAcrescimos_Reducoes: TSmallintField;
    qrFaturaspeso_LIbra: TSmallintField;
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
    qrSomaItensEmpresa: TStringField;
    qrSomaItensFilial: TStringField;
    qrSomaItensProcesso: TStringField;
    qrSomaItensFatura: TStringField;
    qrSomaItensSomaValorTotal: TFloatField;
    qrSomaItensSomaPesoTotal: TFloatField;
    qrSomaItensSomaPesoAcertado: TFloatField;
    q_plafatEmpresa: TStringField;
    q_plafatFilial: TStringField;
    q_plafatProcesso: TStringField;
    q_plafatFatura: TStringField;
    q_plafatPag: TFloatField;
    q_plafatSeq: TFloatField;
    q_plafatProduto: TStringField;
    q_plafatDescricao_Produto: TMemoField;
    q_plafatFabricante: TStringField;
    q_plafatNCM: TStringField;
    q_plafatUnidade: TStringField;
    q_plafatUnidade_Medida_Estat: TStringField;
    q_plafatDestaque_NCM: TStringField;
    q_plafatNALADI: TStringField;
    q_plafatReferencia: TStringField;
    q_plafatNumero_serie: TStringField;
    q_plafatReferencia_projeto: TStringField;
    q_plafatPO: TStringField;
    q_plafatSeqpo: TStringField;
    q_plafatQuantidade: TFloatField;
    q_plafatValor_Unitario: TFloatField;
    q_plafatValor_Total: TFloatField;
    q_plafatPeso_Unitario: TFloatField;
    q_plafatPeso_Unitario_Acertado: TFloatField;
    q_plafatPeso_Total: TFloatField;
    q_plafatPeso_Total_Acertado: TFloatField;
    q_plafatDescricao_Produto_ing: TMemoField;
    tbFaturasEmpresa: TStringField;
    tbFaturasFilial: TStringField;
    tbFaturasProcesso: TStringField;
    tbFaturasCodigo: TStringField;
    tbFaturasExportador: TStringField;
    tbFaturasIncoterm: TStringField;
    tbFaturasVinculacao: TStringField;
    tbFaturasCondicao: TStringField;
    tbFaturasValor_Total: TFloatField;
    tbFaturasPeso_Total: TFloatField;
    tbFaturasPeso_Total_Acertado: TFloatField;
    tbFaturasMoeda: TStringField;
    tbFaturasCobertura_Cambial: TStringField;
    tbFaturasMotivo_Sem_Cobertura: TStringField;
    tbFaturasModalidade_de_Pagamento: TStringField;
    tbFaturasInstituicao_Financiadora: TStringField;
    tbFaturasTipo_Parcela: TStringField;
    tbFaturasNumero_de_parcelas: TStringField;
    tbFaturasPeriodicidade: TStringField;
    tbFaturasValor_das_Parcelas: TFloatField;
    tbFaturasIndicador_Periodicidade: TStringField;
    tbFaturasTaxa_de_Juros: TSmallintField;
    tbFaturasCodigo_Taxa_de_Juros: TStringField;
    tbFaturasValor_Taxa_de_Juros: TFloatField;
    tbFaturasROF_BACEN: TStringField;
    tbFaturasPercentual_ROF: TFloatField;
    tbFaturasDT_PREV_PAG_CAMBIO: TDateTimeField;
    tbFaturasDT_PAG_CAMBIO: TDateTimeField;
    tbFaturasSTATUS_CAMBIO: TStringField;
    tbFaturasCONTRATO_CAMBIO: TStringField;
    tbFaturasSALDO_CAMBIO: TFloatField;
    tbFaturasDtEmissao: TDateTimeField;
    tbFaturasPeso_Libra: TSmallintField;
    qrExportadoresCodigo: TStringField;
    qrExportadoresRazao_Social: TStringField;
    cbacrescimo: TCheckBox;
    dblcPlataforma: TDBLookupComboBox;
    Label3: TLabel;
    dtsPlataforma: TDataSource;
    qryPlataforma: TQuery;
    qryPlataformaPK_Plataforma: TAutoIncField;
    qryPlataformaPlataforma: TStringField;
    tbFaturasFK_Plataforma: TIntegerField;
    qrProcessosSupervisor_Resp: TStringField;
    qrProcessosCoordenador_Resp: TStringField;
    GroupBox1: TGroupBox;
    lblRepetro: TLabel;
    lblIns: TLabel;
    lblDescricao: TLabel;
    lblRepetroResp: TLabel;
    qrProcessosContrato: TStringField;
    Label4: TLabel;
    Label5: TLabel;
    qrProcessosTipo: TStringField;
    btnAcrescICMS: TBitBtn;
    ckbFrenteIncluso: TCheckBox;
    tbFaturasFrete_Incluso: TIntegerField;
    tbFaturasAcrescimos_Reducoes: TIntegerField;
    Label6: TLabel;
    dbePaisOrigem: TDBEdit;
    dbLcbPaisDeOrigem: TDBLookupComboBox;
    qrPais: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    dsPais: TDataSource;
    tbFaturasContrato: TStringField;
    tbFaturasLocal_Inventario: TStringField;
    tbFaturasPaisOrigem: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure ME_nossarefChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure sbLimpaVincClick(Sender: TObject);
    procedure qrFaturasAfterOpen(DataSet: TDataSet);
    procedure tbFaturasAfterPost(DataSet: TDataSet);
    procedure tbFaturasBeforeDelete(DataSet: TDataSet);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnItensClick(Sender: TObject);
    procedure sbRecalculoClick(Sender: TObject);
    procedure sbTotPagClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnRecCancClick(Sender: TObject);
    procedure btnRecOkClick(Sender: TObject);
    procedure sbEuroClick(Sender: TObject);
    procedure qrFaturasAfterScroll(DataSet: TDataSet);
    procedure btnAcrescimoClick(Sender: TObject);
    procedure btnReducaoClick(Sender: TObject);
    procedure mePesoInformadoChange(Sender: TObject);
    procedure mePesoInformadoKeyPress(Sender: TObject; var Key: Char);
    procedure btnCambioClick(Sender: TObject);
    procedure tbFaturasAfterEdit(DataSet: TDataSet);
    procedure dbEdtFaturaKeyPress(Sender: TObject; var Key: Char);
    procedure dbLcbIncotermKeyPress(Sender: TObject; var Key: Char);
    procedure dbLcbExportadoresKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtLocalKeyPress(Sender: TObject; var Key: Char);
    procedure dbLcbMoedaKeyPress(Sender: TObject; var Key: Char);
    procedure dbLcbVincKeyPress(Sender: TObject; var Key: Char);
    procedure dbCbAcrescimoKeyPress(Sender: TObject; var Key: Char);
    procedure acAtuTabelasExecute(Sender: TObject);
    procedure acAtuFaturaExecute(Sender: TObject);
    procedure btnTraClaClick(Sender: TObject);
    procedure dbEdtMoedaKeyPress(Sender: TObject; var Key: Char);
    procedure acRENUFATExecute(Sender: TObject);
    procedure sb_planilhaitensClick(Sender: TObject);
    Procedure CelTitulo(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer);
    procedure dbEdtFaturaExit(Sender: TObject);
    procedure tbFaturasAfterScroll(DataSet: TDataSet);
    procedure dblcPlataformaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAcrescICMSClick(Sender: TObject);
    procedure dbePaisOrigemKeyPress(Sender: TObject; var Key: Char);
   
//    procedure btnAcrescICMSClick(Sender: TObject);
  private
    { Private declarations }
    procedure PreencheInfoLabelsContrato;

    procedure ApagaInfoLabelsContrato;
  public
    { Public declarations }
  end;

Const
  Aleft = -4131;
  Aright = -4152;
  ACenter = -4108;


var
  F_proFaturas: TF_proFaturas;
  vEmp, vFil, vPro, vFatold, vFatnew: String;
  excel : Variant;
  planilha_0,planilha,arqdir,arqnome,linha,expor:string;


implementation

uses U_MSCOMEX, u_proitens, u_proAcrescimo, u_proReducao,
  u_proCambio, u_proTraCla, u_AcrescimoICMS;

{$R *.DFM}
procedure TF_proFaturas.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;

  { REFRESH NAS TABELAS }
  acAtuTabelas.Execute;
end;

procedure TF_proFaturas.ME_nossarefChange(Sender: TObject);
var
  cnpj : String;
begin
  if Length(F_MSCOMEX.LRTrim(me_nossaref.Text)) <> 8
   then Exit;

  Screen.Cursor := crHourGlass;
  {Inicio eduardo.souza 02/06/2011}
         
  qrProcessos.ParamByName( 'Processo' ).Value := me_nossaref.Text;
  qrProcessos.Close;
  qrProcessos.Open;

  if ( Not qrProcessos.IsEmpty )
   then begin
     qryPlataforma.Params[0].Value := qrProcessosImportador.AsString;
     qryPlataforma.Close;
     qryPlataforma.Open;
     
     {Fim eduardo.souza 02/06/2011}
     vEmp := qrProcessosEmpresa.AsString;
     vFil := qrProcessosFilial.AsString;
     vPro := qrProcessosProcesso.AsString;

     PreencheInfoLabelsContrato;

     with qrDelAcrescimo do
      begin
        Params[0].AsString := vEmp;
        Params[1].AsString := vFil;
        Params[2].AsString := vPro;
      end;

     with qrDelReducao do
      begin
        Params[0].AsString := vEmp;
        Params[1].AsString := vFil;
        Params[2].AsString := vPro;
      end;
      
     with qrTributacao do
      begin
        Params[0].AsString := vEmp;
        Params[1].AsString := vFil;
        Params[2].AsString := vPro;
      end;

     with qrDelTributacao do
      begin
        Params[0].AsString := vEmp;
        Params[1].AsString := vFil;
        Params[2].AsString := vPro;
      end;

     with qrItens Do
      begin
        Params[0].AsString := vEmp;
        Params[1].AsString := vFil;
        Params[2].AsString := vPro;
      end;

     with qrUpItens do
      begin
        Params[4].AsString := vEmp;
        Params[5].AsString := vFil;
        Params[6].AsString := vPro;
      end;

     with qrDelItens do
      begin
        Params[0].AsString := vEmp;
        Params[1].AsString := vFil;
        Params[2].AsString := vPro;
      end;

     with qrConhec do
      begin
        Params[0].AsString := vEmp;
        Params[1].AsString := vFil;
        Params[2].AsString := vPro;
      end;

     with qrIncConhec do
      begin
        Params[0].AsString := vEmp;
        Params[1].AsString := vFil;
        Params[2].AsString := vPro;
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

     with qrTotPag do
      begin
        Params[0].AsString := vEmp;
        Params[1].AsString := vFil;
        Params[2].AsString := vPro;
      end;

     with qrSomaItens do
      begin
        Params[0].AsString := vEmp;
        Params[1].AsString := vFil;
        Params[2].AsString := vPro;
      end;

     with qrSomaAcre do
      begin
        Params[0].AsString := vEmp;
        Params[1].AsString := vFil;
        Params[2].AsString := vPro;
      end;

     with qrSomaRedu do
      begin
        Params[0].AsString := vEmp;
        Params[1].AsString := vFil;
        Params[2].AsString := vPro;
      end;

     if tbFaturas.State = dsInactive
      then tbFaturas.Open;

     with qrFaturas do
      begin
        Close;
        Params[0].AsString := vPro;
        Open;
      end;

     with qrPais do
      begin
        Close;
        Open;
      end;

     { REFRESH NAS TABELAS }
     acAtuTabelas.Execute;

     if F_MSCOMEX.AcessaPasta(me_nossaref.Text, qrProcessostipo.AsString, F_proFaturas) and
        F_MSCOMEX.DINaoSolicitada(me_nossaref.Text, F_proFaturas)
      then begin
        pnlPrincipal.Visible := True;
        pnlPrincipal.Enabled := True;

        pnlBaixo.Visible     := True;
        pnlBaixo.Enabled     := True;
      end;

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

     if v_AlteraPRO = 1
      then begin
        btnAlterar.Enabled := true;
        btnExcluir.Enabled := true;
        btnIncluir.Enabled := true;
      end
      else begin
        btnAlterar.Enabled := false;
        btnExcluir.Enabled := false;
        btnIncluir.Enabled := false;
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
        cnpj := Copy(cnpj,1,2) + '.' + Copy(cnpj,3,3) + '.' + Copy(cnpj,6,3) + '/' + Copy(cnpj,9,4) + '-' + Copy(cnpj,13,2);

        l_cliente.Caption    := qrProcessosCliente.AsString + ' - CNPJ: ' + cnpj;
        pnlPrincipal.Visible := True;
        pnlBaixo.Visible     := True;
      end
      else begin
        l_cliente.Caption    := '';
        pnlPrincipal.Visible := False;
        pnlBaixo.Visible     := False;
        Showmessage(v_usuario+', este Processo pertence a um Cliente que seu acesso não está permitido!');
      end;
   end
   else begin
     MessageDlg('Processo não encontrado!', mtInformation,[mbOk], 0);
     l_cliente.Caption := '';
     me_nossaref.Clear;
     pnlPrincipal.Visible := False;
     pnlBaixo.Visible     := False;
     me_nossaref.SetFocus;
   end;

  if (IsClosedProcess( me_nossaref.Text, F_proFaturas ))
   then pnlBaixo.visible := false;

  if ((qrProcessosCoordenador_Resp.AsString = '') and (qrProcessosSupervisor_Resp.AsString = ''))
   then begin
     MessageDlg('A fatura não poderá ser concluída , enquanto o processo não for distribuído. '+#13+
                'Por favor, informe o coordenador e o supervisor da pasta na tela de Distribuição Operacional ' , mtWarning, [mbOk], 0);
     Close;
   end;

  Screen.Cursor := crDefault;
end;

procedure TF_proFaturas.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  I : Integer;
begin
  for I := 0 to pred(ComponentCount) do
   begin
     if Components[I] is TQuery
      then TQuery(Components[I]).Close
      else if Components[I] is TTable
            then TTable(Components[I]).Close;
   end;

  f_mscomex.Faturas1.Enabled := True;
  F_proFaturas := Nil;
  Action := caFree;
end;

procedure TF_proFaturas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if F_proItens <> nil
   then if F_proItens.tbItens.State In [dsInsert, dsEdit]
         then begin
           MessageDlg('O Item da Fatura está em edição!', mtInformation,[mbOk], 0);
           F_proItens.Show;
           CanClose := False;
           Exit;
         end
         else F_proItens.Close;

  if tbFaturas.State in [dsInsert, dsEdit]
   then begin
     MessageDlg('A Fatura está em edição!', mtInformation,[mbOk], 0);
     CanClose := False;
   end
   else CanClose := True;
end;

procedure TF_proFaturas.sbLimpaVincClick(Sender: TObject);
begin
  tbFaturasVinculacao.AsString := '0';
end;

procedure TF_proFaturas.qrFaturasAfterOpen(DataSet: TDataSet);
begin
  pnlTop.Enabled := True;
  dbGrdFaturas.Enabled := True;

  dbEdtFatura.Enabled       := False;
  dbLcbIncoterm.Enabled     := False;
  dbEdtExportador.Enabled   := False;
  dbLcbExportadores.Enabled := False;
  dbEdtLocal.Enabled        := False;
  dbEdtMoeda.Enabled        := False;
  dbLcbMoeda.Enabled        := False;
  dbePaisOrigem.Enabled     := False;
  dbLcbPaisDeOrigem.Enabled := False;
  dbLcbVinc.Enabled         := False;
  CbAcrescimo.Enabled       := False;
  ckbFrenteIncluso.Enabled  := False;
  dbCblibra.Enabled         := false;
  sbLimpaVinc.Enabled       := False;
  dbEdtdtemissao.Enabled    := False;
  dblcPlataforma.Enabled    := False;

  if qrFaturas.RecordCount <> 0
   then begin
     btnAlterar.Enabled   := True;
     btnExcluir.Enabled   := True;
     btnItens.Enabled     := True;
     btnAcrescimo.Enabled := True;
     btnReducao.Enabled   := True;
     btnCambio.Enabled    := True;
     sbRecalculo.Enabled  := True;
     sbTotPag.Enabled     := True;
     sbEuro.Enabled       := True;

     if tbFaturas.State = dsInactive
      then tbFaturas.Open;
   end
   else begin
     tbFaturas.Close;
     btnAlterar.Enabled   := False;
     btnExcluir.Enabled   := False;
     btnItens.Enabled     := False;
     btnAcrescimo.Enabled := False;
     btnReducao.Enabled   := False;
     btnCambio.Enabled    := False;
     sbRecalculo.Enabled  := False;
     sbTotPag.Enabled     := False;
     sbEuro.Enabled       := False;
   end;

  btnIncluir.Enabled  := True;
  btnSair.Enabled     := True;
  btnSalvar.Enabled   := False;
  btnCancelar.Enabled := False;
end;

procedure TF_proFaturas.tbFaturasAfterPost(DataSet: TDataSet);
begin
  logusu('P','Alterou a Fatura: '+tbFaturasCodigo.AsString+', do Processo: '+qrProcessosProcesso.AsString);

  f_mscomex.MSPGP(me_nossaref.text);
end;

procedure TF_proFaturas.tbFaturasBeforeDelete(DataSet: TDataSet);
begin
  logusu('E','Excluiu a Tributação, o Itens e a Fatura: '+tbFaturasCodigo.AsString+', do Processo: '+qrProcessosProcesso.AsString);
end;

procedure TF_proFaturas.btnIncluirClick(Sender: TObject);
begin
  vFatold := '';

  if tbFaturas.State = dsInactive
   then tbFaturas.Open;

  tbFaturas.Append;
  dbedtfatura.Enabled        := true;
  tbFaturasEmpresa.AsString  := vEmp;
  tbFaturasFilial.AsString   := vFil;
  tbFaturasProcesso.AsString := vPro;

  dbEdtFatura.SetFocus;
end;

procedure TF_proFaturas.btnAlterarClick(Sender: TObject);
begin
  {Leandro Serra - 17/11/2011 Ticket 1013}
  if qrFaturas.RecordCount = 0
   then exit;

  if (v_AlteraPRO = 1)
   then begin
     if (qrprocessosqdi.isnull) or (qrprocessosqdi.asstring = '')
      then begin
        vFatold := tbFaturasCodigo.asstring;

        tbFaturas.Edit;
        dbedtfatura.setfocus;
      end
      else showmessage(v_usuario+', a di está registrada não será possível alterar a fatura.');
   end
   else Showmessage(v_usuario+', este processo está fechado e/ou o Cliente está Inativo. Somente usuários habilitados para editar clientes inativos e/ou editar processos fechados, poderão alterar as informações do processo.');
end;

procedure TF_proFaturas.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Confirma exclusão da Fatura e de todos seus Itens e Tributações?', mtConfirmation,[mbYes, mbNo], 0) = mrNo
   then Exit;

  Screen.Cursor := crHourGlass;
  { EXCLUINDO ACRÉSCIMOS DA FATURA }
  with qrDelAcrescimo do
   begin
     Params[3].AsString := tbFaturasCodigo.AsString;
     ExecSQL;
   end;

  { EXCLUINDO REDUÇÕES DA FATURA }
  with qrDelReducao do
   begin
     Params[3].AsString := tbFaturasCodigo.AsString;
     ExecSQL;
   end;

  { EXCLUINDO TRIBUTACAO DOS ITENS DA FATURA }
  with qrTributacao do
   begin
     Close;
     Params[3].AsString := tbFaturasCodigo.AsString;
     Open;
   end;

  while not qrTributacao.Eof do
   begin
     qrTributacao.Next;
   end;

  with qrDelTributacao do
   begin
     Params[3].AsString := tbFaturasCodigo.AsString;
     ExecSQL;
   end;

  { EXCLUINDO ITENS DA FATURA }
  with qrItens do
   begin
     Close;
     Params[3].AsString := tbFaturasCodigo.AsString;
     Open;
   end;

  while not qrItens.Eof do
   begin
     qrItens.Next;
   end;

  with qrDelItens do
   begin
     Params[3].AsString := tbFaturasCodigo.AsString;
     ExecSQL;
   end;

  { EXCLUINDO FATURA }
  tbFaturas.Delete;

  with qrFaturas do
   begin
     Close;
     Open;
   end;

  dbGrdFaturas.SetFocus;
  Screen.Cursor := crDefault;
end;

procedure TF_proFaturas.btnSalvarClick(Sender: TObject);
var
  qFat: String;
begin
  dbEdtFatura.Text := UpperCase(StringReplace(dbEdtFatura.Text,' ','',[rfReplaceAll]));
  
  if dbEdtFatura.Text = ''
   then begin
     ShowMessage('O Número da Fatura não pode estar em branco!');
     dbEdtFatura.SetFocus;
     Exit;
   end;
   
  if tbFaturasIncoterm.IsNull
   then begin
     ShowMessage('O Incoterm não pode estar em branco!');
     dbLcbIncoterm.SetFocus;
     Exit;
   end;

  if dbLcbExportadores.text = ''
   then begin
     ShowMessage('O Exportador não pode estar em branco!');
     dbLcbExportadores.SetFocus;
     Exit;
   end;

  if dbEdtLocal.text = ''
   then begin
     ShowMessage('O Local da Condição não pode estar em branco!');
     dbEdtLocal.SetFocus;
     Exit;
   end;

  if dbEdtMoeda.Text = ''
   then begin
     ShowMessage('A Moeda não pode estar em branco!');
     dbEdtMoeda.SetFocus;
     Exit;
   end
   else if dbLcbMoeda.Text = ''
         then begin
           ShowMessage('Código da Moeda inválido!');
           dbEdtMoeda.SetFocus;
           Exit;
         end;

 {  if dbePaisOrigem.Text = ''
   then begin
     ShowMessage('O país de origem não pode estar em branco!');
     dbePaisOrigem.SetFocus;
     Exit;
   end
   else if dbLcbPaisDeOrigem.Text = ''
         then begin
           ShowMessage('Código do País de origem!');
           dbePaisOrigem.SetFocus;
           Exit;
         end;
  }
  if dbLcbVinc.Text = ''
   then begin
     ShowMessage(' A Vinculação Importador / Exportador não pode estar em branco!');
     dbLcbVinc.SetFocus;
     Exit;
   end;

  if dbedtdtemissao.Text = ''
   then begin
     ShowMessage(' A Data Emissão não pode estar em branco!');
     dbedtdtemissao.SetFocus;
     Exit;
   end;

  if qrProcessosCGC_CPF.AsString = '0809110200'
   then begin
     if dblcPlataforma.Text = ''
      then begin
        ShowMessage('Favor informar a Plataforma.');
        dblcPlataforma.SetFocus;
        Exit;
      end;
   end;

  Screen.Cursor := crHourGlass;
  qFat := tbFaturasCodigo.AsString;
  vFatnew := tbFaturasCodigo.AsString;

  tbFaturas.edit;

  if Cbacrescimo.Checked
   then tbFaturasAcrescimos_Reducoes.asinteger := 1
   else tbFaturasAcrescimos_Reducoes.asinteger := 0;

  // Eduardo Souza - 22/03/2013 - Frente internacional incluso no valor dos itens
  if ckbFrenteIncluso.Checked
   then tbFaturasFrete_Incluso.asinteger := 1
   else tbFaturasFrete_Incluso.asinteger := 0;
  //-----

  if (vFatold <> '') and (vFatold <> vFatnew)
   then acRENUFAT.Execute;

  { ATUALIZA SALDOS DA FATURA }
  acAtuFatura.Execute;

  try
    tbFaturas.Post;
  except
    MessageDlg('Erro na gravação da Fatura! Não pode haver Faturas iguais.', mtInformation,[mbOk], 0);
    dbEdtFatura.SetFocus;
    Screen.Cursor := crDefault;
    Exit;
  end;

  f_mscomex.AtualizaTaxaConversao(vPro);

  with qrFaturas do
   begin
     Close;
     Open;
     Locate('Codigo',qFat,[]);
   end;

  { CASO NÃO TENHO REGISTRO NA TABELA CONHECIMENTO_PROCESSO, SERÁ INCLUÍDO }
  with qrConhec do
   begin
     Close;
     Open;
   end;

  if qrConhec.RecordCount = 0
   then with qrIncConhec do
         begin
           ExecSQL;
         end;

  with qrSomaFaturas do
   begin
     Close;
     Open;
   end;

  with qrUpConhec do
   begin
     Params[0].AsFloat := qrSomaFaturasSomaPesoAcertado.AsFloat;
     ExecSQL;
   end;

  dbGrdFaturas.SetFocus;
  Screen.Cursor := crDefault;
end;

procedure TF_proFaturas.btnCancelarClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  tbFaturas.Cancel;
  qrFaturas.Locate('Codigo', qrFaturasCodigo.AsString, []);

  dbGrdFaturas.SetFocus;
  Screen.Cursor := crDefault;
end;

procedure TF_proFaturas.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TF_proFaturas.btnItensClick(Sender: TObject);
begin
  if IntToStr(btnItens.Tag) < v_nivel
   then begin
     MessageDlg('Acesso não Permitido!', mtInformation,[mbOk], 0);
     Exit;
   end;

  Screen.Cursor := crHourGlass;

  if not Assigned(F_proItens)
   then Application.CreateForm(TF_proItens, F_proItens);

  pnlTop.Enabled       := False;
  pnlPrincipal.Enabled := False;
  pnlBaixo.Enabled     := False;
  btnItens.Enabled     := False;

  F_proItens.Show;
  Screen.Cursor := crDefault;
end;

procedure TF_proFaturas.sbRecalculoClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

  with pnlRecalculo do
   begin
     Left := 280;
     Top  := 136;
     Visible := True;
   end;

  pnlTop.Enabled       := False;
  pnlPrincipal.Enabled := False;
  pnlBaixo.Enabled     := False;
  mePesoInformado.SetFocus;
  
  Screen.Cursor := crDefault;
end;

procedure TF_proFaturas.sbTotPagClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

  with qrTotPag do
   begin
     Close;
     Params[3].AsString := qrFaturasCodigo.AsString;
     Open;
   end;

  with pnlTotPag do
   begin
     Left    := 120;
     Top     := 104;
     Height  := 201;
     Visible := True;
   end;
   
  pnlTop.Enabled       := False;
  pnlPrincipal.Enabled := False;
  pnlBaixo.Enabled     := False;
  
  dbGrdTotPag.SetFocus;
  Screen.Cursor := crDefault;
end;

procedure TF_proFaturas.btnOkClick(Sender: TObject);
begin
  qrTotPag.Close;

  pnlTotPag.Visible    := False;
  pnlTop.Enabled       := True;
  pnlPrincipal.Enabled := True;
  pnlBaixo.Enabled     := True;
end;

procedure TF_proFaturas.btnRecCancClick(Sender: TObject);
begin
  pnlRecalculo.Visible := False;
  pnlTop.Enabled       := True;
  pnlPrincipal.Enabled := True;
  pnlBaixo.Enabled     := True;

  mePesoInformado.Clear;
end;

procedure TF_proFaturas.btnRecOkClick(Sender: TObject);
var
  taxaPeso : Real;
  totPeso : Real;
  vreal : real;
  qFat : String;
  qdiferenca : real;
begin
  if (v_AlteraPRO = 1)
   then begin
     if mePesoInformado.Text = ''
      then begin
        MessageDlg('Informe o Peso da Fatura!', mtInformation,[mbOk], 0);
        mePesoInformado.SetFocus;
        Exit;
      end;

     try
        StrToFloat(mePesoInformado.Text);
     except
       on EConvertError do
        begin
          MessageDlg('Peso Inválido!', mtInformation,[mbOk], 0);
          mePesoInformado.SetFocus;
          Exit;
        end;
     end;

     if StrToFloat(mePesoInformado.Text) <= 0
      then begin
        MessageDlg('Peso da Fatura deve ser maior que zero!', mtInformation,[mbOk], 0);
        mePesoInformado.SetFocus;
        Exit;
      end;

     if MessageDlg('Confirma Peso da Fatura: '+mePesoInformado.Text, mtConfirmation,[mbYes, mbNo], 0) = mrNo
      then begin
        mePesoInformado.SetFocus;
        Exit;
      end;

     Screen.Cursor := crHourGlass;
     qFat := tbFaturasCodigo.AsString;

     totPeso := 0;

     with qrItens do
      begin
        Close;
        Params[3].AsString := tbFaturasCodigo.AsString;
        Open;
      end;

     if MessageDlg('Calcula acerto de rateio de peso unitário com base nos pesos unitários informados?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
      then begin
        if tbFaturasPeso_Total.AsFloat = 0
         then begin
           ShowMessage('Não existe peso informado para os itens dessa fatura!');
           pnlRecalculo.Visible := False;
           pnlTop.Enabled       := True;
           pnlPrincipal.Enabled := True;
           pnlBaixo.Enabled     := True;

           mePesoInformado.Clear;
           Screen.Cursor := crDefault;
           Exit;
         end;

        try
          taxaPeso := StrToFloat(mePesoInformado.Text)/tbFaturasPeso_Total.AsFloat;
        except
          taxaPeso := 0;
        end;

        while not qrItens.Eof do
         begin
           with qrUpItens do
            begin
              Params[0].AsString := stringreplace(FloatToStrF(qrItensPeso_Unitario.AsFloat * taxaPeso,fffixed,11,5),',','.',[]);
              Params[1].AsString := stringreplace(FloatToStrF(qrItensPeso_Total.AsFloat * taxaPeso,fffixed,11,5),',','.',[]);
              Params[2].AsString := stringreplace(qrItensValor_Unitario.AsString,',','.',[]);
              Params[3].AsString := stringreplace(qrItensValor_Total.AsString,',','.',[]);

              Params[7].AsString := qrItensFatura.AsString;
              Params[8].AsString := qrItensSequencial.AsString;
              ExecSQL;
            end;

           totPeso := totPeso + strtofloat(FloatToStrF(qrItensPeso_Total.AsFloat * taxaPeso,fffixed,11,5));
           qrItens.Next;
         end;

        tbFaturas.Edit;
        tbFaturasPeso_Total_Acertado.AsFloat := tbFaturasPeso_Total.AsFloat * taxaPeso;
        tbFaturas.Post;

        if totPeso <> tbFaturasPeso_Total_Acertado.AsFloat
         then begin
           qdiferenca := tbFaturasPeso_Total_Acertado.AsFloat-totpeso;

           qrItens.first;

           with qrUpItens do
            begin
              Params[0].AsString := stringreplace(FloatToStrF((qrItensPeso_Unitario.AsFloat * taxaPeso)+qdiferenca,fffixed,11,5),',','.',[]);
              Params[1].AsString := stringreplace(FloatToStrF((qrItensPeso_Total.AsFloat * taxaPeso)+qdiferenca,fffixed,11,5),',','.',[]);
              Params[2].AsString := stringreplace(qrItensValor_Unitario.AsString,',','.',[]);
              Params[3].AsString := stringreplace(qrItensValor_Total.AsString,',','.',[]);

              Params[7].AsString := qrItensFatura.AsString;
              Params[8].AsString := qrItensSequencial.AsString;
              ExecSQL;
            end;
         end;
      end
      else begin
        if tbFaturasValor_Total.AsFloat = 0
         then Begin
           ShowMessage('Não existe itens nessa fatura!');
           pnlRecalculo.Visible := False;
           pnlTop.Enabled       := True;
           pnlPrincipal.Enabled := True;
           pnlBaixo.Enabled     := True;

           mePesoInformado.Clear;
           Screen.Cursor := crDefault;
           Exit;
         end;

        vreal:= 0;
        qrItens.first;

        while not qrItens.Eof do
         begin
           vreal := vreal + qrItensValor_Total.Asfloat;
           qrItens.Next;
         end;

        try
          taxaPeso := StrToFloat(mePesoInformado.Text)/vreal;
        except
          taxaPeso := 0;
        end;

        qrItens.first;

        while not qrItens.Eof do
         begin
           with qrUpItens do
            begin
              Params[0].AsString := stringreplace(FloatToStrF(qrItensValor_Unitario.AsFloat * taxaPeso,fffixed,12,5),',','.',[]);
              Params[1].AsString := stringreplace(FloatToStrF(qrItensValor_Total.AsFloat * taxaPeso,fffixed,12,5),',','.',[]);
              Params[2].AsString := stringreplace(qrItensValor_Unitario.AsString,',','.',[]);
              Params[3].AsString := stringreplace(qrItensValor_Total.AsString,',','.',[]);

              Params[7].AsString := qrItensFatura.AsString;
              Params[8].AsString := qrItensSequencial.AsString;
              ExecSQL;
            end;

           totPeso := totPeso + strtofloat(FloatToStrF(qrItensValor_Total.AsFloat * taxaPeso,fffixed,12,5));
           qrItens.Next;
         end;

        tbFaturas.Edit;
        tbFaturasPeso_Total_Acertado.AsFloat  := vreal * taxaPeso;
        tbFaturas.Post;

        if totPeso <> tbFaturasPeso_Total_Acertado.AsFloat
         then begin
           qdiferenca := tbFaturasPeso_Total_Acertado.AsFloat-totpeso;

           qrItens.first;

           with qrUpItens do
            begin
              Params[0].AsString := stringreplace(FloatToStrF((qrItensValor_Unitario.AsFloat * taxaPeso)+qdiferenca,fffixed,12,5),',','.',[]);
              Params[1].AsString := stringreplace(FloatToStrF((qrItensValor_Total.AsFloat * taxaPeso)+qdiferenca,fffixed,12,5),',','.',[]);
              Params[2].AsString := stringreplace(qrItensValor_Unitario.AsString,',','.',[]);
              Params[3].AsString := stringreplace(qrItensValor_Total.AsString,',','.',[]);

              Params[7].AsString := qrItensFatura.AsString;
              Params[8].AsString := qrItensSequencial.AsString;
              ExecSQL;
            end;
         end;
      end;

     with qrSomaFaturas do
      begin
        Close;
        Open;
      end;

     if (tbFaturaspeso_libra.asinteger = 1)
      then qrUpConhec.Params[0].AsFloat := (qrSomaFaturasSomaPesoAcertado.AsFloat*0.4536)
      else qrUpConhec.Params[0].AsFloat := qrSomaFaturasSomaPesoAcertado.AsFloat;

     qrUpConhec.ExecSQL;

     with qrFaturas do
      begin
        Close;
        Open;
        Locate('Codigo',qFat,[]);
      end;

     pnlRecalculo.Visible := False;
     pnlPrincipal.Enabled := True;
     pnlTop.Enabled       := True;
     pnlBaixo.Enabled     := True;
     mePesoInformado.Clear;
     qrItens.Close;
     Screen.Cursor := crDefault;
   end
   else Showmessage(v_usuario+', ATENÇÃO! Acesso não permitido à processos sob Responsabilidade e/ou o processo está fechado e/ou o Cliente está Inativo.');
end;

procedure TF_proFaturas.sbEuroClick(Sender: TObject);
var
  qFat: String;
begin
  Screen.Cursor := crHourGlass;

  with qrMoedaConv do
   begin
     Close;
     Open;
   end;

  if not qrMoedaConv.Locate('CODIGO',tbFaturasMoeda.AsString,[])
   then begin
     ShowMessage(v_usuario+', a moeda desta fatura não possue conversão para EURO.');
     Screen.Cursor := crDefault;
     Exit;
   end;

  ShowMessage(v_usuario+', a conversão para EURO não poderá ser desfeita. Verifique todos os dados da sua fatura.');

  if MessageDlg('Confirma Conversão dos valores desta Fatura para valores em EURO?',mtConfirmation,[mbYes, mbNo], 0) = mrNo
   then begin
     Screen.Cursor := crDefault;
     Exit;
   end;

  qFat := tbFaturasCodigo.AsString;

  with qrItens do
   begin
     Close;
     Params[3].AsString := tbFaturasCodigo.AsString;
     Open;
   end;

  while not qrItens.Eof do
   begin
     with qrUpItens do
      begin
        Params[0].AsString := stringreplace(qrItensPeso_Unitario_Acertado.AsString,',','.',[]);
        Params[1].AsString := stringreplace(qrItensPeso_Total_Acertado.AsString,',','.',[]);
        Params[2].AsString := stringreplace(FloatToStrF(qrItensValor_Unitario.AsFloat/qrMoedaConvTaxa_Conversao.AsFloat,fffixed,12,5),',','.',[]);
        Params[3].AsString := stringreplace(FloatToStrF(qrItensValor_Total.AsFloat/qrMoedaConvTaxa_Conversao.AsFloat,fffixed,12,5),',','.',[]);

        Params[7].AsString := qrItensFatura.AsString;
        Params[8].AsString := qrItensSequencial.AsString;
        ExecSQL;
      end;

     qrItens.Next;
   end;

  tbFaturas.Edit;
  tbFaturasMoeda.AsString := '978';
  tbFaturasValor_Total.AsFloat := tbFaturasValor_Total.AsFloat/qrMoedaConvTaxa_Conversao.AsFloat;
  tbFaturas.Post;

  ShowMessage(v_usuario+', sua fatura foi convertida para EURO.');

  with qrFaturas do
   begin
     Close;
     Open;
     Locate('Codigo',qFat,[]);
   end;

  with qrPais do
   begin
     Close;
     Open;
   end;
  Screen.Cursor := crDefault;
end;

procedure TF_proFaturas.qrFaturasAfterScroll(DataSet: TDataSet);
begin
  sbEuro.Enabled    := (qrFaturasMoeda.AsString <> '978');
  btnCambio.Enabled := (qrFaturasValor_Total.AsFloat <> 0);
  
  tbFaturas.FindKey([qrFaturasEmpresa.AsString,qrFaturasFilial.AsString,qrFaturasProcesso.AsString,qrFaturasCodigo.AsString])
end;

procedure TF_proFaturas.btnAcrescimoClick(Sender: TObject);
begin
  if IntToStr(btnAcrescimo.Tag) < v_nivel
   then begin
     MessageDlg('Acesso não Permitido!', mtInformation,[mbOk], 0);
     Exit;
   end;

  Screen.Cursor := crHourGlass;

  if not Assigned(F_proAcrescimo)
   then Application.CreateForm(TF_proAcrescimo, F_proAcrescimo);

  pnlTop.Enabled       := False;
  pnlPrincipal.Enabled := False;
  pnlBaixo.Enabled     := False;
  btnAcrescimo.Enabled := False;

  F_proAcrescimo.ImportadorCNPJ := qrProcessosCGC_CPF.AsString;
  F_proAcrescimo.Show;
  Screen.Cursor := crDefault;
end;

procedure TF_proFaturas.btnReducaoClick(Sender: TObject);
begin
  if IntToStr(btnReducao.Tag) < v_nivel
   then begin
     MessageDlg('Acesso não Permitido!', mtInformation,[mbOk], 0);
     Exit;
   end;

  Screen.Cursor := crHourGlass;

  if not Assigned(F_proReducao)
   then Application.CreateForm(TF_proReducao, F_proReducao);

  pnlTop.Enabled       := False;
  pnlPrincipal.Enabled := False;
  pnlBaixo.Enabled     := False;
  btnReducao.Enabled   := False;

  F_proReducao.Show;
  Screen.Cursor := crDefault;
end;

procedure TF_proFaturas.mePesoInformadoChange(Sender: TObject);
var
  tPos: Integer;
begin
  tPos := mePesoInformado.SelStart;
  mePesoInformado.Text := StringReplace(mePesoInformado.Text,' ','',[rfReplaceAll]);
  mePesoInformado.SelStart := tPos;
end;

procedure TF_proFaturas.mePesoInformadoKeyPress(Sender: TObject;
  var Key: Char);
var
  tPos: Integer;
begin
  tPos := mePesoInformado.SelStart;

  if not(Key in ['0'..'9',',',#8])
   then begin
     Key := ' ';
     mePesoInformado.SelStart := tPos-1;
   end;

  if (Key = ',' ) and (Pos(',', mePesoInformado.Text) > 0)
   then begin
     Key := ' ';
     mePesoInformado.SelStart := tPos-1;
   end;
end;

procedure TF_proFaturas.btnCambioClick(Sender: TObject);
begin
  if IntToStr(btnCambio.Tag) < v_nivel
   then begin
     MessageDlg('Acesso não Permitido!', mtInformation,[mbOk], 0);
     Exit;
   end;

  Screen.Cursor := crHourGlass;

  if not Assigned(F_proCambio)
   then Application.CreateForm(TF_proCambio, F_proCambio);

  pnlTop.Enabled       := False;
  pnlPrincipal.Enabled := False;
  pnlBaixo.Enabled     := False;
  btnCambio.Enabled    := False;

  F_proCambio.Show;
  Screen.Cursor := crDefault;
end;

procedure TF_proFaturas.tbFaturasAfterEdit(DataSet: TDataSet);
begin
  pnlTop.Enabled := False;

  dbEdtFatura.Enabled       := True;
  dbLcbIncoterm.Enabled     := True;
  dbEdtExportador.Enabled   := True;
  dbLcbExportadores.Enabled := True;
  dbEdtLocal.Enabled        := True;
  dbEdtMoeda.Enabled        := True;
  dbePaisOrigem.Enabled     := True;

  dbLcbPaisDeOrigem.Enabled:= True;
  dbLcbMoeda.Enabled       := True;
  dbLcbVinc.Enabled        := True;
  CbAcrescimo.Enabled      := True;
  ckbFrenteIncluso.Enabled := true;
  dbCblibra.Enabled        := True;
  dblcPlataforma.Enabled   := True;

  sbLimpaVinc.Enabled    := True;
  dbEdtdtemissao.Enabled := True;

  dbGrdFaturas.Enabled := False;
  btnIncluir.Enabled   := False;
  btnAlterar.Enabled   := False;
  btnExcluir.Enabled   := False;

  btnItens.Enabled     := False;
  btnAcrescimo.Enabled := False;
  btnReducao.Enabled   := False;
  btnCambio.Enabled    := False;
  sbRecalculo.Enabled  := False;
  sbTotPag.Enabled     := False;
  sbEuro.Enabled       := False;
  btnSair.Enabled      := False;
  btnSalvar.Enabled    := True;
  btnCancelar.Enabled  := True;
end;

procedure TF_proFaturas.dbEdtFaturaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #32
   then begin
     Key := #0;
     showmessage(v_usuario +', Espaços não são permitidos.');
   end;

  if Key = #13
   then dbLcbIncoterm.SetFocus;
end;

procedure TF_proFaturas.dbLcbIncotermKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13
   then dbLcbExportadores.SetFocus;
end;

procedure TF_proFaturas.dbLcbExportadoresKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13
   then dbEdtLocal.SetFocus;
end;

procedure TF_proFaturas.dbEdtLocalKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13
   then dbEdtMoeda.SetFocus;
end;

procedure TF_proFaturas.dbLcbMoedaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13
   then dbLcbVinc.SetFocus;
end;

procedure TF_proFaturas.dbLcbVincKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13
   then CbAcrescimo.SetFocus;
end;

procedure TF_proFaturas.dbCbAcrescimoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13
   then btnSalvar.SetFocus;
end;

procedure TF_proFaturas.acAtuTabelasExecute(Sender: TObject);
begin
  with qrIncoterm do
   begin
     Close;
     Open;
   end;

  with qrExportadores Do
   begin
     Close;
     Open;
   end;

  with qrMoeda do
   begin
     Close;
     Open;
   end;
  with qrPais do
   begin
     Close;
     Open;
   end;
  with qrVinc do
   begin
     Close;
     Open;
   end;
end;

procedure TF_proFaturas.acAtuFaturaExecute(Sender: TObject);
var
  valItem, valAcre, valRedu: Real;
begin
  valItem := 0;
  valAcre := 0;
  valRedu := 0;

  with qrSomaItens do
   begin
     Params[3].AsString := tbFaturasCodigo.AsString;
     Open;
   end;

  valItem := qrSomaItensSomaValorTotal.AsFloat;

  if tbFaturasAcrescimos_Reducoes.Asinteger = 0
   then begin
     qrSomaAcre.Close;
     qrSomaAcre.Params[3].AsString := tbFaturasCodigo.AsString;

     // Eduardo Souza - 22/03/2013 - Frente Incluso
     if(tbFaturasFrete_Incluso.AsInteger = 1)
      then qrSomaAcre.ParamByName('codAcres').Value := '13'
      else qrSomaAcre.ParamByName('codAcres').Value := '';
     //--

     qrSomaAcre.Open;

     valAcre := qrSomaAcreValTot.AsFloat;
     qrSomaRedu.Close;
     qrSomaRedu.Params[3].AsString := tbFaturasCodigo.AsString;
     qrSomaRedu.Open;

     valRedu := qrSomaReduValTot.AsFloat;

     qrSomaAcre.Close;
     qrSomaRedu.Close;
   end;

  qrSomaItens.Close;

  if tbFaturas.State In [dsInsert, dsEdit]
   then tbFaturasValor_Total.AsFloat := valItem + valAcre - valRedu;
end;


procedure TF_proFaturas.btnTraClaClick(Sender: TObject);
begin
  if IntToStr(btnTraCla.Tag) < v_nivel
   then begin
     MessageDlg('Acesso não Permitido!', mtInformation,[mbOk], 0);
     Exit;
   end;

  Screen.Cursor := crHourGlass;

  if not Assigned(F_proTraCla)
   then Application.CreateForm(TF_proTraCla, F_proTraCla);

  pnlTop.Enabled       := False;
  pnlPrincipal.Enabled := False;
  pnlBaixo.Enabled     := False;

  F_proTraCla.Show;
  Screen.Cursor := crDefault;
end;

procedure TF_proFaturas.dbEdtMoedaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13
   then dbLcbMoeda.SetFocus;
end;

procedure TF_proFaturas.acRENUFATExecute(Sender: TObject);
begin
  //executar sql Deducoes_Faturas
  qrRENUFAT.SQL.Clear;
  qrRENUFAT.SQL.Add('UPDATE Deducoes_Faturas SET Fatura = "'+vFatnew+'" FROM Deducoes_Faturas AS qtab WHERE (((qtab.Fatura)="'+vFatold+'") AND ((qtab.Processo)="'+vPro+'"))');
  qrRENUFAT.execsql;

  //executar sql Acrescimos_Faturas
  qrRENUFAT.SQL.Clear;
  qrRENUFAT.SQL.Add('UPDATE Acrescimos_Faturas SET Fatura = "'+vFatnew+'" FROM Acrescimos_Faturas AS qtab WHERE (((qtab.Fatura)="'+vFatold+'") AND ((qtab.Processo)="'+vPro+'"))');
  qrRENUFAT.execsql;

  //executar sql itensfaturas
  qrRENUFAT.SQL.Clear;
  qrRENUFAT.SQL.Add('UPDATE Itensfaturas SET Fatura = "'+vFatnew+'" FROM Itensfaturas AS qtab  WHERE (((qtab.Fatura)="'+vFatold+'") AND ((qtab.Processo)="'+vPro+'"))');
  qrRENUFAT.execsql;

  //executar sql tributação
  qrRENUFAT.SQL.Clear;
  qrRENUFAT.SQL.Add('UPDATE Tributacao_Item_Fatura SET Fatura = "'+vFatnew+'" FROM Tributacao_Item_Fatura AS qtab WHERE (((qtab.Fatura)="'+vFatold+'") AND ((qtab.Processo)="'+vPro+'"))');
  qrRENUFAT.execsql;
end;

procedure TF_proFaturas.sb_planilhaitensClick(Sender: TObject);
var
  sheet : Variant;
  v_cred_i, v_deb_i, coluna, aux,auy, aue, teste , linha2, col2: Integer;
  h_est, h_tot, dir_cor, v_form_aux, astring, astring2, vpro, qpro, osprocessos,osprocessos2,data,data_arq,nome_arq,vespacos: string;
  t_emp,t_emp2, pos_form_cred, pos_form_deb : integer;
  i,j : integer;
  FIni,FFim, FFim0 : TDateTime;
  qvalor:real;
  entra:boolean;
begin
  SHOWMESSAGE(v_usuario+', Favor utilizar a opção do site Operacional\Planilhas\MSPLIF - Planilha de Itens de Faturas Por Processo!');
  EXIT;

  {$I-}
  image1.Picture.SaveToFile('c:\ms2000\logoms.jpg');
  data := FormatDateTime(' dd/mm/yyyy - hh:nn:ss ', Now);
  data_arq := FormatDateTime(' yyyy/mm/dd - ', Now);
  System.GetDir(0,dir_cor);
  dir_cor := dir_cor + '\Planilhas_Ms2000';
  MkDir(dir_cor);

  Excel := CreateOleObject('Excel.Application');
  Excel.Application.DisplayAlerts := False;
  Excel.Visible := false;
  excel.Workbooks.add(1);

  vespacos := '                                                                                                                                          ';
  vespacos := copy(vespacos,1,50);

  Excel.Worksheets[1].Name := 'Itens de Faturas';
  Excel.WorkSheets['Itens de Faturas'].Select;
  Excel.WorkSheets['Itens de Faturas'].Shapes.AddPicture ('c:\ms2000\logoms.jpg', True, True, 1, 0, 145, 65);
  Excel.Cells[1,1] := vespacos+v_empresanome;
  Excel.Cells[1,1].Font.Size := 12;
  Excel.cells[1,1].Font.Bold := True;
  Excel.Cells[2,1] := vespacos+'Planilha Itens de Fatura ';
  Excel.cells[2,1].Font.Bold := True;
  Excel.Cells[3,1] := vespacos+'Empresa: ' + l_cliente.caption;
  Excel.Cells[3,1].Font.Size := 12;
  Excel.cells[3,1].Font.Bold := True;

  Excel.Cells[5,1] := vespacos+'Data da Consulta: ' + data;
  Excel.ActiveWindow.DisplayGridlines := TRUE;

  linha2 := 6;

  Celtitulo(linha2, 1,'Fatura', clNavy, ACenter, clWhite, 8, 20);
  Celtitulo(linha2, 2,'Pág/Seq', clNavy, ACenter, clWhite, 8, 10);
  Celtitulo(linha2, 3,'Part.Number', clNavy, ACenter, clWhite, 8, 20);
  Celtitulo(linha2, 4,'Descrição', clNavy, ACenter, clWhite, 8, 30);
  Celtitulo(linha2, 5,'Descrição Inglês', clNavy, ACenter, clWhite, 8, 30);
  Celtitulo(linha2, 6,'Fabricante', clNavy, ACenter, clWhite, 8, 20);
  Celtitulo(linha2, 7,'NCM', clNavy, ACenter, clWhite, 8, 9);
  Celtitulo(linha2, 8,'Destaque', clNavy, ACenter, clWhite, 8, 9);
  Celtitulo(linha2, 9,'NALADI', clNavy, ACenter, clWhite, 8, 9);
  Celtitulo(linha2,10,'Referência', clNavy, ACenter, clWhite, 8, 20);
  Celtitulo(linha2,11,'Nº.Série', clNavy, ACenter, clWhite, 8, 20);
  Celtitulo(linha2,12,'Ref.Projeto', clNavy, ACenter, clWhite, 8, 20);
  Celtitulo(linha2,13,'PO', clNavy, ACenter, clWhite, 8, 10);
  Celtitulo(linha2,14,'Seq.PO', clNavy, ACenter, clWhite, 8, 5);
  Celtitulo(linha2,15,'Quantidade', clNavy, ACenter, clWhite, 8, 12);
  Celtitulo(linha2,16,'Valor Unitário', clNavy, ACenter, clWhite, 8, 12);
  Celtitulo(linha2,17,'Valor Total', clNavy, ACenter, clWhite, 8, 12);
  Celtitulo(linha2,18,'Peso Unitário', clNavy, ACenter, clWhite, 8, 12);
  Celtitulo(linha2,19,'Peso Total', clNavy, ACenter, clWhite, 8, 12);
  Celtitulo(linha2,20,'Peso Unitário Acertado', clNavy, ACenter, clWhite, 8, 18);
  Celtitulo(linha2,21,'Peso Total Acertado', clNavy, ACenter, clWhite, 8, 18);

  osprocessos2 := '';
  q_plafat.close;
  q_plafat.Params[0].asstring   := tbfaturasprocesso.asstring;
  q_plafat.Params[1].asstring   := tbfaturascodigo.asstring;
  q_plafat.open;

  while not q_plafat.eof do
   begin
     linha2 := linha2+1;
     Excel.cells[linha2, 1] := q_plafatfatura.asstring;
     Excel.cells[linha2, 2] := ''''+q_plafatpag.asstring+'/'+q_plafatseq.asstring;
     Excel.cells[linha2, 2].HorizontalAlignment:= ACenter;
     Excel.cells[linha2, 3] := ''''+q_plafatproduto.asstring;
     Excel.cells[linha2, 4] := q_plafatdescricao_produto.asstring;
     Excel.cells[linha2, 5] := q_plafatdescricao_produto_ing.asstring;
     Excel.cells[linha2, 6] := q_plafatfabricante.asstring;
     Excel.cells[linha2, 7] := q_plafatncm.asstring;
     Excel.cells[linha2, 8] := q_plafatdestaque_ncm.asstring;
     Excel.cells[linha2, 9] := q_plafatnaladi.asstring;
     Excel.cells[linha2,10] := q_plafatreferencia.asstring;
     Excel.cells[linha2,11] := q_plafatnumero_serie.asstring;
     Excel.cells[linha2,12] := q_plafatreferencia_projeto.asstring;
     Excel.cells[linha2,13] := q_plafatpo.asstring;
     Excel.cells[linha2,14] := q_plafatseqpo.asstring;
     Excel.cells[linha2,15] := q_plafatquantidade.asfloat;
     Excel.Cells[linha2,15].NumberFormatLocal := '#.##0,00';
     Excel.cells[linha2,16] := q_plafatvalor_unitario.asfloat;
     Excel.Cells[linha2,16].NumberFormatLocal := '#.##0,00';
     Excel.cells[linha2,17] := q_plafatvalor_total.asfloat;    /////////////
     Excel.Cells[linha2,17].NumberFormatLocal := '#.##0,00';
     Excel.cells[linha2,18] := q_plafatpeso_unitario.asfloat;
     Excel.Cells[linha2,18].NumberFormatLocal := '#.##0,00';
     Excel.cells[linha2,19] := q_plafatpeso_total.asfloat;               //////////
     Excel.Cells[linha2,19].NumberFormatLocal := '#.##0,00';
     Excel.cells[linha2,20] := q_plafatpeso_unitario_acertado.asfloat;
     Excel.Cells[linha2,20].NumberFormatLocal := '#.##0,00';
     Excel.cells[linha2,21] := q_plafatpeso_total_acertado.asfloat;     /////////
     Excel.Cells[linha2,21].NumberFormatLocal := '#.##0,00';

     q_plafat.Next;
   end;

  Excel.Range['A7', 'U'+IntToStr(linha2)].Font.Color := clNavy;

  //totais

  linha2 := linha2+1;

  Excel.cells[linha2, 1] := 'TOTAIS';
  Excel.cells[linha2, 1].HorizontalAlignment:= ACenter;

  //valor total
  col2 := 17;
  Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L7C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
  Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';

  //peso total
  col2 := 19;
  Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L7C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
  Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';

  //peso total acertado
  col2 := 21;
  Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L7C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
  Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';

  Excel.Range['A'+IntToStr(linha2), 'U'+IntToStr(linha2)].interior.Color := clNavy;
  Excel.Range['A'+IntToStr(linha2), 'U'+IntToStr(linha2)].Font.Color := clWhite;
  Excel.Range['A'+IntToStr(linha2), 'U'+IntToStr(linha2)].Font.Bold := True;

  Excel.Workbooks[1].SaveAs(dir_cor + '\' + stringreplace(tbfaturasprocesso.asstring,'/','_', [rfReplaceAll]) + ' - '+stringreplace(tbfaturascodigo.asstring,'/','-', [rfReplaceAll]) + '.xls' );
  Application.ProcessMessages;

  Excel.Quit;
  Excel := unassigned;

  Showmessage(v_usuario+', a planilha foi gerada no diretório C:\MS2000\PLANILHAS_MS2000!');
end;


Procedure TF_profaturas.CelTitulo(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer );
Begin
  Excel.cells[linha, coluna] := CTitulo;
  Excel.cells[linha, coluna].interior.Color := CColor;
  Excel.cells[linha, coluna].Font.Color     := FColor;
  Excel.cells[linha, coluna].Font.Size      := FSize;
  Excel.cells[linha, coluna].Font.Bold      := True;
  Excel.cells[linha, coluna].HorizontalAlignment:= CAlign;  
  Excel.cells[linha, coluna].Borders.Weight    := 2;
  Excel.cells[linha, coluna].Borders.LineStyle := 1;
  Excel.Columns[coluna].ColumnWidth            := COLSize;
  Excel.cells[linha, coluna].VerticalAlignment := CAlign;
End;

procedure TF_proFaturas.dbEdtFaturaExit(Sender: TObject);
begin
  dbedtfatura.Text := uppercase(trim(dbedtfatura.Text));
end;

procedure TF_proFaturas.tbFaturasAfterScroll(DataSet: TDataSet);
begin
  if tbFaturasAcrescimos_Reducoes.asinteger = 1
   then Cbacrescimo.Checked := true
   else Cbacrescimo.Checked := false;

  // Eduardo Souza - 22/03/2013 - Frete Incluso
  if(tbFaturasFrete_Incluso.AsInteger = 1)
   then ckbFrenteIncluso.Checked := true
   else ckbFrenteIncluso.Checked := False;
end;

procedure TF_proFaturas.dblcPlataformaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if ( key in [VK_Delete] )
   then dblcPlataforma.KeyValue := -1;
end;

procedure TF_proFaturas.PreencheInfoLabelsContrato;
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
       lblDescricao.Caption := QrAux.FieldByName('Descricao').AsString;
       lblIns.Caption       := QrAux.FieldByName('INs').AsString;

       if QrAux.FieldByName('Repetro').Value = 1
        then begin
          lblRepetroResp.Color   := clGreen;
          lblRepetroResp.Caption := 'Sim'
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

procedure TF_proFaturas.ApagaInfoLabelsContrato;
begin
  lblDescricao.Caption   := '-';
  lblIns.Caption         := '-';
  lblRepetroResp.Caption := '-';
end;

procedure TF_proFaturas.btnAcrescICMSClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

  if not Assigned(frmAcrescimoICMS)
   then Application.CreateForm(TfrmAcrescimoICMS, frmAcrescimoICMS);

  pnlTop.Enabled       := False;
  pnlPrincipal.Enabled := False;
  pnlBaixo.Enabled     := False;

  frmAcrescimoICMS.Show;
  Screen.Cursor := crDefault;
end;


procedure TF_proFaturas.dbePaisOrigemKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13
   then dbLcbPaisDeOrigem.SetFocus;
end;


end.





