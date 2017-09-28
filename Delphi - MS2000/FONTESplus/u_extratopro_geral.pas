unit u_extratopro_geral;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, Db, DBTables, Grids, DBGrids, Buttons, ComCtrls,
  DBCtrls, ActnList, ComObj, jpeg;

type
  Tf_extratopro_geral = class(TForm)
    pnlTop: TPanel;
    Label26: TLabel;
    ME_nossaref: TMaskEdit;
    qrProcessos: TQuery;
    dsQProcessos: TDataSource;
    l_cliente: TLabel;
    pnlPrincipal: TPanel;
    pnlBaixo: TPanel;
    btnSair: TBitBtn;
    re_processa: TRichEdit;
    q_adr: TQuery;
    q_conhecimento: TQuery;
    q_taxas: TQuery;
    q_fat: TQuery;
    q_cus: TQuery;
    q_itens: TQuery;
    q_cusunit: TQuery;
    Q_emb: TQuery;
    q_icms: TQuery;
    cb_ref: TCheckBox;
    cb_tra: TCheckBox;
    cb_car: TCheckBox;
    cb_reg: TCheckBox;
    cb_emb: TCheckBox;
    cb_fat: TCheckBox;
    cb_imp: TCheckBox;
    cb_ite: TCheckBox;
    cb_cut: TCheckBox;
    cb_cuu: TCheckBox;
    cb_fol: TCheckBox;
    cb_tax: TCheckBox;
    imprimir: TBitBtn;
    psd: TPrinterSetupDialog;
    q_fol: TQuery;
    BitBtn2: TBitBtn;
    qrExcelProc: TQuery;
    cbInfComp: TCheckBox;
    cbRelCont: TCheckBox;
    BitBtn1: TBitBtn;
    qrInfComp: TQuery;
    dsInfComp: TDataSource;
    DBMemo1: TDBMemo;
    qrRelCont: TQuery;
    cbImpDoc: TCheckBox;
    cbTodos: TCheckBox;
    qrExcelDataCredito: TQuery;
    qrExcelDataDebito: TQuery;
    cbDF: TCheckBox;
    DBMemo2: TDBMemo;
    qrObs: TQuery;
    dsObs: TDataSource;
    cb_cuus: TCheckBox;
    p_custosunit: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn3: TBitBtn;
    q_cus_u: TQuery;
    ds_q_cus_u: TDataSource;
    DBGrid1: TDBGrid;
    cb_freteprepaid: TCheckBox;
    cb_fretecollect: TCheckBox;
    cb_freteternac: TCheckBox;
    cb_seguro: TCheckBox;
    cb_fob: TCheckBox;
    cb_ii: TCheckBox;
    cb_ipi: TCheckBox;
    RG_VALOR: TRadioGroup;
    q_conhecimentoEmpresa: TStringField;
    q_conhecimentoFilial: TStringField;
    q_conhecimentoProcesso: TStringField;
    q_conhecimentoqtransporte: TStringField;
    q_conhecimentoqtransportador: TStringField;
    q_conhecimentoqembarcacao: TStringField;
    q_conhecimentoqlocal: TStringField;
    q_conhecimentoqdataembarque: TDateTimeField;
    q_conhecimentoqconhecimento: TStringField;
    q_conhecimentoqtipo: TStringField;
    q_conhecimentoqmaster: TStringField;
    q_conhecimentoqutilizacao: TStringField;
    q_conhecimentoqpaisprocedencia: TStringField;
    q_conhecimentoqurfentrada: TStringField;
    q_conhecimentoqdataurfchegada: TDateTimeField;
    q_conhecimentoqmoedafrete: TStringField;
    q_conhecimentoFrete_Prepaid: TFloatField;
    q_conhecimentoFrete_Collect: TFloatField;
    q_conhecimentoFrete_Ter_Nac: TFloatField;
    q_conhecimentoqmoedaseguro: TStringField;
    q_conhecimentoValor_Seguro: TFloatField;
    q_conhecimentoPeso_Liquido: TFloatField;
    q_conhecimentoPeso_Bruto: TFloatField;
    q_conhecimentoqurfdespacho: TStringField;
    q_conhecimentoqrecinto: TStringField;
    q_conhecimentoqsetor: TStringField;
    q_conhecimentoqdatadespacho: TDateTimeField;
    q_conhecimentoqdocentrada: TStringField;
    q_conhecimentoqtipodocentrada: TStringField;
    q_conhecimentoqpresencacarga: TStringField;
    q_fatq_pro: TStringField;
    q_fatcodmoeda: TStringField;
    q_fatq_fat: TStringField;
    q_fatq_inc: TStringField;
    q_fatq_exp: TStringField;
    q_fatq_end: TStringField;
    q_fatq_com: TStringField;
    q_fatq_bai: TStringField;
    q_fatq_cid: TStringField;
    q_fatq_est: TStringField;
    q_fatq_moe: TStringField;
    q_fatq_val: TFloatField;
    q_cusProcesso: TStringField;
    q_cusDescricao: TStringField;
    q_cusValor_Registrado: TFloatField;
    q_cusValor_Previsao: TFloatField;
    Q_embEmpresa: TStringField;
    Q_embFilial: TStringField;
    Q_embProcesso: TStringField;
    Q_embTipoEmbalagem: TStringField;
    Q_embDescricaoEmbalagem: TStringField;
    Q_embQuantidade: TStringField;
    q_icmsProcesso: TStringField;
    q_icmsNumerario: TStringField;
    q_icmsData_Registro: TDateTimeField;
    q_icmsValor_Registrado: TFloatField;
    q_icmsvalor_contabilizado: TFloatField;
    q_icmsContabilizado: TStringField;
    q_cus_uProcesso: TStringField;
    q_cus_uDescricao: TStringField;
    q_cus_uValor_Registrado: TFloatField;
    q_cus_uNumerario: TStringField;
    q_cus_uValor_Previsao: TFloatField;
    qrObsObservacoes: TMemoField;
    qrObsCodigo: TStringField;
    qrExcelDataCreditoData_Credito: TDateTimeField;
    qrExcelDataCreditoDescricao: TStringField;
    qrExcelDataCreditoValor: TFloatField;
    qrExcelDataCreditoEmpresa: TStringField;
    qrExcelDataCreditoFilial: TStringField;
    qrExcelDataCreditoProcesso: TStringField;
    qrExcelDataDebitoData_Registro: TDateTimeField;
    qrExcelDataDebitoDescricao: TStringField;
    qrExcelDataDebitoValor_Registrado: TFloatField;
    qrExcelProcNumero_Doc: TStringField;
    qrExcelProcProcesso: TStringField;
    qrExcelProcArquivo: TStringField;
    qrExcelProcDescricao: TStringField;
    qrExcelProcSub_Tipo_Doc: TStringField;
    qrExcelProcTipo_Doc: TStringField;
    qrExcelProcCodigo: TStringField;
    qrExcelProcPagina: TFloatField;
    q_taxasMoeda: TStringField;
    q_taxasTaxa_conversao: TFloatField;
    q_taxasTaxa_conversaoc: TFloatField;
    q_taxasCODIGO: TStringField;
    q_taxasDESCRICAO: TStringField;
    qrImport: TQuery;
    dsImport: TDataSource;
    osprocessos: TQuery;
    dsopro: TDataSource;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    BitBtn4: TBitBtn;
    Button1: TButton;
    qpla: TQuery;
    qplaSEQUENCIAL_PLANILHA: TAutoIncField;
    qplaDOSSIE: TStringField;
    qplaDI: TStringField;
    qplaTR: TStringField;
    qplaCONSUMO: TStringField;
    qplaEMBARCACAO: TStringField;
    qplaNF: TStringField;
    qplaDI2: TStringField;
    qplaNR_DECLARACAO_IMP: TStringField;
    qplaProcesso: TStringField;
    qplaREF_EMPRESA: TStringField;
    qplaNumero_TR: TStringField;
    DOCS: TButton;
    Image1: TImage;
    q_itensProcesso: TStringField;
    q_itensDI: TStringField;
    q_itensvad: TFloatField;
    q_itensvseq: TFloatField;
    q_itensTaxa_conversao: TFloatField;
    q_itensIncoterm: TStringField;
    q_itensqmoeda: TStringField;
    q_itensAdicao: TStringField;
    q_itensSeq_Adicao: TSmallintField;
    q_itensSomaDePeso_Total_Acertado: TFloatField;
    q_itensFatura: TStringField;
    q_itensFOB: TFloatField;
    q_itensFOB_em_reais: TFloatField;
    q_itensCIF: TFloatField;
    q_itensCIF_em_reas: TFloatField;
    q_itensValor_mercadoria: TFloatField;
    q_itensvalunit: TFloatField;
    q_itensvaltot: TFloatField;
    q_itenspesounit: TFloatField;
    q_itenspesototal: TFloatField;
    q_itensSomaDeVMLE: TFloatField;
    q_itensseq: TStringField;
    q_itensProduto: TStringField;
    q_itensDescricao_Produto: TMemoField;
    q_itensQuantidade: TFloatField;
    q_itensNCM: TStringField;
    q_itensDestaque_NCM: TStringField;
    q_itensNALADI: TStringField;
    q_itensfreteprepaid: TFloatField;
    q_itensfreteprepaid_em_reais: TFloatField;
    q_itensfretecollect: TFloatField;
    q_itensfretecollect_em_reais: TFloatField;
    q_itensfreteternac: TFloatField;
    q_itensfreteternac_em_reais: TFloatField;
    q_itensseguro: TFloatField;
    q_itensseguro_em_reais: TFloatField;
    q_itensRegime_tri: TStringField;
    q_itensAliq_NCM_II: TFloatField;
    q_itensRegime_Tributacao_II: TStringField;
    q_itensRegime_Tributacao_IPI: TStringField;
    q_itensAliq_NCM_IPI: TFloatField;
    q_itensValor_II_a_recolher: TFloatField;
    q_itensValor_II_a_recolher_em_reais: TFloatField;
    q_itensValor_IPI_a_recolher: TFloatField;
    q_itensValor_IPI_a_recolher_em_reais: TFloatField;
    q_itensfob2: TFloatField;
    q_itensFOB_em_reais2: TFloatField;
    q_itensPercentual_Reducao_II: TFloatField;
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
    qrImportEmpresa: TStringField;
    qrImportFilial: TStringField;
    qrImportCodigo: TStringField;
    qrImportRazao_Social: TStringField;
    qrImportPais: TStringField;
    qrImportCNPJ_CPF_COMPLETO: TStringField;
    qrImportCGC_CPF: TStringField;
    qrImportTipo_Importador: TStringField;
    qrImportEndereco: TStringField;
    qrImportNumero: TStringField;
    qrImportComplemento: TStringField;
    qrImportBairro: TStringField;
    qrImportCidade: TStringField;
    qrImportCEP: TStringField;
    qrImportUF: TStringField;
    qrImportEstado: TStringField;
    qrImportInscricao_Estadual: TStringField;
    qrImportBanco: TStringField;
    qrImportAgencia: TStringField;
    qrImportConta_Corrente: TStringField;
    qrImportConta_Corrente_Registro: TIntegerField;
    qrImportConta_Corrente_Deposito: TIntegerField;
    qrImportlink: TStringField;
    qrImportCAE: TStringField;
    qrImportTelefone: TStringField;
    qrImportAtivo: TSmallintField;
    qrImportAcesso_WEB_MS: TSmallintField;
    qrImportAcesso_WEB_CLI: TSmallintField;
    qrImportAcesso_WEB_REC: TSmallintField;
    qrImportBASE_ICMS: TSmallintField;
    osprocessosEmpresa: TStringField;
    osprocessosFilial: TStringField;
    osprocessosCodigo: TStringField;
    osprocessosData: TDateTimeField;
    osprocessosImportador: TStringField;
    osprocessosCodigo_Cliente: TStringField;
    osprocessosTipo_Declaracao: TStringField;
    osprocessosTipo: TStringField;
    osprocessosContrato: TStringField;
    osprocessosLocal_Inventario: TStringField;
    osprocessosNR_DECL_IMP_MICRO: TStringField;
    osprocessosNR_DECL_IMP_PROT: TStringField;
    osprocessosNR_DECLARACAO_IMP: TStringField;
    osprocessosDT_PROCESSAMENTO: TStringField;
    osprocessosDT_TRANSMISSAO: TStringField;
    osprocessosDT_REGISTRO_DI: TStringField;
    osprocessosDT_DESEMBARACO: TDateTimeField;
    osprocessosDT_DISTRIBUICAO: TDateTimeField;
    osprocessosCanal: TStringField;
    osprocessosFiscal: TStringField;
    osprocessosStatus: TStringField;
    osprocessosCOD_SIT: TStringField;
    osprocessosCD_MOTIVO_TRANS: TStringField;
    osprocessosIN_MOEDA_UNICA: TSmallintField;
    osprocessosTX_INFO_COMPL: TMemoField;
    osprocessosCD_TIPO_PGTO_TRIB: TStringField;
    osprocessosNumero_RCR: TStringField;
    osprocessosData_Entrada_RCR: TDateTimeField;
    osprocessosData_Aprovacao_RCR: TDateTimeField;
    osprocessosFundamentacao_RCR: TStringField;
    osprocessosProcurador: TStringField;
    osprocessosNumero_TR: TStringField;
    osprocessosData_Entrada_TR: TDateTimeField;
    osprocessosData_vencimento_TR: TDateTimeField;
    osprocessosData_Aprovacao_TR: TDateTimeField;
    osprocessosData_Baixa_TR: TDateTimeField;
    osprocessosData_CI: TDateTimeField;
    osprocessosTipo_Garantia: TStringField;
    osprocessosNome_banco_GAR: TStringField;
    osprocessosAgencia_GAR: TStringField;
    osprocessosData_deposito_GAR: TDateTimeField;
    osprocessosNome_titulo_GAR: TStringField;
    osprocessosnumeros_titulos_GAR: TStringField;
    osprocessosNome_seguradora_GAR: TStringField;
    osprocessosapolice_GAR: TStringField;
    osprocessosnome_fiador_GAR: TStringField;
    osprocessosCNPJ_fiador_GAR: TStringField;
    osprocessosendereco_fiador_GAR: TStringField;
    osprocessosQuantidade_LI: TFloatField;
    osprocessosValor_FOB: TFloatField;
    osprocessosValor_CIF: TFloatField;
    osprocessosResponsavel_Empresa: TStringField;
    osprocessosResponsavel_Importador: TStringField;
    osprocessosSaldo_Faturamento: TFloatField;
    osprocessosNR_DECL_IMP_MICROC: TStringField;
    osprocessosNR_DECL_IMP_PROTC: TStringField;
    osprocessosNR_DECLARACAO_IMPC: TStringField;
    osprocessosDT_PROCESSAMENTOC: TStringField;
    osprocessosDT_TRANSMISSAOC: TStringField;
    osprocessosDT_REGISTRO_DIC: TStringField;
    osprocessosDT_DESEMBARACOC: TDateTimeField;
    osprocessosDT_DISTRIBUICAOC: TDateTimeField;
    osprocessosCanalC: TStringField;
    osprocessosFiscalC: TStringField;
    osprocessosCOD_SITC: TStringField;
    osprocessosData_CIC: TDateTimeField;
    osprocessosValor_FOBC: TFloatField;
    osprocessosValor_CIFC: TFloatField;
    osprocessosident_meio1: TStringField;
    osprocessosident_meio2: TStringField;
    osprocessosCodevento: TStringField;
    osprocessosCodobs: TStringField;
    osprocessosObs_especifica: TStringField;
    osprocessosData_ufollowup: TDateTimeField;
    osprocessosHora_ufollowup: TStringField;
    osprocessosData_liberacao: TDateTimeField;
    osprocessosUrgente: TSmallintField;
    osprocessosconsolidado: TSmallintField;
    osprocessosPag_proporcional: TSmallintField;
    osprocessosTR_VAL_FOB_US: TFloatField;
    osprocessosTR_VAL_CIF_US: TFloatField;
    osprocessosTR_VAL_II: TFloatField;
    osprocessosTR_VAL_IPI: TFloatField;
    osprocessosDDE: TStringField;
    osprocessosProcesso_Adm: TStringField;
    osprocessosProc_Adm_Data_Entrada: TDateTimeField;
    osprocessosFaturado: TSmallintField;
    osprocessosFechado: TSmallintField;
    osprocessosCentro_Custo: TStringField;
    osprocessosProcurador2: TStringField;
    osprocessosTR_VAL_PIS: TFloatField;
    osprocessosTR_VAL_COFINS: TFloatField;
    osprocessosRCR_LOCAL: TStringField;
    osprocessosResponsavel_EmpresaC: TStringField;
    osprocessosvinc_processo: TSmallintField;
    osprocessosproc_vinc: TStringField;
    osprocessosTipo_Declaracao_1: TStringField;
    osprocessosTipo_Processo: TStringField;
    qrInfCompCodigo: TStringField;
    qrInfCompTX_INFO_COMPL: TMemoField;
    qrRelContTipo_Carga: TStringField;
    qrRelContProcesso: TStringField;
    qrRelContDescricao: TStringField;
    qrRelContCodigo: TStringField;
    q_adrCodigo: TStringField;
    q_adrcliente: TStringField;
    q_adrEmpresa: TStringField;
    q_adrFilial: TStringField;
    q_adrref_ms: TStringField;
    q_adrref_empresa: TStringField;
    q_adrdi: TStringField;
    q_adrdt_reg: TStringField;
    q_adrresp_ms: TStringField;
    q_adremail_resp_ms: TStringField;
    q_adrdic: TStringField;
    q_adrdt_regc: TStringField;
    q_adrms: TStringField;
    q_adrqfilial: TStringField;
    q_adrBanco: TStringField;
    q_adrAgencia: TStringField;
    q_adrConta_Corrente: TStringField;
    q_adrII: TFloatField;
    q_adrIPI: TFloatField;
    q_adrTaxa_SISCOMEX: TFloatField;
    q_adrBancoc: TStringField;
    q_adrAgenciac: TStringField;
    q_adrConta_Correntec: TStringField;
    q_adrIIc: TFloatField;
    q_adrIPIc: TFloatField;
    q_adrTaxa_SISCOMEXc: TFloatField;
    q_adrEnviou_adcc: TSmallintField;
    q_adrEnviou_adcc_c: TSmallintField;
    q_adrEnviou_adr: TSmallintField;
    q_adrEnviou_adr_c: TSmallintField;
    q_adrqcontrato: TStringField;
    q_adrqlocal: TStringField;
    q_adrTipo: TStringField;
    q_adrqtipo: TStringField;
    q_adrqtipodecl: TStringField;
    q_adrqdecl: TStringField;
    q_adrPag_proporcional: TSmallintField;
    q_folsequencial: TAutoIncField;
    q_folData: TDateTimeField;
    q_folHora: TStringField;
    q_folCodevento: TStringField;
    q_folDescricao: TStringField;
    q_folCodobs: TStringField;
    q_folDescricao_1: TStringField;
    q_folObs_especifica: TStringField;
    q_folData_final: TDateTimeField;
    q_folHora_final: TStringField;
    q_folUsuario: TStringField;
    q_cusunitFatura: TStringField;
    q_cusunitSequencial: TStringField;
    q_cusunitQuantidade: TFloatField;
    q_cusunitNumerario: TStringField;
    q_cusunitDescricao: TStringField;
    q_cusunitrateio: TStringField;
    q_cusunitvalor_registrado: TFloatField;
    q_cusunitpeso_total_acertado: TFloatField;
    q_cusunitvalor_previsao: TFloatField;
    q_cusunitvalor_unitario: TFloatField;
    q_cusunitpeso_unitario_acertado: TFloatField;
    procedure FormActivate(Sender: TObject);
    procedure ME_nossarefChange(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure processaClick(Sender: TObject);
    procedure imprimirClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure cbTodosClick(Sender: TObject);
    procedure cb_cutClick(Sender: TObject);
    procedure cb_cuuClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DOCS_digitalizados(var qpro: string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure MoedaCorte(var nome_moeda: String);
    procedure FormaMenuPla();
    procedure AdicionaBotao();
    procedure IniciarFolha(pColunas: Word);
    procedure FinalizarFolha;
    Procedure CelTitulo(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer);
    Procedure CelDetalhe(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer);    

  public
    { Public declarations }
  end;

const
     AL_DIREITA = -4152;
     AL_ESQUERDA = -4131;
     AL_CENTRO = -4108;
         Aleft = -4131;
    Aright = -4152;
    ACenter = -4108;


var
  f_extratopro_geral: Tf_extratopro_geral;
  Excel : Variant;
  dir_cor,planilha_0,planilha,arqdir,arqnome,linha,expor:string;
  arqADR,arqDET:textfile;
  vb_dolar, eusu,processadoc:boolean;
  qdi,qdidt:string;
  semval,semvalc,apri,enviamsg:boolean;
  qempresa,qfilial,qempresanome,qfilialnome,qimpor,
  vtcontato,vtcontato2,vtcontato3,vtusuario,qadicao,tlinha:string;
  Saux, i,aux,v_menuAux, v_pag:integer;
  vicms, vTaxaDolar:real;
  vtotcdolar,vtotcreal,ataxa,VTOTPRO,VTOTPESO:real;
  vtot_tdolar,vtot_treal,vtot_udolar,vtot_ureal:real;

  bExibePlanilha: Boolean; // EXIBE A PLANILHA SENDO GERADA
  vPro, vEmp, vFil, qrelacao: String;
  vplatransocean,vrelacao,vsomentedocPROC,vsomenteADM: Boolean;
  vRenomear : Boolean;
implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_extratopro_geral.MoedaCorte(var nome_moeda: String);
begin
     If Uppercase(Copy(q_fatq_moe.AsString,1,5)) = 'DOLAR' Then nome_moeda := 'Dolar'
     Else If Uppercase(Copy(q_fatq_moe.AsString,1,4)) = 'EURO' Then nome_moeda := 'EURO'
     Else nome_moeda := Copy((q_fatq_moe.AsString),1,3);
end;

procedure Tf_extratopro_geral.FormaMenuPla();
begin

     Excel.WorkSheets['Menu'].Select;

     If v_pag = 0 Then begin
          Excel.Cells[v_menuAux, 3] := IntToStr(v_menuAux-2) + '. ' + Planilha;
     end
     Else begin
          Excel.Cells[v_menuAux, 1] := IntToStr(v_menuAux-8)+' - '+Planilha;
     end;

     planilha_0 := IntToStr(v_menuAux-8)+' - '+stringreplace(Copy(planilha,1,25),'/','_', [rfReplaceAll]);

     If v_pag = 0 Then Excel.WorkSheets['Menu'].Hyperlinks.Add (Anchor:= Excel.WorkSheets['Menu'].Range['C' + IntToStr(v_menuAux)], Address := '', SubAddress:= '''' + Planilha + '''!a1')
     Else Excel.WorkSheets['Menu'].Hyperlinks.Add (Anchor:= Excel.WorkSheets['Menu'].Range['a' + IntToStr(v_menuAux)], Address:= '', SubAddress:= '''' + Planilha_0 + '''!a1');

     If v_pag = 0 Then Excel.Range['C' + IntToStr(v_menuAux), 'F' + IntToStr(v_menuAux)].Merge
     Else Excel.Range['a' + IntToStr(v_menuAux), 'J' + IntToStr(v_menuAux)].Merge;

     Inc(v_menuAux);

     If v_pag = 0 Then Excel.WorkSheets[planilha].Select;
     //Else Excel.WorkSheets[planilha_0].Select;

end;

procedure Tf_extratopro_geral.AdicionaBotao();
begin


{       Excel.WorkSheets[1].Shapes.AddOLEObject (left:=450, Top:=20, Width:=40, Height:=20, ClassType:='Forms.commandbutton.1');
       Excel.ActiveWorkBook.VBProject.VBComponents.Item('plan'+inttostr(Saux)).CodeModule.VBE.MainWindow.Visible := False;
       Excel.ActiveWorkBook.VBProject.VBComponents.Item('plan'+inttostr(Saux)).Codemodule.CreateEventProc ('click' , 'CommandButton1');
       Excel.ActiveWorkBook.VBProject.VBComponents.Item('plan'+inttostr(Saux)).CodeModule.VBE.ActiveWindow.Close;
       Excel.ActiveWorkBook.VBProject.VBComponents.Item('plan'+inttostr(Saux)).Codemodule.InsertLines (2, 'WorkSheets("MENU").Select');
       Excel.ActiveWorkBook.VBProject.VBE.MainWindow.Visible := bExibePlanilha;
 }
       Application.ProcessMessages;

//       Excel.WorkSheets[Planilha].CommandButton1.Caption := 'Menu';
//       Excel.WorkSheets[Planilha].CommandButton1.PrintObject := False;
//       Excel.WorkSheets[Planilha].CommandButton1.Font.Bold := True;
//       Excel.WorkSheets[Planilha].CommandButton1.Activate;

       If Saux = 1 Then Saux := 3
       Else Inc(Saux);
end;

procedure Tf_extratopro_geral.IniciarFolha(pColunas: Word);
begin
     re_Processa.Lines.Append('-> Gerando a op��o: '+ Planilha);

     Excel.WorkSheets.Add;
     Excel.WorkSheets[1].Name := Planilha;
     Excel.WorkSheets[1].PageSetup.PaperSize := '9';
     Excel.ActiveSheet.PageSetup.LeftMargin := '28';
     Excel.ActiveSheet.PageSetup.RightMargin := '28';
     Excel.ActiveWindow.DisplayGridLines := False;

     Excel.Cells[1,1] := v_empresanome; //'MS2000 - Sistema Gerencial Aduaneiro';'MS2000 - Sistema Gerencial Aduaneiro';
     Excel.Cells[2,1] := 'EXTRATO DE PROCESSOS - V 1.0 - '+ FormatDateTime('dd/mm/yyyy "�s" hh:nn', Now());
     Excel.Cells[1,1].Font.Size := 12;

     Excel.Cells[3,1] := '>> MENU <<';
     Excel.WorkSheets[planilha].Hyperlinks.Add (Anchor:= Excel.WorkSheets[planilha].Range['a3'], Address:= '', SubAddress:= '''' + 'MENU' + '''!a1');
     Excel.Range['A3', 'A3'].HorizontalAlignment := AL_DIREITA;

     Excel.Range['A1', Chr(pColunas+64) +'1'].Merge;
     Excel.Range['A2', Chr(pColunas+64) +'2'].Merge;
     Excel.Range['A3', Chr(pColunas+64) +'3'].Merge;
     Excel.Range['A4', Chr(pColunas+64) +'4'].Merge;
     Excel.Range['A1', 'A4'].Font.Bold := True;

     Excel.Range['A4', Chr(pColunas+64) +'4'].Borders.Item[8].LineStyle := 1;
     Excel.Range['A4', Chr(pColunas+64) +'4'].Borders.Item[8].Weight := 3;
     Excel.Range['A4', Chr(pColunas+64) +'4'].Borders.Item[9].LineStyle := 1;
     Excel.Range['A4', Chr(pColunas+64) +'4'].Borders.Item[9].Weight := 3;
     Excel.Range['A4', Chr(pColunas+64) +'4'].Interior.Color := clSilver;
     Excel.Range['A4', 'A4'].Font.Size := 9;

     Excel.Cells[4,1] := Planilha;
end;

procedure Tf_extratopro_geral.FinalizarFolha;
begin
     AdicionaBotao();
     FormaMenuPla();
     Excel.WorkBooks[1].Save;
     Application.ProcessMessages;
end;

procedure Tf_extratopro_geral.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

//     Left := 0;
//     Top  := 0;

  {   h := Height;
     w := width ;

     Height := 0;
     width := 0;

     if h>w then m := h
     else m := w;

     p := 10;

     mc := floattostrf(abs(m/p),fffixed,5,0);
     m := strtoint(mc)-1;

     for s := 0 to m do begin

         if (s*p)<h then Height := s*p;
         if (s*p)<w then width := s*p;

     end;

     Height := h;
     width := w;  }
end;

procedure Tf_extratopro_geral.ME_nossarefChange(Sender: TObject);
begin
     If Length(me_nossaref.Text) <> 8 Then
        Exit;

     Screen.Cursor := crHourGlass;

     With qrProcessos Do Begin
         Close;  Open;
     End;
     If qrProcessos.Locate('Processo', me_nossaref.Text, [loCaseInsensitive]) Then Begin
        F_MSCOMEX.atualizacpastas(ME_nossaref.text);
        l_cliente.Caption := qrProcessosCliente.AsString;
        re_processa.clear;
        pnlPrincipal.Visible := True;
        pnlBaixo.Visible := True;

        vPro := qrProcessosProcesso.AsString;
        vEmp := qrProcessosEmpresa.AsString;
        vFil := qrProcessosFilial.AsString;

        With q_cus_u Do Begin
            Filter := '';
            Filtered := False;
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := vPro;
            Open;
        End;

        With q_adr Do Begin
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := vPro;
        End;

        With q_conhecimento Do Begin
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := vPro;
        End;

        With q_emb Do Begin
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := vPro;
        End;

        With q_fat Do Begin
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := vPro;
        End;

        With q_taxas Do Begin
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := vPro;
        End;

        With q_fol Do Begin
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := vPro;
        End;

        With q_icms Do Begin
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := vPro;
        End;

        With q_itens Do Begin
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := vPro;
        End;

        With q_cus Do Begin
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := vPro;
        End;

        With qrObs Do Begin
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := vPro;
        End;

        With qrInfComp Do Begin
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := vPro;
        End;

        With qrExcelDataCredito Do Begin
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := vPro;
        End;

        With qrExcelDataDebito Do Begin
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := vPro;
        End;

        With qrExcelProc Do Begin
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := vPro;
        End;

        With q_cusunit Do Begin
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := vPro;
        End;
     End
     Else Begin
//        MessageDlg('Processo n�o encontrado!', mtInformation, [mbOk], 0);
        l_cliente.Caption := '';
        me_nossaref.Clear;
        pnlPrincipal.Visible := False;
        pnlBaixo.Visible := False;
        me_nossaref.SetFocus;
     End;

     Screen.Cursor := crDefault;
end;

procedure Tf_extratopro_geral.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure Tf_extratopro_geral.processaClick(Sender: TObject);
var
   v_soma, v_soma2: Real;
   v_str: String;
   valor_rateio, valor_rateio_reg, valor_rateio_prev: Real;
   qmoedafatura: String;
   vTaxaMoedaFatura, vTaxaConv: Real;
begin
     vb_dolar := True;
     
     p_custosunit.Visible := False;
     With re_processa Do Begin
         Clear;
         //showmessage('teste');
         Lines.Add('  '+'*********************************************************************************************');
         Lines.Add('  '+'MS2000 - SISTEMA GERENCIAL ADUANEIRO');
         Lines.Add('  '+'EXTRATO DE PROCESSOS - V 1.0'+chr(9)+datetostr(date())+ ' �s ' + Copy(timetostr(time),1,5));
         Lines.Add('  '+'*********************************************************************************************');
         Lines.Add('  '+' ');

         If Not q_ADR.Active Then q_ADR.Open;
         { REFER�NCIA DO PROCESSO }
         If cb_ref.Checked Then Begin
            Lines.Add('  ');
            Lines.Add('  '+'*********************************************************************************************');
            Lines.Add('  '+'REFER�NCIAS DO PROCESSO');
            Lines.Add('  ');
            Lines.Add('  '+'Despachante                    : '+chr(9)+'MS LOG�STICA ADUANEIRA E TRANSPORTES INTEGRADOS LTDA.');
            Lines.Add('  '+'Filial                         : '+chr(9)+q_ADRqfilial.AsString);
            Lines.Add('  ');
            Lines.Add('  '+'Cliente                        : '+chr(9)+q_ADRcliente.AsString);
            Lines.Add('  ');
            Lines.Add('  '+'Contrato                       : '+chr(9)+q_ADRqcontrato.AsString);
            Lines.Add('  '+'Local de Invent�rio            : '+chr(9)+q_ADRqlocal.AsString);
            Lines.Add('  ');
            Lines.Add('  '+'Refer�ncia MS                  : '+chr(9)+q_ADRref_ms.AsString);
            Lines.Add('  '+'Tipo Processo                  : '+chr(9)+q_ADRqtipo.AsString);
            Lines.Add('  '+'Refer�ncia Cliente             : '+chr(9)+q_ADRref_empresa.AsString);
            If q_adrqtipodecl.AsString <> '12' Then
               Lines.Add('  '+'DI - Declara��o de Importa��o  : '+chr(9)+q_ADRdi.AsString)
            Else Begin
               //If Not q_adrpag_proporcional.AsBoolean Then
               If Not q_adrpag_proporcional.Asinteger = 1 Then
                  Lines.Add('  '+'DI - Declara��o de Importa��o  : '+chr(9)+q_ADRdi.AsString+' -> ADMISS�O TEMPOR�RIA ')
               Else
                  Lines.Add('  '+'DI - Declara��o de Importa��o  : '+chr(9)+q_ADRdi.AsString+' -> CONSUMO E ADMISS�O TEMPOR�RIA ');
               Lines.Add('  '+'Tipo de Declara��o             : '+chr(9)+q_ADRqdecl.AsString);
               Lines.Add('  '+'Data Registro                  : '+chr(9)+Copy(q_ADRdt_reg.AsString,1,2)+'/'+Copy(q_ADRdt_reg.AsString,3,2)+'/'+Copy(q_ADRdt_reg.AsString,5,4));
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
            End;
         End;

         If Not q_conhecimento.Active Then q_conhecimento.Open;
         If q_conhecimento.RecordCount > 0 Then Begin
            VTOTPESO := q_conhecimentopeso_liquido.AsFloat;
            { TRANSPORTES / CONHECIMENTO }
            If cb_tra.Checked Then Begin
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
               Lines.Add('  '+'TRANSPORTES / CONHECIMENTO');
               Lines.Add('  ');
               Lines.Add('  '+'Transporte                     : '+chr(9)+q_conhecimentoqtransporte.AsString);
               Lines.Add('  '+'Transportador                  : '+chr(9)+q_conhecimentoqtransportador.AsString);
               Lines.Add('  '+'Embarca��o                     : '+chr(9)+q_conhecimentoqembarcacao.AsString);
               Lines.Add('  '+'Local de Embarque              : '+chr(9)+q_conhecimentoqlocal.AsString);
               Lines.Add('  '+'Data do Embarque               : '+chr(9)+q_conhecimentoqdataembarque.AsString);
               Lines.Add('  '+'Conhecimento                   : '+chr(9)+q_conhecimentoqconhecimento.AsString);
               Lines.Add('  '+'Tipo                           : '+chr(9)+q_conhecimentoqtipo.AsString);
               Lines.Add('  '+'Master                         : '+chr(9)+q_conhecimentoqmaster.AsString);
               Lines.Add('  '+'Utiliza��o                     : '+chr(9)+q_conhecimentoqutilizacao.AsString);
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
            End;

            { CARGA }
            If cb_car.Checked Then Begin
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
               Lines.Add('  '+'CARGA');
               Lines.Add('  ');
               Lines.Add('  '+'Pa�s de Proced�ncia            : '+chr(9)+q_conhecimentoqpaisprocedencia.AsString);
               Lines.Add('  '+'URF de Entrada no Pa�s         : '+chr(9)+q_conhecimentoqurfentrada.AsString);
               Lines.Add('  '+'Moeda Frete                    : '+chr(9)+q_conhecimentoqmoedafrete.AsString);
               Lines.Add('  '+'Frete Prepaid                  : '+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_conhecimentofrete_prepaid.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_conhecimentofrete_prepaid.AsFloat,fffixed,12,2))-10,11));
               Lines.Add('  '+'Frete Collect                  : '+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_conhecimentofrete_collect.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_conhecimentofrete_collect.AsFloat,fffixed,12,2))-10,11));
               Lines.Add('  '+'Frete Territorio Nacional      : '+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_conhecimentofrete_ter_nac.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_conhecimentofrete_ter_nac.AsFloat,fffixed,12,2))-10,11));
               Lines.Add('  '+'Moeda Seguro                   : '+chr(9)+q_conhecimentoqmoedaseguro.AsString);
               Lines.Add('  '+'Seguro                         : '+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_conhecimentovalor_seguro.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_conhecimentovalor_seguro.AsFloat,fffixed,12,2))-10,11));
               Lines.Add('  '+'Peso L�quido                   : '+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_conhecimentopeso_liquido.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_conhecimentopeso_liquido.AsFloat,fffixed,12,2))-10,11));
               Lines.Add('  '+'Peso Bruto                     : '+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_conhecimentopeso_bruto.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_conhecimentopeso_bruto.AsFloat,fffixed,12,2))-10,11));
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
            End;

            { REGISTRO DE CHEGADA }
            If cb_reg.Checked Then Begin
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
               Lines.Add('  '+'REGISTRO DE CHEGADA');
               Lines.Add('  ');
               Lines.Add('  '+'URF de Despacho                : '+chr(9)+q_conhecimentoqurfdespacho.AsString);
               Lines.Add('  '+'Recinto Alfandegado            : '+chr(9)+q_conhecimentoqrecinto.AsString);
               Lines.Add('  '+'Setor de Armazenamento         : '+chr(9)+q_conhecimentoqsetor.AsString);
               Lines.Add('  '+'Data de Chegada URF de Entrada : '+chr(9)+q_conhecimentoqdataurfchegada.AsString);
               Lines.Add('  '+'Documento de Entrada           : '+chr(9)+q_conhecimentoqdocentrada.AsString);
               Lines.Add('  '+'Tipo Documento                 : '+chr(9)+q_conhecimentoqtipodocentrada.AsString);
               Lines.Add('  '+'Presen�a de Carga              : '+chr(9)+q_conhecimentoqpresencacarga.AsString);
               Lines.Add('  '+'Data de Chegada URF de Despacho: '+chr(9)+q_conhecimentoqdatadespacho.AsString);
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
            End;
         End;

         { TIPOS DE EMBALAGENS }
         If cb_emb.Checked Then Begin
            If Not q_emb.Active Then q_emb.Open Else q_emb.First;
            If q_emb.RecordCount > 0 Then Begin
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
               Lines.Add('  '+'TIPOS DE EMBALAGENS');
               Lines.Add('  ');
               Lines.Add('  '+'Tipo de  Embalagem                      '+CHR(9)+'    Quantidade');
               While Not q_emb.Eof do Begin
                    Lines.Add('  '+Copy(q_embdescricaoembalagem.AsString+StringOfChar(' ',40),1,40)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_embquantidade.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_embquantidade.AsFloat,fffixed,12,2))-10,11));
                    q_emb.Next;
               End;
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
            End;
         End;

         { FATURAS }
         qmoedafatura := '';
         If Not q_fat.Active Then q_fat.Open Else q_fat.First;
         If q_fat.RecordCount > 0 Then Begin
            VTOTPRO := 0;
            If cb_fat.Checked Then Begin
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
               Lines.Add('  '+'FATURAS');
            End;
            VTOTPRO := 0;

            While Not q_fat.Eof Do Begin
                 qmoedafatura := q_fatcodmoeda.AsString;
                 If cb_fat.Checked Then Begin
                    Lines.Add('  ');
                    Lines.Add('  '+chr(9)+'_____________________________________________________________________________________');
                    Lines.Add('  '+chr(9)+'Exportador                     : '+CHR(9)+Copy(q_fatq_exp.AsString+StringOfChar(' ',30),1,30));
                    Lines.Add('  '+chr(9)+'Endere�o                       : '+CHR(9)+Copy(q_fatq_end.AsString+StringOfChar(' ',30),1,30));
                    Lines.Add('  '+chr(9)+'Complemento                    : '+CHR(9)+Copy(q_fatq_com.AsString+StringOfChar(' ',30),1,30));
                    Lines.Add('  '+chr(9)+'Bairro                         : '+CHR(9)+Copy(q_fatq_bai.AsString+StringOfChar(' ',30),1,30));
                    Lines.Add('  '+chr(9)+'Cidade                         : '+CHR(9)+Copy(q_fatq_cid.AsString+StringOfChar(' ',30),1,30));
                    Lines.Add('  '+chr(9)+'Estado                         : '+CHR(9)+Copy(q_fatq_est.AsString+StringOfChar(' ',30),1,30));
                    Lines.Add('  ');
                    Lines.Add('  '+chr(9)+'Faturas                       '+chr(9)+'Incoterm Moeda                              Valor');
                    Lines.Add('  ');
                 End;

                 expor := q_fatq_exp.AsString;
                 While (Not q_fat.Eof) And (expor = q_fatq_exp.AsString) Do Begin
                      VTOTPRO := VTOTPRO + q_fatq_val.AsFloat;
                      If cb_fat.Checked Then Begin
                         linha := '';
                         linha := linha+chr(9)+Copy(q_fatq_fat.AsString+StringOfChar(' ',30),1,30);
                         linha := linha+chr(9)+Copy(q_fatq_inc.AsString+StringOfChar(' ',8),1,8)+' ';
                         linha := linha+Copy(q_fatq_moe.AsString+StringOfChar(' ',28),1,28)+' ';
                         linha := linha+Copy(StringOfChar(' ',12)+FloatToStrF(q_fatq_val.AsFloat,fffixed,13,2),Length(StringOfChar(' ',12)+FloatToStrF(q_fatq_val.AsFloat,fffixed,13,2))-10,12);
                         Lines.Add('  '+linha);
                      End;
                      q_fat.Next;
                 End;
            End;
            If cb_fat.Checked Then Begin
               Lines.Add('  '+' ');
               Lines.Add('  '+'*********************************************************************************************');
            End;
         End;

         { TAXAS DE C�MBIO }
         ataxa := 0;
         vTaxaMoedaFatura := 0;
         If Not q_taxas.Active Then q_taxas.Open Else q_taxas.First;
         If q_taxas.RecordCount > 0 Then Begin
            If q_taxas.Locate('Moeda', '220', []) Then Begin
               vTaxaDolar := q_taxastaxa_conversao.AsFloat;
               vb_dolar := True;
            End;
            If q_taxas.Locate('Moeda', qmoedafatura, []) Then Begin
               vTaxaMoedaFatura := q_taxastaxa_conversao.AsFloat;
               vb_dolar := False;
            End;
            ataxa := vTaxaDolar;
            If cb_tax.Checked Then Begin
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
               Lines.Add('  '+'TAXAS DE C�MBIO');
               Lines.Add('  ');
               If q_adrqtipodecl.AsString <> '12' Then
                  Lines.Add('  '+'Moeda                         '+chr(9)+'          Taxa')
               Else Begin
                  //If Not q_adrpag_proporcional.AsBoolean Then
                  If Not q_adrpag_proporcional.Asinteger = 1 Then
                     Lines.Add('  '+'Moeda                         '+chr(9)+'      Taxa ADM'+chr(9)+'      Taxa CON')
                  Else
                     Lines.Add('  '+'Moeda                         '+chr(9)+'          Taxa')
               End;
               q_taxas.First;
               While Not q_taxas.Eof Do Begin
                    linha := Copy(q_taxasdescricao.AsString+StringOfChar(' ',30),1,30)+chr(9)+Copy(StringOfChar(' ',14)+FloatToStrF(q_taxastaxa_conversao.AsFloat,fffixed,15,7),Length(StringOfChar(' ',14)+FloatToStrF(q_taxastaxa_conversao.AsFloat,fffixed,15,7))-11,14);
                    //If (q_adrqtipodecl.AsString = '12') And (Not q_adrpag_proporcional.AsBoolean) Then
                    If (q_adrqtipodecl.AsString = '12') And (Not q_adrpag_proporcional.Asinteger = 1) Then
                       linha := linha+chr(9)+Copy(StringOfChar(' ',14)+FloatToStrF(q_taxastaxa_conversaoc.AsFloat,fffixed,15,7),Length(StringOfChar(' ',14)+FloatToStrF(q_taxastaxa_conversaoc.AsFloat,fffixed,15,7))-11,14);
                    Lines.Add('  '+Linha);
                    q_taxas.Next;
               End;
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
            End;
         End;

         { FOLLOW UP }
         If cb_fol.Checked Then Begin
            If Not q_fol.Active Then q_fol.Open Else q_fol.First;
            If q_fol.RecordCount > 0 Then Begin
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
               Lines.Add('  '+'FOLLOW UP');
               Lines.Add('  ');
               Lines.Add('  '+'Data            '+chr(9)+'Descri��o                                    '+chr(9)+'Usu�rio   ');
               Lines.Add('  '+'----------------'+chr(9)+'---------------------------------------------'+chr(9)+'----------');
               ////            12/12/1212 12:12          123546789/123456789/123456789/123456789/12345          123456789/
               While Not q_fol.Eof Do Begin
                    Lines.Add('  '+q_folData.AsString +' '+ q_folHora.AsString+chr(9)+
                    Copy(q_folDescricao.AsString+StringOfChar(' ',45),1,45)+chr(9)+
                    Copy(q_folUsuario.AsString+'          ',1,10));
                    q_fol.Next;
               End;
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
            End;
         End;

         { IMPOSTOS }
         If cb_imp.Checked Then Begin
            Lines.Add('  ');
            Lines.Add('  '+'*********************************************************************************************');
            Lines.Add('  '+'IMPOSTOS');
            Lines.Add('  ');

            If q_adrqtipodecl.AsString <> '12' Then Begin
               Lines.Add('  '+'II - Imposto de Importa��o     : '+CHR(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_ADRII.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_ADRII.AsFloat,fffixed,12,2))-10,11));
               Lines.Add('  '+'IPI - Imposto de Produtos Ind. : '+CHR(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_ADRIPI.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_ADRIPI.AsFloat,fffixed,12,2))-10,11));
               Lines.Add('  '+'Taxa Siscomex                  : '+CHR(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_ADRTAXA_SISCOMEX.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_ADRTAXA_SISCOMEX.AsFloat,fffixed,12,2))-10,11));
               If q_adrqtipodecl.AsString = '01' Then Begin
                  If Not q_icms.Active Then q_icms.Open;
                  If q_icms.RecordCount = 0 Then
                     vicms := 0
                  Else
                     vicms := q_icmsvalor_registrado.AsFloat;
                  Lines.Add('  '+'ICMS                           : '+CHR(9)+Copy(StringOfChar(' ',11)+FloatToStrF(vicms,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(vicms,fffixed,12,2))-10,11));
               End;
            End
            Else Begin
               //If Not q_adrpag_proporcional.AsBoolean Then
               If Not q_adrpag_proporcional.Asinteger = 1 Then
                  Lines.Add('  '+'Admiss�o Tempor�ria:')
               Else
                  Lines.Add('  '+'Consumo e Admiss�o Tempor�ria:');
               Lines.Add('  '+'II - Imposto de Importa��o     : '+CHR(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_ADRII.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_ADRII.AsFloat,fffixed,12,2))-10,11));
               Lines.Add('  '+'IPI - Imposto de Produtos Ind. : '+CHR(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_ADRIPI.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_ADRIPI.AsFloat,fffixed,12,2))-10,11));
               Lines.Add('  '+'Taxa Siscomex                  : '+CHR(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_ADRTAXA_SISCOMEX.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_ADRTAXA_SISCOMEX.AsFloat,fffixed,12,2))-10,11));
            End;
            Lines.Add('  ');
            Lines.Add('  '+'*********************************************************************************************');
         End;

         { IMPOSTOS POR ITEM }
         If cb_ite.Checked Then Begin
            If Not q_itens.Active Then q_itens.Open Else q_itens.First;
            If q_itens.RecordCount > 0 Then Begin
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
               Lines.Add('  '+'IMPOSTOS POR ITEM');
               Lines.Add('  ');
               While Not q_itens.Eof Do Begin
                    Lines.Add('  ');
                    Lines.Add('  '+'_______________________________________________________________________________________________');
                    Lines.Add('  '+'Adi��o              : '+CHR(9)+Copy(q_itensadicao.AsString+StringOfChar(' ',6),1,6));
                    Lines.Add('  '+'Regime Tributa��o   : '+CHR(9)+Copy(q_itensregime_tri.AsString+StringOfChar(' ',40),1,40));
                    Lines.Add('  '+'NCM                 : '+CHR(9)+Copy(q_itensncm.AsString+StringOfChar(' ',8),1,8));
                    Lines.Add('  '+'DESTAQUE            : '+CHR(9)+Copy(q_itensdestaque_ncm.AsString+StringOfChar(' ',8),1,8));
                    Lines.Add('  '+'NALADI              : '+CHR(9)+Copy(q_itensnaladi.AsString+StringOfChar(' ',8),1,8));
                    Lines.Add('  '+'Aliq. II            : '+CHR(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensaliq_ncm_ii.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensaliq_ncm_ii.AsFloat,fffixed,12,2))-10,11));
                    Lines.Add('  '+'Aliq. IPI           : '+CHR(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensaliq_ncm_ipi.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensaliq_ncm_ipi.AsFloat,fffixed,12,2))-10,11));
                    Lines.Add('  ');
                    qadicao := q_itensadicao.AsString;
                    While (Not q_itens.Eof) And (qadicao = q_itensadicao.AsString) Do Begin
                         Lines.Add('  '+chr(9)+'______________________________________________________________________________________');
                         Lines.Add('  '+chr(9)+'Seq             : '+chr(9)+q_itensseq_adicao.AsString);
                         Lines.Add('  '+chr(9)+'Produto         : '+chr(9)+q_itensproduto.AsString);
                         Lines.Add('  '+chr(9)+'Descri��o       : '+chr(9)+Copy(q_itensdescricao_produto.AsString,1,60));
                         Lines.Add('  '+chr(9)+'                : '+chr(9)+Copy(q_itensdescricao_produto.AsString,61,60));
                         Lines.Add('  '+chr(9)+'Quantidade      : '+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensquantidade.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensquantidade.AsFloat,fffixed,12,2))-10,11));
                         Lines.Add('  '+chr(9)+'Valor Unit�rio  : '+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensvalunit.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensvalunit.AsFloat,fffixed,12,2))-10,11));
                         Lines.Add('  '+chr(9)+'Valor Total     : '+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensvaltot.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensvaltot.AsFloat,fffixed,12,2))-10,11));
                         Lines.Add('  '+chr(9)+'Peso Unit�rio   : '+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itenspesounit.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itenspesounit.AsFloat,fffixed,12,2))-10,11));
                         Lines.Add('  '+chr(9)+'Peso Total      : '+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itenspesototal.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itenspesototal.AsFloat,fffixed,12,2))-10,11));
                         Lines.Add('  ');
                         Lines.Add('  '+chr(9)+chr(9)+chr(9)+chr(9)+'Valores Totais         '+chr(9)+'Valores Unit�rios      ');
                         Lines.Add('  '+chr(9)+chr(9)+chr(9)+chr(9)+'       (U$)        (R$)'+chr(9)+'       (U$)        (R$)');
                         Lines.Add('  '+chr(9)+chr(9)+chr(9)+chr(9)+'_______________________'+chr(9)+'_______________________');

                         tlinha := chr(9)+'FOB            '
                                 + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensfob2.AsFloat                            ,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensfob2.AsFloat                            ,fffixed,12,2))-10,11)+CHR(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensfob_em_reais.AsFloat                            ,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensfob_em_reais2.AsFloat                            ,fffixed,12,2))-10,11)
                                 + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensfob2.AsFloat/q_itensquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensfob2.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11)+CHR(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensfob_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensfob_em_reais2.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11);
                         Lines.Add('  '+tlinha);

                         tlinha := chr(9)+'FRETE PREPAID  '
                                 + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensfreteprepaid.AsFloat                            ,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensfreteprepaid.AsFloat                            ,fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensfreteprepaid_em_reais.AsFloat                            ,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensfreteprepaid_em_reais.AsFloat                            ,fffixed,12,2))-10,11)
                                 + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensfreteprepaid.AsFloat/q_itensquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensfreteprepaid.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensfreteprepaid_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensfreteprepaid_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11);
                         Lines.Add('  '+tlinha);

                         tlinha := chr(9)+'FRETE COLLECT  '
                                 + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensfretecollect.AsFloat                            ,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensfretecollect.AsFloat                            ,fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensfretecollect_em_reais.AsFloat                            ,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensfretecollect_em_reais.AsFloat                            ,fffixed,12,2))-10,11)
                                 + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensfretecollect.AsFloat/q_itensquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensfretecollect.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensfretecollect_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensfretecollect_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11);
                         Lines.Add('  '+tlinha);

                         tlinha := chr(9)+'FRETE TER.NAC. '
                                 + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensfreteternac.AsFloat                            ,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensfreteternac.AsFloat                            ,fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensfreteternac_em_reais.AsFloat                            ,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensfreteternac_em_reais.AsFloat                            ,fffixed,12,2))-10,11)
                                 + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensfreteternac.AsFloat/q_itensquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensfreteternac.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensfreteternac_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensfreteternac_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11);
                         Lines.Add('  '+tlinha);

                         tlinha := chr(9)+'SEGURO         '
                                 + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensseguro.AsFloat                            ,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensseguro.AsFloat                            ,fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensseguro_em_reais.AsFloat                            ,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensseguro_em_reais.AsFloat                            ,fffixed,12,2))-10,11)
                                 + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensseguro.AsFloat/q_itensquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensseguro.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensseguro_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensseguro_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11);
                         Lines.Add('  '+tlinha);

                         tlinha := chr(9)+'CIF            '
                                 + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itenscif.AsFloat                            ,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itenscif.AsFloat                            ,fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itenscif_em_reas.AsFloat                            ,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itenscif_em_reas.AsFloat                            ,fffixed,12,2))-10,11)
                                 + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itenscif.AsFloat/q_itensquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itenscif.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itenscif_em_reas.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itenscif_em_reas.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11);
                         Lines.Add('  '+tlinha);

                         tlinha := chr(9)+'II             '
                                 + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensvalor_ii_a_recolher.AsFloat                            ,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensvalor_ii_a_recolher.AsFloat                            ,fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensvalor_ii_a_recolher_em_reais.AsFloat                            ,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensvalor_ii_a_recolher_em_reais.AsFloat                            ,fffixed,12,2))-10,11)
                                 + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensvalor_ii_a_recolher.AsFloat/q_itensquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensvalor_ii_a_recolher.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensvalor_ii_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensvalor_ii_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11);
                         Lines.Add('  '+tlinha);

                         tlinha := chr(9)+'IPI 	         '
                                 + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensvalor_ipi_a_recolher.AsFloat                            ,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensvalor_ipi_a_recolher.AsFloat                            ,fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensvalor_ipi_a_recolher_em_reais.AsFloat                            ,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensvalor_ipi_a_recolher_em_reais.AsFloat                            ,fffixed,12,2))-10,11)
                                 + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensvalor_ipi_a_recolher.AsFloat/q_itensquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensvalor_ipi_a_recolher.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensvalor_ipi_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensvalor_ipi_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11);
                         Lines.Add('  '+tlinha);

                         Lines.Add('  '+chr(9)+'______________________________________________________________________________________');
                         q_itens.Next;
                    End;
               End;
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
            End;
         End;

         { CUSTOS TOTAIS DO PROCESSO }
         If cb_cut.Checked Then Begin
            If Not q_cus.Active Then q_cus.Open Else q_cus.First;
            If q_cus.RecordCount > 0 Then Begin
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
               If RG_VALOR.ItemIndex=1 Then
                  Lines.Add('  '+'CUSTOS TOTAIS')
               Else
                  Lines.Add('  '+'CUSTOS TOTAIS (PREVIS�O)');
               Lines.Add('  ');
               Lines.Add('  '+'Descri��o do Custo                      '+chr(9)+'     Valor (U$)'+chr(9)+'     Valor (R$)');
               /////           123456789/123456789/123456789/123546789/          123456789/12345          123456789/12345
               Lines.Add('  '+'________________________________________'+chr(9)+'_______________'+chr(9)+'_______________');

               vtotcdolar := 0;
               vtotcreal := 0;
               While Not q_cus.Eof Do Begin
                    tlinha := '  '+Copy(q_cusdescricao.AsString+StringOfChar(' ',40),1,40);
                    If RG_VALOR.ItemIndex=1 Then Begin /// valor registrado
                       tlinha := tlinha
                               + chr(9)+Copy(StringOfChar(' ',14)+FloatToStrF((q_cusvalor_registrado.AsFloat/ataxa),fffixed ,15,2),Length(StringOfChar(' ',14)+FloatToStrF((q_cusvalor_registrado.AsFloat/ataxa),fffixed,15,2))-13,14)
                               + chr(9)+Copy(StringOfChar(' ',14)+FloatToStrF(q_cusvalor_registrado.AsFloat,fffixed,15,2),Length(StringOfChar(' ',14)+FloatToStrF(q_cusvalor_registrado.AsFloat,fffixed,15,2))-13,14);
                       vtotcdolar := vtotcdolar + (q_cusvalor_registrado.AsFloat/ataxa);
                       vtotcreal := vtotcreal + q_cusvalor_registrado.AsFloat;
                    End
                    Else Begin                        ///valor previs�o
                       tlinha := tlinha
                               + chr(9)+Copy(StringOfChar(' ',14)+FloatToStrF((q_cusvalor_previsao.AsFloat/ataxa),fffixed ,15,2),Length(StringOfChar(' ',14)+FloatToStrF((q_cusvalor_previsao.AsFloat/ataxa),fffixed,15,2))-13,14)
                               + chr(9)+Copy(StringOfChar(' ',14)+FloatToStrF(q_cusvalor_previsao.AsFloat,fffixed,15,2),Length(StringOfChar(' ',14)+FloatToStrF(q_cusvalor_previsao.AsFloat,fffixed,15,2))-13,14);
                       vtotcdolar := vtotcdolar + (q_cusvalor_previsao.AsFloat/ataxa);
                       vtotcreal := vtotcreal + q_cusvalor_previsao.AsFloat;
                    End;
                    Lines.Add('  '+tlinha);
                    q_cus.Next;
               End;
               Lines.Add('  '+'________________________________________'+chr(9)+'_______________'+chr(9)+'_______________');
               Lines.Add('  '+'Totais                                  '
                     + chr(9)+Copy(StringOfChar(' ',14)+FloatToStrF(vtotcdolar,fffixed ,15,2),Length(StringOfChar(' ',14)+FloatToStrF(vtotcdolar,fffixed,15,2))-13,14)
                     + chr(9)+Copy(StringOfChar(' ',14)+FloatToStrF(vtotcreal,fffixed,15,2),Length(StringOfChar(' ',14)+FloatToStrF(vtotcreal,fffixed,15,2))-13,14));
            End;
            Lines.Add('  ');
            Lines.Add('  '+'*********************************************************************************************');
         End;

         { CUSTOS UNIT�RIOS ANAL�TICOS DO PROCESSO }
         If cb_cuu.Checked Then Begin
            If Not q_itens.Active Then q_itens.Open Else q_itens.First;
            If q_itens.RecordCount > 0 Then Begin
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
               If RG_VALOR.ItemIndex = 1 Then
                  Lines.Add('  '+'CUSTOS UNIT�RIOS - ANAL�TICOS')
               Else
                  Lines.Add('  '+'CUSTOS UNIT�RIOS - ANAL�TICOS (PREVIS�O)');
               Lines.Add('  ');

               While Not q_itens.Eof Do Begin
                    vtot_tdolar := 0;
                    vtot_treal  := 0;
                    vtot_udolar := 0;
                    vtot_ureal  := 0;
                    Lines.Add('  '+'______________________________________________________________________________________');
                    Lines.Add('  '+'Adi��o          : '+chr(9)+q_itensAdicao.AsString);
                    Lines.Add('  '+'Seq             : '+chr(9)+q_itensseq_adicao.AsString);
                    Lines.Add('  '+'Produto         : '+chr(9)+q_itensproduto.AsString);
                    Lines.Add('  '+'Descri��o       : '+chr(9)+Copy(q_itensdescricao_produto.AsString,1,60));
                    Lines.Add('  '+'                : '+chr(9)+Copy(q_itensdescricao_produto.AsString,61,60));
                    Lines.Add('  '+'Quantidade      : '+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensquantidade.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensquantidade.AsFloat,fffixed,12,2))-10,11));
                    Lines.Add('  '+'Valor Unit�rio  : '+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensvalunit.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensvalunit.AsFloat,fffixed,12,2))-10,11));
                    Lines.Add('  '+'Valor Total     : '+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensvaltot.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensvaltot.AsFloat,fffixed,12,2))-10,11));
                    Lines.Add('  '+'Peso Unit�rio   : '+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itenspesounit.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itenspesounit.AsFloat,fffixed,12,2))-10,11));
                    Lines.Add('  '+'Peso Total      : '+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itenspesototal.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itenspesototal.AsFloat,fffixed,12,2))-10,11));
                    Lines.Add('  '+' ');
                    Lines.Add('  '+'Descri��o dos Custos               '+chr(9)+'Valores Totais         '+chr(9)+'Valores Unit�rios      ');
                    /////           123456789/123456789/123456789/12345
                    Lines.Add('  '+'                                   '+chr(9)+'       (U$)        (R$)'+chr(9)+'       (U$)        (R$)');
                    Lines.Add('  '+'___________________________________'+chr(9)+'_______________________'+chr(9)+'_______________________');
                                                                                   //// 99999999.99 99999999.99          99999999.99  99999999.99
                    If vb_dolar Then
                       vTaxaConv := 1
                    Else
                       vTaxaConv := vTaxaDolar;

                    If cb_fob.Checked Then Begin
                       tlinha := Copy('FOB'+StringOfChar(' ',35),1,35)
                               + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensfob_em_reais.AsFloat/vTaxaConv{q_itensfob2.AsFloat}                            ,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensfob_em_reais.AsFloat/vTaxaConv)                            ,fffixed,12,2))-10,11)+CHR(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensfob_em_reais.AsFloat                            ,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensfob_em_reais2.AsFloat                            ,fffixed,12,2))-10,11)
                               + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(((q_itensfob_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(((q_itensfob_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat),fffixed,12,2))-10,11)+CHR(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensfob_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensfob_em_reais2.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11);
                       Lines.Add('  '+tlinha);

                       vtot_tdolar := vtot_tdolar +(q_itensfob_em_reais.AsFloat/vTaxaConv);
                       vtot_treal  := vtot_treal  +q_itensfob_em_reais2.AsFloat;
                       vtot_udolar := vtot_udolar +((q_itensfob_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                       vtot_ureal  := vtot_ureal  +(q_itensfob_em_reais2.AsFloat/q_itensquantidade.AsFloat);
                    End;
                    If cb_freteprepaid.Checked Then Begin
                       tlinha := Copy('FRETE PREPAID'+StringOfChar(' ',35),1,35)
                               + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensfreteprepaid_em_reais.AsFloat/vTaxaConv{q_itensfreteprepaid.AsFloat}                            ,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensfreteprepaid_em_reais.AsFloat/vTaxaConv                            ,fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensfreteprepaid_em_reais.AsFloat                            ,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensfreteprepaid_em_reais.AsFloat                            ,fffixed,12,2))-10,11)
                               + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(((q_itensfreteprepaid_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(((q_itensfreteprepaid_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat),fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensfreteprepaid_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensfreteprepaid_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11);
                       Lines.Add('  '+tlinha);

                       vtot_tdolar := vtot_tdolar +(q_itensfreteprepaid_em_reais.AsFloat/vTaxaConv);
                       vtot_treal  := vtot_treal  +q_itensfreteprepaid_em_reais.AsFloat;
                       vtot_udolar := vtot_udolar +((q_itensfreteprepaid_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                       vtot_ureal  := vtot_ureal  +(q_itensfreteprepaid_em_reais.AsFloat/q_itensquantidade.AsFloat);
                    End;
                    If cb_fretecollect.Checked Then Begin
                       tlinha := Copy('FRETE COLLECT'+StringOfChar(' ',35),1,35)
                               + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensfretecollect_em_reais.AsFloat/vTaxaConv                            ,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensfretecollect_em_reais.AsFloat/vTaxaConv                            ,fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensfretecollect_em_reais.AsFloat                            ,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensfretecollect_em_reais.AsFloat                            ,fffixed,12,2))-10,11)
                               + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(((q_itensfretecollect_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(((q_itensfretecollect_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat),fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensfretecollect_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensfretecollect_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11);
                       Lines.Add('  '+tlinha);

                       vtot_tdolar := vtot_tdolar +(q_itensfretecollect_em_reais.AsFloat/vTaxaConv);
                       vtot_treal  := vtot_treal  +q_itensfretecollect_em_reais.AsFloat;
                       vtot_udolar := vtot_udolar +((q_itensfretecollect_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                       vtot_ureal  := vtot_ureal  +(q_itensfretecollect_em_reais.AsFloat/q_itensquantidade.AsFloat);
                    End;
                    If cb_freteternac.Checked Then Begin
                       tlinha := Copy('FRETE TER.NAC.'+StringOfChar(' ',35),1,35)
                               + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensfreteternac_em_reais.AsFloat/vTaxaConv                            ,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensfreteternac_em_reais.AsFloat/vTaxaConv                            ,fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensfreteternac_em_reais.AsFloat                            ,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensfreteternac_em_reais.AsFloat                            ,fffixed,12,2))-10,11)
                               + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(((q_itensfreteternac_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(((q_itensfreteternac_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat),fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensfreteternac_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensfreteternac_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11);
                       Lines.Add('  '+tlinha);

                       vtot_tdolar := vtot_tdolar +(q_itensfreteternac_em_reais.AsFloat/vTaxaConv);
                       vtot_treal  := vtot_treal  +q_itensfreteternac_em_reais.AsFloat;
                       vtot_udolar := vtot_udolar +((q_itensfreteternac_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                       vtot_ureal  := vtot_ureal  +(q_itensfreteternac_em_reais.AsFloat/q_itensquantidade.AsFloat);
                    End;
                    If cb_seguro.Checked Then Begin
                       tlinha := Copy('SEGURO'+StringOfChar(' ',35),1,35)
                               + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensseguro_em_reais.AsFloat/vTaxaConv                            ,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensseguro_em_reais.AsFloat/vTaxaConv                            ,fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensseguro_em_reais.AsFloat                            ,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensseguro_em_reais.AsFloat                            ,fffixed,12,2))-10,11)
                               + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(((q_itensseguro_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(((q_itensseguro_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat),fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensseguro_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensseguro_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11);
                       Lines.Add('  '+tlinha);

                       vtot_tdolar := vtot_tdolar +(q_itensseguro_em_reais.AsFloat/vTaxaConv);
                       vtot_treal  := vtot_treal  +q_itensseguro_em_reais.AsFloat;
                       vtot_udolar := vtot_udolar +((q_itensseguro_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                       vtot_ureal  := vtot_ureal  +(q_itensseguro_em_reais.AsFloat/q_itensquantidade.AsFloat);
                    End;
                    If cb_ii.Checked Then Begin
                       tlinha := Copy('IMPOSTO DE IMPORTA��O'+StringOfChar(' ',35),1,35)
                               + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensvalor_ii_a_recolher_em_reais.AsFloat/vTaxaConv                            ,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensvalor_ii_a_recolher_em_reais.AsFloat/vTaxaConv                            ,fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensvalor_ii_a_recolher_em_reais.AsFloat                            ,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensvalor_ii_a_recolher_em_reais.AsFloat                            ,fffixed,12,2))-10,11)
                               + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(((q_itensvalor_ii_a_recolher_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(((q_itensvalor_ii_a_recolher_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat),fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensvalor_ii_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensvalor_ii_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11);
                       Lines.Add('  '+tlinha);

                       vtot_tdolar := vtot_tdolar +(q_itensvalor_ii_a_recolher_em_reais.AsFloat/vTaxaConv);
                       vtot_treal  := vtot_treal  +q_itensvalor_ii_a_recolher_em_reais.AsFloat;
                       vtot_udolar := vtot_udolar +((q_itensvalor_ii_a_recolher_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                       vtot_ureal  := vtot_ureal  +(q_itensvalor_ii_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat);
                    End;
                    If cb_ipi.Checked Then Begin
                       tlinha := Copy('IMPOSTO S/ PRODUTOS INDUSTRIALIZADOS'+StringOfChar(' ',35),1,35)
                               + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensvalor_ipi_a_recolher_em_reais.AsFloat/vTaxaConv                            ,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensvalor_ipi_a_recolher_em_reais.AsFloat/vTaxaConv                            ,fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensvalor_ipi_a_recolher_em_reais.AsFloat                            ,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensvalor_ipi_a_recolher_em_reais.AsFloat                            ,fffixed,12,2))-10,11)
                               + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(((q_itensvalor_ipi_a_recolher_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(((q_itensvalor_ipi_a_recolher_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat),fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensvalor_ipi_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensvalor_ipi_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11);
                       Lines.Add('  '+tlinha);

                       vtot_tdolar := vtot_tdolar +(q_itensvalor_ipi_a_recolher_em_reais.AsFloat/vTaxaConv);
                       vtot_treal  := vtot_treal  +q_itensvalor_ipi_a_recolher_em_reais.AsFloat;
                       vtot_udolar := vtot_udolar +((q_itensvalor_ipi_a_recolher_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                       vtot_ureal  := vtot_ureal  +(q_itensvalor_ipi_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat);
                    End;

                    q_cusunit.Filter := q_cus_u.Filter;
                    If q_cusunit.Filter = '' Then
                       q_cusunit.Filter := q_cusunit.Filter +'Fatura = '''+ q_itensFatura.AsString +''' AND Sequencial = '''+ q_itensseq.AsString +''' '
                    Else
                       q_cusunit.Filter := q_cusunit.Filter +' AND Fatura = '''+ q_itensFatura.AsString +''' AND Sequencial = '''+ q_itensseq.AsString +''' ';
                    q_cusunit.Filtered := True;
                    If Not q_cusunit.Active Then q_cusunit.Open;

                    While Not q_cusunit.Eof Do Begin
                         If q_cusunitrateio.AsString = '2' Then Begin
                            valor_rateio_reg := (q_cusunitvalor_registrado.AsFloat / vtotpro) * q_cusunitvalor_unitario.AsFloat;
                            valor_rateio_prev := (q_cusunitvalor_previsao.AsFloat / vtotpro) * q_cusunitvalor_unitario.AsFloat;
                         End
                         Else Begin
                            valor_rateio_reg := (q_cusunitvalor_registrado.AsFloat / vtotpeso) * q_cusunitpeso_total_acertado.AsFloat;
                            valor_rateio_prev := (q_cusunitvalor_previsao.AsFloat / vtotpeso) * q_cusunitpeso_unitario_acertado.AsFloat;
                         End;

                         If ((q_cusunitnumerario.AsString <> 'II') And (q_cusunitnumerario.AsString <> 'IPI')) Then Begin
                            If vb_dolar Then
                               vTaxaConv := ataxa
                            Else
                               vTaxaConv := vTaxaDolar;

                            If RG_VALOR.ItemIndex = 1 Then
                               { valor registrado }
                               valor_rateio := valor_rateio_reg
                            Else
                               { valor previs�o }
                               valor_rateio := valor_rateio_prev;

                            If q_cusunitrateio.AsString = '1' Then Begin
                               tlinha := Copy(q_cusunitdescricao.AsString+StringOfChar(' ',35),1,35)
                                       + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(valor_rateio/vTaxaConv,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(valor_rateio/vTaxaConv,fffixed,12,2))-10,11)
                                       + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(valor_rateio,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(valor_rateio,fffixed,12,2))-10,11)
                                       + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((valor_rateio/vTaxaConv)/q_cusunitquantidade.AsFloat,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF((valor_rateio/vTaxaConv)/q_cusunitquantidade.AsFloat,fffixed,12,2))-10,11)
                                       + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(valor_rateio/q_cusunitquantidade.AsFloat,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(valor_rateio/q_cusunitquantidade.AsFloat,fffixed,12,2))-10,11);

                               vtot_tdolar := vtot_tdolar +(valor_rateio/vTaxaDolar);
                               vtot_treal  := vtot_treal  +(valor_rateio);
                               vtot_udolar := vtot_udolar +(valor_rateio/vTaxaDolar)/q_cusunitquantidade.AsFloat;
                               vtot_ureal  := vtot_ureal  +(valor_rateio/q_cusunitquantidade.AsFloat);
                            End
                            Else Begin
                               tlinha := Copy(q_cusunitdescricao.AsString+StringOfChar(' ',35),1,35)
                                       + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(((valor_rateio/vTaxaConv)*q_cusunitquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(((valor_rateio/vTaxaConv)*q_cusunitquantidade.AsFloat),fffixed,12,2))-10,11)
                                       + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(((valor_rateio)*q_cusunitquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(((valor_rateio)*q_cusunitquantidade.AsFloat),fffixed,12,2))-10,11)
                                       + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(((valor_rateio/vTaxaConv)),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(((valor_rateio/vTaxaConv)),fffixed,12,2))-10,11)
                                       + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(((valor_rateio)),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(((valor_rateio)),fffixed,12,2))-10,11);

                               vtot_tdolar := vtot_tdolar +(valor_rateio/vTaxaDolar)*q_cusunitquantidade.AsFloat;
                               vtot_treal  := vtot_treal  +(valor_rateio*q_cusunitquantidade.AsFloat);
                               vtot_udolar := vtot_udolar +(valor_rateio/vTaxaDolar);
                               vtot_ureal  := vtot_ureal  +(valor_rateio);
                            End;
                            Lines.Add('  '+tlinha);
                         End;
                         q_cusunit.Next;
                    End;
                    Lines.Add('  '+'___________________________________'+chr(9)+'_______________________'+chr(9)+'_______________________');
                    tlinha := Copy('Totais'+StringOfChar(' ',35),1,35)
                            + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(vtot_tdolar,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(vtot_tdolar,fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(vtot_treal,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(vtot_treal,fffixed,12,2))-10,11)
                            + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(vtot_udolar,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(vtot_udolar,fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(vtot_ureal,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(vtot_ureal,fffixed,12,2))-10,11);
                    Lines.Add('  '+tlinha);
                    Lines.Add('  '+'___________________________________'+chr(9)+'_______________________'+chr(9)+'_______________________');

                    q_itens.Next;
               End;
            End;
         End;

         { RELA��O DE CONTAINERS }
         If cbRelCont.Checked Then Begin
            If Not qrRelCont.Active Then qrRelCont.Open Else qrRelCont.First;
            If qrRelCont.RecordCount > 0 Then Begin
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
               Lines.Add('  '+'RELA��O DE CONTAINERS');
               Lines.Add('  ');
               While Not qrRelCont.Eof Do Begin
                    Inc(aux);
                    Lines.Add('  '+'N�: '+ qrRelContCodigo.AsString +' - '+ qrRelContDescricao.AsString);
                    qrRelCont.Next;
               End;
               {
               |----------------------------------------------------------------
               |RELA��O DE CONTAINERS:
               |
               |N�: CPSU 474.664-4 - Container 40''
               |N�: TMMU 431.482-4 - Container 40''
               |--------------------------------------
               }
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
            End;
         End;

         { INFORMA��ES COMPLEMENTARES }
         If cbInfComp.Checked Then Begin
            If Not qrInfComp.Active Then qrInfComp.Open;
            If qrInfComp.RecordCount > 0 Then Begin
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
               Lines.Add('  '+'INFORMA��ES COMPLEMENTARES');
               Lines.Add('  ');
               aux := 0;
               While aux < dbmemo1.Lines.Count Do Begin
                  Lines.Add('  '+ dbmemo1.Lines.Strings[aux]);
                  Inc(aux);
               End;
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
            End;
         End;

         { DEMONSTRATIVO FINANCEIRO }
         If cbDF.Checked Then Begin
            Planilha := 'DEMONSTRATIVO FINANCEIRO';

            If Not qrExcelDataCredito.Active Then qrExcelDataCredito.Open Else qrExcelDataCredito.First;
            If Not qrExcelDataDebito.Active Then qrExcelDataDebito.Open Else qrExcelDataDebito.First;
            If (qrExcelDataCredito.RecordCount > 0) OR (qrExcelDataDebito.RecordCount > 0) Then Begin
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
               Lines.Add('  '+'DEMONSTRATIVO FINANCEIRO');
               Lines.Add('  ');
               Lines.Add('  ');
               Lines.Add('  '+'                                          '+'CR�DITOS');
               Lines.Add('  ');
               Lines.Add('  '+'Data' +'        Descri��o'+'                                                  Valor' );
               Lines.Add('  '+'---------------------------------------------------------------------------------------------');

               v_soma := 0;
               While Not qrExcelDataCredito.Eof Do Begin
                    v_str := '  ' + qrExcelDataCreditoData_Credito.AsString+'  ' + qrExcelDataCreditoDescricao.AsString + '                                                                             ';
                    Lines.Add(Copy(v_str,0,77-Length(FormatFloat('#,##0.00', (qrExcelDataCreditoValor.AsFloat)))) + '  ' + FormatFloat('#,##0.00', (qrExcelDataCreditoValor.AsFloat)));
                    v_soma := v_soma + qrExcelDataCreditoValor.AsFloat;
                    qrExcelDataCredito.Next;
               End;
               Lines.Add('  ');
               Lines.Add('  '+'                                                                     SubTotal     '+ FormatFloat('#,##0.00', (v_soma)));
               Lines.Add('  '+'_____________________________________________________________________________________________');
               Lines.Add('  ');

               Lines.Add('  '+'                                          '+'D�BITOS');
               Lines.Add('  ');
               Lines.Add('  '+'Data' +'        Descri��o'+'                                                  Valor' );
               Lines.Add('  '+'---------------------------------------------------------------------------------------------');
               v_soma2 := 0;
               While Not qrExcelDataDebito.Eof Do Begin
// // // // //      Lines.Add('  ' + qrExcelDataDebitoData_Registro.AsString + '  ' + qrExcelDataDebitoDescricao.AsString+'  ' + qrExcelDataDebitoValor_Registrado.AsString);
                  v_str := '  '+ qrExcelDataDebitoData_Registro.AsString+'  ' + qrExcelDataDebitoDescricao.AsString + '                                                                             ';
                  Lines.Add(Copy(v_str,0,77-Length(FormatFloat('#,##0.00', (qrExcelDataDebitoValor_Registrado.AsFloat)))) + '  ' + FormatFloat('#,##0.00', (qrExcelDataDebitoValor_Registrado.AsFloat)));
                  v_soma2 := v_soma2 + qrExcelDataDebitoValor_Registrado.AsFloat;
                  qrExcelDataDebito.Next;
               End;
               Lines.Add('  ');
               Lines.Add('  '+'                                                                     SubTotal     '+ FormatFloat('#,##0.00', (v_soma2)));
               Lines.Add('  '+'_____________________________________________________________________________________________');
               Lines.Add('  ');

               Lines.Add('  '+'                                                                     Resultado    '+FormatFloat('#,##0.00', v_soma-v_soma2));
               Lines.Add('  '+'OBSERVA��ES');
               Lines.Add('  ');

               Lines.Add('                                      (SALDO A PAGAR)= '+ FormatFloat('#,##0.00', v_soma-v_soma2));
               Lines.Add('  ');
               Lines.Add('  ');

               aux := 0;
               If Not qrObs.Active Then qrObs.Open;
               While aux < dbmemo2.Lines.Count Do Begin
                    Lines.Add('  '+ dbmemo2.Lines.Strings[aux]);
                    Inc(aux);
               End;

               Lines.Add('  '+'Atenciosamente,');
               Lines.Add('  ');
               Lines.Add('  ');
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
            End;
         End;
     End;
//     ShowMessage('Extrato conclu�do!');
end;

procedure Tf_extratopro_geral.imprimirClick(Sender: TObject);
begin
     psd.Execute;
     re_processa.Print('Extrato de Processos');
end;

procedure Tf_extratopro_geral.BitBtn2Click(Sender: TObject);
var
   i, i2, j, c, v_aux, vqtddoc: Integer;
   v_procCodigo, v_procNumero, v_procDesc, v_dirDocs, v_moeda, qmoedafatura: String;
   vtot_tot_tdolar, vtot_tot_treal, vTaxaMoedaFatura: Real;
   b_DOGA : Boolean;
   v_doga_custas, v_tot_9,v_tot_10,v_tot_11,v_tot_12,v_tot_13,v_total_impor: Real;
   vIni, vFim: String;
   vTaxaConv: Real; // TAXA DE CONVERS�O
   valor_rateio, valor_rateio_reg, valor_rateio_prev: Real;
   pcolunas: word;
   naoprocessa: boolean;
begin

{
        002	OCEAN AMBASSADOR
        011	OCEAN LEXINGTON
        003	OCEAN QUEST
        014	OCEAN STAR
     }


  qrelacao :=            '-00186/08-00323/06-00323/08-00354/08-00375/07-00449/08-00626/08-00902/07-01020/07-01054/07';
  qrelacao := qrelacao + '-01381/07-01382/07-01383/07-01458/07-01463/08-01551/07-01575/07-01576/07-01610/07-01911/07';
  qrelacao := qrelacao + '-01946/07-02031/07-02068/07-02158/07-02160/07-02163/07-02164/07-02165/07-02187/06-02203/07';
  qrelacao := qrelacao + '-02212/07-02217/07-02237/07-02261/07-02262/07-02263/07-02269/07-02277/07-02278/07-02279/07';
  qrelacao := qrelacao + '-02280/07-02297/07-02327/01-02327/04-02327/07-02351/07-02401/06-02440/07-02449/06-02468/07';
  qrelacao := qrelacao + '-02492/07-02500/07-02510/07-02533/07-02644/06-02753/07-02756/07-02765/07-02766/07-02886/07';
  qrelacao := qrelacao + '-02887/07-02939/07-02966/07-02996/07-02997/07-02999/07-03261/07-03334/07-03335/07-03337/07';
  qrelacao := qrelacao + '-03375/07-03428/07-03429/07-03455/07-03476/07-03503/07-03548/07-03549/07-03562/07-03573/07';
  qrelacao := qrelacao + '-03649/07-03753/07-03783/07-03784/07-04113/07-04119/07-04182/07-04333/07-';

  qrelacao := '00018/07-00082/05-00091/08-00098/07-00110/05-00188/08-00194/05-00197/08-00209/05-00246/05';
  qrelacao := qrelacao + '-00248/05-00312/05-00370/05-00389/05-00491/08-00492/08-00524/05-00546/06-00558/07-00600/05';
  qrelacao := qrelacao + '-00643/07-00645/07-00649/05-00672/08-00787/07-00791/07-00813/06-00905/08-00906/07-00939/08';
  qrelacao := qrelacao + '-00987/07-01003/07-01094/07-01121/08-01170/05-01219/06-01307/05-01337/05-01416/05-01426/07';
  qrelacao := qrelacao + '-01439/05-01584/05-01588/05-01628/04-01645/06-01646/06-01647/08-01654/05-01832/06-01850/07';
  qrelacao := qrelacao + '-01863/05-01918/06-01968/08-02001/07-02009/06-02136/06-02154/07-02200/06-02222/07-02268/07';
  qrelacao := qrelacao + '-02291/07-02300/06-02303/06-02366/07-02394/06-02395/04-02395/06-02479/07-02511/04-02525/08';
  qrelacao := qrelacao + '-02626/06-02684/06-02685/06-02751/06-02804/08-02805/08-02854/06-02896/07-02950/04-03017/07';
  qrelacao := qrelacao + '-3074/08-03108/04-03156/04-03189/04-03201/04-03707/07-04301/07';

  ///devon prosafe 11082008 - lauro
  qrelacao := '02187/06-02401/06-02449/06-02644/06-00375/07-00902/07-01020/07-01054/07-01381/07-01382/07-01383/07-01458/07-01551/07';
  qrelacao := qrelacao + '-01575/07-01576/07-01610/07-01910/07-01911/07-01946/07-02031/07-02068/07-02163/07-02164/07-02165/07-02160/07-02158/07';
  qrelacao := qrelacao + '-02203/07-02217/07-02237/07-02261/07-02262/07-02263/07-02269/07-02277/07-02280/07-02279/07-02278/07-02297/07-02351/07';
  qrelacao := qrelacao + '-02440/07-02468/07-02492/07-02500/07-02510/07-02533/07-02753/07-02756/07-02765/07-02766/07-02886/07-02887/07-02939/07';
  qrelacao := qrelacao + '-02966/07-02997/07-02996/07-03375/07-03428/07-03455/07-03476/07-03548/07-03549/07-03562/07-03561/07-03753/07-03784/07';
  qrelacao := qrelacao + '-03783/07-04182/07-00186/08-00323/08-00354/08-00449/08-00482/08-00626/08-00766/08-00871/08-01288/08-01355/08-01712/08';
  qrelacao := qrelacao + '-01923/08-02367/08-02623/08-02746/08-02745/08-02793/08-02794/08-03219/08';
  {
  If MessageDlg('somente Documentos digitalizados de Processos?', mtConfirmation,[mbYes, mbNo], 0) = mrNo Then   vsomentedocPROC := false
  else   vsomentedocPROC := true;
  }
  vsomentedocPROC := false;

{  If MessageDlg('somente ADMISS�O?', mtConfirmation,[mbYes, mbNo], 0) = mrNo Then   vsomenteADM := false
  else   vsomenteADM := true;
 }
 vsomenteADM := false;

  qrelacao := '01054/07-01463/08-02187/06-02401/06-02449/06-02644/06-03334/07-03335/07-03429/07-04333/07';

  qrelacao := '00018/07-00082/05-00091/08-00098/07-00110/05-00188/08-00194/05-00197/08-00209/05-00246/05';
  qrelacao := qrelacao + '-00248/05-00312/05-00370/05-00389/05-00491/08-00492/08-00524/05-00546/06-00558/07-00600/05';
  qrelacao := qrelacao + '-00643/07-00645/07-00649/05-00672/08-00787/07-00791/07-00813/06-00905/08-00906/07-00939/08';
  qrelacao := qrelacao + '-00987/07-01003/07-01094/07-01121/08-01170/05-01219/06-01307/05-01337/05-01416/05-01426/07';
  qrelacao := qrelacao + '-01439/05-01584/05-01588/05-01628/04-01645/06-01646/06-01647/08-01654/05-01832/06-01850/07';
  qrelacao := qrelacao + '-01863/05-01918/06-01968/08-02001/07-02009/06-02136/06-02154/07-02200/06-02222/07-02268/07';
  qrelacao := qrelacao + '-02291/07-02300/06-02303/06-02366/07-02394/06-02395/04-02395/06-02479/07-02511/04-02525/08';
  qrelacao := qrelacao + '-02626/06-02684/06-02685/06-02751/06-02804/08-02805/08-02854/06-02896/07-02950/04-03017/07';
  qrelacao := qrelacao + '-3074/08-03108/04-03156/04-03189/04-03201/04-03707/07-04301/07';

  ///devon prosafe 11082008 - lauro
  qrelacao := '02187/06-02401/06-02449/06-02644/06-00375/07-00902/07-01020/07-01054/07-01381/07-01382/07-01383/07-01458/07-01551/07';
  qrelacao := qrelacao + '-01575/07-01576/07-01610/07-01910/07-01911/07-01946/07-02031/07-02068/07-02163/07-02164/07-02165/07-02160/07-02158/07';
  qrelacao := qrelacao + '-02203/07-02217/07-02237/07-02261/07-02262/07-02263/07-02269/07-02277/07-02280/07-02279/07-02278/07-02297/07-02351/07';
  qrelacao := qrelacao + '-02440/07-02468/07-02492/07-02500/07-02510/07-02533/07-02753/07-02756/07-02765/07-02766/07-02886/07-02887/07-02939/07';
  qrelacao := qrelacao + '-02966/07-02997/07-02996/07-03375/07-03428/07-03455/07-03476/07-03548/07-03549/07-03562/07-03561/07-03753/07-03784/07';
  qrelacao := qrelacao + '-03783/07-04182/07-00186/08-00323/08-00354/08-00449/08-00482/08-00626/08-00766/08-00871/08-01288/08-01355/08-01712/08';
  qrelacao := qrelacao + '-01923/08-02367/08-02623/08-02746/08-02745/08-02793/08-02794/08-03219/08';

  //devon 18032009 - lauro
  qrelacao := '01458/07-02139/07-02031/07-02018/07-02068/07-01575/07-01911/07-02102/07-02163/07-01964/07';
  qrelacao := qrelacao + '-02170/07-02153/07-02203/07-02160/07-01384/07-02237/07-02209/07-02212/07-02165/07-02164/07-02140/07-02228/07-01829/07-02234/07-02249/07-02280/07-02079/07';
  qrelacao := qrelacao + '-02297/07-02261/07-02262/07-02263/07-02380/07-02317/07-02350/07-02467/07-02351/07-02217/07-01605/07-02301/07-02327/07-02417/07-02413/07-02440/07-02278/07-02277/07';
  qrelacao := qrelacao + '-02279/07-02269/07-02533/07-02500/07-02492/07-02468/07-01005/07-02510/07-02753/07-02756/07';
  qrelacao := qrelacao + '-02765/07-02766/07-02553/07-01576/07-02463/07-02930/07-02886/07-02800/07';
  qrelacao := qrelacao + '-02982/07-02983/07-02966/07-02887/07-02760/07-02997/07-02999/07-03236/07';
  qrelacao := qrelacao + '-03263/07-03334/07-03336/07-03335/07-02996/07-02219/07-03429/07-03261/07';
  qrelacao := qrelacao + '-03473/07-03463/07-03337/07-03550/07-03375/07-03387/07-03490/07-03762/07';
  qrelacao := qrelacao + '-03761/07-03428/07-03562/07-03753/07-04059/07-03770/07-04113/07-04065/07';
  qrelacao := qrelacao + '-04333/07-04058/07-03894/07-04259/07-03638/07-04242/07-00582/08-00923/08';
  qrelacao := qrelacao + '-00922/08-01101/08-01208/08-01241/08-01291/08-01463/08-02315/08-02815/08';
  qrelacao := qrelacao + '-03038/08-00287/0x-05391/08';

  {
  If MessageDlg('Planilha Transocean?', mtConfirmation,[mbYes, mbNo], 0) = mrNo Then vplatransocean := false
  else vplatransocean := true;

  If MessageDlg('Verifica apenas rela��o?', mtConfirmation,[mbYes, mbNo], 0) = mrNo Then vrelacao := false
  else vrelacao := true;
  }

  vplatransocean := false;
  vrelacao := false;

  if  vplatransocean then begin

  v_tot_9 := 0;
  v_tot_10 := 0;
  v_tot_11 := 0;
  v_tot_12 := 0;
  v_tot_13 := 0;
  b_DOGA := False;

  vb_dolar := True;
  vTaxaConv := 1;

  re_Processa.Clear;
  p_custosunit.Visible := False;
  {$I-}
  v_aux := 0;
  Saux := 2;
  vtot_tot_tdolar := 0;
  vtot_tot_treal := 0;

  Screen.Cursor := crHourGlass;
  System.GetDir(0,dir_cor);
  dir_cor := dir_cor + '\Planilhas_Ms2000';
  dir_cor := stringreplace(dir_cor,'/','', [rfReplaceAll]);
  dir_cor := stringreplace(dir_cor,'.','', [rfReplaceAll]);
  dir_cor := stringreplace(dir_cor,'&','', [rfReplaceAll]);
  MkDir(dir_cor);
  dir_cor := dir_cor + '\planilha_transocean';
  dir_cor := stringreplace(dir_cor,'/','', [rfReplaceAll]);
  dir_cor := stringreplace(dir_cor,'.','', [rfReplaceAll]);
  dir_cor := stringreplace(dir_cor,'&','', [rfReplaceAll]);  
  MkDir(dir_cor);
  ////////////////////////////////////////////////////////////////////////////////////////////

   { DOCUMENTOS DIGITALIZADOS }
//     If cbImpDoc.Checked Then Begin
        ///qrExcelProc.Open;
        ///qrExcelProc.First;
    qpla.open;
    qpla.first;
    While Not qpla.Eof Do Begin

          vpro := QPLADOSSIE.ASSTRING;
          if vPro='' then vPro := TRIM(QPLAPROCESSO.ASSTRING);

          naoprocessa := false;

          If FileExists(dir_cor + '\' + stringreplace(Copy(vPro,1,8),'/','-', [rfReplaceAll]) + '_docs.xlsx') Then Begin
              naoprocessa := true;
          End;

         if (qplaprocesso.asstring<>'') and (not naoprocessa) then begin

            vpro := qplaprocesso.asstring;

            qrExcelProc.close;
            qrExcelProc.Params[0].AsString := v_empresa;
            qrExcelProc.Params[1].AsString := v_filial;
            qrExcelProc.Params[2].AsString := qplaprocesso.asstring;
            qrExcelProc.open;


        If qrExcelProc.RecordCount > 0 Then Begin
          v_aux := 0;
          Saux := 2;
          i2 := 0;
          v_menuAux := 3;
          v_pag := 0;

           v_menuAux := 9;
           Excel := CreateOleObject('Excel.Application');
           Excel.Application.DisplayAlerts := False;
           Excel.Visible := bExibePlanilha;

           v_procNumero := qrExcelProcNumero_Doc.AsString;
           v_procDesc := qrExcelProcDescricao.AsString;
           v_procCodigo := qrExcelProcCodigo.AsString;
           v_pag := 1;

           Excel.WorkBooks.Add(1);

           ///// Excel.ActiveWorkBook.VBProject.VBE.MainWindow.Visible := False;
{           Excel.ActiveWorkBook.VBProject.VBComponents.Item('plan1').Codemodule.CreateEventProc ('activate' , 'worksheet');
           Excel.ActiveWorkBook.VBProject.VBComponents.Item('plan1').CodeModule.VBE.ActiveWindow.Close;
           Excel.ActiveWorkBook.VBProject.VBComponents.Item('plan1').CodeModule.VBE.MainWindow.Visible := False;
 }
           Excel.ActiveWindow.DisplayGridLines     := False;
           Excel.WorkSheets[1].PageSetup.PaperSize := '9';
           Excel.ActiveSheet.PageSetup.LeftMargin  := '28';
           Excel.ActiveSheet.PageSetup.RightMargin := '28';
           Excel.WorkSheets[1].Name := 'MENU';
           ///// Excel.Worksheet_Activate.Edit;
           Excel.Cells[1,1].Font.Size := 12;
           Excel.Cells[1,1] := v_empresanome; //'MS2000 - Sistema Gerencial Aduaneiro';'MS2000 - Sistema Gerencial Aduaneiro';
           Excel.Cells[1,1].Font.Bold := True;
           Excel.Cells[2,1] := 'EXTRATO DE PROCESSOS - V 1.0' + ' ' + datetostr(date()) + ' �s ' + Copy(timetostr(time),1,5);
           Excel.Cells[2,1].Font.Bold := True;
           Excel.Cells[5,1] := 'RELA��O DE DOCUMENTOS DO PROCESSO: ' + vPro ;
           Excel.Cells[5,1].Font.Bold := True;

           Excel.Range['A' + IntToStr(6), 'J' + IntToStr(6)].Borders.Item[9].LineStyle := 1;
           Excel.Range['A' + IntToStr(6), 'J' + IntToStr(6)].Borders.Item[9].Weight := 3;
           Excel.ActiveWindow.DisplayGridLines := False;
           Excel.WorkSheets.Add;

           planilha := v_procNumero + ' - ' + v_procDesc;
           planilha_0 := IntToStr(v_menuAux-8)+' - '+stringreplace(Copy(planilha,1,25),'/','_', [rfReplaceAll]);
           ///// planilha := Copy(v_procNumero,1,14) + ' - ' + Copy(v_procDesc,1,14);
           vqtddoc := 1;

           While Not qrExcelProc.Eof Do Begin
              If StrToInt(v_nivel) > 8 Then Begin
                 If qrExcelProcTipo_Doc.AsString = 'PROC' Then
                    If qrExcelProcSub_Tipo_Doc.AsString = '9' Then Begin
                       qrExcelProc.Next;
                       Continue;
                    End;
              End;

              If qrExcelProcCodigo.AsString <> v_procCodigo Then Begin
                 vqtddoc := vqtddoc +1;
                 v_pag := 1;
                 v_procCodigo := qrExcelProcCodigo.AsString;
                 v_procNumero := qrExcelProcNumero_Doc.AsString;
                 v_procDesc := qrExcelProcDescricao.AsString;
                 AdicionaBotao();
                 FormaMenuPla();

                 Excel.WorkSheets.Add;
                 Excel.ActiveWindow.DisplayGridLines := False;
                 planilha := v_procNumero + ' - ' + v_procDesc;
                 planilha_0 := IntToStr(v_menuAux-8)+' - '+stringreplace(Copy(planilha,1,25),'/','_', [rfReplaceAll]);

              End
              else begin
              
              end;
              

              v_dirDocs := FormatFloat('0000', strToFloat(Copy(qrExcelProcArquivo.AsString,4,4))+1)+'0000'+'\';
              If Copy(qrExcelProcArquivo.AsString,8,4) = '0000' Then
                 v_dirDocs := Copy(qrExcelProcArquivo.AsString,4,4)+'0000';

              if fileexists(v_path_server + 'Docs\' + v_dirDocs + qrExcelProcArquivo.AsString +'.jpg') then begin
                 Excel.WorkSheets[1].Name := planilha_0;
                 if v_pag=1 then begin
                 v_pag:=2;
                 Excel.Cells[1,10] := '>> MENU <<';
                 Excel.WorkSheets[planilha_0].Hyperlinks.Add (Anchor:= Excel.WorkSheets[planilha_0].Range['J1'], Address:= '', SubAddress:= '''' + 'MENU' + '''!a1');
                 end;
                 Excel.Application.WorkSheets[1].Shapes.AddPicture (v_path_server + 'Docs\' + v_dirDocs + qrExcelProcArquivo.AsString +'.jpg', True, True, Excel.Cells[v_pag, 1].Left, Excel.Cells[v_pag, 1].Top, 1, 1);
                 Excel.ActiveSheet.PageSetup.LeftMargin := '10';
                 Excel.ActiveSheet.PageSetup.RightMargin := '10';
                 v_pag := v_pag + 56;
                 Excel.Application.WorkSheets[1].Shapes.Item((v_pag-1)/56).ScaleHeight (1, True);
                 Excel.Application.WorkSheets[1].Shapes.Item((v_pag-1)/56).ScaleWidth (1, True);
              end
              else begin
                 showmessage('Arquivo n�o encontrado - Processo:'+v_procCodigo+' - Doc:'+v_procNumero+' - '+v_procDesc);
              end;

              qrExcelProc.Next;

           End;
           v_pag := 1;

           AdicionaBotao();
           FormaMenuPla();
           Excel.WorkSheets['Menu'].Select;

       //    Excel.Range['A' + IntToStr(v_menuAux), 'J' + IntToStr(v_menuAux)].Borders.Item[9].LineStyle := 1;
       //    Excel.Range['A' + IntToStr(v_menuAux), 'J' + IntToStr(v_menuAux)].Borders.Item[9].Weight := 3;

                              vpro := QPLADOSSIE.ASSTRING; ////osprocessoscdigo.asstring;
                              if vPro='' then vPro := TRIM(QPLAPROCESSO.ASSTRING);

           If FileExists(dir_cor + '\' + stringreplace(Copy(vPro,1,8),'/','-', [rfReplaceAll]) + '.xlsx') Then Begin
              Excel.Cells[7, 8] := 'EXTRATO DO PROCESSO';
              Excel.WorkSheets['Menu'].Hyperlinks.Add (Anchor:= Excel.WorkSheets['Menu'].Range['H7'], Address := 'extrato_'+ stringreplace(Copy(vPro,1,8),'/','_', [rfReplaceAll]) + '.xlsx');
              Excel.Range['H7', 'J7'].Merge;
           End;

           Excel.Application.DisplayAlerts := False;
           Excel.WorkSheets['Menu'].Shapes.AddPicture ('c:\ms2000\logoms.jpg', True, True, 370, 4, 110, 60);

           Excel.Workbooks[1].SaveAs(dir_cor + '\' + stringreplace(Copy(vPro,1,8),'/','-', [rfReplaceAll]) + '_docs.xlsx');
           Excel.Quit;

           ///// Excel.Unassigned;
        End
        Else Begin
           Screen.Cursor := crDefault;
//           MessageDlg('Este processo n�o possui documentos digitalizados! ', mtInformation,[mbOk], 0);
        End;
        end;
     qpla.Next;

     End;

     Screen.Cursor := crDefault;

  

  ///////////////////////////////////////////////////////////////////////////////////////////







  end
  else begin



  osprocessos.close;
  if vrelacao then   osprocessos.Params[0].AsString := '%'
  else osprocessos.Params[0].AsString := qrimportcodigo.asstring;
  osprocessos.open;
  //t_proext.open;

  //If osprocessos.RecordCount > 0 Then Begin

  While Not osprocessos.Eof Do Begin

        vPro := osprocessoscodigo.AsString;
        vEmp := osprocessosEmpresa.AsString;
        vFil := osprocessosFilial.AsString;
        {showmessage('vpro: ' + vpro + 'vemp: ' + vemp + 'vfil: ' + vfil);
        if t_proext.Bof then begin
           t_proext.edit;
           t_proextempresa.asstring := vemp;
           t_proextfilial.asstring := vfil;
           t_proextprocesso.asstring := vpro;
           t_proext.post;
        end;}

     //if (not t_proextgerado.asboolean) then begin
     //if (not t_proextgerado.asinteger = 1) then begin
     //if ( t_proextgerado.asinteger = 0) then begin
     //if ((not t_proextgerado.asboolean) and (not vrelacao)) or (vrelacao and (pos(vpro,qrelacao)>0)) then begin
     //if ((not t_proextgerado.asinteger = 1) and (not vrelacao)) or (vrelacao and (pos(vpro,qrelacao)>0)) then begin
     if ((not vrelacao) or (vrelacao and (pos(vpro,qrelacao)>0))) then begin
        {t_proext.edit;
        //t_proextgerado.asboolean := true;
        t_proextgerado.asinteger := 1;
        t_proext.post;}

        With q_cus_u Do Begin
            Filter := '';
            Filtered := False;
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := vPro;
            Open;
        End;

            q_adr.close;
            q_adr.Params[0].AsString := vEmp;
            q_adr.Params[1].AsString := vFil;
            q_adr.Params[2].AsString := vPro;
            q_adr.open;

            q_conhecimento.close;
            q_conhecimento.Params[0].AsString := vEmp;
            q_conhecimento.Params[1].AsString := vFil;
            q_conhecimento.Params[2].AsString := vPro;
            q_conhecimento.open;


            q_emb.close;
            q_emb.Params[0].AsString := vEmp;
            q_emb.Params[1].AsString := vFil;
            q_emb.Params[2].AsString := vPro;
            q_emb.open;

            qrExcelProc.close;
            qrExcelProc.Params[0].AsString := vEmp;
            qrExcelProc.Params[1].AsString := vFil;
            qrExcelProc.Params[2].AsString := vPro;
            qrExcelProc.open;



            q_fat.close;
            q_fat.Params[0].AsString := vEmp;
            q_fat.Params[1].AsString := vFil;
            q_fat.Params[2].AsString := vPro;
            q_fat.open;

            q_taxas.close;
            q_taxas.Params[0].AsString := vEmp;
            q_taxas.Params[1].AsString := vFil;
            q_taxas.Params[2].AsString := vPro;
            q_taxas.Open;

            q_fol.close;
            //q_fol.Params[0].AsString := vEmp;
            //q_fol.Params[1].AsString := vFil;
            q_fol.Params[0].AsString := vPro;
            q_fol.open;


            q_icms.close;
            q_icms.Params[0].AsString := vEmp;
            q_icms.Params[1].AsString := vFil;                   
            q_icms.Params[2].AsString := vPro;
            q_icms.open;


            q_itens.close;
            q_itens.Params[0].AsString := vEmp;
            q_itens.Params[1].AsString := vFil;
            q_itens.Params[2].AsString := vPro;
            q_itens.open;


            q_cus.close;
            q_cus.Params[0].AsString := vEmp;
            q_cus.Params[1].AsString := vFil;
            q_cus.Params[2].AsString := vPro;
            q_cus.open;


            qrObs.close;
            qrObs.Params[0].AsString := vEmp;
            qrObs.Params[1].AsString := vFil;
            qrObs.Params[2].AsString := vPro;
            qrObs.open;

            qrInfComp.close;
            qrInfComp.Params[0].AsString := vEmp;
            qrInfComp.Params[1].AsString := vFil;
            qrInfComp.Params[2].AsString := vPro;
            qrInfComp.open;

            qrExcelDataCredito.close;
            qrExcelDataCredito.Params[0].AsString := vEmp;
            qrExcelDataCredito.Params[1].AsString := vFil;
            qrExcelDataCredito.Params[2].AsString := vPro;
            qrExcelDataCredito.open;

            qrExcelDataDebito.close;
            qrExcelDataDebito.Params[0].AsString := vEmp;
            qrExcelDataDebito.Params[1].AsString := vFil;
            qrExcelDataDebito.Params[2].AsString := vPro;
            qrExcelDataDebito.open;

            q_cusunit.close;
            q_cusunit.Params[0].AsString := vEmp;
            q_cusunit.Params[1].AsString := vFil;
            q_cusunit.Params[2].AsString := vPro;
            q_cusunit.open;

            qrrelcont.close;
            qrrelcont.Params[0].AsString := vEmp;
            qrrelcont.Params[1].AsString := vFil;
            qrrelcont.Params[2].AsString := vPro;
            qrrelcont.open;


  v_tot_9 := 0;
  v_tot_10 := 0;
  v_tot_11 := 0;
  v_tot_12 := 0;
  v_tot_13 := 0;
  b_DOGA := False;

  vb_dolar := True;
  vTaxaConv := 1;

  re_Processa.Clear;
  p_custosunit.Visible := False;
  {$I-}
  v_aux := 0;
  Saux := 2;
  vtot_tot_tdolar := 0;
  vtot_tot_treal := 0;
//  logusu('A','Acessou Planilha Excel - Processo N�: ' + vPro);
  Screen.Cursor := crHourGlass;
  System.GetDir(0,dir_cor);
  dir_cor := dir_cor + '\Planilhas_Ms2000';
  dir_cor := stringreplace(dir_cor,'/','', [rfReplaceAll]);
  dir_cor := stringreplace(dir_cor,'.','', [rfReplaceAll]);
  dir_cor := stringreplace(dir_cor,'&','', [rfReplaceAll]);
  MkDir(dir_cor);
  dir_cor := dir_cor + '\'+qrimportcodigo.asstring+' - '+qrImportRazao_Social.asstring;
  dir_cor := stringreplace(dir_cor,'/','', [rfReplaceAll]);
  dir_cor := stringreplace(dir_cor,'.','', [rfReplaceAll]);
  dir_cor := stringreplace(dir_cor,'&','', [rfReplaceAll]);
  MkDir(dir_cor);




//  If MessageDlg('N�o abrir outras planilhas no excel! O processamento ser� iniciado! Confirma?', mtConfirmation,[mbYes, mbNo], 0) = mrNo Then Exit;
  If cb_cuus.Checked Then
     b_DOGA := false; //(mrYes = MessageDlg('Planilha em formato DOGA DO BRASIL?', mtConfirmation,[mbYes, mbNo], 0));


  Try
     If (cb_ref.Checked) Or (cb_tra.Checked) Or (cb_car.Checked) Or (cb_reg.Checked) Or
        (cb_emb.Checked) Or (cb_fat.Checked) Or (cb_tax.Checked) Or (cb_fol.Checked) Or
        (cb_imp.Checked) Or (cb_ite.Checked) Or (cb_cut.Checked) Or (cb_cuu.Checked) Or
        (cb_cuus.Checked) Or (cbRelCont.Checked) Or (cbInfComp.Checked) Or (cbDF.Checked)Then
     Begin
          bExibePlanilha := false; ///(mrYes = MessageDlg('Deseja exibir a Planilha sendo gerada?', mtConfirmation, [mbYes, mbNo], 0));
          image1.Picture.SaveToFile('c:\ms2000\logoms.jpg');
          i2 := 0;
          v_menuAux := 3;
          v_pag := 0;
          re_Processa.Lines.Append('>>> GERANDO PLANILHA COM AS OP��ES SELECIONADAS');
          re_Processa.Lines.Append('PROCESSO N�: ' + vPro);

          Excel := CreateOleObject('Excel.Application');
          Excel.Application.DisplayAlerts := False;
          Excel.Visible := bExibePlanilha;

          Excel.WorkBooks.Add[1];
          ///// ActiveWorkBook.VBProject.VBE.MainWindow.Visible = False
{          Excel.ActiveWorkBook.VBProject.VBComponents.Item('plan1').Codemodule.CreateEventProc ('activate' , 'worksheet');
          Excel.ActiveWorkBook.VBProject.VBComponents.Item('plan1').CodeModule.VBE.ActiveWindow.Close;
          Excel.ActiveWorkBook.VBProject.VBComponents.Item('plan1').CodeModule.VBE.MainWindow.Visible := False;
//        Excel.ActiveWorkBook.VBProject.VBE.MainWindow.Visible := bExibePlanilha;
 }
          Excel.WorkSheets[1].Name := 'MENU';
          Excel.WorkSheets[1].PageSetup.PaperSize := '9';
          Excel.ActiveSheet.PageSetup.LeftMargin := '28';
          Excel.ActiveSheet.PageSetup.RightMargin := '28';

          Excel.Cells[1,1].Font.Size := 12;
          Excel.Range['A1', 'A1'].ColumnWidth := 60;
          Excel.Cells[9,1] := v_empresanome; 
          Excel.Cells[9,1].Font.Bold := True;
          Excel.Cells[10,1] := 'EXTRATO DE PROCESSOS - V 1.0' + ' ' + datetostr(date()) + ' �s ' + Copy(timetostr(time),1,5);
          Excel.Cells[10,1].Font.Bold := True;
          Excel.Cells[11,1] := 'PROCESSO N� '+ vPro;
          Excel.Cells[11,1].Font.Bold := True;
          Excel.Range['A9', 'A11'].HorizontalAlignment := AL_CENTRO;

          ///// Excel.Range['A' + IntToStr(6), 'J' + IntToStr(6)].Borders.Item[9].LineStyle := 1;
          ///// Excel.Range['A' + IntToStr(6), 'J' + IntToStr(6)].Borders.Item[9].Weight := 3;

          Excel.ActiveWindow.DisplayGridLines := False;

          Excel.WorkBooks[1].SaveAs(dir_cor + '\' +'extrato_'+ StringReplace(Copy(vPro,1,8),'/','_', [rfReplaceAll]) + '.xlsx');
          //q_ADR.Open;

          { REFER�NCIA DO PROCESSO }
          If cb_ref.Checked Then Begin
             Planilha := 'REFER�NCIAS DO PROCESSO';
             IniciarFolha(2);

             Excel.Range['A5', 'A5'].ColumnWidth := 30;
             Excel.Range['B5', 'B5'].ColumnWidth := 65;

             Excel.Cells[6,1] := 'Despachante ';
             Excel.Cells[6,2] := ':  '+ 'MS LOG�STICA ADUANEIRA E TRANSPORTES INTEGRADOS LTDA.';
             Excel.Cells[7,1] := 'Filial ';
             Excel.Cells[7,2] := ':  '+ q_ADRqfilial.AsString;

             Excel.Cells[9,1] := 'Cliente ';
             Excel.Cells[9,2] := ':  '+ q_ADRcliente.AsString;

             Excel.Cells[11,1] := 'Contrato ';
             Excel.Cells[11,2] := ':  '+ q_ADRqcontrato.AsString;
             Excel.Cells[12,1] := 'Local de Invent�rio: ';
             Excel.Cells[12,2] := ':  '+ q_ADRqlocal.AsString;

             Excel.Cells[14,1] := 'Refer�ncia MS ';
             Excel.Cells[14,2] := ':  '+ vPro;
             Excel.Cells[15,1] := 'Tipo Processo ';
             Excel.Cells[15,2] := ':  '+ q_ADRqtipo.AsString;

             Excel.Cells[16,1] := 'Refer�ncia Cliente ';
             Excel.Cells[16,2] := ':  '+ q_ADRref_empresa.AsString;
             If q_adrqtipodecl.AsString <> '12' Then Begin
                Excel.Cells[17,1] := 'DI - Declara��o de Importa��o ';
                Excel.Cells[17,2] := ':  '+ q_ADRdi.AsString
             End
             Else Begin
                If q_adrpag_proporcional.AsInteger = 1  Then Begin
                   Excel.Cells[18,1] := 'DI - Declara��o de Importa��o';
                   Excel.Cells[18,2] := ':  '+ q_ADRdi.AsString+' -> ADMISS�O TEMPOR�RIA ';
                End
                Else Begin
                   Excel.Cells[18,1] := 'DI - Declara��o de Importa��o ';
                   Excel.Cells[18,2] := ':  '+ q_ADRdi.AsString+' -> CONSUMO E ADMISS�O TEMPOR�RIA '
                End;
             End;
             Excel.Cells[18,1] := 'Tipo de Declara��o';
             Excel.Cells[18,2] := ':  '+ q_ADRqdecl.AsString;
             Excel.Cells[19,1] := 'Data Registro';
             Excel.Cells[19,2] := ':  '+ Copy(q_ADRdt_reg.AsString,1,2)+'/'+Copy(q_ADRdt_reg.AsString,3,2)+'/'+Copy(q_ADRdt_reg.AsString,5,4);

             Excel.Range['A20', 'B20'].Borders.Item[9].LineStyle := 1;
             Excel.Range['A20', 'B20'].Borders.Item[9].Weight := 3;
             Excel.Range['A5', 'B20'].Font.Size := 9;

             FinalizarFolha;
          End;

          //q_conhecimento.Open;
          If q_conhecimento.RecordCount > 0 Then Begin
             VTOTPESO := q_conhecimentopeso_liquido.AsFloat;
             { TRANSPORTES / CONHECIMENTO }
             If cb_tra.Checked Then Begin
                Planilha := 'TRANSPORTES - CONHECIMENTO';
                IniciarFolha(2);

                Excel.Range['A5', 'A5'].ColumnWidth := 30;
                Excel.Range['B5', 'B5'].ColumnWidth := 65;

                Excel.Cells[6,1] := 'Transporte ';
                Excel.Cells[6,2] := ':  ' + q_conhecimentoqtransporte.AsString;
                Excel.Cells[7,1] := 'Transportador ';
                Excel.Cells[7,2] := ':  ' + q_conhecimentoqtransportador.AsString;
                Excel.Cells[8,1] :='Embarca��o ';
                Excel.Cells[8,2] := ':  ' + q_conhecimentoqembarcacao.AsString;
                Excel.Cells[9,1] :='Local de Embarque ';
                Excel.Cells[9,2] := ':  ' + q_conhecimentoqlocal.AsString;
                Excel.Cells[10,1] :='Data do Embarque ';
                Excel.Cells[10,2] := ':  ' + q_conhecimentoqdataembarque.AsString;
                Excel.Cells[11,1] := 'Conhecimento ';
                Excel.Cells[11,2] := ':  ' + q_conhecimentoqconhecimento.AsString;
                Excel.Cells[12,1] := 'Tipo ';
                Excel.Cells[12,2] := ':  ' + q_conhecimentoqtipo.AsString;
                Excel.Cells[13,1] := 'Master ';
                Excel.Cells[13,2] := ':  ' + q_conhecimentoqmaster.AsString;
                Excel.Cells[14,1] := 'Utiliza��o ';
                Excel.Cells[14,2] := ':  ' + q_conhecimentoqutilizacao.AsString;
                Excel.Range['A15', 'B16'].Borders.Item[9].LineStyle := 1;

                Excel.Range['A15', 'B16'].Borders.Item[9].Weight := 3;;
                Excel.Range['A5', 'B16'].Font.Size := 9;

                FinalizarFolha;
             End;

             { CARGA }
             If cb_car.Checked Then Begin
                Planilha := 'CARGA';
                IniciarFolha(4);

                Excel.Range['A5', 'A5'].ColumnWidth := 25;
                Excel.Range['B5', 'B5'].ColumnWidth := 1;
                Excel.Range['C5', 'C5'].ColumnWidth := 12;
                Excel.Range['D5', 'D5'].ColumnWidth := 55;

                Excel.Cells[6,1] := 'Pa�s de Proced�ncia ';
                Excel.Cells[6,2] := ':';
                Excel.Cells[6,3] := q_conhecimentoqpaisprocedencia.AsString;
                Excel.Cells[7,1] := 'URF de Entrada no Pa�s ';
                Excel.Cells[7,2] := ':';
                Excel.Cells[7,3] := q_conhecimentoqurfentrada.AsString;
                Excel.Cells[8,1] :='Moeda Frete ';
                Excel.Cells[8,2] := ':';
                Excel.Cells[8,3] := q_conhecimentoqmoedafrete.AsString;
                Excel.Cells[9,1] :='Frete Prepaid ';
                Excel.Cells[9,2] := ':';
                Excel.Cells[9,3] := q_conhecimentofrete_prepaid.AsFloat;
                Excel.Cells[10,1] :='Frete Collect ';
                Excel.Cells[10,2] := ':';
                Excel.Cells[10,3] := q_conhecimentofrete_collect.AsFloat;
                Excel.Cells[11,1] := 'Frete Territorio Nacional ';
                Excel.Cells[11,2] := ':';
                Excel.Cells[11,3] := q_conhecimentofrete_ter_nac.AsFloat;
                Excel.Cells[12,1] := 'Moeda Seguro ';
                Excel.Cells[12,2] := ':';
                Excel.Cells[12,3] := q_conhecimentoqmoedaseguro.AsString;
                Excel.Cells[13,1] := 'Seguro ';
                Excel.Cells[13,2] := ':';
                Excel.Cells[13,3] := q_conhecimentovalor_seguro.AsFloat;
                Excel.Cells[14,1] := 'Peso L�quido ';
                Excel.Cells[14,2] := ':';
                Excel.Cells[14,3] := q_conhecimentopeso_liquido.AsFloat;
                Excel.Cells[15,1] := 'Peso Bruto ';
                Excel.Cells[15,2] := ':';
                Excel.Cells[15,3] := q_conhecimentopeso_bruto.AsFloat;

                Excel.Range['C9', 'C15'].HorizontalAlignment := AL_DIREITA;
                Excel.Range['C9', 'C15'].NumberFormat := '#.##0,00';
                Excel.Range['A16', 'D16'].Borders.Item[9].LineStyle := 1;

                Excel.Range['A16', 'D16'].Borders.Item[9].Weight := 3;;
                Excel.Range['A5', 'D16'].Font.Size := 9;

                FinalizarFolha;
             End;

             { REGISTRO DE CHEGADA }
             If cb_reg.Checked Then Begin
                Planilha := 'REGISTRO DE CHEGADA';
                IniciarFolha(2);

                Excel.Range['A5', 'A5'].ColumnWidth := 30;
                Excel.Range['B5', 'B5'].ColumnWidth := 65;

                Excel.Cells[6,1] := 'URF de Despacho ';
                Excel.Cells[6,2] := ':  ' + q_conhecimentoqurfdespacho.AsString;
                Excel.Cells[7,1] := 'Recinto Alfandegado ';
                Excel.Cells[7,2] := ':  ' + q_conhecimentoqrecinto.AsString;
                Excel.Cells[8,1] :='Setor de Armazenamento ';
                Excel.Cells[8,2] := ':  ' + q_conhecimentoqsetor.AsString;
                Excel.Cells[9,1] :='Data de Chegada URF de Entrada ';
                Excel.Cells[9,2] := ':  ' + q_conhecimentoqdataurfchegada.AsString;
                Excel.Cells[10,1] :='Documento de Entrada ';
                Excel.Cells[10,2] := ':  ' + q_conhecimentoqdocentrada.AsString;
                Excel.Cells[11,1] := 'Tipo Documento ';
                Excel.Cells[11,2] := ':  ' + q_conhecimentoqtipodocentrada.AsString;
                Excel.Cells[12,1] := 'Presen�a de Carga ';
                Excel.Cells[12,2] := ':  ' + q_conhecimentoqpresencacarga.AsString;
                Excel.Cells[13,1] := 'Data de Chegada URF de Despacho ';
                Excel.Cells[13,2] := ':  ' + q_conhecimentoqdatadespacho.AsString;

                Excel.Range['A14', 'B14'].Borders.Item[9].LineStyle := 1;
                Excel.Range['A14', 'B14'].Borders.Item[9].Weight := 3;;
                Excel.Range['A5', 'B14'].Font.Size := 9;

                FinalizarFolha;
             End;
          End;

          { TIPOS DE EMBALAGENS }
          If cb_emb.Checked Then Begin
             //q_emb.Open;
             If q_emb.RecordCount > 0 Then Begin
                Planilha := 'TIPOS DE EMBALAGENS';
                IniciarFolha(4);

                Excel.Range['A5', 'A5'].ColumnWidth := 40;
                Excel.Range['B5', 'B5'].ColumnWidth := 10;
                Excel.Range['C5', 'C5'].ColumnWidth := 6;
                Excel.Range['D5', 'D5'].ColumnWidth := 37;

                Excel.Cells[6,1] := 'Tipo de Embalagem';
                Excel.Cells[6,2] := 'Quantidade';
                Excel.Range['B6', 'C6'].HorizontalAlignment := AL_CENTRO;
                Excel.Range['B6', 'C6'].Merge;

                i := 8;
                vIni := IntToStr(i);
                While Not q_emb.Eof Do Begin
                    Excel.Cells[i,1] := q_embdescricaoembalagem.AsString;
                    Excel.Cells[i,2] := q_embquantidade.AsFloat;
                    q_emb.Next;
                    Inc(i);
                End;
                vFim := IntToStr(i-1);
                { FORMATA AS C�LULAS }
                Excel.Range['B'+ vIni, 'B'+ vFim].NumberFormat := '#.##0,00';
                Excel.Range['B'+ vIni, 'B'+ vFim].HorizontalAlignment := AL_DIREITA;

                Excel.Range['A'+ IntToStr(i), 'D'+ IntToStr(i)].Borders.Item[9].LineStyle := 1;
                Excel.Range['A'+ IntToStr(i), 'D'+ IntToStr(i)].Borders.Item[9].Weight := 3;;
                Excel.Range['A5', 'D'+ IntToStr(i)].Font.Size := 9;

                FinalizarFolha;
             End;
          End;

          { FATURAS }
          qmoedafatura := '';
          //q_fat.Open;
          If q_fat.RecordCount > 0 Then Begin
             VTOTPRO := 0;
             If cb_fat.Checked Then Begin
                Planilha := 'FATURAS';
                IniciarFolha(6);

                Excel.Range['A5', 'A5'].ColumnWidth := 6;
                Excel.Range['B5', 'B5'].ColumnWidth := 20;
                Excel.Range['C5', 'C5'].ColumnWidth := 10;
                Excel.Range['D5', 'D5'].ColumnWidth := 35;
                Excel.Range['E5', 'E5'].ColumnWidth := 15;
                Excel.Range['F5', 'F5'].ColumnWidth := 6;

                i := 6;
                i2 := 6;
             End;
             While Not q_fat.Eof Do Begin
                qmoedafatura := q_fatcodmoeda.AsString;

                If cb_fat.Checked Then Begin
                   Excel.Range['B'+ IntToStr(i), 'E'+ IntToStr(i)].Borders.Item[8].LineStyle := 1;
                   Excel.Range['B'+ IntToStr(i), 'E'+ IntToStr(i)].Borders.Item[8].Weight := 2;

                   Excel.Cells[i,2] := 'Exportador ';
                   Excel.Cells[i,3] := ':  ' + q_fatq_exp.AsString;
                   Inc(i);
                   Excel.Cells[i,2] := 'Endere�o ';
                   Excel.Cells[i,3] := ':  ' + q_fatq_end.AsString;
                   Inc(i);
                   Excel.Cells[i,2] :='Complemento ';
                   Excel.Cells[i,3] := ':  ' + q_fatq_com.AsString;
                   Inc(i);
                   Excel.Cells[i,2] :='Bairro ';
                   Excel.Cells[i,3] := ':  ' + q_fatq_bai.AsString;
                   Inc(i);
                   Excel.Cells[i,2] :='Cidade ';
                   Excel.Cells[i,3] := ':  ' + q_fatq_cid.AsString;
                   Inc(i);
                   Excel.Cells[i,2] := 'Estado ';
                   Excel.Cells[i,3] := ':  ' + q_fatq_est.AsString;
                   Inc(i);

                   For j := i2 To i Do
                      Excel.Range['C'+ IntToStr(j), 'E'+ IntToStr(j)].Merge;

                   Inc(i);
                   Excel.Cells[i,2] := 'Faturas';
                   Excel.Cells[i,3] := 'Incoterm';
                   Excel.Cells[i,4] := 'Moeda';
                   Excel.Cells[i,5] := 'Valor';
                   Excel.Range['E' + IntToStr(i), 'E'+IntToStr(i)].HorizontalAlignment := AL_CENTRO;
                   Inc(i);
                   Inc(i);
                End;
                vIni := IntToStr(i);
                expor := q_fatq_exp.AsString;
                While (Not q_fat.Eof) And (expor = q_fatq_exp.AsString) Do Begin
                     VTOTPRO := VTOTPRO + q_fatq_val.AsFloat;
                     If cb_fat.Checked Then Begin
                        Excel.Cells[i,2] := q_fatq_fat.AsString;
                        Excel.Cells[i,3] := q_fatq_inc.AsString;
                        Excel.Cells[i,4] := q_fatq_moe.AsString;
                        Excel.Cells[i,5] := q_fatq_val.AsFloat;
                        Inc(i);
                        i2 := i;
                     End;
                     q_fat.Next;
                End;
                If cb_fat.Checked Then Begin
                   vFim := IntToStr(i-1);
                   { FORMATA AS C�LULAS }
                   Excel.Range['B'+ vIni, 'B'+ vFim].NumberFormat := '@';
                   Excel.Range['E'+ vIni, 'E'+ vFim].NumberFormat := '#.##0,00';
                End;
             End;
             If cb_fat.Checked Then Begin
                Inc(i);
                Excel.Range['A'+ IntToStr(i), 'F'+ IntToStr(i)].Borders.Item[9].LineStyle := 1;
                Excel.Range['A'+ IntToStr(i), 'F'+ IntToStr(i)].Borders.Item[9].Weight := 3;
                Excel.Range['A5', 'B'+ IntToStr(i)].Font.Size := 9;

                FinalizarFolha;
             End;
          End;

          { TAXAS DE C�MBIO }
          ataxa := 0;
          vTaxaMoedaFatura := 0;
          //q_taxas.Open;
          If q_taxas.RecordCount > 0 Then Begin
             If q_taxas.Locate('Moeda', '220', []) Then Begin
                vTaxaDolar := q_taxastaxa_conversao.AsFloat;
                vb_dolar := True;
             End;
             If q_taxas.Locate('Moeda', qmoedafatura, []) Then Begin
                vTaxaMoedaFatura := q_taxastaxa_conversao.AsFloat;
                vb_dolar := False;
             End;
             ataxa := vTaxaDolar;
             If cb_tax.Checked Then Begin
                Planilha := 'TAXAS DE C�MBIO';
                IniciarFolha(5);

                Excel.Range['A5', 'A5'].ColumnWidth := 5;
                Excel.Range['B5', 'B5'].ColumnWidth := 45;
                Excel.Range['C5', 'C5'].ColumnWidth := 15;
                Excel.Range['D5', 'D5'].ColumnWidth := 15;
                Excel.Range['E5', 'E5'].ColumnWidth := 13;

                If q_adrqtipodecl.AsString <> '12' Then Begin
                   Excel.Cells[6,2] := 'Moeda';
                   Excel.Cells[6,3] := 'Taxa';
                End
                Else Begin
                   If q_adrpag_proporcional.Asinteger = 0 Then Begin
                      Excel.Cells[6,2] := 'Moeda';
                      Excel.Cells[6,3] := 'Taxa ADM';
                      Excel.Cells[6,4] := 'Taxa CON';
                   End
                   Else Begin
                      Excel.Cells[6,2] := 'Moeda';
                      Excel.Cells[6,3] := 'Taxa';
                   End;
                End;
                Excel.Range['A6', 'E6'].HorizontalAlignment := AL_CENTRO;
                Excel.Range['B6', 'B6'].HorizontalAlignment := AL_ESQUERDA;
                Excel.Range['A6', 'E6'].Font.Bold := True;

                i := 7;
                vIni := IntToStr(i);
                q_taxas.First;
                While Not q_taxas.Eof Do Begin
                   Excel.Cells[i,2] := q_taxasdescricao.AsString;
                   Excel.Cells[i,3] := q_taxastaxa_conversao.AsFloat;
                   If (q_adrqtipodecl.AsString = '12') and (q_adrpag_proporcional.Asinteger  = 1) Then
                      Excel.Cells[i,4] := q_taxastaxa_conversaoc.AsFloat;
                   Inc(i);
                   q_taxas.Next;
                End;
                vFim := IntToStr(i-1);
                { FORMATA AS C�LULAS }
                Excel.Range['C'+ vIni, 'D'+ vFim].NumberFormat := '#.##0,0000';
                Excel.Range['C'+ vIni, 'D'+ vFim].HorizontalAlignment := AL_DIREITA;

                Excel.Range['A'+ IntToStr(i+1), 'E'+ IntToStr(i+1)].Borders.Item[9].LineStyle := 1;
                Excel.Range['A'+ IntToStr(i+1), 'E'+ IntToStr(i+1)].Borders.Item[9].Weight := 3;;
                Excel.Range['A5', 'E'+ IntToStr(i)].Font.Size := 9;

                FinalizarFolha;
             End;
          End;

          { FOLLOW UP }
          If cb_fol.Checked Then Begin
             //q_fol.Open;
             Planilha := 'FOLLOW UP';
             IniciarFolha(3);

             Excel.Range['A5', 'A5'].ColumnWidth := 17;
             Excel.Range['B5', 'B5'].ColumnWidth := 50;
             Excel.Range['C5', 'C5'].ColumnWidth := 27;

             i := 6;
             If q_fol.RecordCount > 0 Then Begin
                Excel.Cells[i,1] := 'Data';
                Excel.Cells[i,2] := 'Descri��o';
                Excel.Cells[i,3] := 'Usu�rio';
                Inc(i);
                Excel.Cells[i,1] := '------------------------';
                Excel.Cells[i,2] := '--------------------------------------------------------------------';
                Excel.Cells[i,3] := '-----------------';

                Inc(i);
                vIni := IntToStr(i);
                While Not q_fol.Eof Do Begin
                   Excel.Cells[i,1].NumberFormat := '@';
                   Excel.Cells[i,1] := FormatDateTime('dd/mm/yyyy', q_folData.asDateTime) +' '+ q_folHora.AsString;
                   Excel.Cells[i,2] := q_folDescricao.AsString;
                   Excel.Cells[i,3] := q_folUsuario.AsString;
                   q_fol.Next;
                   Inc(i);
                End;
                vFim := IntToStr(i-1);
                { FORMATA AS C�LULAS }
                //Excel.Range['A'+ vIni, 'A'+ vFim].NumberFormat := 'dd/mm/yyyy hh:nn';
                Excel.Range['A6', 'C' + IntToStr(i)].HorizontalAlignment := AL_ESQUERDA;
                Inc(i);
                Excel.Range['A'+ IntToStr(i), 'C'+ IntToStr(i)].Borders.Item[9].LineStyle := 1;
                Excel.Range['A'+ IntToStr(i), 'C'+ IntToStr(i)].Borders.Item[9].Weight := 3;
                Excel.Range['A5', 'C'+ IntToStr(i)].Font.Size := 9;

                FinalizarFolha;
             End;
          End;

          { IMPOSTOS }
          If cb_imp.Checked Then Begin
             Planilha := 'IMPOSTOS';
             IniciarFolha(4);

             Excel.Range['A5', 'A5'].ColumnWidth := 30;
             Excel.Range['B5', 'B5'].ColumnWidth := 1;
             Excel.Range['C5', 'C5'].ColumnWidth := 15;
             Excel.Range['D5', 'D5'].ColumnWidth := 45;

             i := 6;
             If q_adrqtipodecl.AsString <> '12' Then Begin
                Excel.Cells[i,1] := 'II - Imposto de Importa��o';
                Excel.Cells[i,2] := ':';
                Excel.Cells[i,3] := q_ADRII.AsFloat;
                Inc(i);
                Excel.Cells[i,1] := 'IPI - Imposto de Produtos Ind.';
                Excel.Cells[i,2] := ':';
                Excel.Cells[i,3] := q_ADRIPI.AsFloat;
                Inc(i);
                Excel.Cells[i,1] :='Taxa Siscomex';
                Excel.Cells[i,2] := ':';
                Excel.Cells[i,3] := q_ADRTAXA_SISCOMEX.AsFloat;
                Inc(i);
                If q_adrqtipodecl.AsString = '01' Then Begin
                   //q_icms.Open;
                   If q_icms.RecordCount = 0 Then
                      vicms := 0
                   Else
                      vicms := q_icmsvalor_registrado.AsFloat;
                   Excel.Cells[i,1] :='ICMS';
                   Excel.Cells[i,2] := ':';
                   Excel.Cells[i,3] := FloatTostr(vicms);
                End;
             End
             Else Begin
                If Not q_adrpag_proporcional.Asinteger = 1 Then
                   Excel.Cells[i,1] := 'Admiss�o Tempor�ria:'
                Else
                   Excel.Cells[i,1] := 'Consumo e Admiss�o Tempor�ria:';
                Inc(i);
                Excel.Cells[i,1] := 'II - Imposto de Importa��o';
                Excel.Cells[i,2] := ':';
                Excel.Cells[i,3] := q_ADRII.AsFloat;
                Inc(i);
                Excel.Cells[i,1] := 'IPI - Imposto de Produtos Ind.';
                Excel.Cells[i,2] := ':';
                Excel.Cells[i,3] := q_ADRIPI.AsFloat;
                Inc(i);
                Excel.Cells[i,1] :='Taxa Siscomex';
                Excel.Cells[i,2] := ':';
                Excel.Cells[i,3] := q_ADRTAXA_SISCOMEX.AsFloat;
             End;
             Excel.Range['C6', 'C'+ IntToStr(i)].NumberFormat := '#.##0,00';
             Excel.Range['C6', 'C'+ IntToStr(i)].HorizontalAlignment := AL_DIREITA;
             Excel.Range['A11', 'D11'].Borders.Item[9].LineStyle := 1;
             Excel.Range['A11', 'D11'].Borders.Item[9].Weight := 3;
             Excel.Range['A5', 'D11'].Font.Size := 9;

             FinalizarFolha;
          End;

          { IMPOSTOS POR ITEM }
          If cb_ite.Checked Then Begin
{
             Excel.Workbooks[1].Close;
             Application.ProcessMessages;
             Excel.Workbooks.Open(dir_cor + '\' +'extrato_'+ stringreplace(Copy(vPro,1,8),'/','_', [rfReplaceAll]) + '.xls');
             Application.ProcessMessages;
}
             //q_itens.Open;
             If q_itens.RecordCount > 0 Then Begin
                Planilha := 'IMPOSTOS POR ITEM';
                IniciarFolha(8);

                Excel.Range['A5', 'A5'].ColumnWidth := 5;
                Excel.Range['B5', 'B5'].ColumnWidth := 16;
                Excel.Range['C5', 'C5'].ColumnWidth := 1;
                Excel.Range['D5', 'D5'].ColumnWidth := 16;
                Excel.Range['E5', 'E5'].ColumnWidth := 16;
                Excel.Range['F5', 'F5'].ColumnWidth := 16;
                Excel.Range['G5', 'G5'].ColumnWidth := 16;
                Excel.Range['H5', 'H5'].ColumnWidth := 5;

                i := 4;
                While Not q_itens.Eof Do Begin
                   Inc(i);
                   Inc(i);
                   Excel.Range['A' + IntToStr(i), 'H'+IntToStr(i)].Borders.Item[8].LineStyle := 1;

                   vIni := IntToStr(i);
                   Excel.Cells[i,1] := 'Adi��o ';
                   Excel.Cells[i,3] := ':';
                   Excel.Cells[i,4] := q_itensadicao.AsString;
                   Excel.Cells[i,4].NumberFormat := '@';
                   Excel.Range['A'+ IntToStr(i), 'B'+ IntToStr(i)].Merge;
                   Inc(i);
                   Excel.Cells[i,1] := 'Regime Tributa��o ';
                   Excel.Cells[i,3] := ':';
                   Excel.Cells[i,4] := q_itensregime_tri.AsString;
                   Excel.Range['A'+ IntToStr(i), 'B'+ IntToStr(i)].Merge;
                   Inc(i);
                   Excel.Cells[i,1] := 'NCM ';
                   Excel.Cells[i,3] := ':';
                   Excel.Cells[i,4] := q_itensncm.AsString;
                   Excel.Range['A'+ IntToStr(i), 'B'+ IntToStr(i)].Merge;
                   Inc(i);
                   Excel.Cells[i,1] := 'DESTAQUE ';
                   Excel.Cells[i,3] := ':';
                   Excel.Cells[i,4] := q_itensdestaque_ncm.AsString;
                   Excel.Range['A'+ IntToStr(i), 'B'+ IntToStr(i)].Merge;
                   Inc(i);
                   Excel.Cells[i,1] := 'NALADI ';
                   Excel.Cells[i,3] := ':';
                   Excel.Cells[i,4] := q_itensnaladi.AsString;
                   Excel.Range['A'+ IntToStr(i), 'B'+ IntToStr(i)].Merge;

                   vFim := IntToStr(i);
                   Excel.Range['D'+ vIni, 'D'+ vFim].HorizontalAlignment := AL_ESQUERDA;

                   Inc(i);
                   vIni := IntToStr(i);
                   Excel.Cells[i,1] := 'Aliq. II ';
                   Excel.Cells[i,3] := ':';
                   Excel.Cells[i,4] := q_itensaliq_ncm_ii.AsFloat;
                   Excel.Range['A' + IntToStr(i), 'B' + IntToStr(i)].Merge;
                   Inc(i);
                   Excel.Cells[i,1] := 'Aliq. IPI ';
                   Excel.Cells[i,3] := ':';
                   Excel.Cells[i,4] := q_itensaliq_ncm_ipi.AsFloat;
                   Excel.Range['A' + IntToStr(i), 'B' + IntToStr(i)].Merge;

                   vFim := IntToStr(i);
                   Excel.Range['D'+ vIni, 'D'+ vFim].NumberFormat := '#.##0,00';
                   Excel.Range['D'+ vIni, 'D'+ vFim].HorizontalAlignment := AL_DIREITA;

                   Inc(i);
                   Inc(i);

                   qadicao := q_itensadicao.AsString;
                   While (Not q_itens.Eof) And (qadicao=q_itensadicao.AsString) Do Begin
                      Excel.Range['B' + IntToStr(i), 'G'+IntToStr(i)].Borders.Item[9].LineStyle := 1;

                      Inc(i);
                      vIni := IntToStr(i);
                      Excel.Cells[i,2] := 'Seq ';
                      Excel.Cells[i,3] := ':';
                      Excel.Cells[i,4] := q_itensseq_adicao.AsString;
                      Inc(i);
                      Excel.Cells[i,2] := 'Produto ';
                      Excel.Cells[i,3] := ':';
                      Excel.Cells[i,4] := q_itensproduto.AsString;
                      Inc(i);
                      Excel.Cells[i,2] := 'Descri��o ';
                      Excel.Cells[i,3] := ':';
                      Excel.Cells[i,4] := Copy(q_itensdescricao_produto.AsString,1,60);
                      Excel.Range['D' + IntToStr(i), 'G' + IntToStr(i)].Merge;
                      Inc(i);
                      Excel.Cells[i,4] := StringReplace(Copy(q_itensdescricao_produto.AsString,61,60),'=',' ',[rfReplaceAll, rfIgnoreCase]);
                      Excel.Range['D' + IntToStr(i), 'G' + IntToStr(i)].Merge;

                      vFim := IntToStr(i);
                      { FORMATA AS C�LULAS }
                      Excel.Range['C'+ vIni, 'C'+ vFim].NumberFormat := '@';
                      Excel.Range['D'+ vIni, 'D'+ vFim].HorizontalAlignment := AL_ESQUERDA;

                      Inc(i);
                      vIni := IntToStr(i);
                      Excel.Cells[i,2] := 'Quantidade ';
                      Excel.Cells[i,3] := ':';
                      Excel.Cells[i,4] := q_itensquantidade.AsFloat;
                      Inc(i);
                      Excel.Cells[i,2] := 'Valor Unit�rio ';
                      Excel.Cells[i,3] := ':';
                      Excel.Cells[i,4] := q_itensvalunit.AsFloat;
                      Inc(i);
                      Excel.Cells[i,2] := 'Valor Total ';
                      Excel.Cells[i,3] := ':';
                      Excel.Cells[i,4] := q_itensvaltot.AsFloat;
                      Inc(i);
                      Excel.Cells[i,2] := 'Peso Unit�rio ';
                      Excel.Cells[i,3] := ':';
                      Excel.Cells[i,4] := q_itenspesounit.AsFloat;
                      Inc(i);
                      Excel.Cells[i,2] := 'Peso Total ';
                      Excel.Cells[i,3] := ':';
                      Excel.Cells[i,4] := q_itenspesototal.AsFloat;

                      vFim := IntToStr(i);
                      { FORMATA AS C�LULAS }
                      Excel.Range['D'+ vIni, 'D'+ vFim].NumberFormat := '#.##0,00';
                      Excel.Range['D'+ vIni, 'D'+ vFim].HorizontalAlignment := AL_DIREITA;

                      Inc(i);
                      Inc(i);
                      Excel.Range['D' + IntToStr(i), 'G' + IntToStr(i+1)].HorizontalAlignment := AL_CENTRO;
                      Excel.Cells[i,4] := 'Valores Totais ';
                      Excel.Range['D'+ IntToStr(i), 'E'+ IntToStr(i)].Merge;
                      Excel.Cells[i,6] := 'Valores Unit�rios ';
                      Excel.Range['F'+ IntToStr(i), 'G'+ IntToStr(i)].Merge;
                      Inc(i);
                      Excel.Cells[i,4] := '(U$)';
                      Excel.Cells[i,5] := '(R$)';
                      Excel.Cells[i,6] := '(U$)';
                      Excel.Cells[i,7] := '(R$)';
                      Inc(i);
                      Excel.Cells[i,4] := '-----------------------------';
                      Excel.Cells[i,5] := '-----------------------------';
                      Excel.Cells[i,6] := '-----------------------------';
                      Excel.Cells[i,7] := '-----------------------------';
                      Inc(i);

                      vIni := IntToStr(i);
                      Excel.Cells[i,2] := 'FOB ';
                      Excel.Cells[i,3] := ':';
                      Excel.Cells[i,4] := q_itensfob2.AsFloat;
                      Excel.Cells[i,5] := q_itensfob_em_reais.AsFloat;
                      Excel.Cells[i,6] := q_itensfob2.AsFloat/q_itensquantidade.AsFloat;
                      Excel.Cells[i,7] := q_itensfob_em_reais.AsFloat/q_itensquantidade.AsFloat;
                      Inc(i);

                      Excel.Cells[i,2] := 'FRETE PREPAID ';
                      Excel.Cells[i,3] := ':';
                      Excel.Cells[i,4] := q_itensfreteprepaid.AsFloat;
                      Excel.Cells[i,5] := q_itensfreteprepaid_em_reais.AsFloat;
                      Excel.Cells[i,6] := q_itensfreteprepaid.AsFloat/q_itensquantidade.AsFloat;
                      Excel.Cells[i,7] := q_itensfreteprepaid_em_reais.AsFloat/q_itensquantidade.AsFloat;
                      Inc(i);

                      Excel.Cells[i,2] := 'FRETE COLLECT ';
                      Excel.Cells[i,3] := ':';
                      Excel.Cells[i,4] := q_itensfretecollect.AsFloat;
                      Excel.Cells[i,5] := q_itensfretecollect_em_reais.AsFloat;
                      Excel.Cells[i,6] := q_itensfretecollect.AsFloat/q_itensquantidade.AsFloat;
                      Excel.Cells[i,7] := q_itensfretecollect_em_reais.AsFloat/q_itensquantidade.AsFloat;
                      Inc(i);

                      Excel.Cells[i,2] := 'FRETE TER.NAC. ';
                      Excel.Cells[i,3] := ':';
                      Excel.Cells[i,4] := q_itensfreteternac.AsFloat;
                      Excel.Cells[i,5] := q_itensfreteternac_em_reais.AsFloat;
                      Excel.Cells[i,6] := q_itensfreteternac.AsFloat/q_itensquantidade.AsFloat;
                      Excel.Cells[i,7] := q_itensfreteternac_em_reais.AsFloat/q_itensquantidade.AsFloat;
                      Inc(i);

                      Excel.Cells[i,2] := 'SEGURO ';
                      Excel.Cells[i,3] := ':';
                      Excel.Cells[i,4] := q_itensseguro.AsFloat;
                      Excel.Cells[i,5] := q_itensseguro_em_reais.AsFloat;
                      Excel.Cells[i,6] := q_itensseguro.AsFloat/q_itensquantidade.AsFloat;
                      Excel.Cells[i,7] := q_itensseguro_em_reais.AsFloat/q_itensquantidade.AsFloat;
                      Inc(i);

                      Excel.Cells[i,2] := 'CIF ';
                      Excel.Cells[i,3] := ':';
                      Excel.Cells[i,4] := q_itenscif.AsFloat;
                      Excel.Cells[i,5] := q_itenscif_em_reas.AsFloat;
                      Excel.Cells[i,6] := q_itenscif.AsFloat/q_itensquantidade.AsFloat;
                      Excel.Cells[i,7] := q_itenscif_em_reas.AsFloat/q_itensquantidade.AsFloat;
                      Inc(i);

                      Excel.Cells[i,2] := 'II ';
                      Excel.Cells[i,3] := ':';
                      Excel.Cells[i,4] := q_itensvalor_ii_a_recolher.AsFloat;
                      Excel.Cells[i,5] := q_itensvalor_ii_a_recolher_em_reais.AsFloat;
                      Excel.Cells[i,6] := q_itensvalor_ii_a_recolher.AsFloat/q_itensquantidade.AsFloat;
                      Excel.Cells[i,7] := q_itensvalor_ii_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat;
                      Inc(i);

                      Excel.Cells[i,2] := 'IPI ';
                      Excel.Cells[i,3] := ':';
                      Excel.Cells[i,4] := q_itensvalor_ipi_a_recolher.AsFloat;
                      Excel.Cells[i,5] := q_itensvalor_ipi_a_recolher_em_reais.AsFloat;
                      Excel.Cells[i,6] := q_itensvalor_ipi_a_recolher.AsFloat/q_itensquantidade.AsFloat;
                      Excel.Cells[i,7] := q_itensvalor_ipi_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat;
                      Excel.Range['D' + IntToStr(i), 'H' + IntToStr(i)].HorizontalAlignment := AL_DIREITA;

                      vFim := IntToStr(i);
                      { FORMATA AS C�LULAS }
                      Excel.Range['D'+ vIni, 'G'+ vFim].NumberFormat := '#.##0,00';
                      Excel.Range['D'+ vIni, 'G'+ vFim].HorizontalAlignment := AL_DIREITA;

                      Inc(i);
                      Excel.Range['B' + IntToStr(i), 'G'+IntToStr(i)].Borders.Item[9].LineStyle := 1;
                      Inc(i);
                      q_Itens.Next;
                   End;
                   Excel.Workbooks[1].Save;
                   Application.ProcessMessages;
                End;
                Excel.Range['A'+ IntToStr(i), 'H'+ IntToStr(i)].Borders.Item[9].LineStyle := 1;
                Excel.Range['A'+ IntToStr(i), 'H'+ IntToStr(i)].Borders.Item[9].Weight := 3;
                Excel.Range['A5', 'H'+ IntToStr(i)].Font.Size := 9;

                FinalizarFolha;
             End;
          End;

          { CUSTOS TOTAIS DO PROCESSO }
          If cb_cut.Checked Then Begin
{
             Excel.Workbooks[1].Close;
             Application.ProcessMessages;
             Excel.Workbooks.Open(dir_cor + '\' +'extrato_'+ stringreplace(Copy(vPro,1,8),'/','_', [rfReplaceAll]) + '.xls');
             Application.ProcessMessages;
}
             //q_cus.Open;
             If q_cus.RecordCount > 0 Then Begin
                If RG_VALOR.ItemIndex=1 Then
                   Planilha := 'CUSTOS TOTAIS'
                Else
                   Planilha := 'CUSTOS TOTAIS - PREVIS�O';
                IniciarFolha(4);

                Excel.Range['A5', 'A5'].ColumnWidth := 45;
                Excel.Range['B5', 'B5'].ColumnWidth := 15;
                Excel.Range['C5', 'C5'].ColumnWidth := 15;
                Excel.Range['D5', 'D5'].ColumnWidth := 17;

                i := 6;
                Excel.Cells[i,1] := 'Descri��o do Custo';
                Excel.Cells[i,2] := 'Valor (U$)';
                Excel.Cells[i,3] := 'Valor (R$)';
                Inc(i);
                Excel.Cells[i,1] := '------------------------------------------------------------------------------';
                Excel.Cells[i,2] := '----------------------------';
                Excel.Cells[i,3] := '----------------------------';
                Inc(i);
                vtotcdolar:=0;
                vtotcreal :=0;

                vIni := IntToStr(i);
                While Not q_cus.Eof Do Begin
                   Excel.Cells[i,1] := q_cusdescricao.AsString;
                   If RG_VALOR.ItemIndex=1 Then Begin
                      Excel.Cells[i,2] := q_cusvalor_registrado.AsFloat/ataxa;
                      Excel.Cells[i,3] := q_cusvalor_registrado.AsFloat;
                      vtotcdolar := vtotcdolar+(q_cusvalor_registrado.AsFloat/ataxa);
                      vtotcreal := vtotcreal+q_cusvalor_registrado.AsFloat;
                   End
                   Else Begin
                      Excel.Cells[i,2] := q_cusvalor_previsao.AsFloat/ataxa;
                      Excel.Cells[i,3] := q_cusvalor_previsao.AsFloat;
                      vtotcdolar := vtotcdolar+(q_cusvalor_previsao.AsFloat/ataxa);
                      vtotcreal := vtotcreal+q_cusvalor_previsao.AsFloat;
                   End;
                   Inc(i);
                   q_cus.Next;
                End;
                vFim := IntToStr(i-1);
                Excel.Range['B'+ vIni, 'C'+ vFim].NumberFormat := '#.##0,00';
                Excel.Range['B'+ vIni, 'C'+ vFim].HorizontalAlignment := AL_DIREITA;
                Excel.Cells[i,1] := '------------------------------------------------------------------------------';
                Excel.Cells[i,2] := '----------------------------';
                Excel.Cells[i,3] := '----------------------------';

                Inc(i);
                Excel.Cells[i,1] := 'Totais';
                Excel.Cells[i,2] := vtotcdolar;
                Excel.Cells[i,3] := vtotcreal;
                Excel.Range['B'+ IntToStr(i), 'C'+ IntToStr(i)].NumberFormat := '#.##0,00';
                Excel.Range['B'+ IntToStr(i), 'C'+ IntToStr(i)].HorizontalAlignment := AL_DIREITA;

                Inc(i);
                Excel.Range['A'+ IntToStr(i), 'D'+ IntToStr(i)].Borders.Item[9].LineStyle := 1;
                Excel.Range['A'+ IntToStr(i), 'D'+ IntToStr(i)].Borders.Item[9].Weight := 3;
                Excel.Range['A5', 'D'+ IntToStr(i)].Font.Size := 9;

                FinalizarFolha;
             End;
          End;

          { CUSTOS UNIT�RIOS SINT�TICOS }
          If (cb_cuus.Checked AND NOT b_DOGA) Then Begin
{
             Excel.Workbooks[1].Close;
             Application.ProcessMessages;
             Excel.Workbooks.Open(dir_cor + '\' +'extrato_'+ stringreplace(Copy(vPro,1,8),'/','_', [rfReplaceAll]) + '.xls');
             Application.ProcessMessages;
}
             Planilha := 'CUSTOS UNIT�RIOS - SINT�TICO';

             //q_itens.Open;
             If q_itens.RecordCount > 0 Then Begin
                IniciarFolha(12);

                Excel.Range['A5', 'A5'].ColumnWidth := 1;
                Excel.Range['B5', 'B5'].ColumnWidth := 10;
                Excel.Range['C5', 'C5'].ColumnWidth := 16;
                Excel.Range['D5', 'D5'].ColumnWidth := 8;
                Excel.Range['E5', 'E5'].ColumnWidth := 5;
                Excel.Range['F5', 'F5'].ColumnWidth := 8;
                Excel.Range['G5', 'G5'].ColumnWidth := 8;
                Excel.Range['H5', 'H5'].ColumnWidth := 10;
                Excel.Range['I5', 'I5'].ColumnWidth := 10;
                Excel.Range['J5', 'J5'].ColumnWidth := 10;
                Excel.Range['K5', 'K5'].ColumnWidth := 10;
                Excel.Range['L5', 'L5'].ColumnWidth := 1;

                i := 4;
                Inc(i);
                Excel.Cells[i,2] := 'Produto';
                Excel.Cells[i,3] := 'Descri��o';
                Excel.Cells[i,4] := 'NCM';
                Excel.Cells[i,5] := 'QTD';
                Excel.Cells[i,6] := 'Peso';
                Excel.Cells[i+1,6] := 'Total';
                Excel.Cells[i,7] := 'Peso';
                Excel.Cells[i+1,7] := 'Unit�rio';
                Excel.Cells[i,8] := 'Valor(U$)';
                Excel.Cells[i,9] := 'Valor(R$)';
                Excel.Cells[i,10] := 'Valor(U$)';
                Excel.Cells[i,11] := 'Valor(R$)';
                Excel.Cells[i+1,8] := 'Total';
                Excel.Cells[i+1,9] := 'Total';
                Excel.Cells[i+1,10] := 'Unit�rio';
                Excel.Cells[i+1,11] := 'Unit�rio';
                Excel.Range['D' + IntToStr(i), 'K' + IntToStr(i)].HorizontalAlignment := AL_CENTRO;
                Excel.Range['D' + IntToStr(i+1), 'K' + IntToStr(i+1)].HorizontalAlignment := AL_CENTRO;
                Inc(i);
                Excel.Range['B' + IntToStr(i), 'K'+IntToStr(i)].Borders.Item[9].LineStyle := 1;
                Inc(i);

                vIni := IntToStr(i+1);
                While Not q_itens.Eof Do Begin
                   vtot_tdolar := 0;
                   vtot_treal  := 0;
                   vtot_udolar := 0;
                   vtot_ureal  := 0;

                   Inc(i);
                   Excel.Cells[i,2] := q_itensproduto.AsString;
                   Excel.Cells[i,3] := q_itensdescricao_produto.AsString;
                   Excel.Cells[i,4] := q_itensNCM.AsString;
                   Excel.Cells[i,5] := q_itensquantidade.AsFloat;

                   Excel.Cells[i,6] := q_itenspesototal.AsFloat;
                   Excel.Cells[i,7] := q_itenspesounit.AsFloat;

                   If vb_dolar Then
                      vTaxaConv := 1
                   Else
                      vTaxaConv := vTaxaDolar;

                   If cb_fob.Checked Then Begin
                      vtot_tdolar := vtot_tdolar +(q_itensfob_em_reais2.AsFloat/vTaxaMoedaFatura);
                      vtot_treal  := vtot_treal  +q_itensfob_em_reais2.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensfob_em_reais.AsFloat/vTaxaDolar)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensfob_em_reais2.AsFloat/q_itensquantidade.AsFloat);
                   End;
                   If cb_freteprepaid.Checked Then Begin
                      vtot_tdolar := vtot_tdolar +(q_itensfreteprepaid_em_reais.AsFloat/vTaxaDolar);
                      vtot_treal  := vtot_treal  +q_itensfreteprepaid_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensfreteprepaid_em_reais.AsFloat/vTaxaDolar)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensfreteprepaid_em_reais.AsFloat/q_itensquantidade.AsFloat);
                   End;
                   If cb_fretecollect.Checked Then Begin
                      vtot_tdolar := vtot_tdolar +(q_itensfretecollect_em_reais.AsFloat/vTaxaDolar);
                      vtot_treal  := vtot_treal  +q_itensfretecollect_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensfretecollect_em_reais.AsFloat/vTaxaDolar)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensfretecollect_em_reais.AsFloat/q_itensquantidade.AsFloat);
                   End;
                   If cb_freteternac.Checked Then Begin
                      vtot_tdolar := vtot_tdolar +(q_itensfreteternac_em_reais.AsFloat/vTaxaDolar);
                      vtot_treal  := vtot_treal  +q_itensfreteternac_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensfreteternac_em_reais.AsFloat/vTaxaDolar)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensfreteternac_em_reais.AsFloat/q_itensquantidade.AsFloat);
                   End;
                   If cb_seguro.Checked Then Begin
                      vtot_tdolar := vtot_tdolar +(q_itensseguro_em_reais.AsFloat/vTaxaDolar);
                      vtot_treal  := vtot_treal  +q_itensseguro_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensseguro_em_reais.AsFloat/vTaxaDolar)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensseguro_em_reais.AsFloat/q_itensquantidade.AsFloat);
                   End;
                   If cb_ii.Checked Then Begin
                      vtot_tdolar := vtot_tdolar +(q_itensvalor_ii_a_recolher_em_reais.AsFloat/vTaxaDolar);
                      vtot_treal  := vtot_treal  +q_itensvalor_ii_a_recolher_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensvalor_ii_a_recolher_em_reais.AsFloat/vTaxaDolar)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensvalor_ii_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat);
                   End;
                   If cb_ipi.Checked Then Begin
                      vtot_tdolar := vtot_tdolar +(q_itensvalor_ipi_a_recolher_em_reais.AsFloat/vTaxaDolar);
                      vtot_treal  := vtot_treal  +q_itensvalor_ipi_a_recolher_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +(((q_itensvalor_ipi_a_recolher_em_reais.AsFloat/vTaxaDolar))/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensvalor_ipi_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat);
                   End;

                   q_cusunit.Filter := q_cus_u.Filter;
                   If q_cusunit.Filter = '' Then
                      q_cusunit.Filter := q_cusunit.Filter +'Fatura = '''+ q_itensFatura.AsString +''' AND Sequencial = '''+ q_itensseq.AsString +''' '
                   Else
                      q_cusunit.Filter := q_cusunit.Filter +' AND Fatura = '''+ q_itensFatura.AsString +''' AND Sequencial = '''+ q_itensseq.AsString +''' ';
                   q_cusunit.Filtered := True;
                   q_cusunit.Open;

                   While Not q_cusunit.Eof Do Begin
                      /////////// NOVO 03/03/2006
                      If q_cusunitrateio.AsString = '2' Then Begin
                         valor_rateio_reg := (q_cusunitvalor_registrado.AsFloat / vtotpro) * q_cusunitvalor_unitario.AsFloat;
                         valor_rateio_prev := (q_cusunitvalor_previsao.AsFloat / vtotpro) * q_cusunitvalor_unitario.AsFloat;
                      End
                      Else Begin
                         valor_rateio_reg := (q_cusunitvalor_registrado.AsFloat / vtotpeso) * q_cusunitpeso_total_acertado.AsFloat;
                         valor_rateio_prev := (q_cusunitvalor_previsao.AsFloat / vtotpeso) * q_cusunitpeso_unitario_acertado.AsFloat;
                      End;

                      If ((q_cusunitnumerario.AsString <> 'II') And (q_cusunitnumerario.AsString <> 'IPI')) Then Begin
                         If vb_dolar Then
                            vTaxaConv := ataxa
                         Else
                            vTaxaConv := vTaxaDolar;

                         If RG_VALOR.ItemIndex = 1 Then
                            { valor registrado }
                            valor_rateio := valor_rateio_reg
                         Else
                            { valor previs�o }
                            valor_rateio := valor_rateio_prev;

                         vtot_tdolar := vtot_tdolar +((valor_rateio/vTaxaConv)*q_cusunitquantidade.AsFloat);
                         vtot_treal  := vtot_treal  +((valor_rateio)*q_cusunitquantidade.AsFloat);
                         vtot_udolar := vtot_udolar +((valor_rateio/vTaxaConv));
                         vtot_ureal  := vtot_ureal  +((valor_rateio));
                      End;
                      q_cusunit.Next;
                   End;

                   Excel.Cells[i,8] := vtot_tdolar;
                   Excel.Cells[i,9] := vtot_treal;
                   Excel.Cells[i,10] := vtot_udolar;
                   Excel.Cells[i,11] := vtot_ureal;

                   vtot_tot_tdolar := vtot_tot_tdolar + vtot_tdolar;
                   vtot_tot_treal := vtot_tot_treal + vtot_treal;
                   q_itens.Next;
                End;
                vFim := IntToStr(i);
                Excel.Range['F'+ vIni, 'S'+ vFim].NumberFormat := '#.##0,00';

                Inc(i);
                Inc(i);
                Excel.Cells[i,7] := 'Total:';
                Excel.Cells[i,8] := vtot_tot_tdolar;
                Excel.Cells[i,9] := vtot_tot_treal;
                Excel.Range['E'+ IntToStr(i), 'E'+ IntToStr(i)].HorizontalAlignment := AL_CENTRO;
                Excel.Range['G'+ IntToStr(i), 'I'+ IntToStr(i)].Interior.Color := clSilver;
                Excel.Range['H'+ IntToStr(i), 'I'+ IntToStr(i)].NumberFormat := '#.##0,00';

                Inc(i);

                Excel.Range['A'+ IntToStr(i), 'L'+ IntToStr(i)].Borders.Item[9].LineStyle := 1;
                Excel.Range['A'+ IntToStr(i), 'L'+ IntToStr(i)].Borders.Item[9].Weight := 3;
                Excel.Range['A5', 'L'+ IntToStr(i)].Font.Size := 8;

                FinalizarFolha;
             End;
          End
          { CUSTOS UNIT�RIOS SINT�TICOS - DOGA }
          ///ALTERADO POR MM - 09/12/2005
          Else If (cb_cuus.Checked AND b_DOGA) Then Begin
{
             Excel.Workbooks[1].Close;
             Application.ProcessMessages;
             Excel.Workbooks.Open(dir_cor + '\' +'extrato_'+ stringreplace(Copy(vPro,1,8),'/','_', [rfReplaceAll]) + '.xls');
             Application.ProcessMessages;
}
             Planilha := 'CUSTOS UNIT�RIOS - SINT�TICO';

             //q_itens.Open;
             If q_itens.RecordCount > 0 Then Begin
                If q_fat.RecordCount > 0 Then Begin
                   q_fat.First;
                   MoedaCorte(v_moeda);
                End;
                IniciarFolha(20);

                Excel.Range['A5', 'A5'].ColumnWidth := 1;
                Excel.Range['B5', 'B5'].ColumnWidth := 10;
                Excel.Range['C5', 'C5'].ColumnWidth := 16;
                Excel.Range['D5', 'D5'].ColumnWidth := 8;
                Excel.Range['E5', 'E5'].ColumnWidth := 5;
                Excel.Range['F5', 'F5'].ColumnWidth := 8;
                Excel.Range['G5', 'G5'].ColumnWidth := 8;
                Excel.Range['H5', 'H5'].ColumnWidth := 15;
                Excel.Range['I5', 'I5'].ColumnWidth := 40;
                Excel.Range['J5', 'J5'].ColumnWidth := 15;
                Excel.Range['K5', 'K5'].ColumnWidth := 25;
                Excel.Range['L5', 'L5'].ColumnWidth := 15;
                Excel.Range['M5', 'M5'].ColumnWidth := 10; ///aliquota II
                Excel.Range['N5', 'N5'].ColumnWidth := 10; ///REDUCAO
                Excel.Range['O5', 'O5'].ColumnWidth := 20; ///aliquota REDUZIDA
                Excel.Range['P5', 'P5'].ColumnWidth := 40;
                Excel.Range['Q5', 'Q5'].ColumnWidth := 20; //OK
                Excel.Range['R5', 'R5'].ColumnWidth := 15; //OK
                Excel.Range['S5', 'S5'].ColumnWidth := 15; //OK
                Excel.Range['T5', 'T5'].ColumnWidth := 1;

                i := 4;
                Inc(i);
                Excel.Cells[i,2] := 'Produto';
                Excel.Cells[i,3] := 'Descri��o';
                Excel.Cells[i,4] := 'NCM';
                Excel.Cells[i,5] := 'QTD';
                Excel.Cells[i,6] := 'Peso'; Excel.Cells[i+1,6] := 'Total';
                Excel.Cells[i,7] := 'Peso'; Excel.Cells[i+1,7] := 'Unit�rio';
                Excel.Cells[i,8] := 'Valor FOB ' + v_moeda ;
                Excel.Cells[i+1,8] := 'Unit�rio';
                Excel.Cells[i,9] := 'Valor FOB em '+ v_moeda +'(Ou seja na moeda da fatura)';
                Excel.Cells[i+1,9] := 'Total';
                Excel.Cells[i,10] := 'Valor FOB em R$'; Excel.Cells[i+1,10] := 'Total';
                Excel.Cells[i,11] := 'Valor Frete internacional em R$';
                Excel.Cells[i,12] := 'Valor do II em R$';

                Excel.Cells[i,13] := 'Al�quota II %';
                ///colocado em 14/12/2005
                Excel.Cells[i,14] := 'Redu��o %';
                Excel.Cells[i,15] := 'Aliquota reduzida %';

                Excel.Cells[i,16] := 'Valor das custas em R$'; Excel.Cells[i+1,16] := 'Todas as despesas pagas, sem (PIS/COFINS/ICMS/II/IPI)';
                Excel.Cells[i,17] := 'Valor IMPORTA��O (R$)'; Excel.Cells[i+1,17] := 'Total';
                Excel.Cells[i,18] := 'Valor '+v_moeda; Excel.Cells[i+1,18] := 'Unit�rio';
                Excel.Cells[i,19] := 'Valor(R$)'; Excel.Cells[i+1,16] := 'Unit�rio';

                Excel.Range['D'+ IntToStr(i), 'S'+ IntToStr(i+1)].HorizontalAlignment := AL_CENTRO;
                Inc(i);
                Excel.Range['B'+ IntToStr(i), 'S'+ IntToStr(i)].Borders.Item[9].LineStyle := 1;
                Inc(i);

                vIni := IntToStr(i+1);
                While Not q_itens.Eof Do Begin
                   vtot_tdolar := 0;
                   vtot_treal  := 0;
                   vtot_udolar := 0;
                   vtot_ureal  := 0;
                   Inc(i);

                   Excel.Cells[i,2] := q_itensproduto.AsString;
                   Excel.Cells[i,3] := q_itensdescricao_produto.AsString;
                   Excel.Cells[i,4] := q_itensNCM.AsString;
                   Excel.Cells[i,5] := q_itensquantidade.AsFloat;
                   Excel.Cells[i,5].HorizontalAlignment := AL_CENTRO;
                   Excel.Cells[i,6] := q_itenspesototal.AsFloat;
                   Excel.Cells[i,7] := q_itenspesounit.AsFloat;

                   v_total_impor := 0;

                   If vb_dolar Then
                      vTaxaConv := 1
                   Else
                      vTaxaConv := vTaxaMoedaFatura;

                   If cb_fob.Checked Then Begin
                      vtot_tdolar := vtot_tdolar +(q_itensfob_em_reais2.AsFloat/vTaxaConv);
                      vtot_treal  := vtot_treal  +q_itensfob_em_reais2.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensfob_em_reais2.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensfob_em_reais2.AsFloat/q_itensquantidade.AsFloat);
                   End;
                   If cb_freteprepaid.Checked Then Begin
                      vtot_tdolar := vtot_tdolar +(q_itensfreteprepaid_em_reais.AsFloat/vTaxaConv);
                      vtot_treal  := vtot_treal  +q_itensfreteprepaid_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensfreteprepaid_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensfreteprepaid_em_reais.AsFloat/q_itensquantidade.AsFloat);
                      v_total_impor := v_total_impor + q_itensfreteprepaid_em_reais.AsFloat;
                   End;
                   If cb_fretecollect.Checked Then Begin
                      vtot_tdolar := vtot_tdolar +(q_itensfretecollect_em_reais.AsFloat/vTaxaConv);
                      vtot_treal  := vtot_treal  +q_itensfretecollect_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensfretecollect_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensfretecollect_em_reais.AsFloat/q_itensquantidade.AsFloat);
                      v_total_impor := v_total_impor + q_itensfretecollect_em_reais.AsFloat;
                   End;
                   If cb_freteternac.Checked Then Begin
                      vtot_tdolar := vtot_tdolar +(q_itensfreteternac_em_reais.AsFloat/vTaxaConv);
                      vtot_treal  := vtot_treal  +q_itensfreteternac_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensfreteternac_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensfreteternac_em_reais.AsFloat/q_itensquantidade.AsFloat);
                      v_total_impor := v_total_impor + q_itensfreteternac_em_reais.AsFloat;
                   End;
                   If cb_seguro.Checked Then Begin
                      vtot_tdolar := vtot_tdolar +(q_itensseguro_em_reais.AsFloat/vTaxaConv);
                      vtot_treal  := vtot_treal  +q_itensseguro_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensseguro_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensseguro_em_reais.AsFloat/q_itensquantidade.AsFloat);
                      v_total_impor := v_total_impor + q_itensseguro_em_reais.AsFloat;
                   End;
                   If cb_ii.Checked Then Begin
                      vtot_tdolar := vtot_tdolar +(q_itensvalor_ii_a_recolher_em_reais.AsFloat/vTaxaConv);
                      vtot_treal  := vtot_treal  +q_itensvalor_ii_a_recolher_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensvalor_ii_a_recolher_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensvalor_ii_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat);
                      v_total_impor := v_total_impor + q_itensvalor_ii_a_recolher_em_reais.AsFloat;
                   End;
                   If cb_ipi.Checked Then Begin
                      vtot_tdolar := vtot_tdolar +(q_itensvalor_ipi_a_recolher_em_reais.AsFloat/vTaxaConv);
                      vtot_treal  := vtot_treal  +q_itensvalor_ipi_a_recolher_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensvalor_ipi_a_recolher_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensvalor_ipi_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat);
                      v_total_impor := v_total_impor + q_itensvalor_ipi_a_recolher_em_reais.AsFloat;
                   End;

                   /////  Excel.Cells[i,20] := vtotpro;
                   /////  Excel.Cells[i,21] := vtotpeso;
                   ////////colocando II IGUAL AO ANAL�TICO 12/12/2005

                   Excel.Cells[i,12] := q_itensvalor_ii_a_recolher_em_reais.AsFloat;
                   v_tot_12 := v_tot_12 + q_itensvalor_ii_a_recolher_em_reais.AsFloat;

                   v_doga_custas := 0;

                   q_cusunit.Filter := q_cus_u.Filter;
                   If q_cusunit.Filter = '' Then
                      q_cusunit.Filter := q_cusunit.Filter +'Fatura = '''+ q_itensFatura.AsString +''' AND Sequencial = '''+ q_itensseq.AsString +''' '
                   Else
                      q_cusunit.Filter := q_cusunit.Filter +' AND Fatura = '''+ q_itensFatura.AsString +''' AND Sequencial = '''+ q_itensseq.AsString +''' ';
                   q_cusunit.Filtered := True;
                   q_cusunit.Open;

                   While Not q_cusunit.Eof Do Begin
                      ///// If q_cusunitNumerario.AsString = 'II' Then Begin
                      /////    Excel.Cells[i,12] :=(valor_rateio_reg)*q_cusunitquantidade.AsFloat;// valor_rateio;
                      /////    Excel.Cells[i,12].numberFormat := '#.##0,00';
                      /////    v_tot_12 := v_tot_12 +(valor_rateio_reg*q_cusunitquantidade.AsFloat);
                      ///// End;
                      If q_cusunitrateio.AsString = '2' Then Begin
                         valor_rateio_reg := (q_cusunitvalor_registrado.AsFloat / vtotpro) * q_cusunitvalor_unitario.AsFloat;
                         valor_rateio_prev := (q_cusunitvalor_previsao.AsFloat / vtotpro) * q_cusunitvalor_unitario.AsFloat;
                      End
                      Else Begin
                         valor_rateio_reg := (q_cusunitvalor_registrado.AsFloat / vtotpeso) * q_cusunitpeso_total_acertado.AsFloat;
                         valor_rateio_prev := (q_cusunitvalor_previsao.AsFloat / vtotpeso) * q_cusunitpeso_unitario_acertado.AsFloat;
                      End;

                      If ((q_cusunitnumerario.AsString <> 'II') And (q_cusunitnumerario.AsString <> 'IPI')) Then Begin
                         If q_cusunitNumerario.AsString = 'FINT' Then Begin
                            ///// Excel.Cells[i,11] := valor_rateio_reg*q_cusunitquantidade.AsFloat;
                            ///// v_tot_11 := v_tot_11 + ((valor_rateio_reg)*q_cusunitquantidade.AsFloat);
                            Excel.Cells[i,11] := valor_rateio_reg;
                            v_tot_11 := v_tot_11 + valor_rateio_reg;
                         End;

                         If (q_cusunitNumerario.AsString <> '*PIS' ) And
                            (q_cusunitNumerario.AsString <> '*CFIN') And
                            (q_cusunitNumerario.AsString <> '*COFI') And
                            (q_cusunitNumerario.AsString <> '*ICMS') And
                            (q_cusunitNumerario.AsString <> 'IPI' )  And
                            (q_cusunitNumerario.AsString <> '*FOB' ) And
                            (q_cusunitNumerario.AsString <> 'II'  )  And
                            (q_cusunitNumerario.AsString <> '*FRETES') And
                            (q_cusunitNumerario.AsString <> 'FINT') Then Begin
                            ////(q_cusunitNumerario.AsString <> 'SISC') colocado nas custas em em 14/12/2005
                            ///"FINT" TIRADO EM 13/12/2005 - MM
                            v_doga_custas := v_doga_custas + (valor_rateio_reg*q_cusunitquantidade.AsFloat);//valor_rateio;
                         End
                         Else Begin
                              /// v_doga_custas := v_doga_custas + 1;
                         End;

                         If vb_dolar Then
                            vTaxaConv := ataxa
                         Else
                            vTaxaConv := vTaxaMoedaFatura;

                         vtot_tdolar := vtot_tdolar +((valor_rateio_reg/vTaxaConv)*q_cusunitquantidade.AsFloat);
                         vtot_treal  := vtot_treal  +((valor_rateio_reg)*q_cusunitquantidade.AsFloat);
                         vtot_udolar := vtot_udolar +((valor_rateio_reg/vTaxaConv));
                         vtot_ureal  := vtot_ureal  +((valor_rateio_reg));
                      End;

                      ///// colocado em 13/12/2005
                      ///// (q_cusunitNumerario.AsString = 'SISC') or tirado 14/12/2005 - mm
                      ///// (q_cusunitNumerario.AsString = 'II') or tirei em 15/12/2005 coloquei do itens
                      If (q_cusunitNumerario.AsString = 'FINT') Then Begin
                         ///// v_total_impor := v_total_impor+((valor_rateio_reg)*q_cusunitquantidade.AsFloat);//valor_rateio;
                         v_total_impor := v_total_impor + valor_rateio_reg;
                      End;
                      q_cusunit.Next;
                   End;
                   v_tot_13 := v_tot_13 + v_doga_custas;

                   Excel.Cells[i,8] := q_itensfob2.AsFloat/q_itensquantidade.AsFloat;
                   Excel.Cells[i,9] := q_itensfob2.AsFloat;
                   v_tot_9 := v_tot_9 + q_itensfob2.AsFloat;
                   Excel.Cells[i,10] := q_itensfob_em_reais.AsFloat;
                   v_tot_10 := v_tot_10 + q_itensfob_em_reais.AsFloat;

                   ////COLOCAR ALIQUOTA
                   Excel.Cells[i,13] := q_itensAliq_NCM_II.AsFloat;
                   Excel.Cells[i,14] := q_itensPercentual_Reducao_II.AsFloat;
                   Excel.Cells[i,15] := (q_itensAliq_NCM_II.AsFloat-((q_itensPercentual_Reducao_II.AsFloat*q_itensAliq_NCM_II.AsFloat)/100));
                   Excel.Cells[i,16] := v_doga_custas;

                   /////Excel.Range['H'+ IntToStr(i), 'T'+ IntToStr(i)].Interior.Color := clSilver;

                   ///// ALTERADO A FORMULA 13/12/2005 - MM
                   {2) Coluna "O" (Valor Importa��o em R$):
                       O valor dessa coluna devem ser o somat�rio das colunas abaixo:
                       "J" 10 - FOB em R$
                       "K" 11 - Frete Internacional
                       "L" 12 - Valor II
                       "N" 14 - Valor das custas
                        +  taxa siscomex
                   }
                   ///// Excel.Cells[i,15] := vtot_treal;
                   Excel.Cells[i,17] := (q_itensfob_em_reais.AsFloat+v_total_impor+v_doga_custas);
                   ////Excel.Cells[i,16] := vtot_udolar;
                   Excel.Cells[i,18] := ((q_itensfob_em_reais.AsFloat+v_total_impor+v_doga_custas)/q_itensquantidade.AsFloat)/vTaxaMoedaFatura;

                   ///Excel.Cells[i,17] := vtot_ureal;
                   ///alterado em 14/12/2005
                   Excel.Cells[i,19] := (q_itensfob_em_reais.AsFloat+v_total_impor+v_doga_custas)/q_itensquantidade.AsFloat;

                   vtot_tot_tdolar := vtot_tot_tdolar + vtot_tdolar;
                   /////vtot_tot_treal := vtot_tot_treal + vtot_treal;
                   vtot_tot_treal := vtot_tot_treal + (q_itensfob_em_reais.AsFloat+v_total_impor+v_doga_custas);

                   q_Itens.Next;
                End;
                vFim := IntToStr(i);
                Excel.Range['F'+ vIni, 'S'+ vFim].NumberFormat := '#.##0,00';
                Inc(i);
                Inc(i);
                Excel.Range['H' + IntToStr(i), 'Q'+IntToStr(i)].Interior.Color := clSilver;

                Excel.Cells[i,8] := 'Totais:';
                ///// Excel.Cells[i,8] := vtot_tot_tdolar;
                ///// Excel.Cells[i,8].numberFormat := '#.##0,00';
                Excel.Cells[i,9] := v_tot_9;
                Excel.Cells[i,10] := v_tot_10;
                Excel.Cells[i,11] := v_tot_11;
                Excel.Cells[i,12] := v_tot_12;
                Excel.Range['I'+ IntToStr(i), 'L'+ IntToStr(i)].NumberFormat := '#.##0,00';

                ///// ALIQUOTA
                ///// Excel.Cells[i,13] := q_cusunit.Text; lama sql

                Excel.Cells[i,16] := v_tot_13;
                Excel.Cells[i,17] := vtot_tot_treal;
                Excel.Range['P'+ IntToStr(i), 'Q'+ IntToStr(i)].NumberFormat := '#.##0,00';

                Inc(i);

                Excel.Range['A'+ IntToStr(i), 'T'+ IntToStr(i)].Borders.Item[9].LineStyle := 1;
                Excel.Range['A'+ IntToStr(i), 'T'+ IntToStr(i)].Borders.Item[9].Weight := 3;
                Excel.Range['A5', 'T'+ IntToStr(i)].Font.Size := 8;

                FinalizarFolha;
             End;
          End;

          { CUSTOS UNIT�RIOS ANAL�TICOS DO PROCESSO }
          ///// ALTERADO POR MM - 09/12/2005
          If cb_cuu.Checked Then Begin
{
             Excel.Workbooks[1].Close;
             Application.ProcessMessages;
             Excel.Workbooks.Open(dir_cor + '\' +'extrato_'+ stringreplace(Copy(vPro,1,8),'/','_', [rfReplaceAll]) + '.xls');
             Application.ProcessMessages;
}
             If RG_VALOR.ItemIndex=1 Then
                Planilha := 'CUSTOS UNIT�RIOS - ANAL�TICO'
             Else
                Planilha := 'CUSTOS UNIT�RIOS - ANAL�TICO (PREVIS�O)';

             //q_itens.Open;
             If q_itens.RecordCount > 0 Then Begin
                IniciarFolha(8);

                Excel.Range['A5', 'A5'].ColumnWidth := 1;
                Excel.Range['B5', 'B5'].ColumnWidth := 32;
                Excel.Range['C5', 'C5'].ColumnWidth := 1;
                Excel.Range['D5', 'D5'].ColumnWidth := 14;
                Excel.Range['E5', 'E5'].ColumnWidth := 14;
                Excel.Range['F5', 'F5'].ColumnWidth := 14;
                Excel.Range['G5', 'G5'].ColumnWidth := 14;
                Excel.Range['H5', 'H5'].ColumnWidth := 1;

                i := 4;
                While Not q_itens.Eof Do Begin
                   vtot_tdolar := 0;
                   vtot_treal  := 0;
                   vtot_udolar := 0;
                   vtot_ureal  := 0;
                   Inc(i);
                   Excel.Range['B'+ IntToStr(i), 'G'+IntToStr(i)].Borders.Item[9].LineStyle := 1;
                   Inc(i);
                   Inc(i);

                   vIni := IntToStr(i);
                   Excel.Cells[i,2] := 'Adi��o ';
                   Excel.Cells[i,3] := ':';
                   Excel.Cells[i,4] := q_itensAdicao.AsString;
                   Inc(i);
                   Excel.Cells[i,2] := 'Seq ';
                   Excel.Cells[i,3] := ':';
                   Excel.Cells[i,4] := q_itensseq_adicao.AsString;
                   Inc(i);
                   Excel.Cells[i,2] := 'Produto ';
                   Excel.Cells[i,3] := ':';
                   Excel.Cells[i,4] := q_itensproduto.AsString;
                   Inc(i);
                   Excel.Cells[i,2] := 'Descri��o ';
                   Excel.Cells[i,3] := ':';
                   Excel.Cells[i,4] := Copy(q_itensdescricao_produto.AsString,1,60);

                   vFim := IntToStr(i);
                   Excel.Range['D'+ vIni, 'D'+ vFim].HorizontalAlignment := AL_ESQUERDA;

                   Excel.Range['D'+ IntToStr(i), 'G'+ IntToStr(i)].Merge;
                   Inc(i);
                   Excel.Cells[i,4] := Copy(q_itensdescricao_produto.AsString,61,60);
                   Excel.Range['D'+ IntToStr(i), 'G'+ IntToStr(i)].Merge;
                   Inc(i);

                   vIni := IntToStr(i);
                   Excel.Cells[i,2] := 'Quantidade ';
                   Excel.Cells[i,3] := ':';
                   Excel.Cells[i,4] := q_itensquantidade.AsFloat;
                   Inc(i);
                   Excel.Cells[i,2] := 'Valor Unit�rio ';
                   Excel.Cells[i,3] := ':';
                   Excel.Cells[i,4] := q_itensvalunit.AsFloat;
                   Inc(i);
                   Excel.Cells[i,2] := 'Valor Total ';
                   Excel.Cells[i,3] := ':';
                   Excel.Cells[i,4] := q_itensvaltot.AsFloat;
                   Inc(i);
                   Excel.Cells[i,2] := 'Peso Unit�rio ';
                   Excel.Cells[i,3] := ':';
                   Excel.Cells[i,4] := q_itenspesounit.AsFloat;
                   Inc(i);
                   Excel.Cells[i,2] := 'Peso Total ';
                   Excel.Cells[i,3] := ':';
                   Excel.Cells[i,4] := q_itenspesototal.AsFloat;

                   vFim := IntToStr(i);
                   Excel.Range['D'+ vIni, 'D'+ vFim].NumberFormat := '#.##0,00';
                   Excel.Range['D'+ vIni, 'D'+ vFim].HorizontalAlignment := AL_DIREITA;

                   Inc(i);
                   Inc(i);
                   Excel.Cells[i,2] := 'Descri��o dos Custos';
                   Excel.Range['D'+ IntToStr(i), 'G'+ IntToStr(i+1)].HorizontalAlignment := AL_CENTRO;
                   Excel.Cells[i,4] := 'Valores Totais';
                   Excel.Range['D'+ IntToStr(i), 'E'+ IntToStr(i)].Merge;
                   Excel.Cells[i,6] := 'Valores Unit�rios';
                   Excel.Range['F'+ IntToStr(i), 'G'+ IntToStr(i)].Merge;
                   Inc(i);
                   Excel.Cells[i,4] := '(U$)';
                   Excel.Cells[i,5] := '(R$)';
                   Excel.Cells[i,6] := '(U$)';
                   Excel.Cells[i,7] := '(R$)';
                   Inc(i);
                   Excel.Cells[i,2] := '-----------------------------------------------------';
                   Excel.Cells[i,4] := '-----------------------------';
                   Excel.Cells[i,5] := '-----------------------------';
                   Excel.Cells[i,6] := '-----------------------------';
                   Excel.Cells[i,7] := '-----------------------------';
                   Inc(i);

                   If vb_dolar Then
                      vTaxaConv := 1
                   Else
                      vTaxaConv := vTaxaDolar;

                   vIni := IntToStr(i);
                   If cb_fob.Checked Then Begin
                      Excel.Cells[i,2] := 'FOB ';
                      Excel.Cells[i,4] := q_itensfob_em_reais.AsFloat/vTaxaConv;
                      Excel.Cells[i,5] := q_itensfob_em_reais.AsFloat;
                      Excel.Cells[i,6] := (q_itensfob_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat;
                      Excel.Cells[i,7] := q_itensfob_em_reais.AsFloat/q_itensquantidade.AsFloat;
                      Inc(i);
                      vtot_tdolar := vtot_tdolar +(q_itensfob_em_reais.AsFloat/vTaxaConv);
                      vtot_treal  := vtot_treal  +q_itensfob_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensfob_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensfob_em_reais.AsFloat/q_itensquantidade.AsFloat);
                   End;
                   If cb_freteprepaid.Checked Then Begin
                      Excel.Cells[i,2] := 'FRETE PREPAID ';
                      Excel.Cells[i,4] := q_itensfreteprepaid_em_reais.AsFloat/vTaxaConv;
                      Excel.Cells[i,5] := q_itensfreteprepaid_em_reais.AsFloat;
                      Excel.Cells[i,6] := (q_itensfreteprepaid_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat;
                      Excel.Cells[i,7] := q_itensfreteprepaid_em_reais.AsFloat/q_itensquantidade.AsFloat;
                      Inc(i);
                      vtot_tdolar := vtot_tdolar +(q_itensfreteprepaid_em_reais.AsFloat/vTaxaConv);
                      vtot_treal  := vtot_treal  +q_itensfreteprepaid_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensfreteprepaid_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensfreteprepaid_em_reais.AsFloat/q_itensquantidade.AsFloat);
                   End;
                   If cb_fretecollect.Checked Then Begin
                      Excel.Cells[i,2] := 'FRETE COLLECT ';
                      Excel.Cells[i,4] := q_itensfretecollect_em_reais.AsFloat/vTaxaConv;
                      Excel.Cells[i,5] := q_itensfretecollect_em_reais.AsFloat;
                      Excel.Cells[i,6] := (q_itensfretecollect_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat;
                      Excel.Cells[i,7] := q_itensfretecollect_em_reais.AsFloat/q_itensquantidade.AsFloat;
                      Inc(i);
                      vtot_tdolar := vtot_tdolar +(q_itensfretecollect_em_reais.AsFloat/vTaxaConv);
                      vtot_treal  := vtot_treal  +q_itensfretecollect_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensfretecollect_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensfretecollect_em_reais.AsFloat/q_itensquantidade.AsFloat);
                   End;
                   If cb_freteternac.Checked Then Begin
                      Excel.Cells[i,2] := 'FRETE TER.NAC. ';
                      Excel.Cells[i,4] := q_itensfreteternac_em_reais.AsFloat/vTaxaConv;
                      Excel.Cells[i,5] := q_itensfreteternac_em_reais.AsFloat;
                      Excel.Cells[i,6] := (q_itensfreteternac_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat;
                      Excel.Cells[i,7] := q_itensfreteternac_em_reais.AsFloat/q_itensquantidade.AsFloat;
                      Inc(i);
                      vtot_tdolar := vtot_tdolar +(q_itensfreteternac_em_reais.AsFloat/vTaxaConv);
                      vtot_treal  := vtot_treal  +q_itensfreteternac_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensfreteternac_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensfreteternac_em_reais.AsFloat/q_itensquantidade.AsFloat);
                   End;
                   If cb_seguro.Checked Then Begin
                      Excel.Cells[i,2] := 'SEGURO ';
                      Excel.Cells[i,4] := q_itensseguro_em_reais.AsFloat/vTaxaConv;
                      Excel.Cells[i,5] := q_itensseguro_em_reais.AsFloat;
                      Excel.Cells[i,6] := (q_itensseguro_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat;
                      Excel.Cells[i,7] := q_itensseguro_em_reais.AsFloat/q_itensquantidade.AsFloat;
                      Inc(i);
                      vtot_tdolar := vtot_tdolar +(q_itensseguro_em_reais.AsFloat/vTaxaConv);
                      vtot_treal  := vtot_treal  +q_itensseguro_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensseguro_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensseguro_em_reais.AsFloat/q_itensquantidade.AsFloat);
                   End;
                   If cb_ii.Checked Then Begin
                      Excel.Cells[i,2] := 'IMPOSTO DE IMPORTA��O ';
                      Excel.Cells[i,4] := q_itensvalor_ii_a_recolher_em_reais.AsFloat/vTaxaConv;
                      Excel.Cells[i,5] := q_itensvalor_ii_a_recolher_em_reais.AsFloat;
                      Excel.Cells[i,6] := (q_itensvalor_ii_a_recolher_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat;
                      Excel.Cells[i,7] := q_itensvalor_ii_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat;
                      Inc(i);
                      vtot_tdolar := vtot_tdolar +(q_itensvalor_ii_a_recolher_em_reais.AsFloat/vTaxaConv);
                      vtot_treal  := vtot_treal  +q_itensvalor_ii_a_recolher_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensvalor_ii_a_recolher_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensvalor_ii_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat);
                   End;
                   If cb_ipi.Checked Then Begin
                      Excel.Cells[i,2] := 'IMPOSTO S/ PRODUTOS INDUSTRIALIZADOS ';
                      Excel.Cells[i,4] := q_itensvalor_ipi_a_recolher_em_reais.AsFloat/vTaxaConv;
                      Excel.Cells[i,5] := q_itensvalor_ipi_a_recolher_em_reais.AsFloat;
                      Excel.Cells[i,6] := (q_itensvalor_ipi_a_recolher_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat;
                      Excel.Cells[i,7] := q_itensvalor_ipi_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat;
                      Inc(i);
                      vtot_tdolar := vtot_tdolar +(q_itensvalor_ipi_a_recolher_em_reais.AsFloat/vTaxaConv);
                      vtot_treal  := vtot_treal  +q_itensvalor_ipi_a_recolher_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +(((q_itensvalor_ipi_a_recolher_em_reais.AsFloat/vTaxaConv))/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensvalor_ipi_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat);
                   End;

                   vFim := IntToStr(i-1);
                   Excel.Range['D'+ vIni, 'G'+ vFim].NumberFormat := '#.##0,00';
                   Excel.Range['D'+ vIni, 'G'+ vFim].HorizontalAlignment := AL_DIREITA;

                   q_cusunit.Filter := q_cus_u.Filter;
                   If q_cusunit.Filter = '' Then
                      q_cusunit.Filter := q_cusunit.Filter +'Fatura = '''+ q_itensFatura.AsString +''' AND Sequencial = '''+ q_itensseq.AsString +''' '
                   Else
                      q_cusunit.Filter := q_cusunit.Filter +' AND Fatura = '''+ q_itensFatura.AsString +''' AND Sequencial = '''+ q_itensseq.AsString +''' ';
                   q_cusunit.Filtered := True;
                   q_cusunit.Open;

                   vIni := IntToStr(i);
                   While Not q_cusunit.Eof Do Begin
                      If q_cusunitrateio.AsString = '2' Then Begin
                         valor_rateio_reg := (q_cusunitvalor_registrado.AsFloat / vtotpro) * q_cusunitvalor_unitario.AsFloat;
                         valor_rateio_prev := (q_cusunitvalor_previsao.AsFloat / vtotpro) * q_cusunitvalor_unitario.AsFloat;
                      End
                      Else Begin
                         valor_rateio_reg := (q_cusunitvalor_registrado.AsFloat / vtotpeso) * q_cusunitpeso_total_acertado.AsFloat;
                         valor_rateio_prev := (q_cusunitvalor_previsao.AsFloat / vtotpeso) * q_cusunitpeso_unitario_acertado.AsFloat;
                      End;
                      If ((q_cusunitnumerario.AsString <> 'II') And (q_cusunitnumerario.AsString <> 'IPI')) Then Begin
                         If vb_dolar Then
                            vTaxaConv := ataxa
                         Else
                            vTaxaConv := vTaxaDolar;

                         If RG_VALOR.ItemIndex = 1 Then
                            { valor registrado }
                            valor_rateio := valor_rateio_reg
                         Else
                            { valor previs�o }
                            valor_rateio := valor_rateio_prev;

                         If q_cusunitrateio.AsString = '1' Then Begin
                            Excel.Cells[i,2] := q_cusunitdescricao.AsString;
                            Excel.Cells[i,4] := valor_rateio/vTaxaDolar;
                            Excel.Cells[i,5] := valor_rateio;
                            Excel.Cells[i,6] := (valor_rateio/vTaxaDolar)/q_cusunitquantidade.AsFloat;
                            Excel.Cells[i,7] := valor_rateio/q_cusunitquantidade.AsFloat;
                            Inc(i);
                            vtot_tdolar := vtot_tdolar +(valor_rateio/vTaxaDolar);
                            vtot_treal  := vtot_treal  +(valor_rateio);
                            vtot_udolar := vtot_udolar +(valor_rateio/vTaxaDolar)/q_cusunitquantidade.AsFloat;
                            vtot_ureal  := vtot_ureal  +(valor_rateio/q_cusunitquantidade.AsFloat);
                         End
                         Else Begin
                            Excel.Cells[i,2] := q_cusunitdescricao.AsString;
                            Excel.Cells[i,4] := (valor_rateio/vTaxaDolar)*q_cusunitquantidade.AsFloat;
                            Excel.Cells[i,5] := valor_rateio*q_cusunitquantidade.AsFloat;
                            Excel.Cells[i,6] := valor_rateio/vTaxaDolar;
                            Excel.Cells[i,7] := valor_rateio;
                            Inc(i);
                            vtot_tdolar := vtot_tdolar +(valor_rateio/vTaxaDolar)*q_cusunitquantidade.AsFloat;
                            vtot_treal  := vtot_treal  +(valor_rateio*q_cusunitquantidade.AsFloat);
                            vtot_udolar := vtot_udolar +(valor_rateio/vTaxaDolar);
                            vtot_ureal  := vtot_ureal  +(valor_rateio);
                         End;
                      End;
                      q_cusunit.Next;
                   End;

                   vFim := IntToStr(i-1);
                   Excel.Range['D'+ vIni, 'G'+ vFim].NumberFormat := '#.##0,00';
                   Excel.Range['D'+ vIni, 'G'+ vFim].HorizontalAlignment := AL_DIREITA;

                   Excel.Cells[i,2] :='-----------------------------------------------------';
                   Excel.Cells[i,4] :='-----------------------------';
                   Excel.Cells[i,5] :='-----------------------------';
                   Excel.Cells[i,6] :='-----------------------------';
                   Excel.Cells[i,7] :='-----------------------------';
                   Inc(i);
                   Excel.Cells[i,2] := 'Totais';
                   Excel.Cells[i,4] := vtot_tdolar;
                   Excel.Cells[i,5] := vtot_treal;
                   Excel.Cells[i,6] := vtot_udolar;
                   Excel.Cells[i,7] := vtot_ureal;
                   vIni := IntToStr(i);
                   Excel.Range['D'+ vIni, 'G'+ vIni].NumberFormat := '#.##0,00';
                   Excel.Range['D'+ vIni, 'G'+ vIni].HorizontalAlignment := AL_DIREITA;

                   Inc(i);
                   Excel.Range['B'+ IntToStr(i), 'G'+ IntToStr(i)].Borders.Item[9].LineStyle := 1;
                   Inc(i);
                   q_Itens.Next;
                   Excel.Workbooks[1].Save;
                   Application.ProcessMessages;
                End;

                Inc(i);
                Excel.Range['A'+ IntToStr(i), 'H'+ IntToStr(i)].Borders.Item[9].LineStyle := 1;
                Excel.Range['A'+ IntToStr(i), 'H'+ IntToStr(i)].Borders.Item[9].Weight := 3;
                Excel.Range['A5', 'H'+ IntToStr(i)].Font.Size := 8;

                FinalizarFolha;
             End;
          End;

          { RELA��O DE CONTAINERS }
          If cbRelCont.Checked Then Begin
{
             Excel.Workbooks[1].Close;
             Application.ProcessMessages;
             Excel.Workbooks.Open(dir_cor + '\' +'extrato_'+ stringreplace(Copy(vPro,1,8),'/','_', [rfReplaceAll]) + '.xls');
             Application.ProcessMessages;
}
             Planilha := 'RELA��O DE CONTAINERS';

             ///qrRelCont.Open;
             If qrRelCont.RecordCount > 0 Then Begin
                IniciarFolha(8);

                Excel.Range['A5', 'A5'].ColumnWidth := 1;
                Excel.Range['B5', 'B5'].ColumnWidth := 32;
                Excel.Range['C5', 'C5'].ColumnWidth := 1;
                Excel.Range['D5', 'D5'].ColumnWidth := 14;
                Excel.Range['E5', 'E5'].ColumnWidth := 14;
                Excel.Range['F5', 'F5'].ColumnWidth := 14;
                Excel.Range['G5', 'G5'].ColumnWidth := 14;
                Excel.Range['H5', 'H5'].ColumnWidth := 1;

                i := 5;
                While Not qrRelCont.Eof Do Begin
                   Inc(i);
                   Excel.Cells[i,1] := 'N�: ' + qrRelContCodigo.AsString + ' - ' + qrRelContDescricao.AsString;
                   qrRelCont.Next;
                End;
                For aux := 1 To i Do
                   Excel.Range['A'+IntToStr(aux), 'H'+IntToStr(aux)].Merge;

                Inc(i);
                Excel.Range['A'+ IntToStr(i), 'H'+ IntToStr(i)].Borders.Item[9].LineStyle := 1;
                Excel.Range['A'+ IntToStr(i), 'H'+ IntToStr(i)].Borders.Item[9].Weight := 3;
                Excel.Range['A5', 'H'+ IntToStr(i-1)].Font.Size := 8;

                FinalizarFolha;
             End;
          End;

          { INFORMA��ES COMPLEMENTARES }
          If cbInfComp.Checked Then Begin
             Planilha := 'INFORMA��ES COMPLEMENTARES';

             ///qrInfComp.Open;
             If qrInfComp.RecordCount > 0 Then Begin
                IniciarFolha(8);

                Excel.Range['A5', 'A5'].ColumnWidth := 1;
                Excel.Range['B5', 'B5'].ColumnWidth := 32;
                Excel.Range['C5', 'C5'].ColumnWidth := 1;
                Excel.Range['D5', 'D5'].ColumnWidth := 14;
                Excel.Range['E5', 'E5'].ColumnWidth := 14;
                Excel.Range['F5', 'F5'].ColumnWidth := 14;
                Excel.Range['G5', 'G5'].ColumnWidth := 14;
                Excel.Range['H5', 'H5'].ColumnWidth := 1;

                Excel.Range['A5', 'H5'].Borders.Item[9].LineStyle := 1;
                Excel.Range['A5', 'H5'].Borders.Item[9].Weight := 3;

                i := 5;
                aux := 0;
                {While aux < dbmemo1.Lines.Count Do Begin
                   Inc(i);
                   Excel.Cells[i,1] := dbmemo1.Lines.Strings[aux];
                   Inc(aux);
                End;}
                For aux := 1 To i Do
                   Excel.Range['A'+ IntToStr(aux), 'H'+ IntToStr(aux)].Merge;

                Inc(i);
                Excel.Range['A'+ IntToStr(i), 'H'+ IntToStr(i)].Borders.Item[9].LineStyle := 1;
                Excel.Range['A'+ IntToStr(i), 'H'+ IntToStr(i)].Borders.Item[9].Weight := 3;

                Excel.Range['A5', 'H'+ IntToStr(i)].Font.Size := 8;

                FinalizarFolha;
             End;
          End;

          { DEMONSTRATIVO FINANCEIRO }
          If cbDF.Checked Then Begin
             Planilha := 'DEMONSTRATIVO FINANCEIRO';

             ///qrExcelDataCredito.Open;
             ///qrExcelDataDebito.Open;
             If (qrExcelDataCredito.RecordCount > 0) OR (qrExcelDataDebito.RecordCount > 0) Then Begin
                IniciarFolha(6);

                Excel.Range['A5', 'A5'].ColumnWidth := 5;
                Excel.Range['B5', 'B5'].ColumnWidth := 10;
                Excel.Range['C5', 'C5'].ColumnWidth := 45;
                Excel.Range['D5', 'D5'].ColumnWidth := 14;
                Excel.Range['E5', 'E5'].ColumnWidth := 14;
                Excel.Range['F5', 'F5'].ColumnWidth := 5;

                Excel.Cells[6,1] := 'CR�DITOS';
                Excel.Cells[6,1].HorizontalAlignment := AL_CENTRO;
                Excel.Cells[6,1].Font.Size := 12;
                Excel.Cells[6,1].Font.Bold := True;
                Excel.Range['A6', 'F6'].Merge;

                Excel.Cells[7,2] := 'Data';
                Excel.Cells[7,3] := 'Descri��o';
                Excel.Cells[7,4] := 'Valor';
                Excel.Range['D7', 'D7'].HorizontalAlignment := AL_DIREITA;
                Excel.Range['B7', 'D7'].Font.Bold := True;
                Excel.Range['A7', 'F7'].Font.Size := 9;

                Excel.Range['B7', 'E7'].Borders.Item[9].LineStyle := 1;
                Excel.Range['B7', 'E7'].Borders.Item[9].Weight := 2;

                i := 8;
                vIni := IntToStr(i+1);
                While Not qrExcelDataCredito.Eof Do Begin
                   Inc(i);
                   Excel.Cells[i,2] := qrExcelDataCreditoData_Credito.AsString;
                   Excel.Cells[i,3] := qrExcelDataCreditoDescricao.AsString;
                   Excel.Cells[i,4] := qrExcelDataCreditoValor.AsFloat;
                   qrExcelDataCredito.Next;
                End;
                vFim := IntToStr(i);
                Excel.Range['D'+ vIni, 'D'+ vFim].NumberFormat := '#.##0,00';
                Excel.Range['D'+ vIni, 'D'+ vFim].HorizontalAlignment := AL_DIREITA;
                Excel.Range['B'+ vIni, 'B'+ vFim].HorizontalAlignment := AL_ESQUERDA;
                Excel.Range['B'+ vIni, 'D'+ vFim].Font.Size := 9;

                Inc(i);
                Inc(i);
                v_aux := i;
                Excel.Cells[i,3] := 'SubTotal';
                Excel.Cells[i,4].FormulaR1C1Local := '=SOMA(L'+ vIni +'C4:L'+ vFim +'C4)';
                Excel.Cells[i,4].NumberFormat := '#.##0,00';
                Excel.Range['C'+ IntToStr(i), 'D'+ IntToStr(i)].HorizontalAlignment := AL_DIREITA;
                Excel.Range['C'+ IntToStr(i), 'D'+ IntToStr(i)].Font.Bold := True;

                Inc(i);
                Excel.Range['B'+ IntToStr(i), 'E'+ IntToStr(i)].Borders.Item[9].LineStyle := 1;
                Excel.Range['B'+ IntToStr(i), 'E'+ IntToStr(i)].Borders.Item[9].Weight := 1;

                Inc(i);
                Inc(i);
                Excel.Cells[i,1] := 'D�BITOS';
                Excel.Cells[i,1].HorizontalAlignment := AL_CENTRO;
                Excel.Cells[i,1].Font.Size := 12;
                Excel.Cells[i,1].Font.Bold := True;
                Excel.Range['A'+ IntToStr(i), 'F'+ IntToStr(i)].Merge;

                Inc(i);
                Excel.Cells[i,2] := 'Data';
                Excel.Cells[i,3] := 'Descri��o';
                Excel.Cells[i,4] := 'Valor';
                Excel.Range['B'+ IntToStr(i), 'D'+ IntToStr(i)].Font.Bold := True;
                Excel.Range['A'+ IntToStr(i), 'F'+ IntToStr(i)].Font.Size := 9;
                Excel.Range['D'+ IntToStr(i), 'D'+ IntToStr(i)].HorizontalAlignment := AL_DIREITA;

                Excel.Range['B'+ IntToStr(i), 'E'+ IntToStr(i)].Borders.Item[9].LineStyle := 1;
                Excel.Range['B'+ IntToStr(i), 'E'+ IntToStr(i)].Borders.Item[9].Weight := 2;

                Inc(i);
                vIni := IntToStr(i+1);
                While Not qrExcelDataDebito.Eof Do Begin
                   inc(i);
                   inc(aux);
                   Excel.Cells[i,2] := qrExcelDataDebitoData_Registro.AsString;
                   Excel.Cells[i,3] := qrExcelDataDebitoDescricao.AsString;
                   Excel.Cells[i,4] := qrExcelDataDebitoValor_Registrado.AsFloat;
                   qrExcelDataDebito.Next;
                End;
                vFim := IntToStr(i);
                Excel.Range['D'+ vIni, 'D'+ vFim].NumberFormat := '#.##0,00';
                Excel.Range['D'+ vIni, 'D'+ vFim].HorizontalAlignment := AL_DIREITA;
                Excel.Range['B'+ vIni, 'B'+ vFim].HorizontalAlignment := AL_ESQUERDA;
                Excel.Range['B'+ vIni, 'D'+ vFim].Font.Size := 9;

                Inc(i);
                Inc(i);
                Excel.Cells[i,3] := 'SubTotal';
                Excel.Cells[i,4].FormulaR1C1Local := '=SOMA(L'+ vIni +'C4:L'+ vFim +'C4)';
                Excel.Cells[i,4].NumberFormat := '#.##0,00';
                Excel.Range['C'+ IntToStr(i), 'D'+ IntToStr(i)].HorizontalAlignment := AL_DIREITA;
                Excel.Range['C'+ IntToStr(i), 'D'+ IntToStr(i)].Font.Bold := True;

                Inc(i);
                Excel.Range['B'+ IntToStr(i), 'E'+ IntToStr(i)].Borders.Item[9].LineStyle := 1;
                Excel.Range['B'+ IntToStr(i), 'E'+ IntToStr(i)].Borders.Item[9].Weight := 1;
                Inc(i);
                Inc(i);
                Excel.Cells[i,3] := 'Resultado';
                Excel.Cells[i,4].Formula := '=$D$'+ IntToStr(v_aux) +'-$D$'+ IntToStr(i-3);
                Excel.Cells[i,4].NumberFormat := '#.##0,00;[Vermelho](#.##0,00)';
                Excel.Range['C'+ IntToStr(i), 'D'+ IntToStr(i)].Font.Bold := True;
                Inc(i);
                Inc(i);
                Excel.Range['A' + IntToStr(i), 'F' + IntToStr(i)].Merge;
                Excel.Cells[i,1] := '(SALDO A PAGAR) = ';
                Excel.Cells[i,1] := Excel.Cells[i,1].Text + Excel.Cells[i-2,4].Text;
                Excel.Cells[i,1].HorizontalAlignment := AL_CENTRO;
                Excel.Cells[i,1].Font.Size := 10;
                Excel.Cells[i,1].Font.Bold := True;
                Inc(i);
                Inc(i);
                Excel.Cells[i,2] := 'OBSERVA��ES';
                Excel.Cells[i,2].Font.Size := 12;
                Excel.Cells[i,2].Font.Bold := True;

                //qrObs.Open;
                aux := 0;
                {While aux < dbmemo2.Lines.Count Do Begin
                   inc(i);
                   Excel.Cells[i,2] := dbmemo2.Lines.Strings[aux];
                   Excel.Cells[i,2].Font.Size := 9;
                   Excel.Range['B'+IntToStr(i), 'E'+IntToStr(i)].Merge;
                   Inc(aux);
                End;
                Excel.Cells[i,2] := 'Atenciosamente, ';}
                Inc(i);
                Inc(i);
                Inc(i);
                Excel.Range['A'+ IntToStr(i), 'F'+ IntToStr(i)].Borders.Item[9].LineStyle := 1;
                Excel.Range['A'+ IntToStr(i), 'F'+ IntToStr(i)].Borders.Item[9].Weight := 3;

                FinalizarFolha;
             End;
          End;

          Excel.WorkSheets['Menu'].Select;
          ///// Excel.Range['A' + IntToStr(v_menuaux), 'J' + IntToStr(v_menuaux)].Borders.Item[9].LineStyle := 1;
          ///// Excel.Range['A' + IntToStr(v_menuaux), 'J' + IntToStr(v_menuaux)].Borders.Item[9].Weight := 3;


             If qrExcelProc.RecordCount > 0 Then Begin
                Excel.Cells[v_menuAux, 3] := IntToStr(v_menuAux-2) + '. DOCUMENTOS';
                Excel.WorkSheets['Menu'].Hyperlinks.Add (Anchor:= Excel.WorkSheets['Menu'].Range['C' + IntToStr(v_menuAux)], Address := 'extrato_'+ stringreplace(Copy(vPro,1,8),'/','_', [rfReplaceAll]) + '_docs.xlsx');
                Excel.Range['C' + IntToStr(v_menuAux), 'J' + IntToStr(v_menuAux)].Merge;
             End;


          { FINALIZANDO PLANILHA }
          Excel.WorkSheets['Menu'].Shapes.AddPicture ('c:\ms2000\logoms.jpg', True, True, 15, 27, 240, 58);//370, 4, 110, 60);
          Excel.Application.DisplayAlerts := false;

          Excel.Workbooks[1].SaveAs(dir_cor + '\' +'extrato_'+ stringreplace(Copy(vPro,1,8),'/','_', [rfReplaceAll]) + '.xlsx');
          saux := 2;
          Excel.Quit;
          re_Processa.Lines.Append('>>> GERA��O DA PLANILHA FINALIZADA');
          ///// Excel.Unassigned;
     End
     Else Begin
        If Not cbImpDoc.Checked Then Begin
//           MessageDlg('Planilha Vazia!', mtInformation,[mbOk], 0);
           Exit;
        End;
     End;
  Finally
     Excel.Quit;
     Excel := Unassigned;
     Excel := Null;
     Screen.Cursor := crDefault;
  End;

     { DOCUMENTOS DIGITALIZADOS }
//     If cbImpDoc.Checked Then Begin
        ///qrExcelProc.Open;
        ///qrExcelProc.First;
        processadoc := true;
        //************  retirar bExibePlanilha := True
        bExibePlanilha := False;
        if (processadoc) then begin

        If qrExcelProc.RecordCount > 0 Then Begin
           v_menuAux := 9;
           Excel := CreateOleObject('Excel.Application');
           Excel.Application.DisplayAlerts := False;
           Excel.Visible := bExibePlanilha;

           v_procNumero := qrExcelProcNumero_Doc.AsString;
           v_procDesc := qrExcelProcDescricao.AsString;
           v_procCodigo := qrExcelProcCodigo.AsString;
           v_pag := 1;

           Excel.WorkBooks.Add(1);

           ///// Excel.ActiveWorkBook.VBProject.VBE.MainWindow.Visible := False;
{           Excel.ActiveWorkBook.VBProject.VBComponents.Item('plan1').Codemodule.CreateEventProc ('activate' , 'worksheet');
           Excel.ActiveWorkBook.VBProject.VBComponents.Item('plan1').CodeModule.VBE.ActiveWindow.Close;
           Excel.ActiveWorkBook.VBProject.VBComponents.Item('plan1').CodeModule.VBE.MainWindow.Visible := False;
}
           Excel.ActiveWindow.DisplayGridLines := False;
           Excel.WorkSheets[1].PageSetup.PaperSize := '9';
           Excel.ActiveSheet.PageSetup.LeftMargin := '28';
           Excel.ActiveSheet.PageSetup.RightMargin := '28';
           Excel.WorkSheets[1].Name := 'MENU';
           ///// Excel.Worksheet_Activate.Edit;
           Excel.Cells[1,1].Font.Size := 12;
           Excel.Cells[1,1] := v_empresanome; //'MS2000 - Sistema Gerencial Aduaneiro';'MS2000 - Sistema Gerencial Aduaneiro';
           Excel.Cells[1,1].Font.Bold := True;
           Excel.Cells[2,1] := 'EXTRATO DE PROCESSOS - V 1.0' + ' ' + datetostr(date()) + ' �s ' + Copy(timetostr(time),1,5);
           Excel.Cells[2,1].Font.Bold := True;
           Excel.Cells[5,1] := 'RELA��O DE DOCUMENTOS DO PROCESSO: ' + vPro ;
           Excel.Cells[5,1].Font.Bold := True;

           Excel.Range['A' + IntToStr(6), 'J' + IntToStr(6)].Borders.Item[9].LineStyle := 1;
           Excel.Range['A' + IntToStr(6), 'J' + IntToStr(6)].Borders.Item[9].Weight := 3;
           Excel.ActiveWindow.DisplayGridLines := False;
           Excel.WorkSheets.Add;
           ///// planilha := Copy(v_procNumero,1,14) + ' - ' + Copy(v_procDesc,1,14);

           vqtddoc := 1;
           planilha := v_procNumero + ' - ' + v_procDesc;
           planilha_0 := IntToStr(v_menuAux-8)+' - '+stringreplace(Copy(planilha,1,25),'/','_', [rfReplaceAll]);

//           planilha_0 := inttostr(vqtddoc)+'-'+Copy(v_procNumero,1,14) + ' - ' + Copy(v_procDesc,1,14);
//           planilha := v_procNumero + ' - ' + v_procDesc;
           vRenomear := True;
           While Not qrExcelProc.Eof Do
           Begin
              planilha := v_procNumero + ' - ' + v_procDesc;
              planilha_0 := IntToStr(v_menuAux-8)+' - '+stringreplace(Copy(planilha,1,25),'/','_', [rfReplaceAll]);
              If StrToInt(v_nivel) > 8 Then
              Begin
                  If qrExcelProcTipo_Doc.AsString = 'PROC' Then
                                If qrExcelProcSub_Tipo_Doc.AsString = '9' Then
                                Begin
                                    qrExcelProc.Next;
                                    Continue;
                                End;
              End;
              

              if ((vsomentedocPROC) and (qrExcelProcTipo_Doc.AsString <> 'PROC')) then begin
                 qrExcelProc.Next;
                 Continue;
              end;

              If qrExcelProcCodigo.AsString <> v_procCodigo Then Begin
                 vqtddoc := vqtddoc +1;
                 v_pag := 1;
                 v_procCodigo := qrExcelProcCodigo.AsString;
                 v_procNumero := qrExcelProcNumero_Doc.AsString;
                 v_procDesc := qrExcelProcDescricao.AsString;
                 AdicionaBotao();
                 FormaMenuPla();


                 planilha := v_procNumero + ' - ' + v_procDesc;
                 planilha_0 := IntToStr(v_menuAux-8)+' - '+stringreplace(Copy(planilha,1,25),'/','_', [rfReplaceAll]);
                 Excel.WorkSheets.Add.name:=planilha_0;
                 Excel.ActiveWindow.DisplayGridLines := False;
                // Excel.WorkSheets[1].Name := planilha_0;
                vRenomear:=False;
              End;

              v_dirDocs := FormatFloat('0000', strToFloat(Copy(qrExcelProcArquivo.AsString,4,4))+1)+'0000'+'\';
              If Copy(qrExcelProcArquivo.AsString,8,4) = '0000' Then
                 v_dirDocs := Copy(qrExcelProcArquivo.AsString,4,4)+'0000';


              if fileexists(v_path_server + 'Docs\' + v_dirDocs + qrExcelProcArquivo.AsString +'.jpg') then
              begin
                 if vRenomear = True then  Excel.WorkSheets[1].Name := planilha_0;
                 if v_pag=1 then begin
                 v_pag:=2;
                 Excel.Cells[1,10] := '>> MENU <<';
                 Excel.WorkSheets[planilha_0].Hyperlinks.Add (Anchor:= Excel.WorkSheets[planilha_0].Range['J1'], Address:= '', SubAddress:= '''' + 'MENU' + '''!a1');
                 end;
                 Excel.WorkSheets[planilha_0].Shapes.AddPicture (v_path_server + 'Docs\' + v_dirDocs + qrExcelProcArquivo.AsString +'.jpg', True, True, Excel.Cells[v_pag, 1].Left, Excel.Cells[v_pag, 1].Top, 1, 1);
                 //Excel.Application.WorkSheets[1].Shapes.AddPicture (v_path_server + 'Docs\' + v_dirDocs + qrExcelProcArquivo.AsString +'.jpg', True, True, Excel.Cells[v_pag, 1].Left, Excel.Cells[v_pag, 1].Top, 1, 1);

                 Excel.ActiveSheet.PageSetup.LeftMargin := '10';
                 Excel.ActiveSheet.PageSetup.RightMargin := '10';
                 v_pag := v_pag + 56;
                 Excel.Application.WorkSheets[planilha_0].Shapes.Item((v_pag-1)/56).ScaleHeight (1, True);
                 Excel.Application.WorkSheets[planilha_0].Shapes.Item((v_pag-1)/56).ScaleWidth (1, True);
                 c := 1;
              end
              else begin
                 if c > 1 then c:=c+1;
                 //showmessage('Arquivo n�o encontrado - Processo:'+v_procCodigo+' - Doc:'+v_procNumero+' - '+v_procDesc);
                 Excel.Cells[2,c] := 'Arquivo n�o encontrado - Processo:'+v_procCodigo+' - Doc:'+v_procNumero+' - '+v_procDesc;
              end;

              qrExcelProc.Next;

           End;
           v_pag := 1;

           AdicionaBotao();
           FormaMenuPla();
           Excel.WorkSheets['Menu'].Select;

           Excel.Range['A' + IntToStr(v_menuAux), 'J' + IntToStr(v_menuAux)].Borders.Item[9].LineStyle := 1;
           Excel.Range['A' + IntToStr(v_menuAux), 'J' + IntToStr(v_menuAux)].Borders.Item[9].Weight := 3;

           If FileExists(dir_cor + '\' +'extrato_'+ stringreplace(Copy(vPro,1,8),'/','_', [rfReplaceAll]) + '.xlsx') Then Begin
              Excel.Cells[7, 8] := 'EXTRATO DO PROCESSO';
              Excel.WorkSheets['Menu'].Hyperlinks.Add (Anchor:= Excel.WorkSheets['Menu'].Range['H7'], Address := 'extrato_'+ stringreplace(Copy(vPro,1,8),'/','_', [rfReplaceAll]) + '.xlsx');
              Excel.Range['H7', 'J7'].Merge;
           End;

           Excel.Application.DisplayAlerts := False;
           Excel.WorkSheets['Menu'].Shapes.AddPicture ('c:\ms2000\logoms.jpg', True, True, 370, 4, 110, 60);

           Excel.Workbooks[1].SaveAs(dir_cor + '\' +'extrato_'+ stringreplace(Copy(vPro,1,8),'/','_', [rfReplaceAll]) + '_docs.xlsx');
           Excel.Quit;

           ///// Excel.Unassigned;
        End
        Else Begin
           Screen.Cursor := crDefault;
//           MessageDlg('Este processo n�o possui documentos digitalizados! ', mtInformation,[mbOk], 0);
        End;
        End;

     end;//// s� n�o processados   
     ///// Excel.Quit;
     ///// Excel := nil;
     ///// freeandnil(excel);
     Screen.Cursor := crDefault;

     //     t_proext.edit;
     //     t_proextgerado.asboolean := true;
     //     t_proext.post;

   //end;
     osprocessos.Next;
   End;
   //end;
END;
//     MessageDlg('Planilha(s) Gerada(s) no Diret�rio ' + dir_cor + '!', mtInformation, [mbOk], 0);
end;

procedure Tf_extratopro_geral.cbTodosClick(Sender: TObject);
var bTodos: Boolean;
begin
     bTodos := cbTodos.Checked;

     cb_ref.Checked := bTodos;
     cb_tra.Checked := bTodos;
     cb_car.Checked := bTodos;
     cb_reg.Checked := bTodos;
     cb_emb.Checked := bTodos;
     cb_ite.Checked := bTodos;
     cb_fat.Checked := bTodos;
     cb_tax.Checked := bTodos;
     cb_fol.Checked := bTodos;
     cb_imp.Checked := bTodos;
     cbRelCont.Checked := bTodos;
     cbInfComp.Checked := bTodos;
     cbImpDoc.Checked := bTodos;

     cb_ref.Enabled := Not bTodos;
     cb_tra.Enabled := Not bTodos;
     cb_car.Enabled := Not bTodos;
     cb_reg.Enabled := Not bTodos;
     cb_emb.Enabled := Not bTodos;
     cb_ite.Enabled := Not bTodos;
     cb_fat.Enabled := Not bTodos;
     cb_tax.Enabled := Not bTodos;
     cb_fol.Enabled := Not bTodos;
     cb_imp.Enabled := Not bTodos;
     cbRelCont.Enabled := Not bTodos;
     cbInfComp.Enabled := Not bTodos;
     cbImpDoc.Enabled := Not bTodos;

     If StrToInt(v_nivel) <= 8 Then Begin
        cb_cut.Checked := bTodos;
        cb_cuu.Checked := bTodos;
        cb_cuus.Checked := bTodos;
        cbDF.Checked := bTodos;
        cb_cut.Enabled := Not bTodos;
        cb_cuus.Enabled := Not bTodos;
        cb_cuu.Enabled := Not bTodos;
        cbDF.Enabled := Not bTodos;
     End;

     If cb_cuu.Checked OR cb_cuus.Checked Then Begin
        p_custosunit.Visible := True;
        dbgrid1.SetFocus;
     End
     Else
        p_custosunit.Visible := False;
end;

procedure Tf_extratopro_geral.cb_cutClick(Sender: TObject);
begin
     If StrToInt(v_nivel) > 8 Then Begin
        MessageDlg('Acesso n�o Permitido!', mtInformation, [mbOk], 0);
        cb_cut.Checked := False;
     End;
end;

procedure Tf_extratopro_geral.cb_cuuClick(Sender: TObject);
begin
     If StrToInt(v_nivel) > 8 Then Begin
        MessageDlg('Acesso n�o Permitido!', mtInformation, [mbOk], 0);
        cb_cuu.Checked := False;
     End;
     If cb_cuu.Checked OR cb_cuus.Checked Then Begin
        p_custosunit.Visible := True;
        dbgrid1.SetFocus;
     End
     Else
        p_custosunit.Visible := False;
end;

procedure Tf_extratopro_geral.DBGrid1DblClick(Sender: TObject);
begin
     If q_cus_u.Filter = '' Then
        q_cus_u.Filter := q_cus_u.Filter +' numerario <> '''+ q_cus_unumerario.AsString +''' '
     Else
        q_cus_u.Filter := q_cus_u.Filter +' AND numerario <> '''+ q_cus_unumerario.AsString +''' ';
     q_cus_u.Filtered := True;
end;

procedure Tf_extratopro_geral.BitBtn3Click(Sender: TObject);
begin
     q_cus_u.Filter := '';
     q_cus_u.Filtered := False;
end;

procedure Tf_extratopro_geral.FormCreate(Sender: TObject);
begin
qrimport.Open;
//t_impext.open;
end;

procedure Tf_extratopro_geral.BitBtn4Click(Sender: TObject);
var
   i, i2, j, v_aux: Integer;
   v_procCodigo, v_procNumero, v_procDesc, v_dirDocs, v_moeda, qmoedafatura: String;
   vtot_tot_tdolar, vtot_tot_treal, vTaxaMoedaFatura: Real;
   b_DOGA : Boolean;
   v_doga_custas, v_tot_9,v_tot_10,v_tot_11,v_tot_12,v_tot_13,v_total_impor: Real;
   vIni, vFim: String;
   vTaxaConv: Real; // TAXA DE CONVERS�O
   valor_rateio, valor_rateio_reg, valor_rateio_prev: Real;
   pcolunas: word;
   data: String;
linha2:integer;


begin

{
        002	OCEAN AMBASSADOR
        011	OCEAN LEXINGTON
        003	OCEAN QUEST
        20	OCEAN SCEPTER
        014	OCEAN STAR
     }


{ If MessageDlg('somente Documentos digitalizados de Processos?', mtConfirmation,[mbYes, mbNo], 0) = mrNo Then   vsomentedocPROC := false
  else   vsomentedocPROC := true;}

  vsomentedocPROC := false;
{
  If MessageDlg('somente ADMISS�O?', mtConfirmation,[mbYes, mbNo], 0) = mrNo Then   vsomenteADM := false
  else   vsomenteADM := true;
 }

  qrelacao :=            '-00186/08-00323/06-00323/08-00354/08-00375/07-00449/08-00626/08-00902/07-01020/07-01054/07';
  qrelacao := qrelacao + '-01381/07-01382/07-01383/07-01458/07-01463/08-01551/07-01575/07-01576/07-01610/07-01911/07';
  qrelacao := qrelacao + '-01946/07-02031/07-02068/07-02158/07-02160/07-02163/07-02164/07-02165/07-02187/06-02203/07';
  qrelacao := qrelacao + '-02212/07-02217/07-02237/07-02261/07-02262/07-02263/07-02269/07-02277/07-02278/07-02279/07';
  qrelacao := qrelacao + '-02280/07-02297/07-02327/01-02327/04-02327/07-02351/07-02401/06-02440/07-02449/06-02468/07';
  qrelacao := qrelacao + '-02492/07-02500/07-02510/07-02533/07-02644/06-02753/07-02756/07-02765/07-02766/07-02886/07';
  qrelacao := qrelacao + '-02887/07-02939/07-02966/07-02996/07-02997/07-02999/07-03261/07-03334/07-03335/07-03337/07';
  qrelacao := qrelacao + '-03375/07-03428/07-03429/07-03455/07-03476/07-03503/07-03548/07-03549/07-03562/07-03573/07';
  qrelacao := qrelacao + '-03649/07-03753/07-03783/07-03784/07-04113/07-04119/07-04182/07-04333/07-';

    qrelacao := '01054/07-01463/08-02187/06-02401/06-02449/06-02644/06-03334/07-03335/07-03429/07-04333/07';

  qrelacao := '00018/07-00082/05-00091/08-00098/07-00110/05-00188/08-00194/05-00197/08-00209/05-00246/05';
  qrelacao := qrelacao + '-00248/05-00312/05-00370/05-00389/05-00491/08-00492/08-00524/05-00546/06-00558/07-00600/05';
  qrelacao := qrelacao + '-00643/07-00645/07-00649/05-00672/08-00787/07-00791/07-00813/06-00905/08-00906/07-00939/08';
  qrelacao := qrelacao + '-00987/07-01003/07-01094/07-01121/08-01170/05-01219/06-01307/05-01337/05-01416/05-01426/07';
  qrelacao := qrelacao + '-01439/05-01584/05-01588/05-01628/04-01645/06-01646/06-01647/08-01654/05-01832/06-01850/07';
  qrelacao := qrelacao + '-01863/05-01918/06-01968/08-02001/07-02009/06-02136/06-02154/07-02200/06-02222/07-02268/07';
  qrelacao := qrelacao + '-02291/07-02300/06-02303/06-02366/07-02394/06-02395/04-02395/06-02479/07-02511/04-02525/08';
  qrelacao := qrelacao + '-02626/06-02684/06-02685/06-02751/06-02804/08-02805/08-02854/06-02896/07-02950/04-03017/07';
  qrelacao := qrelacao + '-3074/08-03108/04-03156/04-03189/04-03201/04-03707/07-04301/07';

  ///devon prosafe 11082008 - lauro
  qrelacao := '02187/06-02401/06-02449/06-02644/06-00375/07-00902/07-01020/07-01054/07-01381/07-01382/07-01383/07-01458/07-01551/07';
  qrelacao := qrelacao + '-01575/07-01576/07-01610/07-01910/07-01911/07-01946/07-02031/07-02068/07-02163/07-02164/07-02165/07-02160/07-02158/07';
  qrelacao := qrelacao + '-02203/07-02217/07-02237/07-02261/07-02262/07-02263/07-02269/07-02277/07-02280/07-02279/07-02278/07-02297/07-02351/07';
  qrelacao := qrelacao + '-02440/07-02468/07-02492/07-02500/07-02510/07-02533/07-02753/07-02756/07-02765/07-02766/07-02886/07-02887/07-02939/07';
  qrelacao := qrelacao + '-02966/07-02997/07-02996/07-03375/07-03428/07-03455/07-03476/07-03548/07-03549/07-03562/07-03561/07-03753/07-03784/07';
  qrelacao := qrelacao + '-03783/07-04182/07-00186/08-00323/08-00354/08-00449/08-00482/08-00626/08-00766/08-00871/08-01288/08-01355/08-01712/08';
  qrelacao := qrelacao + '-01923/08-02367/08-02623/08-02746/08-02745/08-02793/08-02794/08-03219/08';

    //devon 18032009 - lauro
  qrelacao := '01458/07-02139/07-02031/07-02018/07-02068/07-01575/07-01911/07-02102/07-02163/07-01964/07';
  qrelacao := qrelacao + '-02170/07-02153/07-02203/07-02160/07-01384/07-02237/07-02209/07-02212/07-02165/07-02164/07-02140/07-02228/07-01829/07-02234/07-02249/07-02280/07-02079/07';
  qrelacao := qrelacao + '-02297/07-02261/07-02262/07-02263/07-02380/07-02317/07-02350/07-02467/07-02351/07-02217/07-01605/07-02301/07-02327/07-02417/07-02413/07-02440/07-02278/07-02277/07';
  qrelacao := qrelacao + '-02279/07-02269/07-02533/07-02500/07-02492/07-02468/07-01005/07-02510/07-02753/07-02756/07';
  qrelacao := qrelacao + '-02765/07-02766/07-02553/07-01576/07-02463/07-02930/07-02886/07-02800/07';
  qrelacao := qrelacao + '-02982/07-02983/07-02966/07-02887/07-02760/07-02997/07-02999/07-03236/07';
  qrelacao := qrelacao + '-03263/07-03334/07-03336/07-03335/07-02996/07-02219/07-03429/07-03261/07';
  qrelacao := qrelacao + '-03473/07-03463/07-03337/07-03550/07-03375/07-03387/07-03490/07-03762/07';
  qrelacao := qrelacao + '-03761/07-03428/07-03562/07-03753/07-04059/07-03770/07-04113/07-04065/07';
  qrelacao := qrelacao + '-04333/07-04058/07-03894/07-04259/07-03638/07-04242/07-00582/08-00923/08';
  qrelacao := qrelacao + '-00922/08-01101/08-01208/08-01241/08-01291/08-01463/08-02315/08-02815/08';
  qrelacao := qrelacao + '-03038/08-00287/0x-05391/08';

  {
  If MessageDlg('Planilha Transocean?', mtConfirmation,[mbYes, mbNo], 0) = mrNo Then vplatransocean := false
  else vplatransocean := true;
  }
  vplatransocean := false;
  {
  If MessageDlg('Verifica apenas rela��o?', mtConfirmation,[mbYes, mbNo], 0) = mrNo Then vrelacao := false
  else vrelacao := true;
  }
  vrelacao := false;

  if not vplatransocean then begin

  //if not t_impextgerado.asboolean then begin
  //if not t_impextgerado.asinteger = 1 then begin
  //if t_impextgerado.asinteger = 0 then begin

  {$I-}
//  image1.Picture.SaveToFile('c:\ms2000\logoms.jpg');
  data := FormatDateTime(' dd/mm/yyyy - hh:nn:ss ', Now);

  v_aux := 0;
  Saux := 2;
  vtot_tot_tdolar := 0;
  vtot_tot_treal := 0;

  logusu('A','Acessou Planilha Principal de Processos');
  Screen.Cursor := crHourGlass;
  System.GetDir(0,dir_cor);
  dir_cor := dir_cor + '\Planilhas_Ms2000';
  dir_cor := stringreplace(dir_cor,'/','', [rfReplaceAll]);
  dir_cor := stringreplace(dir_cor,'.','', [rfReplaceAll]);
  dir_cor := stringreplace(dir_cor,'&','', [rfReplaceAll]);
  MkDir(dir_cor);
  dir_cor := dir_cor + '\'+qrimportcodigo.asstring+' - '+qrImportRazao_Social.asstring;
  dir_cor := stringreplace(dir_cor,'/','', [rfReplaceAll]);
  dir_cor := stringreplace(dir_cor,'.','', [rfReplaceAll]);
  dir_cor := stringreplace(dir_cor,'&','', [rfReplaceAll]);
  MkDir(dir_cor);

  osprocessos.close;
  if vrelacao then   osprocessos.Params[0].AsString := '%'
  else osprocessos.Params[0].AsString := qrimportcodigo.asstring;
  osprocessos.open;
  osprocessos.first;

   Excel := CreateOleObject('Excel.Application');
   Excel.Application.DisplayAlerts := False;
   Excel.Visible := bExibePlanilha;
   Excel.WorkBooks.Add(1);

   Excel.Worksheets[1].Name := 'PROCESSOS';
   Excel.WorkSheets['PROCESSOS'].Select;
   Excel.WorkSheets['PROCESSOS'].Shapes.AddPicture ('c:\ms2000\logoms.jpg', True, True, 1, 0, 145, 65);
   Excel.Cells[1,3] := v_empresanome;
   Excel.Cells[1,3].Font.Size := 12;
   Excel.cells[1,3].Font.Bold := True;
   Excel.Cells[2,3] := 'EXTRATO DE PROCESSOS - V 1.0 - '+ FormatDateTime('dd/mm/yyyy "�s" hh:nn', Now());
   Excel.cells[2,3].Font.Bold := True;
   Excel.Cells[3,3] := 'Empresa: ' + qrimportrazao_social.asstring + ' - CNPJ: ' + qrimportcnpj_cpf_completo.asstring;
   Excel.Cells[3,3].Font.Size := 12;
   Excel.cells[3,3].Font.Bold := True;

   Excel.Cells[5,3] := 'Data da Planilha: ' + data;
   Excel.ActiveWindow.DisplayGridlines := false;

   linha2:=6;

   pcolunas := 9;
  { Excel.Range['A1', Chr(pColunas+64) +'1'].Merge;
   Excel.Range['A2', Chr(pColunas+64) +'2'].Merge;
   Excel.Range['A3', Chr(pColunas+64) +'3'].Merge;
   Excel.Range['A4', Chr(pColunas+64) +'4'].Merge;
   Excel.Range['A1', 'A4'].Font.Bold := True;

   Excel.Range['A4', Chr(pColunas+64) +'4'].Borders.Item[8].LineStyle := 1;
   Excel.Range['A4', Chr(pColunas+64) +'4'].Borders.Item[8].Weight := 3;
   Excel.Range['A4', Chr(pColunas+64) +'4'].Borders.Item[9].LineStyle := 1;
   Excel.Range['A4', Chr(pColunas+64) +'4'].Borders.Item[9].Weight := 3;
   Excel.Range['A4', Chr(pColunas+64) +'4'].Interior.Color := clSilver;
   Excel.Range['A4', 'A4'].Font.Size := 9;
                                   }
   Planilha := 'Processos';
//   Excel.Cells[4,1] := Planilha;

   Celtitulo(linha2, 1,'Data Abertura', clNavy, ACenter, clNavy, 8, 15);
   Celtitulo(linha2, 2,'Ref.MS', clNavy, ACenter, clNavy, 8, 15);
   Celtitulo(linha2, 3,'Ref.Empresa', clNavy, ACenter, clNavy, 8, 25);
   Celtitulo(linha2, 4,'Tipo de Processo', clNavy, ACenter, clNavy, 8, 20);
   Celtitulo(linha2, 5,'DI / DDE', clNavy, ACenter, clNavy, 8, 12);
   Celtitulo(linha2, 6,'Valor CIF (TR)', clNavy, ACenter, clNavy, 8, 12);
   Celtitulo(linha2, 7,'Tipo Declara��o', clNavy, ACenter, clNavy, 8, 35);
   Celtitulo(linha2, 8,'Planilha', clNavy, ACenter, clNavy, 8, 10);
   Celtitulo(linha2, 9,'Documentos', clNavy, ACenter, clNavy, 8, 14);

             If osprocessos.RecordCount >= -1 Then Begin

                While Not osprocessos.Eof Do Begin


                      vPro := osprocessoscodigo.AsString;
                      vEmp := osprocessosEmpresa.AsString;
                      vFil := osprocessosFilial.AsString;

                if (not vrelacao) or (vrelacao and (pos(vpro,qrelacao)>0)) then begin
                     { qrExcelProc.close;
                      qrExcelProc.Params[0].AsString := vEmp;
                      qrExcelProc.Params[1].AsString := vFil;
                      qrExcelProc.Params[2].AsString := vPro;
                      qrExcelProc.open;
                      }
                     linha2  := linha2+1;
                     
                     CelDetalhe(linha2, 1,''''+FormatDateTime('dd/mm/yyyy', osprocessosData.asDateTime), clWhite, Acenter, clNavy, 8, 15);
                     CelDetalhe(linha2, 2,''''+osprocessoscodigo.asstring, clWhite, Acenter, clNavy, 8, 15);
                     CelDetalhe(linha2, 3,''''+osprocessoscodigo_cliente.asstring, clWhite, Aleft, clNavy, 8, 25);
                     CelDetalhe(linha2, 4,''''+osprocessostipo_processo.asstring, clWhite, Aleft, clNavy, 8, 20);
                     CelDetalhe(linha2, 5,''''+osprocessosNR_DECLARACAO_IMP.asstring+osprocessosDDE.asstring, clWhite, Aleft, clNavy, 8, 12);
                   if osprocessosTR_VAL_CIF_US.asfloat<>0 then begin
                      CelDetalhe(linha2, 6,osprocessosTR_VAL_CIF_US.asstring, clWhite, Aright, clNavy, 8, 12);
                      Excel.Cells[linha2,6].NumberFormatLocal := '#.##0,00';
                   end;

                     CelDetalhe(linha2, 7,''''+osprocessostipo_declaracao.ASSTRING, clWhite, Aleft, clNavy, 8, 35);

                     CelDetalhe(linha2, 8,'EXTRATO', clWhite, Aleft, clNavy, 8, 10);

                     CelDetalhe(linha2, 9,'DOCUMENTOS', clWhite, Aleft, clNavy, 8, 14);

                   vpro := osprocessoscodigo.asstring;
//                   Excel.Cells[i,8] := 'EXTRATO';
                   Excel.WorkSheets['PROCESSOS'].Hyperlinks.Add (Anchor:= Excel.WorkSheets['PROCESSOS'].Range['H'+ IntToStr(linha2)], Address := 'extrato_'+ stringreplace(Copy(vPro,1,8),'/','_', [rfReplaceAll]) + '.xlsx');
                  // if qrExcelProc.RecordCount>0 then begin
//                      Excel.Cells[i,9] := 'DOCUMENTOS';
                      Excel.WorkSheets['PROCESSOS'].Hyperlinks.Add (Anchor:= Excel.WorkSheets['PROCESSOS'].Range['I'+ IntToStr(linha2)], Address := 'extrato_'+ stringreplace(Copy(vPro,1,8),'/','_', [rfReplaceAll]) + '_docs.xlsx');
                  // end;

                 end;
                 osprocessos.Next;

                End;

             End;

          Excel.Workbooks[1].SaveAs(dir_cor + '\Processos.xlsx');
           Excel.Quit;

{        if t_impext.Bof then begin
           t_impext.edit;
           t_impextempresa.asstring := vemp;
           t_impextfilial.asstring := vfil;
           t_impextcodigo.asstring := qrimportcodigo.asstring;
           t_impext.post;
        end;
 }
///showmessage('Planilha Gerada');

  //end;
  end
  else begin /////planilha transocean

  qpla.Open;

  {$I-}
  v_aux := 0;
  Saux := 2;
  vtot_tot_tdolar := 0;
  vtot_tot_treal := 0;

  logusu('A','Acessou Planilha Principal de Processos');
  Screen.Cursor := crHourGlass;
  System.GetDir(0,dir_cor);
  dir_cor := dir_cor + '\Planilhas_Ms2000';
  dir_cor := stringreplace(dir_cor,'/','', [rfReplaceAll]);
  dir_cor := stringreplace(dir_cor,'.','', [rfReplaceAll]);
  dir_cor := stringreplace(dir_cor,'&','', [rfReplaceAll]);
  MkDir(dir_cor);
  dir_cor := dir_cor + '\planilha_transocean';
  dir_cor := stringreplace(dir_cor,'/','', [rfReplaceAll]);
  dir_cor := stringreplace(dir_cor,'.','', [rfReplaceAll]);
  dir_cor := stringreplace(dir_cor,'&','', [rfReplaceAll]);
  MkDir(dir_cor);

//  osprocessos.close;
//  osprocessos.Params[0].AsString := qrimportcodigo.asstring;
//  osprocessos.open;
//  osprocessos.first;

  Excel := CreateOleObject('Excel.Application');
  Excel.Application.DisplayAlerts := False;
          Excel.Visible := bExibePlanilha;

  Excel.WorkBooks.Add(1);

{  Excel.ActiveWorkBook.VBProject.VBComponents.Item('plan1').Codemodule.CreateEventProc ('activate' , 'worksheet');
  Excel.ActiveWorkBook.VBProject.VBComponents.Item('plan1').CodeModule.VBE.ActiveWindow.Close;
  Excel.ActiveWorkBook.VBProject.VBComponents.Item('plan1').CodeModule.VBE.MainWindow.Visible := False;
 } Excel.ActiveWindow.DisplayGridLines := False;

   Excel.Cells[1,1] := v_empresanome;
   Excel.Cells[2,1] := 'EXTRATO DE PROCESSOS - V 1.0 - '+ FormatDateTime('dd/mm/yyyy "�s" hh:nn', Now());
   Excel.Cells[3,1] := 'RELA��O DE PROCESSOS: TRANSOCEAN BRASIL LTDA' ;
   Excel.Cells[1,1].Font.Size := 12;

   pcolunas := 8;
   Excel.Range['A1', Chr(pColunas+64) +'1'].Merge;
   Excel.Range['A2', Chr(pColunas+64) +'2'].Merge;
   Excel.Range['A3', Chr(pColunas+64) +'3'].Merge;
   Excel.Range['A4', Chr(pColunas+64) +'4'].Merge;
   Excel.Range['A1', 'A4'].Font.Bold := True;

   Excel.Range['A4', Chr(pColunas+64) +'4'].Borders.Item[8].LineStyle := 1;
   Excel.Range['A4', Chr(pColunas+64) +'4'].Borders.Item[8].Weight := 3;
   Excel.Range['A4', Chr(pColunas+64) +'4'].Borders.Item[9].LineStyle := 1;
   Excel.Range['A4', Chr(pColunas+64) +'4'].Borders.Item[9].Weight := 3;
   Excel.Range['A4', Chr(pColunas+64) +'4'].Interior.Color := clSilver;
   Excel.Range['A4', 'A4'].Font.Size := 9;

   Planilha := 'Processos';
   Excel.Cells[4,1] := Planilha;

             Excel.Range['A5', 'A5'].ColumnWidth := 11;
             Excel.Range['B5', 'B5'].ColumnWidth := 20;
             Excel.Range['C5', 'C5'].ColumnWidth := 15;
             Excel.Range['D5', 'D5'].ColumnWidth := 20;
             Excel.Range['E5', 'E5'].ColumnWidth := 20;
             Excel.Range['F5', 'F5'].ColumnWidth := 14;
             Excel.Range['G5', 'G5'].ColumnWidth := 14;
             Excel.Range['H5', 'H5'].ColumnWidth := 14;             

             i := 7;
  //           If osprocessos.RecordCount > 0 Then Begin
                Excel.Cells[i,1] := 'DOSSIE';
                Excel.Cells[i,2] := 'DI';
                Excel.Cells[i,3] := 'TR';
                Excel.Cells[i,4] := 'CONSUMO';
                Excel.Cells[i,5] := 'EMBARCA��O';
                Excel.Cells[i,6] := 'NF';
                Excel.Cells[i,7] := 'REF MS';
                Excel.Cells[i,8] := 'DOCUMENTOS';
                Inc(i);
                Excel.Cells[i,1] := '-------------------';
                Excel.Cells[i,2] := '----------------------------------';
                Excel.Cells[i,3] := '-------------------------------------------';
                Excel.Cells[i,4] := '----------------------------------';
                Excel.Cells[i,5] := '----------------------------------';
                Excel.Cells[i,6] := '----------------------------------';
                Excel.Cells[i,7] := '----------------------------------';
                Excel.Cells[i,8] := '----------------------------------';

                Inc(i);
                vIni := IntToStr(i);
                While Not QPLA.Eof Do Begin

//                     If qpla.Locate('Processo', osprocessoscdigo.AsString, [loCaseInsensitive]) Then Begin

                      vPro := TRIM(QPLAPROCESSO.ASSTRING);
                      if vPro='' then vPRO:='NAO';
                      //qrExcelProc.close;
                     // qrExcelProc.Params[0].AsString := v_empresa;
                      //qrExcelProc.Params[1].AsString := v_filial;
                     // qrExcelProc.Params[2].AsString := vPro;
                     // qrExcelProc.open;

//                   Excel.Cells[i,1].NumberFormat := '@';
                   Excel.Cells[i,1] := QPLADOSSIE.ASSTRING;
                   Excel.Cells[i,2] := chr(39)+QPLADI.ASSTRING;
                   Excel.Cells[i,3] := chr(39)+QPLATR.ASSTRING;
                   Excel.Cells[i,4] := chr(39)+QPLACONSUMO.ASSTRING;
                   Excel.Cells[i,5] := chr(39)+QPLAEMBARCACAO.ASSTRING;
                   Excel.Cells[i,6] := chr(39)+QPLANF.ASSTRING;
                   Excel.Cells[i,7] := chr(39)+TRIM(QPLAPROCESSO.ASSTRING);
                   vpro := QPLADOSSIE.ASSTRING; ////osprocessoscdigo.asstring;
//                   Excel.Cells[i,7] := 'EXTRATO';
//                   Excel.WorkSheets['Plan1'].Hyperlinks.Add (Anchor:= Excel.WorkSheets['Plan1'].Range['G'+ IntToStr(i)], Address := 'extrato_'+ stringreplace(Copy(vPro,1,8),'/','_', [rfReplaceAll]) + '.xls');
                   if TRIM(QPLAPROCESSO.ASSTRING)<>'' then begin ///qrExcelProc.RecordCount>0 then begin
                      if vPro='' then vPro := TRIM(QPLAPROCESSO.ASSTRING);
                      Excel.Cells[i,8] := 'DOCUMENTOS';
                      Excel.WorkSheets['Plan1'].Hyperlinks.Add (Anchor:= Excel.WorkSheets['Plan1'].Range['H'+ IntToStr(i)], Address := stringreplace(Copy(vPro,1,8),'/','-', [rfReplaceAll]) + '_docs.xlsx');
                   end;
                   Inc(i);

                   QPLA.Next;

                End;
                vFim := IntToStr(i-1);
                { FORMATA AS C�LULAS }
//                Excel.Range['A'+ vIni, 'A'+ vFim].NumberFormat := 'dd/mm/yyyy hh:nn';
                Excel.Range['A6', 'G' + IntToStr(i)].HorizontalAlignment := AL_ESQUERDA;

//             End;


           Excel.Application.DisplayAlerts := False;
  //         Excel.WorkSheets['Menu'].Shapes.AddPicture ('c:\ms2000\logoms.jpg', True, True, 370, 4, 110, 60);
           Excel.Workbooks[1].SaveAs(dir_cor + '\PLANILHA_TRANSOCEAN.xls');
           Excel.Quit;


showmessage('Planilha Gerada');

  end;

end;

procedure Tf_extratopro_geral.Button1Click(Sender: TObject);
begin
//   qrimport.close;
//   qrimport.open;
//   t_impext.open;
//   qrimport.first;

   While Not qrimport.Eof Do Begin

         BitBtn4Click(f_extratopro_geral);
         BitBtn2Click(f_extratopro_geral);
         qrimport.next;
   end;

showmessage('Planilhas Geradas');

end;

procedure Tf_extratopro_geral.DOCS_digitalizados( var QPRO: STRING);
var
   i, i2, j, v_aux, vqtddoc: Integer;
   v_procCodigo, v_procNumero, v_procDesc, v_dirDocs, v_moeda, qmoedafatura: String;
   vtot_tot_tdolar, vtot_tot_treal, vTaxaMoedaFatura: Real;
   b_DOGA : Boolean;
   v_doga_custas, v_tot_9,v_tot_10,v_tot_11,v_tot_12,v_tot_13,v_total_impor: Real;
   vIni, vFim: String;
   vTaxaConv: Real; // TAXA DE CONVERS�O
   valor_rateio, valor_rateio_reg, valor_rateio_prev: Real;
   pcolunas: word;
   naoprocessa: boolean;
begin


  v_tot_9 := 0;
  v_tot_10 := 0;
  v_tot_11 := 0;
  v_tot_12 := 0;
  v_tot_13 := 0;
  b_DOGA := False;

  vb_dolar := True;
  vTaxaConv := 1;

  re_Processa.Clear;
  p_custosunit.Visible := False;
  {$I-}
  v_aux := 0;
  Saux := 2;
  vtot_tot_tdolar := 0;
  vtot_tot_treal := 0;

  Screen.Cursor := crHourGlass;
  System.GetDir(0,dir_cor);
  dir_cor := dir_cor + '\Planilhas_Ms2000';
  dir_cor := stringreplace(dir_cor,'/','', [rfReplaceAll]);
  dir_cor := stringreplace(dir_cor,'.','', [rfReplaceAll]);
  dir_cor := stringreplace(dir_cor,'&','', [rfReplaceAll]);  
  ////////////////////////////////////////////////////////////////////////////////////////////

   { DOCUMENTOS DIGITALIZADOS }

          vpro := Qpro;

          naoprocessa := false;

          If FileExists(dir_cor + '\' + stringreplace(Copy(vPro,1,8),'/','_', [rfReplaceAll]) + '_docs.xlsx') Then Begin
              naoprocessa := true;
          End;

         if (not naoprocessa) then begin


            qrExcelProc.close;
            qrExcelProc.Params[0].AsString := v_empresa;
            qrExcelProc.Params[1].AsString := v_filial;
            qrExcelProc.Params[2].AsString := vpro;
            qrExcelProc.open;


        If qrExcelProc.RecordCount > 0 Then Begin
          v_aux := 0;
          Saux := 2;
          i2 := 0;
          v_menuAux := 3;
          v_pag := 0;

           v_menuAux := 9;
           Excel := CreateOleObject('Excel.Application');
           Excel.Application.DisplayAlerts := False;
          Excel.Visible := bExibePlanilha;

           v_procNumero := qrExcelProcNumero_Doc.AsString;
           v_procDesc := qrExcelProcDescricao.AsString;
           v_procCodigo := qrExcelProcCodigo.AsString;
           v_pag := 1;

           Excel.WorkBooks.Add(1);

           ///// Excel.ActiveWorkBook.VBProject.VBE.MainWindow.Visible := False;
{           Excel.ActiveWorkBook.VBProject.VBComponents.Item('plan1').Codemodule.CreateEventProc ('activate' , 'worksheet');
           Excel.ActiveWorkBook.VBProject.VBComponents.Item('plan1').CodeModule.VBE.ActiveWindow.Close;
           Excel.ActiveWorkBook.VBProject.VBComponents.Item('plan1').CodeModule.VBE.MainWindow.Visible := False;
 }          Excel.ActiveWindow.DisplayGridLines     := False;
           //Excel.WorkSheets[1].PageSetup.PaperSize := '9';
           Excel.ActiveSheet.PageSetup.LeftMargin  := '28';
           Excel.ActiveSheet.PageSetup.RightMargin := '28';
           Excel.WorkSheets[1].Name := 'MENU';
           ///// Excel.Worksheet_Activate.Edit;
           Excel.Cells[1,1].Font.Size := 12;
           Excel.Cells[1,1] := v_empresanome; //'MS2000 - Sistema Gerencial Aduaneiro';'MS2000 - Sistema Gerencial Aduaneiro';
           Excel.Cells[1,1].Font.Bold := True;
           Excel.Cells[2,1] := 'EXTRATO DE PROCESSOS - V 1.0' + ' ' + datetostr(date()) + ' �s ' + Copy(timetostr(time),1,5);
           Excel.Cells[2,1].Font.Bold := True;
           Excel.Cells[5,1] := 'RELA��O DE DOCUMENTOS DO PROCESSO: ' + vPro ;
           Excel.Cells[5,1].Font.Bold := True;

           Excel.Range['A' + IntToStr(6), 'J' + IntToStr(6)].Borders.Item[9].LineStyle := 1;
           Excel.Range['A' + IntToStr(6), 'J' + IntToStr(6)].Borders.Item[9].Weight := 3;
           Excel.ActiveWindow.DisplayGridLines := False;
           Excel.WorkSheets.Add;
           ///// planilha := Copy(v_procNumero,1,14) + ' - ' + Copy(v_procDesc,1,14);
           vqtddoc := 1;
            planilha := v_procNumero + ' - ' + v_procDesc;
            planilha_0 := IntToStr(v_menuAux-8)+' - '+stringreplace(Copy(planilha,1,25),'/','_', [rfReplaceAll]);
           While Not qrExcelProc.Eof Do Begin
             // If StrToInt(v_nivel) > 8 Then Begin
                // If qrExcelProcTipo_Doc.AsString = 'PROC' Then
                 //   If qrExcelProcSub_Tipo_Doc.AsString = '9' Then Begin
                  //     qrExcelProc.Next;
                  //     Continue;
                  //  End;
             // End;

              If qrExcelProcCodigo.AsString <> v_procCodigo Then Begin
                 vqtddoc := vqtddoc +1;
                 v_pag := 1;
                 v_procCodigo := qrExcelProcCodigo.AsString;
                 v_procNumero := qrExcelProcNumero_Doc.AsString;
                 v_procDesc := qrExcelProcDescricao.AsString;
                 AdicionaBotao();
                 FormaMenuPla();

                 Excel.WorkSheets.Add;
                 Excel.ActiveWindow.DisplayGridLines := False;

                 planilha := v_procNumero + ' - ' + v_procDesc;
                 planilha_0 := IntToStr(v_menuAux-8)+' - '+stringreplace(Copy(planilha,1,25),'/','_', [rfReplaceAll]);

              End;


              v_dirDocs := FormatFloat('0000', strToFloat(Copy(qrExcelProcArquivo.AsString,4,4))+1)+'0000'+'\';
              If Copy(qrExcelProcArquivo.AsString,8,4) = '0000' Then
                 v_dirDocs := Copy(qrExcelProcArquivo.AsString,4,4)+'0000';

              if fileexists(v_path_server + 'Docs\' + v_dirDocs + qrExcelProcArquivo.AsString +'.jpg') then begin
                Excel.WorkSheets[1].Name := planilha_0;
                if v_pag=1 then begin
                 v_pag:=2;
                 Excel.Cells[1,10] := '>> MENU <<';
                 Excel.WorkSheets[planilha_0].Hyperlinks.Add (Anchor:= Excel.WorkSheets[planilha_0].Range['J1'], Address:= '', SubAddress:= '''' + 'MENU' + '''!a1');
                end;
                Excel.Application.WorkSheets[1].Shapes.AddPicture (v_path_server + 'Docs\' + v_dirDocs + qrExcelProcArquivo.AsString +'.jpg', True, True, Excel.Cells[v_pag, 1].Left, Excel.Cells[v_pag, 1].Top, 1, 1);

              Excel.ActiveSheet.PageSetup.LeftMargin := '10';
              Excel.ActiveSheet.PageSetup.RightMargin := '10';
              v_pag := v_pag + 56;
              Excel.Application.WorkSheets[1].Shapes.Item((v_pag-1)/56).ScaleHeight (1, True);
              Excel.Application.WorkSheets[1].Shapes.Item((v_pag-1)/56).ScaleWidth (1, True);

              end
              else begin
                 showmessage('Arquivo n�o encontrado - Processo:'+v_procCodigo+' - Doc:'+v_procNumero+' - '+v_procDesc);
              end;

              qrExcelProc.Next;

           End;
           v_pag := 1;

           AdicionaBotao();
           FormaMenuPla();
           Excel.WorkSheets['Menu'].Select;

       //    Excel.Range['A' + IntToStr(v_menuAux), 'J' + IntToStr(v_menuAux)].Borders.Item[9].LineStyle := 1;
       //    Excel.Range['A' + IntToStr(v_menuAux), 'J' + IntToStr(v_menuAux)].Borders.Item[9].Weight := 3;


           If FileExists(dir_cor + '\' + stringreplace(Copy(vPro,1,8),'/','_', [rfReplaceAll]) + '.xlsx') Then Begin
              Excel.Cells[7, 8] := 'EXTRATO DO PROCESSO';
              Excel.WorkSheets['Menu'].Hyperlinks.Add (Anchor:= Excel.WorkSheets['Menu'].Range['H7'], Address := 'extrato_'+ stringreplace(Copy(vPro,1,8),'/','_', [rfReplaceAll]) + '.xlsx');
              Excel.Range['H7', 'J7'].Merge;
           End;

           Excel.Application.DisplayAlerts := False;
           Excel.WorkSheets['Menu'].Shapes.AddPicture ('c:\ms2000\logoms.jpg', True, True, 370, 4, 110, 60);

           Excel.Workbooks[1].SaveAs(dir_cor + '\' + stringreplace(Copy(vPro,1,8),'/','_', [rfReplaceAll]) + '_docs.xlsx');
           Excel.Quit;
           Excel := unassigned;

           ///// Excel.Unassigned;
        End
        Else Begin
           Screen.Cursor := crDefault;
//           MessageDlg('Este processo n�o possui documentos digitalizados! ', mtInformation,[mbOk], 0);
        End;
        end;

     //Screen.Cursor := crDefault;



  ///////////////////////////////////////////////////////////////////////////////////////////







//     MessageDlg('Planilha(s) Gerada(s) no Diret�rio ' + dir_cor + '!', mtInformation, [mbOk], 0);
end;


Procedure Tf_extratopro_geral.CelTitulo(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer );
Begin
           Excel.cells[linha, coluna] := CTitulo;
           Excel.cells[linha, coluna].interior.Color := CColor;
           Excel.cells[linha, coluna].Font.Color := clWhite;
           Excel.cells[linha, coluna].Font.Size := FSize;
           Excel.cells[linha, coluna].Font.Bold := True;
           Excel.cells[linha, coluna].HorizontalAlignment:= CAlign;
           Excel.cells[linha, coluna].Borders.Weight := 2;
           Excel.cells[linha, coluna].Borders.LineStyle := 1;
//           Excel.rows[linha].RowHeight := 100;
           Excel.Columns[coluna].ColumnWidth := COLSize;
    //       Excel.cells[linha, coluna].VerticalAlignment := CAlign;

End;


Procedure Tf_extratopro_geral.CelDetalhe(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer );
Begin
           Excel.cells[linha, coluna] := CTitulo;
           Excel.cells[linha, coluna].interior.Color := CColor;
           Excel.cells[linha, coluna].Font.Color := FColor;
           Excel.cells[linha, coluna].Font.Size := FSize;

           Excel.cells[linha, coluna].HorizontalAlignment:= CAlign;
//           Excel.cells[linha, coluna].Borders.Weight := 2;
//           Excel.cells[linha, coluna].Borders.LineStyle := 1;
//           Excel.rows[linha].RowHeight := 100;
           Excel.Columns[coluna].ColumnWidth := COLSize;
    //       Excel.cells[linha, coluna].VerticalAlignment := CAlign;

End;



procedure Tf_extratopro_geral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := caFree;
     f_extratopro_geral := Nil;
     F_MSCOMEX.ExtratordeDocumentos1.enabled := true;
end;

end.




