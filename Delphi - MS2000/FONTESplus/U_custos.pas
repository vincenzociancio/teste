unit U_custos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Mask, DBCtrls, ExtCtrls, Grids, DBGrids, Buttons;

type
  Tf_custos = class(TForm)
    Panel1: TPanel;
    Label14: TLabel;
    T_parametros: TTable;
    ds_parametros: TDataSource;
    T_processos: TTable;
    ds_processos: TDataSource;
    T_custos: TTable;
    ds_custos: TDataSource;
    T_tiposcustos: TTable;
    ds_tiposcustos: TDataSource;
    T_unitarios: TTable;
    ds_unitarios: TDataSource;
    T_itensfaturas: TTable;
    ds_itensfaturas: TDataSource;
    T_faturas: TTable;
    ds_faturas: TDataSource;
    T_conhecimento: TTable;
    ds_conhecimento: TDataSource;
    T_taxa: TTable;
    ds_taxa: TDataSource;
    b1: TButton;
    pnlPrincipal: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBLC_TIPO: TDBLookupComboBox;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    b_novo: TBitBtn;
    b_grava: TBitBtn;
    b_exclui: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    T_parametrosEmpresa: TStringField;
    T_parametrosFilial: TStringField;
    T_parametrosNumerador_Processos: TStringField;
    T_parametrosNumerador_Documentos: TStringField;
    T_parametrosEndereco_ftp: TStringField;
    T_parametrosUsuario_ftp: TStringField;
    T_parametrosSenha_ftp: TStringField;
    T_parametrosHost: TStringField;
    T_parametrosVersao: TStringField;
    T_parametroskeycrypt: TStringField;
    T_parametrosHost_smtp: TStringField;
    T_parametrosPorta_smtp: TSmallintField;
    T_parametrosUsuario_smtp: TStringField;
    T_parametrosSenha_smtp: TStringField;
    T_parametrosNumerador_Transmittal: TStringField;
    T_parametrosPATH_SERVER: TStringField;
    T_parametrosAliq_PIS_PASEP: TFloatField;
    T_parametrosAliq_COFINS: TFloatField;
    T_parametrosAliq_ICMS: TFloatField;
    T_parametrosAliq_ICMS_EXTRA: TFloatField;
    T_parametrosNumerador_Sol_Cheques: TStringField;
    T_parametrosNumerador_Sol_Reg: TStringField;
    T_parametrosNumerador_Sol_Tracla: TStringField;
    T_custosEmpresa: TStringField;
    T_custosFilial: TStringField;
    T_custosProcesso: TStringField;
    T_custosTipo_Custo: TStringField;
    T_custosreg: TAutoIncField;
    T_custosValor: TFloatField;
    T_custosFatura: TStringField;
    T_tiposcustosEmpresa: TStringField;
    T_tiposcustosFilial: TStringField;
    T_tiposcustosCodigo: TStringField;
    T_tiposcustosDescricao: TStringField;
    T_tiposcustosrateio: TStringField;
    T_unitariosEmpresa: TStringField;
    T_unitariosFilial: TStringField;
    T_unitariosProcesso: TStringField;
    T_unitariosFatura: TStringField;
    T_unitariosSequencial: TStringField;
    T_unitariosTipo_Custo: TStringField;
    T_unitariosreg: TIntegerField;
    T_unitariosValor: TFloatField;
    T_itensfaturasEmpresa: TStringField;
    T_itensfaturasFilial: TStringField;
    T_itensfaturasProcesso: TStringField;
    T_itensfaturasFatura: TStringField;
    T_itensfaturasSequencial: TStringField;
    T_itensfaturasPagina: TStringField;
    T_itensfaturasProduto: TStringField;
    T_itensfaturasDescricao_Produto: TMemoField;
    T_itensfaturasFabricante: TStringField;
    T_itensfaturasNCM: TStringField;
    T_itensfaturasUnidade: TStringField;
    T_itensfaturasUnidade_Medida_Estat: TStringField;
    T_itensfaturasDestaque_NCM: TStringField;
    T_itensfaturasNALADI: TStringField;
    T_itensfaturasReferencia: TStringField;
    T_itensfaturasNumero_serie: TStringField;
    T_itensfaturasReferencia_projeto: TStringField;
    T_itensfaturasPO: TStringField;
    T_itensfaturasSeqpo: TStringField;
    T_itensfaturasQuantidade: TFloatField;
    T_itensfaturasValor_Unitario: TFloatField;
    T_itensfaturasValor_Total: TFloatField;
    T_itensfaturasPeso_Unitario: TFloatField;
    T_itensfaturasPeso_Unitario_Acertado: TFloatField;
    T_itensfaturasPeso_Total: TFloatField;
    T_itensfaturasPeso_Total_Acertado: TFloatField;
    T_itensfaturasSaldo_Tributavel: TFloatField;
    T_itensfaturasRateio_Acrescimos: TFloatField;
    T_itensfaturasRateio_Deducoes: TFloatField;
    T_itensfaturasRateio_Embalagem: TFloatField;
    T_itensfaturasRateio_Frete_Interno_imp: TFloatField;
    T_itensfaturasRateio_Seguro_Interno: TFloatField;
    T_itensfaturasRateio_outras_import: TFloatField;
    T_itensfaturasRateio_startup: TFloatField;
    T_itensfaturasRateio_jurosfin: TFloatField;
    T_itensfaturasRateio_montagem: TFloatField;
    T_itensfaturasRateio_Frete_Interno_exp: TFloatField;
    T_itensfaturasRateio_carga_exp: TFloatField;
    T_itensfaturasRateio_outras_export: TFloatField;
    T_itensfaturasRateio_frete_fatura: TFloatField;
    T_itensfaturasRateio_seguro_fatura: TFloatField;
    T_itensfaturasRateio_carga_imp: TFloatField;
    T_itensfaturasRateio_Despesas_ate_FOB: TFloatField;
    T_itensfaturasRateio_Frete_prepaid: TFloatField;
    T_itensfaturasRateio_Frete_collect: TFloatField;
    T_itensfaturasRateio_Frete_ternac: TFloatField;
    T_itensfaturasRateio_Seguro: TFloatField;
    T_itensfaturasValor_Aduaneiro: TFloatField;
    T_itensfaturasValor_mercadoria: TFloatField;
    T_itensfaturasVMLE: TFloatField;
    T_itensfaturasBase_Calc_II: TFloatField;
    T_itensfaturasAcresc_reduc_Valaduan: TFloatField;
    T_itensfaturasCOD_SIT: TStringField;
    T_itensfaturasCNPJ: TStringField;
    T_itensfaturasFiel_nome: TStringField;
    T_itensfaturasFiel_cpf: TStringField;
    T_itensfaturasContrato: TStringField;
    T_itensfaturasLocal_Inventario: TStringField;
    T_itensfaturasRateio_Taxa_Siscomex: TFloatField;
    T_itensfaturasDescricao_Produto_ing: TMemoField;
    T_itensfaturasCodigo_Produto: TStringField;
    T_itensfaturasSequencial_Produto: TIntegerField;
    T_faturasEmpresa: TStringField;
    T_faturasFilial: TStringField;
    T_faturasProcesso: TStringField;
    T_faturasCodigo: TStringField;
    T_faturasExportador: TStringField;
    T_faturasIncoterm: TStringField;
    T_faturasVinculacao: TStringField;
    T_faturasCondicao: TStringField;
    T_faturasValor_Total: TFloatField;
    T_faturasPeso_Total: TFloatField;
    T_faturasPeso_Total_Acertado: TFloatField;
    T_faturasAcrescimos_Reducoes: TSmallintField;
    T_faturasMoeda: TStringField;
    T_faturasCobertura_Cambial: TStringField;
    T_faturasMotivo_Sem_Cobertura: TStringField;
    T_faturasModalidade_de_Pagamento: TStringField;
    T_faturasInstituicao_Financiadora: TStringField;
    T_faturasTipo_Parcela: TStringField;
    T_faturasNumero_de_parcelas: TStringField;
    T_faturasPeriodicidade: TStringField;
    T_faturasValor_das_Parcelas: TFloatField;
    T_faturasIndicador_Periodicidade: TStringField;
    T_faturasTaxa_de_Juros: TSmallintField;
    T_faturasCodigo_Taxa_de_Juros: TStringField;
    T_faturasValor_Taxa_de_Juros: TFloatField;
    T_faturasROF_BACEN: TStringField;
    T_faturasPercentual_ROF: TFloatField;
    T_faturasDT_PREV_PAG_CAMBIO: TDateTimeField;
    T_faturasDT_PAG_CAMBIO: TDateTimeField;
    T_faturasSTATUS_CAMBIO: TStringField;
    T_faturasCONTRATO_CAMBIO: TStringField;
    T_faturasSALDO_CAMBIO: TFloatField;
    T_faturasDtEmissao: TDateTimeField;
    T_faturasPeso_Libra: TSmallintField;
    T_conhecimentoEmpresa: TStringField;
    T_conhecimentoFilial: TStringField;
    T_conhecimentoProcesso: TStringField;
    T_conhecimentoVia: TStringField;
    T_conhecimentoMultimodal: TSmallintField;
    T_conhecimentoPLaca: TStringField;
    T_conhecimentoLacre: TStringField;
    T_conhecimentoEmbarcacao: TStringField;
    T_conhecimentoTransportador: TStringField;
    T_conhecimentoTipodoccarga: TStringField;
    T_conhecimentoNumerodoccarga: TStringField;
    T_conhecimentoNumeromaster: TStringField;
    T_conhecimentoLocal: TStringField;
    T_conhecimentoData: TDateTimeField;
    T_conhecimentoUtilizacao: TStringField;
    T_conhecimentoTipomanifesto: TStringField;
    T_conhecimentoNumeromanifesto: TStringField;
    T_conhecimentoCodigo_Presenca_Carga: TStringField;
    T_conhecimentoPeso_Bruto: TFloatField;
    T_conhecimentoPeso_Liquido: TFloatField;
    T_conhecimentoAgente: TStringField;
    T_conhecimentoPais_Procedencia: TStringField;
    T_conhecimentoURF_chegada: TStringField;
    T_conhecimentoData_Chegada_URF_Cheg: TDateTimeField;
    T_conhecimentoURF_Despacho: TStringField;
    T_conhecimentoData_Chegada_URF_Desp: TDateTimeField;
    T_conhecimentoRecinto_Alfandegario: TStringField;
    T_conhecimentoSetor_Alfandegario: TStringField;
    T_conhecimentoArmazem: TStringField;
    T_conhecimentoOperacao_FUNDAP: TSmallintField;
    T_conhecimentoContratante_OPCAMBIAL: TStringField;
    T_conhecimentoMoeda_Frete: TStringField;
    T_conhecimentoFrete_Prepaid: TFloatField;
    T_conhecimentoFrete_Collect: TFloatField;
    T_conhecimentoFrete_Ter_Nac: TFloatField;
    T_conhecimentoMoeda_Seguro: TStringField;
    T_conhecimentoValor_Seguro: TFloatField;
    T_conhecimentoMoeda_Despesas_ate_FOB: TStringField;
    T_conhecimentoValor_Despesas_ate_FOB: TFloatField;
    T_conhecimentoUnidade: TStringField;
    T_conhecimentoQuantidade: TFloatField;
    T_taxaEmpresa: TStringField;
    T_taxaFilial: TStringField;
    T_taxaProcesso: TStringField;
    T_taxaMoeda: TStringField;
    T_taxaTaxa_conversao: TFloatField;
    T_taxaTaxa_conversaoc: TFloatField;
    T_processosEmpresa: TStringField;
    T_processosFilial: TStringField;
    T_processosCodigo: TStringField;
    T_processosData: TDateTimeField;
    T_processosImportador: TStringField;
    T_processosCodigo_Cliente: TStringField;
    T_processosTipo_Declaracao: TStringField;
    T_processosTipo: TStringField;
    T_processosContrato: TStringField;
    T_processosLocal_Inventario: TStringField;
    T_processosNR_DECL_IMP_MICRO: TStringField;
    T_processosNR_DECL_IMP_PROT: TStringField;
    T_processosNR_DECLARACAO_IMP: TStringField;
    T_processosDT_PROCESSAMENTO: TStringField;
    T_processosDT_TRANSMISSAO: TStringField;
    T_processosDT_REGISTRO_DI: TStringField;
    T_processosDT_DESEMBARACO: TDateTimeField;
    T_processosDT_DISTRIBUICAO: TDateTimeField;
    T_processosCanal: TStringField;
    T_processosFiscal: TStringField;
    T_processosStatus: TStringField;
    T_processosCOD_SIT: TStringField;
    T_processosCD_MOTIVO_TRANS: TStringField;
    T_processosIN_MOEDA_UNICA: TSmallintField;
    T_processosTX_INFO_COMPL: TMemoField;
    T_processosCD_TIPO_PGTO_TRIB: TStringField;
    T_processosNumero_RCR: TStringField;
    T_processosData_Entrada_RCR: TDateTimeField;
    T_processosData_Aprovacao_RCR: TDateTimeField;
    T_processosFundamentacao_RCR: TStringField;
    T_processosProcurador: TStringField;
    T_processosNumero_TR: TStringField;
    T_processosData_Entrada_TR: TDateTimeField;
    T_processosData_vencimento_TR: TDateTimeField;
    T_processosData_Aprovacao_TR: TDateTimeField;
    T_processosData_Baixa_TR: TDateTimeField;
    T_processosData_CI: TDateTimeField;
    T_processosTipo_Garantia: TStringField;
    T_processosNome_banco_GAR: TStringField;
    T_processosAgencia_GAR: TStringField;
    T_processosData_deposito_GAR: TDateTimeField;
    T_processosNome_titulo_GAR: TStringField;
    T_processosnumeros_titulos_GAR: TStringField;
    T_processosNome_seguradora_GAR: TStringField;
    T_processosapolice_GAR: TStringField;
    T_processosnome_fiador_GAR: TStringField;
    T_processosCNPJ_fiador_GAR: TStringField;
    T_processosendereco_fiador_GAR: TStringField;
    T_processosQuantidade_LI: TFloatField;
    T_processosValor_FOB: TFloatField;
    T_processosValor_CIF: TFloatField;
    T_processosResponsavel_Empresa: TStringField;
    T_processosResponsavel_Importador: TStringField;
    T_processosSaldo_Faturamento: TFloatField;
    T_processosNR_DECL_IMP_MICROC: TStringField;
    T_processosNR_DECL_IMP_PROTC: TStringField;
    T_processosNR_DECLARACAO_IMPC: TStringField;
    T_processosDT_PROCESSAMENTOC: TStringField;
    T_processosDT_TRANSMISSAOC: TStringField;
    T_processosDT_REGISTRO_DIC: TStringField;
    T_processosDT_DESEMBARACOC: TDateTimeField;
    T_processosDT_DISTRIBUICAOC: TDateTimeField;
    T_processosCanalC: TStringField;
    T_processosFiscalC: TStringField;
    T_processosCOD_SITC: TStringField;
    T_processosData_CIC: TDateTimeField;
    T_processosValor_FOBC: TFloatField;
    T_processosValor_CIFC: TFloatField;
    T_processosident_meio1: TStringField;
    T_processosident_meio2: TStringField;
    T_processosCodevento: TStringField;
    T_processosCodobs: TStringField;
    T_processosObs_especifica: TStringField;
    T_processosData_ufollowup: TDateTimeField;
    T_processosHora_ufollowup: TStringField;
    T_processosData_liberacao: TDateTimeField;
    T_processosUrgente: TSmallintField;
    T_processosconsolidado: TSmallintField;
    T_processosPag_proporcional: TSmallintField;
    T_processosTR_VAL_FOB_US: TFloatField;
    T_processosTR_VAL_CIF_US: TFloatField;
    T_processosTR_VAL_II: TFloatField;
    T_processosTR_VAL_IPI: TFloatField;
    T_processosDDE: TStringField;
    T_processosProcesso_Adm: TStringField;
    T_processosProc_Adm_Data_Entrada: TDateTimeField;
    T_processosFaturado: TSmallintField;
    T_processosFechado: TSmallintField;
    T_processosCentro_Custo: TStringField;
    T_processosProcurador2: TStringField;
    T_processosTR_VAL_PIS: TFloatField;
    T_processosTR_VAL_COFINS: TFloatField;
    T_processosRCR_LOCAL: TStringField;
    T_processosResponsavel_EmpresaC: TStringField;
    T_processosvinc_processo: TSmallintField;
    T_processosproc_vinc: TStringField;
    lblRotuloCNPJ: TLabel;
    lblCNPJ: TLabel;
    q_CNPJ: TQuery;
    q_CNPJCNPJ_CPF_COMPLETO: TStringField;
    btnLocalizar: TSpeedButton;
    me_nossaref: TMaskEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure b_excluiClick(Sender: TObject);
    procedure apagacunit();
    procedure b_gravaClick(Sender: TObject);
    procedure b_novoClick(Sender: TObject);
    procedure T_custosAfterPost(DataSet: TDataSet);
    procedure me_nossarefKeyPress(Sender: TObject; var Key: Char);
    procedure b1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure teste();
    procedure btnLocalizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_custos: Tf_custos;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_custos.FormActivate(Sender: TObject);
