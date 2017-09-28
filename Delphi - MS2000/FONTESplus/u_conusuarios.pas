unit u_conusuarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, StdCtrls, ComCtrls, Gauges, DBCtrls, Buttons,
  Grids, DBGrids;

type
  Tf_conusuarios = class(TForm)
    q_processos: TQuery;
    ds_qprocessos: TDataSource;
    re_pendencias: TRichEdit;
    Panel1: TPanel;
    t_processos: TTable;
    ds_processos: TDataSource;
    t_processosEmpresa: TStringField;
    t_processosFilial: TStringField;
    t_processosCdigo: TStringField;
    t_processosData: TDateTimeField;
    t_processosImportador: TStringField;
    t_processosCdigo_Cliente: TStringField;
    t_processosTipo_Declarao: TStringField;
    t_processosTipo: TStringField;
    t_processosContrato: TStringField;
    t_processosLocal_Inventario: TStringField;
    t_processosNR_DECL_IMP_MICRO: TStringField;
    t_processosNR_DECL_IMP_PROT: TStringField;
    t_processosNR_DECLARACAO_IMP: TStringField;
    t_processosDT_PROCESSAMENTO: TStringField;
    t_processosDT_TRANSMISSAO: TStringField;
    t_processosDT_REGISTRO_DI: TStringField;
    t_processosDT_DESEMBARACO: TDateTimeField;
    t_processosCanal: TStringField;
    t_processosFiscal: TStringField;
    t_processosStatus: TStringField;
    t_processosCOD_SIT: TStringField;
    t_processosCD_MOTIVO_TRANS: TStringField;
    t_processosIN_MOEDA_UNICA: TBooleanField;
    t_processosTX_INFO_COMPL: TMemoField;
    t_processosCD_TIPO_PGTO_TRIB: TStringField;
    t_processosNumero_RCR: TStringField;
    t_processosData_Entrada_RCR: TDateTimeField;
    t_processosData_Aprovacao_RCR: TDateTimeField;
    t_processosFundamentacao_RCR: TStringField;
    t_processosProcurador: TStringField;
    t_processosNumero_TR: TStringField;
    t_processosData_Entrada_TR: TDateTimeField;
    t_processosData_Aprovacao_TR: TDateTimeField;
    t_processosTipo_Garantia: TStringField;
    t_processosNome_banco_GAR: TStringField;
    t_processosAgencia_GAR: TStringField;
    t_processosData_deposito_GAR: TDateTimeField;
    t_processosNome_titulo_GAR: TStringField;
    t_processosnumeros_titulos_GAR: TStringField;
    t_processosNome_seguradora_GAR: TStringField;
    t_processosapolice_GAR: TStringField;
    t_processosnome_fiador_GAR: TStringField;
    t_processosCNPJ_fiador_GAR: TStringField;
    t_processosendereco_fiador_GAR: TStringField;
    t_processosQuantidade_LI: TFloatField;
    t_processosValor_FOB: TFloatField;
    t_processosValor_CIF: TFloatField;
    t_conhecimento: TTable;
    ds_conhecimento: TDataSource;
    t_conhecimentoEmpresa: TStringField;
    t_conhecimentoFilial: TStringField;
    t_conhecimentoProcesso: TStringField;
    t_conhecimentoVia: TStringField;
    t_conhecimentoMultimodal: TBooleanField;
    t_conhecimentoPLaca: TStringField;
    t_conhecimentoLacre: TStringField;
    t_conhecimentoEmbarcacao: TStringField;
    t_conhecimentoTransportador: TStringField;
    t_conhecimentoTipodoccarga: TStringField;
    t_conhecimentoNumerodoccarga: TStringField;
    t_conhecimentoNumeromaster: TStringField;
    t_conhecimentoLocal: TStringField;
    t_conhecimentoData: TDateTimeField;
    t_conhecimentoUtilizacao: TStringField;
    t_conhecimentoTipomanifesto: TStringField;
    t_conhecimentoNumeromanifesto: TStringField;
    t_conhecimentoCodigo_Presenca_Carga: TStringField;
    t_conhecimentoPeso_Bruto: TFloatField;
    t_conhecimentoPeso_Liquido: TFloatField;
    t_conhecimentoAgente: TStringField;
    t_conhecimentoPais_Procedencia: TStringField;
    t_conhecimentoURF_chegada: TStringField;
    t_conhecimentoData_Chegada_URF_Cheg: TDateTimeField;
    t_conhecimentoURF_Despacho: TStringField;
    t_conhecimentoData_Chegada_URF_Desp: TDateTimeField;
    t_conhecimentoRecinto_Alfandegario: TStringField;
    t_conhecimentoSetor_Alfandegario: TStringField;
    t_conhecimentoArmazem: TStringField;
    t_conhecimentoOperacao_FUNDAP: TBooleanField;
    t_conhecimentoContratante_OPCAMBIAL: TStringField;
    t_conhecimentoMoeda_Frete: TStringField;
    t_conhecimentoFrete_Prepaid: TFloatField;
    t_conhecimentoFrete_Collect: TFloatField;
    t_conhecimentoFrete_Ter_Nac: TFloatField;
    t_conhecimentoMoeda_Seguro: TStringField;
    t_conhecimentoValor_Seguro: TFloatField;
    t_conhecimentoMoeda_Despesas_ate_FOB: TStringField;
    t_conhecimentoValor_Despesas_ate_FOB: TFloatField;
    t_faturas: TTable;
    ds_faturas: TDataSource;
    t_faturasEmpresa: TStringField;
    t_faturasFilial: TStringField;
    t_faturasProcesso: TStringField;
    t_faturasCdigo: TStringField;
    t_faturasExportador: TStringField;
    t_faturasIncoterm: TStringField;
    t_faturasVinculacao: TStringField;
    t_faturasCondio: TStringField;
    t_faturasValorTotal: TFloatField;
    t_faturasPesoTotal: TFloatField;
    t_faturasPesoTotal_Acertado: TFloatField;
    t_faturasAcrescimos_Reducoes: TBooleanField;
    t_faturasMoeda: TStringField;
    t_faturasCoberturaCambial: TStringField;
    t_faturasMotivoSemCobertura: TStringField;
    t_faturasModalidadedePagamento: TStringField;
    t_faturasInstituicaoFinanciadora: TStringField;
    t_faturasTipoParcela: TStringField;
    t_faturasNumerodeparcelas: TStringField;
    t_faturasPeriodicidade: TStringField;
    t_faturasValordasParcelas: TFloatField;
    t_faturasIndicadorPeriodicidade: TStringField;
    t_faturasTaxadeJuros: TBooleanField;
    t_faturasCodigoTaxadeJuros: TStringField;
    t_faturasValorTaxadeJuros: TFloatField;
    t_faturasROFBACEN: TStringField;
    t_faturasPercentualROF: TFloatField;
    t_itensfaturas: TTable;
    ds_itensfaturas: TDataSource;
    t_itensfaturasEmpresa: TStringField;
    t_itensfaturasFilial: TStringField;
    t_itensfaturasProcesso: TStringField;
    t_itensfaturasFatura: TStringField;
    t_itensfaturasSequencial: TStringField;
    t_itensfaturasPagina: TStringField;
    t_itensfaturasProduto: TStringField;
    t_itensfaturasDescricao_Produto: TStringField;
    t_itensfaturasFabricante: TStringField;
    t_itensfaturasNCM: TStringField;
    t_itensfaturasUnidade: TStringField;
    t_itensfaturasUnidade_Medida_Estat: TStringField;
    t_itensfaturasDestaque_NCM: TStringField;
    t_itensfaturasNALADI: TStringField;
    t_itensfaturasReferencia: TStringField;
    t_itensfaturasNumero_serie: TStringField;
    t_itensfaturasPO: TStringField;
    t_itensfaturasQuantidade: TFloatField;
    t_itensfaturasValorUnitrio: TFloatField;
    t_itensfaturasValorTotal: TFloatField;
    t_itensfaturasPesoUnitrio: TFloatField;
    t_itensfaturasPeso_Unitario_Acertado: TFloatField;
    t_itensfaturasPesoTotal: TFloatField;
    t_itensfaturasPeso_Total_Acertado: TFloatField;
    t_itensfaturasSaldo_Tributavel: TFloatField;
    t_itensfaturasRateio_Acrescimos: TFloatField;
    t_itensfaturasRateio_Deducoes: TFloatField;
    t_itensfaturasRateio_Embalagem: TFloatField;
    t_itensfaturasRateio_Frete_Interno_imp: TFloatField;
    t_itensfaturasRateio_Seguro_Interno: TFloatField;
    t_itensfaturasRateio_outras_import: TFloatField;
    t_itensfaturasRateio_startup: TFloatField;
    t_itensfaturasRateio_jurosfin: TFloatField;
    t_itensfaturasRateio_montagem: TFloatField;
    t_itensfaturasRateio_Frete_Interno_exp: TFloatField;
    t_itensfaturasRateio_carga_exp: TFloatField;
    t_itensfaturasRateio_outras_export: TFloatField;
    t_itensfaturasRateio_frete_fatura: TFloatField;
    t_itensfaturasRateio_seguro_fatura: TFloatField;
    t_itensfaturasRateio_carga_imp: TFloatField;
    t_itensfaturasRateio_Despesas_ate_FOB: TFloatField;
    t_itensfaturasRateio_Frete_prepaid: TFloatField;
    t_itensfaturasRateio_Frete_collect: TFloatField;
    t_itensfaturasRateio_Frete_ternac: TFloatField;
    t_itensfaturasRateio_Seguro: TFloatField;
    t_itensfaturasValor_Aduaneiro: TFloatField;
    t_itensfaturasValor_mercadoria: TFloatField;
    t_itensfaturasVMLE: TFloatField;
    t_itensfaturasBase_Calc_II: TFloatField;
    t_itensfaturasAcresc_reduc_Valaduan: TFloatField;
    t_itensfaturasCOD_SIT: TStringField;
    t_itensfaturasCNPJ: TStringField;
    t_itensfaturasFiel_nome: TStringField;
    t_itensfaturasFiel_cpf: TStringField;
    t_tributacao: TTable;
    ds_tributacao: TDataSource;
    t_followup: TTable;
    ds_followup: TDataSource;
    t_tributacaoEmpresa: TStringField;
    t_tributacaoFilial: TStringField;
    t_tributacaoProcesso: TStringField;
    t_tributacaoFatura: TStringField;
    t_tributacaoSequencial_Item: TStringField;
    t_tributacaoSequencial: TStringField;
    t_tributacaoCertificado_Origem: TStringField;
    t_tributacaoAto_Concessorio: TStringField;
    t_tributacaoMotivo_Adm_Temp: TStringField;
    t_tributacaoCD_METOD_VALORACAO: TStringField;
    t_tributacaoCD_APLICACAO_MERC: TStringField;
    t_tributacaoIN_BEM_ENCOMENDA: TBooleanField;
    t_tributacaoIN_MATERIAL_USADO: TBooleanField;
    t_tributacaoCD_TIPO_ACORDO_TAR: TStringField;
    t_tributacaoACORDO_ALADI: TStringField;
    t_tributacaoNumero_Ato_Legal_ALADI: TStringField;
    t_tributacaoALIQUOTA_ALADI: TFloatField;
    t_tributacaoRegime_Tributacao_II: TStringField;
    t_tributacaoAliq_NCM_II: TFloatField;
    t_tributacaoValor_II_Devido: TFloatField;
    t_tributacaoValor_II_a_recolher: TFloatField;
    t_tributacaoFundamento_Legal_II: TStringField;
    t_tributacaoNumero_Ato_Legal_II: TStringField;
    t_tributacaoRegime_Tributacao_IPI: TStringField;
    t_tributacaoBase_Calc_IPI: TFloatField;
    t_tributacaoAliq_NCM_IPI: TFloatField;
    t_tributacaoValor_IPI_Devido: TFloatField;
    t_tributacaoValor_IPI_a_recolher: TFloatField;
    t_tributacaoNumero_Ato_Legal_IPI: TStringField;
    t_tributacaoPercentual_Reducao_II: TFloatField;
    t_tributacaoPercentual_EX: TFloatField;
    t_tributacaoPercentual_Reduca_IPI: TFloatField;
    t_tributacaoQuantidade: TFloatField;
    t_tributacaoAdicao: TStringField;
    t_tributacaoSeq_Adicao: TSmallintField;
    t_tributacaoDDE: TStringField;
    t_tributacaoRE: TStringField;
    t_followupEmpresa: TStringField;
    t_followupFilial: TStringField;
    t_followupProcesso: TStringField;
    t_followupSequencial: TStringField;
    t_followupCodevento: TStringField;
    t_followupEvento: TStringField;
    t_followupCodobs: TStringField;
    t_followupObservao: TStringField;
    t_followupObs_especifica: TStringField;
    t_followupData: TDateTimeField;
    t_followupHora: TStringField;
    q_processosEmpresa: TStringField;
    q_processosFilial: TStringField;
    q_processosProcesso: TStringField;
    q_processosUsuario: TStringField;
    Panel2: TPanel;
    Label1: TLabel;
    g_processa: TGauge;
    Panel3: TPanel;
    Shape1: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Label5: TLabel;
    Panel4: TPanel;
    Label6: TLabel;
    t_parametros: TTable;
    ds_parametros: TDataSource;
    t_usuarios: TTable;
    ds_usuarios: TDataSource;
    t_parametrosEmpresa: TStringField;
    t_parametrosFilial: TStringField;
    t_parametrosNumerador_Processos: TStringField;
    t_usuariosEmpresa: TStringField;
    t_usuariosFilial: TStringField;
    t_usuariosUsuario: TStringField;
    t_usuariosSenha: TStringField;
    t_usuariosNome_Completo: TStringField;
    t_usuariosDiretorio_SISCOMEX: TStringField;
    t_usuariosNivel: TStringField;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    b_imprime: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure b_imprimeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_conusuarios: Tf_conusuarios;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_conusuarios.FormActivate(Sender: TObject);
