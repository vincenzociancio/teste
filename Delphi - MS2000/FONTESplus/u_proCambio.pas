unit u_proCambio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, Db, DBTables, DBCtrls, Grids, DBGrids, Buttons,
  ActnList, ComCtrls;

type
  TF_proCambio = class(TForm)
    pnlPrincipal: TPanel;
    pnlTop: TPanel;
    Label26: TLabel;
    l_cliente: TLabel;
    ME_nossaref: TMaskEdit;
    pnlBaixo: TPanel;
    btnSair: TBitBtn;
    Label2: TLabel;
    edtFatura: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    qrDelPagVinc: TQuery;
    alGravaCambrio: TActionList;
    dbLcbModPag: TDBLookupComboBox;
    dbLcbMotivo: TDBLookupComboBox;
    Label4: TLabel;
    pcCobertura: TPageControl;
    tsPag1: TTabSheet;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label279: TLabel;
    Label290: TLabel;
    dbGrdPagVinc: TDBGrid;
    meContrato: TMaskEdit;
    meBanco: TMaskEdit;
    mePraca: TMaskEdit;
    meValPerc: TMaskEdit;
    meComprador: TMaskEdit;
    btnExcluirPag: TBitBtn;
    btnIncluirPag: TBitBtn;
    cbMoedaNac: TCheckBox;
    meValReal: TMaskEdit;
    meData: TMaskEdit;
    btnContratos: TButton;
    tsPag2: TTabSheet;
    Label56: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label280: TLabel;
    meContrato2: TMaskEdit;
    meBanco2: TMaskEdit;
    mePraca2: TMaskEdit;
    meValPerc2: TMaskEdit;
    meComprador2: TMaskEdit;
    btnIncluirPag2: TBitBtn;
    btnExcluirPag2: TBitBtn;
    cbMoedaNac2: TCheckBox;
    meValReal2: TMaskEdit;
    tsPag3: TTabSheet;
    pnlRof: TPanel;
    Label70: TLabel;
    Label210: TLabel;
    btnAlterar: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    pnlContratos: TPanel;
    Label291: TLabel;
    Panel41: TPanel;
    DBGrid5: TDBGrid;
    btnFechaCont: TButton;
    qrModPag: TQuery;
    dsModPag: TDataSource;
    qrInst: TQuery;
    dsInst: TDataSource;
    qrMotivo: TQuery;
    dsMotivo: TDataSource;
    qrModPagCODIGO: TStringField;
    qrModPagDESCRICAO: TStringField;
    tbFaturas: TTable;
    dsFaturas: TDataSource;
    dbRgCambial: TDBRadioGroup;
    qrDelParcVar: TQuery;
    qrCambio: TQuery;
    qrExport: TQuery;
    qrMoeda: TQuery;
    qrMoedaCODIGO: TStringField;
    qrMoedaDESCRICAO: TStringField;
    qrInsPagVinc: TQuery;
    qrUltimoSeqVinc: TQuery;
    qrUltimoSeqVincSequencial: TStringField;
    qrSomaPagVinc: TQuery;
    qrSomaCambioFat: TQuery;
    qrUpCambio: TQuery;
    qrInsCambio: TQuery;
    qrSomaCambioFatSomaValorTotal: TFloatField;
    qrSomaPagVincSomaValor: TFloatField;
    qrSomaPagVincSomaValorPercentual: TFloatField;
    qrPagVinc: TQuery;
    dsPagVinc: TDataSource;
    dbGrdPagVinc2: TDBGrid;
    qrUltimoSeqParc: TQuery;
    qrInsParcVar: TQuery;
    qrParcVar: TQuery;
    dsParcVar: TDataSource;
    pnlFixas: TPanel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    pnlVaria: TPanel;
    dbGrdParcVar: TDBGrid;
    pnlJuros: TPanel;
    Label73: TLabel;
    Label74: TLabel;
    pnlParcelas: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Panel2: TPanel;
    btnSalvarParc: TBitBtn;
    btnCancelarParc: TBitBtn;
    mePercentual: TMaskEdit;
    meValor: TMaskEdit;
    meDataPar: TMaskEdit;
    Label72: TLabel;
    btnIncluirParcVar: TBitBtn;
    btnAlterarParcVar: TBitBtn;
    btnExcluirParcVar: TBitBtn;
    qrUpParcVar: TQuery;
    dsCambio: TDataSource;
    qrUltimoSeqParcSequencial: TStringField;
    qrInstCODIGO: TStringField;
    qrInstDESCRICAO: TStringField;
    qrMotivoCODIGO: TStringField;
    qrMotivoDESCRICAO: TStringField;
    dbLcbInst: TDBLookupComboBox;
    dbEdtNParcelas: TDBEdit;
    dbEdtPeriodicidade: TDBEdit;
    dbEdtValorParc: TDBEdit;
    dbRgIndicador: TDBRadioGroup;
    dbRbTaxaJuros: TDBCheckBox;
    edtEdtValTaxaJuros: TDBEdit;
    acExcluirParcVar: TAction;
    acExcluirPagVinc: TAction;
    acExcluirFixas: TAction;
    acExcluirParcelas: TAction;
    dbEdtRof: TDBEdit;
    dbEdtValPerRof: TDBEdit;
    dbRgParcelas: TDBRadioGroup;
    qrTaxaJuros: TQuery;
    dsTaxaJuros: TDataSource;
    dbLcbTaxaJuros: TDBLookupComboBox;
    TbCambioFat: TTable;
    Label7: TLabel;
    me_valorparc: TMaskEdit;
    T_transpprocesso: TTable;
    qrInscambio_faturas: TQuery;
    qrexccambio_faturas: TQuery;
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
    tbFaturasAcrescimos_Reducoes: TSmallintField;
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
    qrCambioCGC_CPF: TStringField;
    qrCambioCONTRATO_CAMBIO: TStringField;
    qrCambioCod_Fornecedor: TStringField;
    qrCambioDT_PAG_CAMBIO: TDateTimeField;
    qrCambioMoeda: TStringField;
    qrCambioValor_Total: TFloatField;
    qrCambioBanco: TStringField;
    qrCambioPraca: TStringField;
    qrCambioValor_vinculado: TFloatField;
    qrCambioantecipado: TSmallintField;
    qrExportEmpresa: TStringField;
    qrExportFilial: TStringField;
    qrExportCodigo: TStringField;
    qrExportRazao_Social: TStringField;
    TbCambioFatREG: TAutoIncField;
    TbCambioFatCGC_CPF: TStringField;
    TbCambioFatCONTRATO_CAMBIO: TStringField;
    TbCambioFatFatura: TStringField;
    TbCambioFatProcesso: TStringField;
    TbCambioFatValor_Total: TFloatField;
    TbCambioFatVinculada: TSmallintField;
    TbCambioFatOBS: TStringField;
    TbCambioFatDT_PAG_CAMBIO: TDateTimeField;
    T_transpprocessoEmpresa: TStringField;
    T_transpprocessoFilial: TStringField;
    T_transpprocessoProcesso: TStringField;
    T_transpprocessoVia: TStringField;
    T_transpprocessoMultimodal: TSmallintField;
    T_transpprocessoPLaca: TStringField;
    T_transpprocessoLacre: TStringField;
    T_transpprocessoEmbarcacao: TStringField;
    T_transpprocessoTransportador: TStringField;
    T_transpprocessoTipodoccarga: TStringField;
    T_transpprocessoNumerodoccarga: TStringField;
    T_transpprocessoNumeromaster: TStringField;
    T_transpprocessoLocal: TStringField;
    T_transpprocessoData: TDateTimeField;
    T_transpprocessoUtilizacao: TStringField;
    T_transpprocessoTipomanifesto: TStringField;
    T_transpprocessoNumeromanifesto: TStringField;
    T_transpprocessoCodigo_Presenca_Carga: TStringField;
    T_transpprocessoPeso_Bruto: TFloatField;
    T_transpprocessoPeso_Liquido: TFloatField;
    T_transpprocessoAgente: TStringField;
    T_transpprocessoPais_Procedencia: TStringField;
    T_transpprocessoURF_chegada: TStringField;
    T_transpprocessoData_Chegada_URF_Cheg: TDateTimeField;
    T_transpprocessoURF_Despacho: TStringField;
    T_transpprocessoData_Chegada_URF_Desp: TDateTimeField;
    T_transpprocessoRecinto_Alfandegario: TStringField;
    T_transpprocessoSetor_Alfandegario: TStringField;
    T_transpprocessoArmazem: TStringField;
    T_transpprocessoOperacao_FUNDAP: TSmallintField;
    T_transpprocessoContratante_OPCAMBIAL: TStringField;
    T_transpprocessoMoeda_Frete: TStringField;
    T_transpprocessoFrete_Prepaid: TFloatField;
    T_transpprocessoFrete_Collect: TFloatField;
    T_transpprocessoFrete_Ter_Nac: TFloatField;
    T_transpprocessoMoeda_Seguro: TStringField;
    T_transpprocessoValor_Seguro: TFloatField;
    T_transpprocessoMoeda_Despesas_ate_FOB: TStringField;
    T_transpprocessoValor_Despesas_ate_FOB: TFloatField;
    T_transpprocessoUnidade: TStringField;
    T_transpprocessoQuantidade: TFloatField;
    qrPagVincEmpresa: TStringField;
    qrPagVincFilial: TStringField;
    qrPagVincProcesso: TStringField;
    qrPagVincFatura: TStringField;
    qrPagVincSequencial: TStringField;
    qrPagVincForma_de_Pagamento: TStringField;
    qrPagVincMoeda_Nacional: TSmallintField;
    qrPagVincBanco: TStringField;
    qrPagVincPraca: TStringField;
    qrPagVincContrato: TStringField;
    qrPagVincValor_Percentual: TFloatField;
    qrPagVincCNPJ_Comprador: TStringField;
    qrPagVincTipo_CNPJ: TStringField;
    qrPagVincValor: TFloatField;
    qrParcVarEmpresa: TStringField;
    qrParcVarFilial: TStringField;
    qrParcVarProcesso: TStringField;
    qrParcVarFatura: TStringField;
    qrParcVarSequencial: TStringField;
    qrParcVarPercentual: TFloatField;
    qrParcVarData_de_Pagamento: TStringField;
    qrParcVarValor: TFloatField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnSairClick(Sender: TObject);
    procedure dbRgCambialChange(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnContratosClick(Sender: TObject);
    procedure meContratoExit(Sender: TObject);
    procedure meBancoChange(Sender: TObject);
    procedure meBancoKeyPress(Sender: TObject; var Key: Char);
    procedure mePracaChange(Sender: TObject);
    procedure mePracaKeyPress(Sender: TObject; var Key: Char);
    procedure meValPercChange(Sender: TObject);
    procedure meValPercKeyPress(Sender: TObject; var Key: Char);
    procedure meValPercExit(Sender: TObject);
    procedure meValRealChange(Sender: TObject);
    procedure meValRealKeyPress(Sender: TObject; var Key: Char);
    procedure meValRealExit(Sender: TObject);
    procedure btnIncluirPagClick(Sender: TObject);
    procedure btnExcluirPagClick(Sender: TObject);
    procedure meBanco2Change(Sender: TObject);
    procedure meBanco2KeyPress(Sender: TObject; var Key: Char);
    procedure mePraca2Change(Sender: TObject);
    procedure mePraca2KeyPress(Sender: TObject; var Key: Char);
    procedure meValPerc2Change(Sender: TObject);
    procedure meValPerc2KeyPress(Sender: TObject; var Key: Char);
    procedure meValPerc2Exit(Sender: TObject);
    procedure meValReal2Change(Sender: TObject);
    procedure meValReal2KeyPress(Sender: TObject; var Key: Char);
    procedure meValReal2Exit(Sender: TObject);
    procedure btnIncluirPag2Click(Sender: TObject);
    procedure btnExcluirPag2Click(Sender: TObject);
    procedure meNParcelasChange(Sender: TObject);
    procedure meNParcelasKeyPress(Sender: TObject; var Key: Char);
    procedure mePercentualChange(Sender: TObject);
    procedure mePercentualKeyPress(Sender: TObject; var Key: Char);
    procedure mePercentualExit(Sender: TObject);
    procedure meValorChange(Sender: TObject);
    procedure meValorKeyPress(Sender: TObject; var Key: Char);
    procedure meValorExit(Sender: TObject);
    procedure btnIncluirTaxaClick(Sender: TObject);
    procedure btnAlterarParcVarClick(Sender: TObject);
    procedure btnExcluirParcVarClick(Sender: TObject);
    procedure btnSalvarParcClick(Sender: TObject);
    procedure btnCancelarParcClick(Sender: TObject);
    procedure DBGrid5DblClick(Sender: TObject);
    procedure btnFechaContClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure dbLcbModPagClick(Sender: TObject);
    procedure dbLcbInstClick(Sender: TObject);
    procedure dbLcbMotivoClick(Sender: TObject);
    procedure pcCoberturaChange(Sender: TObject);
    procedure acExcluirPagVincExecute(Sender: TObject);
    procedure acExcluirParcVarExecute(Sender: TObject);
    procedure acExcluirFixasExecute(Sender: TObject);
    procedure acExcluirParcelasExecute(Sender: TObject);
    procedure dbRgParcelasChange(Sender: TObject);
    procedure qrParcVarAfterOpen(DataSet: TDataSet);
    procedure qrPagVincAfterOpen(DataSet: TDataSet);
    procedure tbFaturasAfterPost(DataSet: TDataSet);
    procedure tbFaturasBeforeDelete(DataSet: TDataSet);
    procedure acertacambio(Sender: TObject);
    procedure TbCambioFatBeforeDelete(DataSet: TDataSet);
    procedure dbEdtValorParcExit(Sender: TObject);
    procedure me_valorparcExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
   F_proCambio: TF_proCambio;
   vEmp, vFil, vPro, vFat, vExp, vMoe, vCgc: String;
   vValTot: Real;
   strForma: String;
   op, vreg: Integer;


implementation

uses U_MSCOMEX, u_profaturas;

{$R *.DFM}

procedure TF_proCambio.FormActivate(Sender: TObject);
begin
     Left := 0;
     Top  := 0;

     With qrCambio Do Begin
         Close;
         Params[0].AsString := vCgc;
         Params[1].AsString := vExp;
         Open;
     End;
     With qrModPag Do Begin
         Close;  Open;
     End;
     With qrInst Do Begin
         Close;  Open;
     End;
     With qrMotivo Do Begin
         Close;  Open;
     End;
     With qrExport Do Begin
         Close;
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Open;
     End;
     With qrMoeda Do Begin
         Close;  Open;
     End;
     With qrTaxaJuros Do Begin
         Close;
         Params[0].AsString := vMoe;
         Open;
     End;
     With qrPagVinc Do Begin
         Close;
         Params[4].AsString := '2';
         Open;
         If RecordCount <> 0 Then
            pcCobertura.ActivePageIndex := 1
         Else  If tbFaturasTipo_Parcela.AsString <> '' Then
            pcCobertura.ActivePageIndex := 2
         Else
            pcCobertura.ActivePageIndex := 0;
     End;
     pcCobertura.OnChange(Sender);
end;

procedure TF_proCambio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     If F_proFaturas <> nil Then
        With F_proFaturas Do Begin
            pnlTop.Enabled := True;
            pnlPrincipal.Enabled := True;
            pnlBaixo.Enabled := True;
            btnCambio.Enabled := True;
            Show;
        End;

     F_proCambio := Nil;
     Action := caFree;
end;

procedure TF_proCambio.FormCreate(Sender: TObject);
begin
     vEmp := F_proFaturas.tbFaturasEmpresa.AsString;
     vFil := F_proFaturas.tbFaturasFilial.AsString;
     vPro := F_proFaturas.tbFaturasProcesso.AsString;
     vFat := F_proFaturas.tbFaturasCodigo.AsString;
     vExp := F_proFaturas.tbFaturasExportador.AsString;
     vMoe := F_proFaturas.tbFaturasMoeda.AsString;
     vCgc := F_proFaturas.qrProcessosCGC_CPF.AsString;
     vValTot := F_proFaturas.tbFaturasValor_Total.AsFloat;

     me_nossaref.Text := vPro;
     edtFatura.Text := vFat;
     l_cliente.Caption := F_proFaturas.l_cliente.Caption;

     With qrInsCambio Do Begin
         Params[0].AsString := vCgc;
         Params[1].AsString := vExp;
         Params[2].AsString := vMoe;
     End;
     With qrUpCambio Do Begin
         Params[2].AsString := vCgc;
     End;
     With qrSomaCambioFat Do Begin
         Params[0].AsString := vCgc;
     End;
     With qrPagVinc Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Params[2].AsString := vPro;
         Params[3].AsString := vFat;
     End;
     With qrInsPagVinc Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Params[2].AsString := vPro;
         Params[3].AsString := vFat;
     End;
     With qrDelPagVinc Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Params[2].AsString := vPro;
         Params[3].AsString := vFat;
     End;
     With qrSomaPagVinc Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Params[2].AsString := vPro;
         Params[3].AsString := vFat;
     End;
     With qrParcVar Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Params[2].AsString := vPro;
         Params[3].AsString := vFat;
     End;
     With qrInsParcVar Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Params[2].AsString := vPro;
         Params[3].AsString := vFat;
     End;
     With qrUpParcVar Do Begin
         Params[4].AsString := vEmp;
         Params[5].AsString := vFil;
         Params[6].AsString := vPro;
         Params[7].AsString := vFat;
     End;
     With qrDelParcVar Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Params[2].AsString := vPro;
         Params[3].AsString := vFat;
     End;
     With qrUltimoSeqVinc Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Params[2].AsString := vPro;
         Params[3].AsString := vFat;
     End;
     With qrUltimoSeqParc Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Params[2].AsString := vPro;
         Params[3].AsString := vFat;
     End;

     With tbFaturas Do Begin
         Open;
         FindKey([vEmp,vFil,vPro,vFat]);
     End;

     With tbCambioFat Do Begin
         Open;
     End;

     With t_transpprocesso Do Begin
         Open;
         Findkey([vEmp,vFil,vPro]);
     End;


end;

procedure TF_proCambio.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     If tbFaturas.State In [dsInsert, dsEdit] Then Begin
        MessageDlg('O Câmbio da Fatura está sendo editado!', mtInformation,[mbOk], 0);
        CanClose := False;
     End
     Else
        CanClose := True;
end;

procedure TF_proCambio.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure TF_proCambio.dbRgCambialChange(Sender: TObject);
begin
     dbLcbModPag.Enabled := False;
     dbLcbInst.Enabled := False;
     dbLcbMotivo.Enabled := False;
     pcCobertura.Visible := True;
     pnlRof.Enabled := False;

     dbLcbModPag.DataSource := Nil;
     dbLcbInst.DataSource := Nil;
     dbLcbMotivo.DataSource := Nil;

     Case dbRgCambial.ItemIndex Of
         0: Begin
            dbLcbModPag.Enabled := True;
            tsPag3.Caption := 'Pagamento em até 180 Dias';
            dbLcbModPag.DataSource := dsFaturas;
         End;
         1: Begin
            dbLcbModPag.Enabled := True;
            tsPag3.Caption := 'Pagamento em até 360 Dias';
            dbLcbModPag.DataSource := dsFaturas;
         End;
         2: Begin
            dbLcbInst.Enabled := True;
            tsPag3.Caption := 'Prazo superior à 360 Dias';
            dbLcbInst.DataSource := dsFaturas;
            pnlRof.Enabled := True;
         End;
         3: Begin
            dbLcbMotivo.Enabled := True;
            pcCobertura.Visible := False;
            dbLcbMotivo.DataSource := dsFaturas;
         End;
     End;
     Case pcCobertura.ActivePageIndex Of
         0, 1: { VERIFICA PAGAMENTOS POR FATURA }
            With qrPagVinc Do Begin
                Close;
                Params[4].AsString := IntToStr(pcCobertura.ActivePageIndex+1);
                Open;
            End;
         2: With qrParcVar Do Begin
                 Close;  Open;
            End;
     End;
end;

procedure TF_proCambio.btnSalvarClick(Sender: TObject);
begin

/// alterei em 18/05/2004 para não excluir as outras forma de cambio
/// solicitacao do andre

     acertacambio(f_procambio);
     Case dbRgCambial.ItemIndex Of
         0,1: If tbFaturasModalidade_de_Pagamento.AsString = '' Then Begin
                 MessageDlg('Informe a Modalidade de Pagamento!', mtInformation,[mbOk], 0);
                 dbLcbModPag.SetFocus;
                 Exit;
              End;
         2: If tbFaturasInstituicao_Financiadora.AsString = '' Then Begin
               MessageDlg('Informe a Instituição Financiadora!', mtInformation,[mbOk], 0);
               dbLcbInst.SetFocus;
               Exit;
            End;
         3: If tbFaturasMotivo_Sem_Cobertura.AsString = '' Then Begin
               MessageDlg('Informe o Motivo de sem cobertura!', mtInformation,[mbOk], 0);
               dbLcbMotivo.SetFocus;
               Exit;
            End;
     End;

     Case dbRgCambial.ItemIndex Of
         0,1,2: Begin
            Case pcCobertura.ActivePageIndex Of
                0: Begin
                   If qrPagVinc.RecordCount = 0 Then Begin
                      MessageDlg('Informe os Pagamentos Vinculados!', mtInformation,[mbOk], 0);
                      meContrato.SetFocus;
                      Exit;
                   End;
                   ///strForma := '2';
                   //acExcluirPagVinc.Execute;
                   //acExcluirParcelas.Execute;
                End;
                1: Begin
                   qrpagvinc.close;
                   qrpagvinc.Params[4].AsString := '2';
                   qrpagvinc.open;
                   If qrPagVinc.RecordCount = 0 Then Begin
                      MessageDlg('Informe os Pagamentos Vinculados!', mtInformation,[mbOk], 0);
                      meContrato2.SetFocus;
                      Exit;
                   End;
                   ///strForma := '1';
                  // acExcluirPagVinc.Execute;
                  // acExcluirParcelas.Execute;
                End;
                2: Begin
                   If tbFaturasTipo_Parcela.AsString = '' Then Begin
                      MessageDlg('Informe o Tipo da Parcela!', mtInformation,[mbOk], 0);
                      dbRgParcelas.SetFocus;
                      Exit;
                   End;
                   If dbRbTaxaJuros.Checked Then Begin
                      If tbFaturasCodigo_Taxa_de_Juros.AsString = '' Then Begin
                         MessageDlg('Informe o Código da Taxa de Juros!', mtInformation,[mbOk], 0);
                         dbLcbTaxaJuros.SetFocus;
                         Exit;
                      End;
                      If tbFaturasValor_Taxa_de_Juros.AsFloat <= 0 Then Begin
                         MessageDlg('O Valor da Taxa de Juros deve ser maior que zero!', mtInformation,[mbOk], 0);
                         edtEdtValTaxaJuros.SetFocus;
                         Exit;
                      End;
                   End;
                   Case dbRgParcelas.ItemIndex Of
                       0: Begin
                          If tbFaturasNumero_de_parcelas.AsString = '' Then Begin
                             MessageDlg('Informe o Número de Parcelas!', mtInformation,[mbOk], 0);
                             dbEdtNParcelas.SetFocus;
                             Exit;
                          End;
                          If tbFaturasPeriodicidade.AsString = '' Then Begin
                             MessageDlg('Informe a Periodicidade!', mtInformation,[mbOk], 0);
                             dbEdtPeriodicidade.SetFocus;
                             Exit;
                          End;
                          If tbFaturasValor_das_Parcelas.AsFloat <= 0 Then Begin
                             MessageDlg('O Valor Percentual da Parcela deve ser maior que zero!', mtInformation,[mbOk], 0);
                             dbEdtValorParc.SetFocus;
                             Exit;
                          End;
                          If tbFaturasIndicador_Periodicidade.AsString = '' Then Begin
                             MessageDlg('Informe o Indicador de Periodicidade!', mtInformation,[mbOk], 0);
                             dbRgIndicador.SetFocus;
                             Exit;
                          End;
                         // acExcluirParcVar.Execute;
                       End;
                       1: Begin
                          If qrParcVar.RecordCount = 0 Then Begin
                             MessageDlg('Informe as Parcelas Variáveis!', mtInformation,[mbOk], 0);
                             btnIncluirParcVar.SetFocus;
                             Exit;
                          End;
                          //acExcluirFixas.Execute;
                       End;
                   End;
                   ///strForma := '1';
                  // acExcluirPagVinc.Execute;
                  // strForma := '2';
                   //acExcluirPagVinc.Execute;
                End;
            End;
         End;
         3: Begin
            strForma := '1';
            acExcluirPagVinc.Execute;
            strForma := '2';
            acExcluirPagVinc.Execute;
            acExcluirParcelas.Execute;

            tbFaturasDT_PREV_PAG_CAMBIO.AsString := '';
            tbFaturasDT_PAG_CAMBIO.AsString := '';
            tbFaturasSTATUS_CAMBIO.AsString := '0';
            tbFaturasCONTRATO_CAMBIO.AsString := '';
         End;
     End;

     ////coloquei para calcular a data de previsao de pagamento em 19/05/2004
     if tbfaturasCobertura_Cambial.asstring<>'4' then begin
        ///cambio diferente de antecipado
        ///if tbfaturasstatus_cambio.asstring <> '3' then begin
            if tbfaturasPeriodicidade.asstring = '' then
               tbfaturasdt_prev_pag_cambio.asdatetime   := t_transpprocessodata.asdatetime
            else
               tbfaturasdt_prev_pag_cambio.asdatetime   := (t_transpprocessodata.asdatetime+strtoint(TbfaturasPeriodicidade.asstring));

         if ((TbfaturasModalidade_de_Pagamento.asstring = '10') or
             (TbfaturasModalidade_de_Pagamento.asstring = '20') or
             (TbfaturasModalidade_de_Pagamento.asstring = '21')) then begin
             if tbfaturassaldo_cambio.asfloat = 0 then begin
                tbfaturasstatus_cambio.asstring := '3';
             end
             else begin
                  if tbfaturassaldo_cambio.asfloat = tbfaturasvalor_total.asfloat then
                     tbfaturasstatus_cambio.asstring := '0'
                  else tbfaturasstatus_cambio.asstring := '1'
             end;

             ////tbfaturasdt_pag_cambio.asdatetime   := tbfaturasdt_prev_pag_cambio.asdatetime;
             ///tbfaturasdt_pag_cambio.asdatetime   := t_transpprocessodata.asdatetime;
             ///tbfaturasstatus_cambio.asstring := '2';
         end
         else begin
              if tbfaturassaldo_cambio.asfloat = tbfaturasvalor_total.asfloat then begin
                 tbfaturasstatus_cambio.asstring := '0';
              end
              else begin
                   if tbfaturassaldo_cambio.asfloat = 0 then
                      tbfaturasstatus_cambio.asstring := '2'
                   else tbfaturasstatus_cambio.asstring := '1'
              end;
         end;

       ///end;
     end;


////     acertacambio(f_procambio);

     tbFaturas.Post;

     With qrCambio Do Begin
         Close;  Open;
     End;
     With qrParcVar Do Begin
         Close;  Open;
     End;
     With qrPagVinc Do Begin
         Close;
         Params[4].AsString := '2';
         Open;
         If RecordCount <> 0 Then
            pcCobertura.ActivePageIndex := 1
         Else If tbFaturasTipo_Parcela.AsString <> '' Then
            pcCobertura.ActivePageIndex := 2
         Else
            pcCobertura.ActivePageIndex := 0;
     End;
     pcCobertura.OnChange(Sender);

     cbMoedaNac.Checked := False;
     meContrato.Clear;
     meData.Clear;
     meBanco.Clear;
     mePraca.Clear;
     meValPerc.Clear;
     meValReal.Clear;
     meComprador.Clear;
     cbMoedaNac2.Checked := False;
     meContrato2.Clear;
     meBanco2.Clear;
     mePraca2.Clear;
     meValPerc2.Clear;
     meValReal2.Clear;
     meComprador2.Clear;

     pnlTop.Enabled := True;
     pnlPrincipal.Enabled := False;
     btnAlterar.Enabled := True;
     btnSair.Enabled := True;
     btnSalvar.Enabled := False;
     btnCancelar.Enabled := False;
end;

procedure TF_proCambio.btnContratosClick(Sender: TObject);
begin
     With qrCambio Do Begin
         Close;  Open;
     End;

     pnlPrincipal.Enabled := False;
     pnlBaixo.Enabled := False;
     With pnlContratos Do Begin
         Left := 128;
         Top  := 72;
         Height := 337;
         Visible := True;
     End;
end;

procedure TF_proCambio.meContratoExit(Sender: TObject);
var qexpor, amoeda: String;

begin
     If qrCambio.Locate('CONTRATO_CAMBIO',meContrato.Text,[]) Then Begin
        meBanco.Text := qrCambioBanco.AsString;
        mePraca.Text := qrCambioPraca.AsString;
        meData.Text := qrCambioDT_PAG_CAMBIO.AsString;

        If qrExport.Locate('Codigo',qrCambioCod_Fornecedor.AsString,[]) Then
           qexpor := qrExportrazao_Social.Asstring
        Else
           qexpor := 'Não encontrado';
        If qrMoeda.Locate('CODIGO',qrCambioMoeda.AsString,[]) Then
           amoeda := qrMoedaDESCRICAO.asstring
        Else
           amoeda := 'Não encontrada';

        ShowMessage(v_usuario + ', ' +#13#10+
            'Contrato antecipado: ' + qrCambioCONTRATO_CAMBIO.AsString +#13#10+
            'Exportador: ' + qexpor +#13#10+
            'Moeda: ' + amoeda +#13#10+
            'Valor Total: ' + FloatToStr(qrCambioValor_Total.AsFloat) +#13#10+
            'Data Pagamento: ' + qrCambioDT_PAG_CAMBIO.AsString +#13#10+
            'Banco: ' + qrCambioBanco.AsString +#13#10+
            'Praça: ' + qrCambioPraca.AsString +#13#10+
            'Valor Vinculado: ' + FloatToStr(qrCambioValor_vinculado.AsFloat) +#13#10+
            'Saldo: ' + FloatToStr(qrCambioValor_Total.AsFloat-qrCambioValor_vinculado.AsFloat));
        meBanco.SetFocus;
     End
     Else Begin
        meBanco.Clear;
        mePraca.Clear;
        meData.Clear;
     End;

     btnIncluirPag.Enabled := True;
end;

procedure TF_proCambio.meBancoChange(Sender: TObject);
var tPos: Integer;

begin
     tPos := meBanco.SelStart;
     meBanco.Text := StringReplace(meBanco.Text,' ','',[rfReplaceAll]);
     meBanco.SelStart := tPos;
end;

procedure TF_proCambio.meBancoKeyPress(Sender: TObject; var Key: Char);
var tPos: Integer;

begin
     tPos := meBanco.SelStart;
     If Not(Key In ['0'..'9',#8]) Then Begin
        Key := ' ';
        If Length(meBanco.Text) = meBanco.MaxLength Then
           meBanco.SelStart := tPos
        Else
           meBanco.SelStart := tPos-1;
     End;
end;

procedure TF_proCambio.mePracaChange(Sender: TObject);
var tPos: Integer;

begin
     tPos := mePraca.SelStart;
     mePraca.Text := StringReplace(mePraca.Text,' ','',[rfReplaceAll]);
     mePraca.SelStart := tPos;
end;

procedure TF_proCambio.mePracaKeyPress(Sender: TObject; var Key: Char);
var tPos: Integer;

begin
     tPos := mePraca.SelStart;
     If Not(Key In ['0'..'9',#8]) Then Begin
        Key := ' ';
        If Length(mePraca.Text) = mePraca.MaxLength Then
           mePraca.SelStart := tPos
        Else
           mePraca.SelStart := tPos-1;
     End;
end;

procedure TF_proCambio.meValPercChange(Sender: TObject);
var tPos: Integer;

begin
     tPos := meValPerc.SelStart;
     meValPerc.Text := StringReplace(meValPerc.Text,' ','',[rfReplaceAll]);
     meValPerc.SelStart := tPos;
end;

procedure TF_proCambio.meValPercKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Not(Key In ['0'..'9',',','.',#8]) Then
        Key := #0;
     If Key = '.' Then  Key := ',';
     If (Key = ',') AND (Pos(',', meValPerc.Text) > 0) Then
        Key := #0;
end;

procedure TF_proCambio.meValPercExit(Sender: TObject);
begin
     If meValPerc.Text <> '' Then
        meValReal.Text := FloatToStr((StrToFloat(meValPerc.Text) * vValTot)/100);
end;

procedure TF_proCambio.meValRealChange(Sender: TObject);
var tPos: Integer;

begin
     tPos := meValReal.SelStart;
     meValReal.Text := StringReplace(meValReal.Text,' ','',[rfReplaceAll]);
     meValReal.SelStart := tPos;
end;

procedure TF_proCambio.meValRealKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Not(Key In ['0'..'9',',','.',#8]) Then
        Key := #0;
     If Key = '.' Then  Key := ',';
     If (Key = ',') AND (Pos(',', meValReal.Text) > 0) Then
        Key := #0;
end;

procedure TF_proCambio.meValRealExit(Sender: TObject);
begin
     If meValReal.Text <> '' Then
        meValPerc.Text := FloatToStr((StrToFloat(meValReal.Text) * 100)/vValTot);
end;

procedure TF_proCambio.btnIncluirPagClick(Sender: TObject);
var
   v_seqpag: Integer;

begin
     { VERIFICANDO CAMPOS EM BRANCO }
     If meContrato.Text = '' Then Begin
        MessageDlg('Informe o Contrato!', mtInformation,[mbOk], 0);
        meContrato.SetFocus;
        Exit;
     End;
     If meBanco.Text = '' Then Begin
        MessageDlg('Informe o Banco!', mtInformation,[mbOk], 0);
        meBanco.SetFocus;
        Exit;
     End;
     If mePraca.Text = '' Then Begin
        MessageDlg('Informe a Praça!', mtInformation,[mbOk], 0);
        mePraca.SetFocus;
        Exit;
     End;
     Try
        If meData.Text = '  /  /    ' Then Begin
           ShowMessage('"Data do Pagamento" está em branco!');
           meData.SetFocus;
           Exit;
        End
        Else
           StrToDate(meData.Text);
     Except
        ShowMessage('"Data do Pagamento" Inválida!');
        meData.SetFocus;
        Exit;
     End;
     If meValPerc.Text = '' Then Begin
        MessageDlg('Informe o Percentual de Pagamento!', mtInformation,[mbOk], 0);
        meValPerc.SetFocus;
        Exit;
     End;
     If meValReal.Text = '' Then Begin
        MessageDlg('Informe o Valor do Pagamento!', mtInformation,[mbOk], 0);
        meValReal.SetFocus;
        Exit;
     End;

     { VERIFICA SEQUÊNCIA DE PAGAMENTOS VINCULADOS }
     With qrUltimoSeqVinc Do Begin
         Close;  Open;
         If RecordCount <> 0 Then
            v_seqpag := qrUltimoSeqVincSequencial.AsInteger
         Else
            v_seqpag := 0;
     End;
     Inc(v_seqpag);

     { INSERINDO PAGAMENTO VINCULADO }
     With qrInsPagVinc Do Begin
         Params[4].AsString := IntToStr(v_seqpag);
         Params[5].AsString := '1';
         if cbMoedaNac.Checked = true then
           Params[6].Asinteger := 1
         else
           Params[6].Asinteger := 0;
         Params[7].AsString := meContrato.Text;
         Params[8].AsString := meBanco.Text;
         Params[9].AsString := mePraca.Text;
         Params[10].AsString := stringreplace(meValPerc.Text,',','.',[]);
         Params[11].AsString := stringreplace(meValReal.Text,',','.',[]);
         Params[12].AsString := meComprador.Text;
         ExecSQL;
     End;

    { INSERINDO cambio antecipado faturas }
     With qrInscambio_faturas Do Begin
         Params[0].AsString := vcgc;
         Params[1].AsString := meContrato.Text;
         Params[2].AsString := vfat;
         Params[3].AsString := vpro;
         Params[4].AsString := stringreplace(meValReal.Text,',','.',[]);
         Params[5].AsString := ' ';
         Params[6].AsString := medata.text;
         ExecSQL;
     End;


     { ATUALIZANDO FATURA }
     tbFaturasDT_PREV_PAG_CAMBIO.AsString := meData.Text;
     tbFaturasDT_PAG_CAMBIO.AsString := meData.Text;
     tbFaturasSTATUS_CAMBIO.AsString := '3';
     tbFaturasCONTRATO_CAMBIO.Asstring := meContrato.Text;

     With qrCambio Do Begin
         Close;  Open;
     End;

     If not qrCambio.Locate('CONTRATO_CAMBIO',meContrato.Text,[]) Then Begin
        If MessageDlg(v_usuario+', confirma a inclusão deste novo contrato de câmbio antecipado?',mtconfirmation,[mbno,mbyes],0)= mrYes Then Begin
           { INSERE O CÂMBIO ANTECIPADO }
           With qrInsCambio Do Begin
               Params[3].AsString := meContrato.Text;
               Params[4].AsString := meBanco.Text;
               Params[5].AsString := mePraca.Text;
               Params[6].AsString := meData.Text;
               Params[7].AsString := stringreplace(meValReal.Text,',','.',[]);
               Params[8].AsString := stringreplace(meValReal.Text,',','.',[]);
               ExecSQL;
           End;

        End;
     End;


     
     With qrCambio Do Begin
         Close;  Open;
     End;
     With qrPagVinc Do Begin
         Close;
         Params[4].AsString := '1';
         Open;
     End;

     cbMoedaNac.Checked := False;
     meContrato.Clear;
     meData.Clear;
     meBanco.Clear;
     mePraca.Clear;
     meValPerc.Clear;
     meValReal.Clear;
     meComprador.Clear;
end;

procedure TF_proCambio.btnExcluirPagClick(Sender: TObject);
var

   vContrato: String;

begin
     vContrato := qrPagVincContrato.AsString;

     { excluindo cambio antecipado faturas }
     With qrexccambio_faturas Do Begin
         Params[0].AsString := vcgc;
         Params[1].AsString := vContrato;
         Params[2].AsString := vfat;
         Params[3].AsString := vpro;
         ExecSQL;
     End;

     { EXCLUI PAGAMENTOS VINCULADOS }
     With qrDelPagVinc Do Begin
         Params[4].AsString := qrPagVincSequencial.AsString;
         ExecSQL;
     End;

     With qrCambio Do Begin
         Close;  Open;
     End;

     With qrPagVinc Do Begin
         Close;
         Params[4].AsString := '1';
         Open;
         If RecordCount = 0 Then Begin
            tbFaturasCONTRATO_CAMBIO.AsString := '';
            tbFaturasDT_PAG_CAMBIO.AsString := '';
            tbFaturasSTATUS_CAMBIO.AsString := '0';
         End
         Else Begin
            tbFaturasCONTRATO_CAMBIO.AsString := qrPagVincContrato.AsString;
            //tbFaturasDT_PAG_CAMBIO.AsString := ;
         End;
     End;

     ////acertacambio(f_procambio);

     cbMoedaNac.Checked := False;
     meContrato.Clear;
     meBanco.Clear;
     mePraca.Clear;
     meValPerc.Clear;
     meValReal.Clear;
     meComprador.Clear;
end;

procedure TF_proCambio.meBanco2Change(Sender: TObject);
var tPos: Integer;

begin
     tPos := meBanco2.SelStart;
     meBanco2.Text := StringReplace(meBanco2.Text,' ','',[rfReplaceAll]);
     meBanco2.SelStart := tPos;
end;

procedure TF_proCambio.meBanco2KeyPress(Sender: TObject; var Key: Char);
var tPos: Integer;

begin
     tPos := meBanco2.SelStart;
     If Not(Key In ['0'..'9',#8]) Then Begin
        Key := ' ';
        If Length(meBanco2.Text) = meBanco2.MaxLength Then
           meBanco2.SelStart := tPos
        Else
           meBanco2.SelStart := tPos-1;
     End;
end;

procedure TF_proCambio.mePraca2Change(Sender: TObject);
var tPos: Integer;

begin
     tPos := mePraca2.SelStart;
     mePraca2.Text := StringReplace(mePraca2.Text,' ','',[rfReplaceAll]);
     mePraca2.SelStart := tPos;
end;

procedure TF_proCambio.mePraca2KeyPress(Sender: TObject; var Key: Char);
var tPos: Integer;

begin
     tPos := mePraca2.SelStart;
     If Not(Key In ['0'..'9',#8]) Then Begin
        Key := ' ';
        If Length(mePraca2.Text) = mePraca2.MaxLength Then
           mePraca2.SelStart := tPos
        Else
           mePraca2.SelStart := tPos-1;
     End;
end;

procedure TF_proCambio.meValPerc2Change(Sender: TObject);
var tPos: Integer;

begin
     tPos := meValPerc2.SelStart;
     meValPerc2.Text := StringReplace(meValPerc2.Text,' ','',[rfReplaceAll]);
     meValPerc2.SelStart := tPos;
end;

procedure TF_proCambio.meValPerc2KeyPress(Sender: TObject; var Key: Char);
begin
     If Not(Key In ['0'..'9',',','.',#8]) Then
        Key := #0;
     If Key = '.' Then  Key := ',';
     If (Key = ',') AND (Pos(',', meValPerc2.Text) > 0) Then
        Key := #0;
end;

procedure TF_proCambio.meValPerc2Exit(Sender: TObject);
begin
     If meValPerc2.Text <> '' Then
        meValReal2.Text := FloatToStr((StrToFloat(meValPerc2.Text) * vValTot)/100);
end;

procedure TF_proCambio.meValReal2Change(Sender: TObject);
var tPos: Integer;

begin
     tPos := meValReal2.SelStart;
     meValReal2.Text := StringReplace(meValReal2.Text,' ','',[rfReplaceAll]);
     meValReal2.SelStart := tPos;
end;

procedure TF_proCambio.meValReal2KeyPress(Sender: TObject; var Key: Char);
begin
     If Not(Key In ['0'..'9',',','.',#8]) Then
        Key := #0;
     If Key = '.' Then  Key := ',';
     If (Key = ',') AND (Pos(',', meValReal2.Text) > 0) Then
        Key := #0;
end;

procedure TF_proCambio.meValReal2Exit(Sender: TObject);
begin
     If meValReal2.Text <> '' Then
        meValPerc2.Text := FloatToStr((StrToFloat(meValReal2.Text) * 100)/vValTot);
end;

procedure TF_proCambio.btnIncluirPag2Click(Sender: TObject);
var v_seqpag: Integer;

begin
     { VERIFICANDO CAMPOS EM BRANCO }
     If meContrato2.Text = '' Then Begin
        MessageDlg('Informe o Contrato!', mtInformation,[mbOk], 0);
        meContrato2.SetFocus;
        Exit;
     End;
     If meBanco2.Text = '' Then Begin
        MessageDlg('Informe o Banco!', mtInformation,[mbOk], 0);
        meBanco2.SetFocus;
        Exit;
     End;
     If mePraca2.Text = '' Then Begin
        MessageDlg('Informe a Praça!', mtInformation,[mbOk], 0);
        mePraca2.SetFocus;
        Exit;
     End;
     If meValPerc2.Text = '' Then Begin
        MessageDlg('Informe o Percentual de Pagamento!', mtInformation,[mbOk], 0);
        meValPerc2.SetFocus;
        Exit;
     End;
     If meValReal2.Text = '' Then Begin
        MessageDlg('Informe o Valor do Pagamento!', mtInformation,[mbOk], 0);
        meValReal2.SetFocus;
        Exit;
     End;

     { VERIFICA SEQUÊNCIA DE PAGAMENTOS VINCULADOS }
     With qrUltimoSeqVinc Do Begin
         Close;  Open;
         If RecordCount <> 0 Then
            v_seqpag := qrUltimoSeqVincSequencial.AsInteger
         Else
            v_seqpag := 0;
     End;
     Inc(v_seqpag);

     { INSERINDO PAGAMENTO VINCULADO }
     With qrInsPagVinc Do Begin
         Params[4].AsString := IntToStr(v_seqpag);
         Params[5].AsString := '2';
         if cbMoedaNac2.Checked = true then
           Params[6].Asinteger := 1
         else
           Params[6].Asinteger := 0;
         Params[7].AsString := meContrato2.Text;
         Params[8].AsString := meBanco2.Text;
         Params[9].AsString := mePraca2.Text;
         Params[10].AsString := meValPerc2.Text;
         Params[11].AsString := meValReal2.Text;
         Params[12].AsString := meComprador2.Text;
         ExecSQL;
     End;

     { INSERINDO cambio antecipado faturas }
 {    With qrInscambio_faturas Do Begin
         Params[0].AsString := vcgc;
         Params[1].AsString := meContrato2.Text;
         Params[2].AsString := vfat;
         Params[3].AsString := vpro;
         Params[4].AsString := meValReal2.Text;
         Params[5].AsString := ' ';
         Params[6].AsString := medata.text;
         ExecSQL;
     End;}

     tbFaturasCONTRATO_CAMBIO.AsString := meContrato2.Text;

     With qrCambio Do Begin
         Close;  Open;
     End;
     With qrPagVinc Do Begin
         Close;
         Params[4].AsString := '2';
         Open;
     End;

     cbMoedaNac2.Checked := False;
     meContrato2.Clear;
     meBanco2.Clear;
     mePraca2.Clear;
     meValPerc2.Clear;
     meValReal2.Clear;
     meComprador2.Clear;
end;

procedure TF_proCambio.btnExcluirPag2Click(Sender: TObject);
var
   vContrato: String;

begin
     vContrato := qrPagVincContrato.AsString;

     { EXCLUI PAGAMENTOS VINCULADOS }
     With qrDelPagVinc Do Begin
         Params[4].AsString := qrPagVincSequencial.AsString;
         ExecSQL;
     End;

     With qrCambio Do Begin
         Close;  Open;
     End;
     With qrPagVinc Do Begin
         Close;
         Params[4].AsString := '2';
         Open;
          If RecordCount = 0 Then Begin
            tbFaturasCONTRATO_CAMBIO.AsString := '';
            tbFaturasDT_PAG_CAMBIO.AsString := '';
            tbFaturasSTATUS_CAMBIO.AsString := '0';
         End;
     End;

     ////acertacambio(f_procambio);

     cbMoedaNac2.Checked := False;
     meContrato2.Clear;
     meBanco2.Clear;
     mePraca2.Clear;
     meValPerc2.Clear;
     meValReal2.Clear;
     meComprador2.Clear;
end;

procedure TF_proCambio.meNParcelasChange(Sender: TObject);
var tPos: Integer;

begin
     tPos := dbEdtNParcelas.SelStart;
     dbEdtNParcelas.Text := StringReplace(dbEdtNParcelas.Text,' ','',[rfReplaceAll]);
     dbEdtNParcelas.SelStart := tPos;
end;

procedure TF_proCambio.meNParcelasKeyPress(Sender: TObject; var Key: Char);
var tPos: Integer;

begin
     tPos := dbEdtNParcelas.SelStart;
     If Not(Key In ['0'..'9']) Then Begin
        Key := ' ';
        If Length(dbEdtNParcelas.Text) = dbEdtNParcelas.MaxLength Then
           dbEdtNParcelas.SelStart := tPos
        Else
           dbEdtNParcelas.SelStart := tPos-1;
     End;
end;

procedure TF_proCambio.mePercentualChange(Sender: TObject);
var tPos: Integer;

begin
     tPos := mePercentual.SelStart;
     mePercentual.Text := StringReplace(mePercentual.Text,' ','',[rfReplaceAll]);
     mePercentual.SelStart := tPos;
end;

procedure TF_proCambio.mePercentualKeyPress(Sender: TObject;
  var Key: Char);
var tPos: Integer;

begin
     tPos := mePercentual.SelStart;
     If Not(Key In ['0'..'9',',','.']) Then Begin
        Key := ' ';
        mePercentual.SelStart := tPos-1;
     End;
     If Key = '.' Then  Key := ',';
     If (Key = ',') AND (Pos(',', mePercentual.Text) > 0) Then Begin
        Key := ' ';
        mePercentual.SelStart := tPos-1;
     End;
end;

procedure TF_proCambio.mePercentualExit(Sender: TObject);
begin
     meValor.Text := FloatToStr((StrToFloat(mePercentual.Text) * vValTot)/100);
end;

procedure TF_proCambio.meValorChange(Sender: TObject);
var tPos: Integer;

begin
     tPos := meValor.SelStart;
     meValor.Text := StringReplace(meValor.Text,' ','',[rfReplaceAll]);
     meValor.SelStart := tPos;
end;

procedure TF_proCambio.meValorKeyPress(Sender: TObject; var Key: Char);
var tPos: Integer;

begin
     tPos := meValor.SelStart;
     If Not(Key In ['0'..'9',',','.']) Then Begin
        Key := ' ';
        meValor.SelStart := tPos-1;
     End;
     If Key = '.' Then  Key := ',';
     If (Key = ',') AND (Pos(',', meValor.Text) > 0) Then Begin
        Key := ' ';
        meValor.SelStart := tPos-1;
     End;
end;

procedure TF_proCambio.meValorExit(Sender: TObject);
begin
     mePercentual.Text := FloatToStr((StrToFloat(meValor.Text) * 100)/vValTot);
end;

procedure TF_proCambio.btnIncluirTaxaClick(Sender: TObject);
begin
     pnlPrincipal.Enabled := False;
     pnlBaixo.Enabled := False;
     With pnlParcelas Do Begin
         Left := 240;
         Top  := 160;
         Height := 137;
         Visible := True;
         Tag := 1;
     End;
end;

procedure TF_proCambio.btnAlterarParcVarClick(Sender: TObject);
begin
     pnlPrincipal.Enabled := False;
     pnlBaixo.Enabled := False;
     With pnlParcelas Do Begin
         Left := 240;
         Top  := 160;
         Height := 137;
         Visible := True;
         Tag := 2;
     End;
     mePercentual.Text := qrParcVarPercentual.AsString;
     meDataPar.Text := qrParcVarData_de_Pagamento.AsString;
     meValor.Text := qrParcVarValor.AsString;
end;

procedure TF_proCambio.btnExcluirParcVarClick(Sender: TObject);
begin
     { EXCLUI PARCELAS VARIAVEIS }
     With qrDelParcVar Do Begin
         Params[4].AsString := qrParcVarSequencial.AsString;
         ExecSQL;
     End;
     With qrParcVar Do Begin
         Close;  Open;
     End;
end;

procedure TF_proCambio.btnSalvarParcClick(Sender: TObject);
var v_seqpag: Integer;

begin
     { VERIFICANDO CAMPOS EM BRANCO }
     If mePercentual.Text = '' Then Begin
        MessageDlg('Informe o Percentual de Pagamento!', mtInformation,[mbOk], 0);
        mePercentual.SetFocus;
        Exit;
     End;
     If meValor.Text = '' Then Begin
        MessageDlg('Informe o Valor do Pagamento!', mtInformation,[mbOk], 0);
        meValor.SetFocus;
        Exit;
     End;
     If meDataPar.Text = '      ' Then Begin
        MessageDlg('Informe a Data do Pagamento!', mtInformation,[mbOk], 0);
        meDataPar.SetFocus;
        Exit;
     End
     Else
        Try
           StrToDate('01/'+Copy(meDataPar.Text,1,2)+'/'+Copy(meDataPar.Text,3,4));
        Except
           ShowMessage('Data do Pagamento Inválida!');
           meDataPar.SetFocus;
           Exit;
        End;

     Case pnlParcelas.Tag Of
         1: Begin
            { VERIFICA SEQUÊNCIA DAS PARCELAS VARIAVEIS }
            With qrUltimoSeqParc Do Begin
                Close;
                Open;
                If RecordCount <> 0 Then
                   v_seqpag := qrUltimoSeqParcSequencial.AsInteger
                Else
                   v_seqpag := 0;
            End;
            Inc(v_seqpag);

            { INSERINDO PARCELAS VARIAVEIS }
            With qrInsParcVar Do Begin
                Params[4].AsString := IntToStr(v_seqpag);
                Params[5].AsString := mePercentual.Text;
                Params[6].AsString := meValor.Text;
                Params[7].AsString := meDataPar.Text;
                ExecSQL;
            End;
         End;
         2: Begin
            v_seqpag := qrParcVarSequencial.AsInteger;
            { ATUALIZANDO PARCELAS VARIAVEIS }
            With qrUpParcVar Do Begin
                Params[0].AsString := mePercentual.Text;
                Params[1].AsString := meValor.Text;
                Params[2].AsString := meDataPar.Text;
                Params[3].AsString := IntToStr(v_seqpag);
                ExecSQL;
            End;
         End;
     End;

     mePercentual.Clear;
     meValor.Clear;
     meDataPar.Clear;
     pnlParcelas.Tag := 0;

     With qrParcVar Do Begin
         Close;
         Open;
         Locate('Sequencial',IntToStr(v_seqpag),[]);
     End;

     pnlPrincipal.Enabled := True;
     pnlBaixo.Enabled := True;
     pnlParcelas.Visible := False;
     dbGrdParcVar.SetFocus;
end;

procedure TF_proCambio.btnCancelarParcClick(Sender: TObject);
begin
     mePercentual.Clear;
     meValor.Clear;
     meDataPar.Clear;
     pnlParcelas.Tag := 0;

     pnlPrincipal.Enabled := True;
     pnlBaixo.Enabled := True;
     pnlParcelas.Visible := False;
     dbGrdParcVar.SetFocus;
end;

procedure TF_proCambio.DBGrid5DblClick(Sender: TObject);
begin
     pnlPrincipal.Enabled := True;
     pnlBaixo.Enabled := True;
     pnlContratos.Visible := False;
     meContrato.Text := qrCambioCONTRATO_CAMBIO.AsString;
     meContrato.OnExit(F_proCambio);
     meValPerc.SetFocus;
end;

procedure TF_proCambio.btnFechaContClick(Sender: TObject);
begin
     pnlPrincipal.Enabled := True;
     pnlBaixo.Enabled := True;
     pnlContratos.Visible := False;
end;

procedure TF_proCambio.btnAlterarClick(Sender: TObject);
begin
if (v_AlteraPRO = 1) then begin
 //if (f_profaturas.qrprocessosqresp.asstring = v_usuario) or (v_nivel<='7') then begin

     op := pcCobertura.ActivePageIndex;
     tbFaturas.Edit;

     pnlTop.Enabled := False;
     pnlPrincipal.Enabled := True;
     btnAlterar.Enabled := False;
     btnSair.Enabled := False;
     btnSalvar.Enabled := True;
     btnCancelar.Enabled := True;
     dbRgCambial.SetFocus;


 end
else begin
      Showmessage(v_usuario+', ATENÇÃO! Acesso não permitido à processos sob Responsabilidade e/ou o processo está fechado e/ou o Cliente está Inativo.');
end;

end;

procedure TF_proCambio.btnCancelarClick(Sender: TObject);
begin
     pcCobertura.ActivePageIndex := op;
     tbFaturas.Cancel;

     tbFaturas.Edit;
     btnSalvar.Click;
end;

procedure TF_proCambio.dbLcbModPagClick(Sender: TObject);
begin
     tbFaturasInstituicao_Financiadora.AsString := '';
     tbFaturasMotivo_Sem_Cobertura.AsString := '';
end;

procedure TF_proCambio.dbLcbInstClick(Sender: TObject);
begin
     tbFaturasModalidade_de_Pagamento.AsString := '';
     tbFaturasMotivo_Sem_Cobertura.AsString := '';
end;

procedure TF_proCambio.dbLcbMotivoClick(Sender: TObject);
begin
     tbFaturasModalidade_de_Pagamento.AsString := '';
     tbFaturasInstituicao_Financiadora.AsString := '';
end;

procedure TF_proCambio.pcCoberturaChange(Sender: TObject);
begin
     Case pcCobertura.ActivePageIndex Of
         0, 1: { VERIFICA PAGAMENTOS POR FATURA }
            With qrPagVinc Do Begin
                Close;
                Params[4].AsString := IntToStr(pcCobertura.ActivePageIndex+1);
                Open;
            End;
         2: With qrParcVar Do Begin
                 Close;  Open;
            End;
     End;
end;

procedure TF_proCambio.acExcluirPagVincExecute(Sender: TObject);
begin
     With qrPagVinc Do Begin
         Close;
         Params[4].AsString := strForma;
         Open;
         If RecordCount = 0 Then  Exit;
     End;

     While Not qrPagVinc.Eof Do Begin
          With qrDelPagVinc Do Begin
              Params[4].AsString := qrPagVincSequencial.AsString;
              ExecSQL;
          End;
          qrPagVinc.Next;
     End;
end;

procedure TF_proCambio.acExcluirParcVarExecute(Sender: TObject);
begin
     With qrParcVar Do Begin
         Close;  Open;
     End;
     If qrParcVar.RecordCount = 0 Then  Exit;

     qrParcVar.First;
     While Not qrParcVar.Eof Do Begin
          With qrDelParcVar Do Begin
              Params[4].AsString := qrParcVarSequencial.AsString;
              ExecSQL;
          End;
          qrParcVar.Next;
     End;
end;

procedure TF_proCambio.acExcluirFixasExecute(Sender: TObject);
begin
     tbFaturasNumero_de_Parcelas.AsString := '';
     tbFaturasPeriodicidade.AsString := '';
     tbFaturasValor_das_Parcelas.AsFloat := 0;
     tbFaturasIndicador_Periodicidade.AsString := '';
end;

procedure TF_proCambio.acExcluirParcelasExecute(Sender: TObject);
begin
     tbFaturasTaxa_de_Juros.Asinteger := 0;
     tbFaturasCodigo_Taxa_de_Juros.AsString := '';
     tbFaturasValor_Taxa_de_Juros.AsFloat := 0;
     tbFaturasROF_BACEN.AsString := '';
     tbFaturasPercentual_ROF.AsFloat := 0;
     acExcluirParcVar.Execute;
     acExcluirFixas.Execute;
     tbFaturasTipo_Parcela.AsString := '';
end;

procedure TF_proCambio.dbRgParcelasChange(Sender: TObject);
begin
     Case dbRgParcelas.ItemIndex Of
         0: Begin
            If tbFaturas.State = dsEdit Then
               tbFaturasTipo_Parcela.AsInteger := 1;
            pnlFixas.Enabled := True;
            pnlVaria.Enabled := False;
            If tbFaturas.State = dsEdit Then
               dbEdtNParcelas.SetFocus;
         End;
         1: Begin
            If tbFaturas.State = dsEdit Then
               tbFaturasTipo_Parcela.AsInteger := 2;
            pnlFixas.Enabled := False;
            pnlVaria.Enabled := True;
            If tbFaturas.State = dsEdit Then
               dbGrdParcVar.SetFocus;
         End;
     End;
end;

procedure TF_proCambio.qrParcVarAfterOpen(DataSet: TDataSet);
begin
     If qrParcVar.RecordCount <> 0 Then Begin
        btnAlterarParcVar.Enabled := True;
        btnExcluirParcVar.Enabled := True;
     End
     Else Begin
        btnAlterarParcVar.Enabled := False;
        btnExcluirParcVar.Enabled := False;
     End;
end;

procedure TF_proCambio.qrPagVincAfterOpen(DataSet: TDataSet);
begin
     If qrPagVinc.RecordCount <> 0 Then Begin
        btnExcluirPag.Enabled := True;
        btnExcluirPag2.Enabled := True;
     End
     Else Begin
        btnExcluirPag.Enabled := False;
        btnExcluirPag2.Enabled := False;
     End;
end;

procedure TF_proCambio.tbFaturasAfterPost(DataSet: TDataSet);
begin
     logusu('P','Alterou câmbio da Fatura: '+tbFaturasCodigo.AsString+', do Processo: '+me_nossaref.text);
end;

procedure TF_proCambio.tbFaturasBeforeDelete(DataSet: TDataSet);
begin
     logusu('E','Excluiu câmbio da fatura: '+tbFaturasCodigo.AsString+', do Processo: '+me_nossaref.text);
end;

procedure TF_proCambio.acertacambio(Sender: TObject);
var qvalor:real;
    qfat:integer;
begin

TbCambiofat.close;
TbCambiofat.open;
TbCambiofat.first;
qfat:=0;
while not TbCambiofat.eof do begin
    vreg := TbCambioFatREG.asinteger;
    if ((TbCambioFatCGC_CPF.asstring = vcgc) and
        (TbCambioFatFatura.asstring = vfat) and
        (TbCambioFatProcesso.asstring = vpro)) then begin

        { SOMANDO O VALOR TOTAL DOS CÂMBIOS ANTECIPADOS DAS FATURAS }
        With qrSomaCambioFat Do Begin
            Close;
            Params[1].AsString := TbCambioFatCONTRATO_CAMBIO.asstring;
            Open;
        End;
        { ATUALIZA O VALOR VINCULADO DO CÂMBIO ANTECIPADO }
        With qrUpCambio Do Begin
            Params[0].AsString := FloatToStr(qrSomaCambioFatSomaValorTotal.AsFloat);
            Params[1].AsString := TbCambioFatCONTRATO_CAMBIO.asstring;
            ExecSQL;
        End;

        qfat := qfat+1;
///        TbCambiofat.delete;
    end;
///    else

    TbCambiofat.next;

end;

///showmessage('excluiu faturas...'+inttostr(qfat));
qrpagvinc.close;
qrpagvinc.Params[4].AsString := '1';
qrpagvinc.open;
if qrpagvinc.recordcount <> 0 then begin
   ///showmessage('achou pagamentos vinculados...'+inttostr(qrpagvinc.recordcount));
   qrpagvinc.first;
   qvalor := 0;
   while not qrpagvinc.eof do begin

{         TbCambiofat.append;
         ////TbCambioFatREG: TAutoIncField;
         TbCambioFatCGCCPF.asstring := vcgc;
         TbCambioFatCONTRATO_CAMBIO.asstring := qrPagVincContrato.asstring;
         TbCambioFatFatura.asstring := vfat;
         TbCambioFatProcesso.asstring := vpro;
         TbCambioFatValor_Total.asfloat := qrPagVincValor.asfloat;
///         qvalor := qvalor + qrPagVincValor.asfloat;
         TbCambioFatVinculada.asboolean := true;
         TbCambioFatOBS.asstring := ' ';
         TbCambioFatDT_PAG_CAMBIO.asstring := tbFaturasDT_PAG_CAMBIO.AsString;
         TbCambiofat.post;
         vreg := TbCambioFatREG.asinteger;
}
        qvalor := qvalor + qrPagVincValor.asfloat;
        { SOMANDO O VALOR TOTAL DOS CÂMBIOS ANTECIPADOS DAS FATURAS }
        With qrSomaCambioFat Do Begin
            Close;
            Params[1].AsString := qrPagVincContrato.asstring;
            Open;
        End;
        { ATUALIZA O VALOR VINCULADO DO CÂMBIO ANTECIPADO }
        With qrUpCambio Do Begin
            Params[0].AsString := FloatToStr(qrSomaCambioFatSomaValorTotal.AsFloat);
            Params[1].AsString := qrPagVincContrato.asstring;
            ExecSQL;
        End;


        qrpagvinc.next;
   end;
///   tbFaturas.edit;
///   qvalor := strtofloat(floattostrf(qvalor,fffixed,15,2));
{   showmessage('valor fatura:'+floattostr(tbFaturasvalortotal.Asfloat)+
               '-  valor vinculado:'+floattostr(qvalor)+
               ' = saldo:'+floattostr(tbFaturasvalortotal.Asfloat-qvalor)+
               ' = saldo:'+floattostrf(tbFaturasvalortotal.Asfloat-qvalor,fffixed,15,2));}
   tbFaturasSALDO_CAMBIO.Asfloat :=  strtofloat(floattostrf(tbFaturasvalor_total.Asfloat-qvalor,fffixed,15,2));
///   tbFaturas.post;

   tbcambiofat.first;

end
else begin
///   tbFaturasDT_PREV_PAG_CAMBIO.AsString := meData.Text;
   tbFaturasDT_PAG_CAMBIO.AsString := '';
   tbFaturasSTATUS_CAMBIO.AsString := '0';
   tbFaturasCONTRATO_CAMBIO.Asstring := '';
   tbFaturasSALDO_CAMBIO.Asfloat := tbFaturasvalor_total.Asfloat;

end;

end;

procedure TF_proCambio.TbCambioFatBeforeDelete(DataSet: TDataSet);
begin
        ///AtuNet('Cambio_antecipado',[vcgc,meContrato.Text],'P');
end;

procedure TF_proCambio.dbEdtValorParcExit(Sender: TObject);
begin
     If tbFaturasValor_das_Parcelas.asfloat>0 Then
        me_valorparc.Text := FloatToStr((tbFaturasValor_das_Parcelas.asfloat * vValTot)/100);
end;

procedure TF_proCambio.me_valorparcExit(Sender: TObject);
begin
     If strtofloat(me_valorparc.Text) > 0 Then
        tbFaturasValor_das_Parcelas.asfloat := (StrToFloat(me_valorparc.Text) * 100)/vValTot;
end;

end.