begin
     Left := 1;
     Top  := 1;

{f_custos.left := 0;
f_custos.top  := 0;}
if v_nivel='0' then b1.Visible := true;
end;

procedure Tf_custos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action   := cafree;
f_custos := nil;
f_mscomex.custos1.enabled := true;

end;

procedure Tf_custos.b_excluiClick(Sender: TObject);
begin
if MessageDlg('Confirma exclusão deste custo?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
    apagacunit();
    t_custos.Delete;
end;
end;

procedure Tf_custos.apagacunit();
begin
t_unitarios.findkey([t_custosempresa.asstring,t_custosfilial.asstring,t_custosprocesso.asstring]);
while ((not t_unitarios.eof) and(t_unitariosempresa.asstring = t_custosempresa.asstring) and (t_unitariosfilial.asstring = t_custosfilial.asstring) and (t_unitariosprocesso.asstring = t_custosprocesso.asstring))do begin
      if ((t_unitariostipo_custo.asstring = t_custostipo_custo.asstring) and (T_unitariosreg.asstring = t_custosreg.asstring)) then t_unitarios.delete
      else t_unitarios.next;
end;

end;

procedure Tf_custos.b_gravaClick(Sender: TObject);
begin
//t_custos.edit;
t_custos.post;
t_custos.Refresh;
teste();

end;

procedure Tf_custos.b_novoClick(Sender: TObject);
begin
t_custos.append;
end;

procedure Tf_custos.T_custosAfterPost(DataSet: TDataSet);
var qrateio:string;
    qpesototal:real;
    qvalortotal:real;
    qtaxarateio:real;
    qtaxa:real;

begin
{
apagacunit();
qrateio := 'VALOR';
if t_tiposcustos.findkey([t_custosempresa.asstring,t_custosfilial.asstring,t_custostipo_custo.asstring]) then qrateio := t_tiposcustosrateio.asstring;

qvalortotal := 0;
qpesototal  := 0;
t_itensfaturas.first;
////t_itensfaturas.findkey([t_custosempresa.asstring,t_custosfilial.asstring,t_custosprocesso.asstring]);
///while ((not t_itensfaturas.eof) and (t_itensfaturasempresa.asstring=t_custosempresa.asstring) and (t_itensfaturasfilial.asstring=t_custosfilial.asstring) and (t_itensfaturasprocesso.asstring= t_custosprocesso.asstring ) and (t_unitariosprocesso.asstring = t_custosprocesso.asstring) ) do begin
while (not t_itensfaturas.eof) do begin
////     showmessage(t_custosfatura.asstring+'   '+t_itensfaturasfatura.asstring  );
     if (t_custosfatura.asstring = '') or (t_custosfatura.asstring = t_itensfaturasfatura.asstring) then begin
         t_faturas.findkey([t_itensfaturasempresa.asstring,t_itensfaturasfilial.asstring,t_itensfaturasprocesso.asstring,t_itensfaturasfatura.asstring]);
         if t_taxa.findkey([t_faturasempresa.asstring,t_faturasfilial.asstring,t_faturasprocesso.asstring,t_faturasmoeda.asstring]) then
            qtaxa   := t_taxataxa_conversao.asfloat
         else qtaxa := 1 ;
         qvalortotal := (qvalortotal+(t_itensfaturasvalor_total.asfloat*qtaxa));
         qpesototal  := (qpesototal+t_itensfaturasPeso_Total_Acertado.asfloat);
     end;
     t_itensfaturas.next;
end;
////showmessage(floattostr(qvalortotal)+'    '+floattostr(qpesototal ));
if qrateio='VALOR' then  begin
   if qvalortotal > 0 then
      qtaxarateio := (t_custosvalor.asfloat/qvalortotal)
   else begin
        showmessage('Não foi possível efetuar rateios unitários, itens de fatura sem valor!');
        qtaxarateio := 0;
   end;
end
else begin
     if qpesototal >0 then
        qtaxarateio := (t_custosvalor.asfloat/qpesototal)
   else begin
        showmessage('Não foi possível efetuar rateios unitários, itens de fatura sem peso!');
        qtaxarateio := 0;
   end;
end;

if qtaxarateio > 0 then begin
t_itensfaturas.first;
////t_itensfaturas.findkey([t_custosempresa.asstring,t_custosfilial.asstring,t_custosprocesso.asstring]);
////while ((not t_itensfaturas.eof) and (t_itensfaturasempresa.asstring=t_custosempresa.asstring) and (t_itensfaturasfilial.asstring=t_custosfilial.asstring) and (t_itensfaturasprocesso.asstring= t_custosprocesso.asstring ) ) do begin
while (not t_itensfaturas.eof) do begin
     if (t_custosfatura.asstring = '') or (t_custosfatura.asstring = t_itensfaturasfatura.asstring) then begin
     t_faturas.findkey([t_itensfaturasempresa.asstring,t_itensfaturasfilial.asstring,t_itensfaturasprocesso.asstring,t_itensfaturasfatura.asstring]);
     if t_taxa.findkey([t_faturasempresa.asstring,t_faturasfilial.asstring,t_faturasprocesso.asstring,t_faturasmoeda.asstring]) then
        qtaxa   := t_taxataxa_conversao.asfloat
     else qtaxa := 1 ;

    t_unitarios.append;
    T_unitariosEmpresa.asstring  := t_custosempresa.asstring;
    T_unitariosFilial.asstring   := t_custosfilial.asstring;
    T_unitariosProcesso.asstring := t_custosprocesso.asstring;
    T_unitariosFatura.asstring   := t_itensfaturasfatura.asstring;
    T_unitariosSequencial.asString := t_itensfaturassequencial.asstring;
    T_unitariosTipo_Custo.asstring := t_custostipo_custo.asstring;
    T_unitariosreg.asstring := t_custosreg.asstring;
    if qrateio = 'VALOR' then  T_unitariosValor.asfloat := ((T_itensfaturasValor_Unitario.asfloat*qtaxa)*qtaxarateio)
    else T_unitariosValor.asfloat := (T_itensfaturasPeso_Unitario_Acertado.asfloat*qtaxarateio);
    t_unitarios.post;
    end;
    t_itensfaturas.Next;
end
end;
}
end;

procedure Tf_custos.me_nossarefKeyPress(Sender: TObject; var Key: Char);
begin
   if key = chr(13) then DBLC_TIPO.setfocus;
end;

procedure Tf_custos.b1Click(Sender: TObject);
begin
T_PROCESSOS.FIRST;
while not t_processos.eof do begin
      me_nossaref.text := t_processoscodigo.asstring;
      me_nossaref.refresh;
      t_custos.first;
      while not t_custos.eof do begin
            t_custos.edit;
            t_custos.post;
            t_custos.next;
      end;
      t_processos.next;
end;
end;

procedure Tf_custos.FormCreate(Sender: TObject);
begin
t_processos.open;
t_parametros.open;
t_custos.open;
T_tiposcustos.open;
T_faturas.open;
T_unitarios.open;
T_itensfaturas.open;
T_taxa.open;
end;

procedure Tf_custos.teste();
var qrateio:string;
    qpesototal:real;
    qvalortotal:real;
    qtaxarateio:real;
    qtaxa:real;

begin

apagacunit();
qrateio := 'VALOR';
if t_tiposcustos.findkey([t_custosempresa.asstring,t_custosfilial.asstring,t_custostipo_custo.asstring]) then qrateio := t_tiposcustosrateio.asstring;

qvalortotal := 0;
qpesototal  := 0;
t_itensfaturas.first;
////t_itensfaturas.findkey([t_custosempresa.asstring,t_custosfilial.asstring,t_custosprocesso.asstring]);
///while ((not t_itensfaturas.eof) and (t_itensfaturasempresa.asstring=t_custosempresa.asstring) and (t_itensfaturasfilial.asstring=t_custosfilial.asstring) and (t_itensfaturasprocesso.asstring= t_custosprocesso.asstring ) and (t_unitariosprocesso.asstring = t_custosprocesso.asstring) ) do begin
while (not t_itensfaturas.eof) do begin
////     showmessage(t_custosfatura.asstring+'   '+t_itensfaturasfatura.asstring  );
     if (t_custosfatura.asstring = '') or (t_custosfatura.asstring = t_itensfaturasfatura.asstring) then begin
         t_faturas.findkey([t_itensfaturasempresa.asstring,t_itensfaturasfilial.asstring,t_itensfaturasprocesso.asstring,t_itensfaturasfatura.asstring]);
         if t_taxa.findkey([t_faturasempresa.asstring,t_faturasfilial.asstring,t_faturasprocesso.asstring,t_faturasmoeda.asstring]) then
            qtaxa   := t_taxataxa_conversao.asfloat
         else qtaxa := 1 ;
         qvalortotal := (qvalortotal+(t_itensfaturasvalor_total.asfloat*qtaxa));
         qpesototal  := (qpesototal+t_itensfaturasPeso_Total_Acertado.asfloat);
     end;
     t_itensfaturas.next;
end;
////showmessage(floattostr(qvalortotal)+'    '+floattostr(qpesototal ));
if qrateio='VALOR' then  begin
   if qvalortotal > 0 then
      qtaxarateio := (t_custosvalor.asfloat/qvalortotal)
   else begin
        showmessage('Não foi possível efetuar rateios unitários, itens de fatura sem valor!');
        qtaxarateio := 0;
   end;
end
else begin
     if qpesototal >0 then
        qtaxarateio := (t_custosvalor.asfloat/qpesototal)
   else begin
        showmessage('Não foi possível efetuar rateios unitários, itens de fatura sem peso!');
        qtaxarateio := 0;
   end;
end;

if qtaxarateio > 0 then begin
t_itensfaturas.first;
////t_itensfaturas.findkey([t_custosempresa.asstring,t_custosfilial.asstring,t_custosprocesso.asstring]);
////while ((not t_itensfaturas.eof) and (t_itensfaturasempresa.asstring=t_custosempresa.asstring) and (t_itensfaturasfilial.asstring=t_custosfilial.asstring) and (t_itensfaturasprocesso.asstring= t_custosprocesso.asstring ) ) do begin
while (not t_itensfaturas.eof) do begin
     if (t_custosfatura.asstring = '') or (t_custosfatura.asstring = t_itensfaturasfatura.asstring) then begin
     t_faturas.findkey([t_itensfaturasempresa.asstring,t_itensfaturasfilial.asstring,t_itensfaturasprocesso.asstring,t_itensfaturasfatura.asstring]);
     if t_taxa.findkey([t_faturasempresa.asstring,t_faturasfilial.asstring,t_faturasprocesso.asstring,t_faturasmoeda.asstring]) then
        qtaxa   := t_taxataxa_conversao.asfloat
     else qtaxa := 1 ;

    t_unitarios.append;
    T_unitariosEmpresa.asstring  := t_custosempresa.asstring;
    T_unitariosFilial.asstring   := t_custosfilial.asstring;
    T_unitariosProcesso.asstring := t_custosprocesso.asstring;
    T_unitariosFatura.asstring   := t_itensfaturasfatura.asstring;
    T_unitariosSequencial.asString := t_itensfaturassequencial.asstring;
    T_unitariosTipo_Custo.asstring := t_custostipo_custo.asstring;
    T_unitariosreg.asstring := t_custosreg.asstring;
    if qrateio = 'VALOR' then  T_unitariosValor.asfloat := ((T_itensfaturasValor_Unitario.asfloat*qtaxa)*qtaxarateio)
    else T_unitariosValor.asfloat := (T_itensfaturasPeso_Unitario_Acertado.asfloat*qtaxarateio);
    t_unitarios.post;
    end;
    t_itensfaturas.Next;
end;
end;
end;

procedure Tf_custos.btnLocalizarClick(Sender: TObject);
begin
   if not t_processos.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,ME_nossaref.text]) then begin
      MessageDlg('Processo não cadastrado!', mtInformation,[mbOk], 0);
      ME_nossaref.text    := '';
      ME_nossaref.setfocus;
   end

   else begin
         // eduardo.souza 01/02/2012 - Para processos fechados - Exibi mensagem e fecha a tela
         If (IsClosedProcess( me_nossaref.Text, f_custos )) Then
           Abort;
         //--
         q_CNPJ.Close;
         q_CNPJ.ParamByName('pCodigo').Value := me_nossaref.Text;
         q_CNPJ.Open;

         lblCNPJ.Caption:=q_CNPJCNPJ_CPF_COMPLETO.Value;

         lblRotuloCNPJ.Visible:=True;
         lblCNPJ.Visible:=True;

   //mm 24/07/2006 - usuariosclientes
        if f_mscomex.q_usucli.recordcount>0 then begin
           if f_mscomex.q_usucli.locate('Importador',t_Processosimportador.asstring,[]) then begin
              v_autorizadocli := 1;
           end
           else begin
              v_autorizadocli := 0;
           end;
        end
        else begin
              v_autorizadocli := 1;
        end;
        If v_autorizadocli = 1 Then Begin

           F_MSCOMEX.atualizacpastas(ME_nossaref.text);
//           cnpj := qrprocessosqcnpj.asstring;
//           cnpj := Copy(cnpj,1,2)+'.'+Copy(cnpj,3,3)+'.'+Copy(cnpj,6,3)+'/'+Copy(cnpj,9,4)+'-'+Copy(cnpj,13,2);

//           l_cliente.Caption := qrProcessosCliente.AsString+' - CNPJ: '+cnpj;
           pnlPrincipal.Visible := True;
//           pnlBaixo.Visible := True;

        End
        Else Begin
//           l_cliente.Caption := '';
           pnlPrincipal.Visible := False;
//           pnlBaixo.Visible := False;
           Showmessage(v_usuario+', este Processo pertence a um Cliente que seu acesso não está permitido!');
        End;

   end;

end;

end.