var ok:boolean;
begin
f_conpendencias.left := 0;
f_conpendencias.top  := 0;
q_processos.close;
q_processos.Params[0].AsString := t_usuariosempresa.asstring;
q_processos.Params[1].AsString := t_usuariosfilial.asstring;
q_processos.Params[2].AsString := t_usuariosusuario.asstring;
q_processos.ExecSQL;
q_processos.active := true;

{t_processos.open;
t_conhecimento.open;
t_faturas.open;
t_itensfaturas.open;
t_tributacao.open;
t_followup.open;

t_processos.close;
t_conhecimento.close;
t_faturas.close;
t_itensfaturas.close;
t_tributacao.close;
t_followup.close;

if t_processos.state = dsInactive  then	t_processos.open;
if t_conhecimento.state = dsInactive  then	t_conhecimento.open;
if t_faturas.state = dsInactive  then	t_faturas.open;
if t_itensfaturas.state = dsInactive  then	t_itensfaturas.open;
if t_tributacao.state = dsInactive  then	t_tributacao.open;
if t_followup.state = dsInactive  then	t_followup.open;}

panel2.visible := true;
panel2.refresh;
panel3.refresh;
g_processa.MaxValue := q_processos.recordcount;
g_processa.progress := 0;

re_pendencias.clear;
re_pendencias.SelAttributes.Color := clBlack;
re_pendencias.selAttributes.style := [fsbold];
re_pendencias.Lines.Add('Pendências do Usuário: '+t_usuariosnome_completo.asstring);
re_pendencias.Lines.Add(' ');
q_processos.first;
while ( not q_processos.eof ) do begin
      g_processa.progress := g_processa.progress+1;

      re_pendencias.SelAttributes.Color := clBlack;
      re_pendencias.selAttributes.style := [fsbold];
      re_pendencias.Lines.Add('*** Processo: '+q_processosprocesso.asstring+' ***');
      re_pendencias.Lines.Add(' ');
      ok := true;
      re_pendencias.selAttributes.style := [];
      re_pendencias.SelAttributes.Color := clMaroon;
      if t_processosData.asstring              ='' then begin
         ok:=false;
         re_pendencias.Lines.Add('Informar a data de Abertura do Processo.');
      end;
      if t_processosImportador.asstring        ='' then  begin
         ok:=false;
         re_pendencias.Lines.Add('Informar a Importador.');
      end;
      if t_processosCdigo_Cliente.asstring     ='' then begin
         ok:=false;
         re_pendencias.Lines.Add('Informar a Referência do Cliente.');
      end;
      if t_processosTipo_Declarao.asstring     ='' then begin
         ok:=false;
         re_pendencias.Lines.Add('Informar o Tipo de Declaração.');
      end;
      if t_processosTipo.asstring              ='' then begin
         ok:=false;
         re_pendencias.Lines.Add('Informar a Tipo de Processo.');
      end;
      if t_processosContrato.asstring          ='' then  begin
         ok:=false;
         re_pendencias.Lines.Add('Informar o Contrato.');
      end;
      if t_processosLocal_Inventario.asstring  ='' then begin
         ok:=false;
         re_pendencias.Lines.Add('Informar o Local de Inventário.');
      end;
      if t_processosNR_DECLARACAO_IMP.asstring ='' then begin
         ok:=false;
         re_pendencias.Lines.Add('Informar o Número da DI.');
      end;
      if t_processosDT_REGISTRO_DI.asstring    ='' then begin
         ok:=false;
         re_pendencias.Lines.Add('Informar a data de Registro da DI.');
      end;
      if t_processosDT_DESEMBARACO.asstring    ='' then begin
         ok:=false;
         re_pendencias.Lines.Add('Informar a data de Desembaraço.');
      end;
      re_pendencias.selAttributes.style := [fsitalic];
      re_pendencias.SelAttributes.Color := clTeal;
      if t_processosCanal.asstring     ='' then re_pendencias.Lines.Add('Informar o canal.');
      if t_processosFiscal.asstring    ='' then re_pendencias.Lines.Add('Informar a fiscal.');
      if t_processosStatus.asstring    ='' then re_pendencias.Lines.Add('Informar o status do processo.');
      if t_processosCOD_SIT.asstring    ='' then re_pendencias.Lines.Add('Informar a situação fiscal.');
      if t_processosNumero_RCR.asstring         ='' then re_pendencias.Lines.Add('Informar o número do RCR.');
      if t_processosData_Entrada_RCR.asstring   ='' then re_pendencias.Lines.Add('Informar a data de entrada do RCR.');
      if t_processosData_Aprovacao_RCR.asstring ='' then re_pendencias.Lines.Add('Informar a data de aprovação do RCR.');
      if t_processosFundamentacao_RCR.asstring  ='' then re_pendencias.Lines.Add('Informar a fundamentação fo RCR.');
      if t_processosProcurador.asstring         ='' then re_pendencias.Lines.Add('Informar o Procurador.');
      if t_processosNumero_TR.asstring          ='' then re_pendencias.Lines.Add('Informar o número do TR.');
      if t_processosData_Entrada_TR.asstring    ='' then re_pendencias.Lines.Add('Informar a data de entrada do TR.');
      if t_processosData_Aprovacao_TR.asstring  ='' then re_pendencias.Lines.Add('Informar a data de aprovação do TR.');
      if t_conhecimentoVia.asstring  ='' then re_pendencias.Lines.Add('Informar a via de transporte.');
      if t_conhecimentoEmbarcacao.asstring  ='' then re_pendencias.Lines.Add('Informar a embarcação.');
      if t_conhecimentoTransportador.asstring  ='' then re_pendencias.Lines.Add('Informar o transportador.');
      if t_conhecimentoTipodoccarga.asstring  ='' then re_pendencias.Lines.Add('Informar o tipo de carga.');
      if t_conhecimentoNumerodoccarga.asstring  ='' then re_pendencias.Lines.Add('Informar o número do documento de carga.');
      if t_conhecimentoNumeromaster.asstring  ='' then re_pendencias.Lines.Add('Informar o número master.');
      if t_conhecimentoLocal.asstring  ='' then re_pendencias.Lines.Add('Informar o local de embarque.');
      if t_conhecimentoData.asstring  ='' then re_pendencias.Lines.Add('Informar a data de embarque.');
      if t_conhecimentoUtilizacao.asstring  ='' then re_pendencias.Lines.Add('Informar a utilização documento da carga.');
      if t_conhecimentoTipomanifesto.asstring  ='' then re_pendencias.Lines.Add('Informar o tipo de manifesto.');
      if t_conhecimentoNumeromanifesto.asstring  ='' then re_pendencias.Lines.Add('Informar o número do manifesto.');
      if t_conhecimentoCodigo_Presenca_Carga.asstring  ='' then re_pendencias.Lines.Add('Informar o código de presença de carga.');
      if t_conhecimentoPeso_Bruto.asfloat  =0 then re_pendencias.Lines.Add('Informar o peso bruto da carga.');
      if t_conhecimentoPeso_Liquido.asfloat  =0 then re_pendencias.Lines.Add('Informar o peso líquido da carga.');
      if t_conhecimentoPais_Procedencia.asstring  ='' then re_pendencias.Lines.Add('Informar o país de procedência.');
      if t_conhecimentoURF_chegada.asstring  ='' then re_pendencias.Lines.Add('Informar a URF de chegada.');
      if t_conhecimentoData_Chegada_URF_Cheg.asstring  ='' then re_pendencias.Lines.Add('Informar a data de chegada na URF DE CHEGADA.');
      if t_conhecimentoURF_Despacho.asstring  ='' then re_pendencias.Lines.Add('Informar a URF DE DESPACHO.');
      if t_conhecimentoData_Chegada_URF_Desp.asstring  ='' then re_pendencias.Lines.Add('Informar a data de chegada na URF DE DESPACHO.');
      if t_conhecimentoRecinto_Alfandegario.asstring  ='' then re_pendencias.Lines.Add('Informar o recinto alfandegado.');
      if t_conhecimentoSetor_Alfandegario.asstring  ='' then re_pendencias.Lines.Add('Informar o setor alfandegado.');
      if t_conhecimentoMoeda_Frete.asstring  ='' then re_pendencias.Lines.Add('Informar a moeda do frete.');
      if t_conhecimentoMoeda_Seguro.asstring  ='' then re_pendencias.Lines.Add('Informar a moeda do seguro.');

      if t_faturas.eof then re_pendencias.Lines.Add('Verificar faturas deste processo.');
      if t_itensfaturas.eof then re_pendencias.Lines.Add('Verificar os itens de faturas deste processo.');
      if t_tributacao.eof then re_pendencias.Lines.Add('Verificar tributação dos itens de faturas deste processo.');
      if not t_followup.eof then begin
         t_followup.last;
         if t_followupdata.asdatetime < date() then re_pendencias.Lines.Add('Informar Follow Up para este processo nesta data.');
      end;   

      re_pendencias.SelAttributes.Color := clBlue;
      if ok=true then re_pendencias.Lines.Add('Processo OK.');

      re_pendencias.Lines.Add(' ');
      re_pendencias.Lines.Add(' ');
      {re_pendencias.refresh;}
      q_processos.next;
end;

panel2.visible := false;

end;

procedure Tf_conusuarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action := cafree;
f_conpendencias := nil;
f_mscomex.Pendncias2.enabled := true;

end;

procedure Tf_conusuarios.b_imprimeClick(Sender: TObject);
begin
re_pendencias.print('');
end;

end.
