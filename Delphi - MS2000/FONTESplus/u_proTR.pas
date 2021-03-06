unit u_proTR;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, Db, DBTables, DBCtrls, Buttons, QRPrntr, QuickRpt,
  QRExport;

type
  TF_proTR = class(TForm)
    pnlTop: TPanel;
    Label26: TLabel;
    ME_nossaref: TMaskEdit;
    qrProcessos: TQuery;
    dsQProcessos: TDataSource;
    l_cliente: TLabel;
    pnlPrincipal: TPanel;
    Label195: TLabel;
    Label196: TLabel;
    Label198: TLabel;
    Label199: TLabel;
    Label200: TLabel;
    Label201: TLabel;
    Label202: TLabel;
    Label203: TLabel;
    Label204: TLabel;
    Label205: TLabel;
    Label206: TLabel;
    Label207: TLabel;
    Label249: TLabel;
    rgGarantia: TRadioGroup;
    tbProcessos: TTable;
    dsProcessos: TDataSource;
    tbObsTR: TTable;
    dsObsTR: TDataSource;
    qrProcurador: TQuery;
    dsProcurador: TDataSource;
    dbLcbProcurador: TDBLookupComboBox;
    dbEdtDtEntrada: TDBEdit;
    dbEdtDtVenc: TDBEdit;
    sbLimpaProcurador: TSpeedButton;
    pnlBaixo: TPanel;
    btnAlterar: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    btnImprimeTR: TBitBtn;
    btnImprimeVerso: TBitBtn;
    dbEdtNomeBanco: TDBEdit;
    dbEdtAgencia: TDBEdit;
    dbEdtDtDeposito: TDBEdit;
    dbEdtNomeTitulo: TDBEdit;
    dbEdtNumero: TDBEdit;
    dbEdtNomeSeg: TDBEdit;
    dbEdtNumApolice: TDBEdit;
    dbEdtCNPJFiador: TDBEdit;
    pnlTRVerso: TPanel;
    btnOKVerso: TBitBtn;
    btnCancelarVerso: TBitBtn;
    dbMemoVerso: TDBMemo;
    qrFaturas: TQuery;
    qrTaxaConv: TQuery;
    Panel2: TPanel;
    qrConhecimento: TQuery;
    pnlAtualizar: TPanel;
    Label273: TLabel;
    Label274: TLabel;
    Label275: TLabel;
    Label276: TLabel;
    Label277: TLabel;
    btnAtualizar: TBitBtn;
    edtValFOB: TEdit;
    edtValCIF: TEdit;
    edtImposto: TEdit;
    edtIPI: TEdit;
    edtTotal: TEdit;
    qrFiador: TQuery;
    dbLcbFiador: TDBLookupComboBox;
    sbLimpaFiador: TSpeedButton;
    dsFiador: TDataSource;
    tbDoc: TTable;
    tbParam: TTable;
    Label1: TLabel;
    dbEdtEnderFiador: TDBEdit;
    btnFrenteVerso: TBitBtn;
    memoTermo: TMemo;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dbLcbProcurador2: TDBLookupComboBox;
    sbLimpaProcurador2: TSpeedButton;
    qrProcurador2: TQuery;
    dsProcurador2: TDataSource;
    Label5: TLabel;
    Label6: TLabel;
    edtPIS: TEdit;
    edtCOFINS: TEdit;
    t_propis: TTable;
    q_piscofinstrib: TQuery;
    qrProcessosEmpresa: TStringField;
    qrProcessosFilial: TStringField;
    qrProcessosProcesso: TStringField;
    qrProcessosData: TDateTimeField;
    qrProcessosrefcli: TStringField;
    qrProcessosImportador: TStringField;
    qrProcessosCliente: TStringField;
    qrProcessostipodecla: TStringField;
    qrProcessostipopro: TStringField;
    qrProcessosqcontrato: TStringField;
    qrProcessosqlocal: TStringField;
    qrProcessosqcnpj: TStringField;
    qrProcessosFechado: TSmallintField;
    qrProcessosATIVO: TSmallintField;
    qrProcessosResponsavel_empresa: TStringField;
    qrProcessosResponsavel_empresac: TStringField;
    qrProcuradorEmpresa: TStringField;
    qrProcuradorFilial: TStringField;
    qrProcuradorCodigo: TStringField;
    qrProcuradorRazao_Social: TStringField;
    qrProcuradorPais: TStringField;
    qrProcuradorCGC_CPF: TStringField;
    qrProcuradorEndereco: TStringField;
    qrProcuradorNumero: TStringField;
    qrProcuradorComplemento: TStringField;
    qrProcuradorBairro: TStringField;
    qrProcuradorCidade: TStringField;
    qrProcuradorCEP: TStringField;
    qrProcuradorUF: TStringField;
    qrProcuradorEstado: TStringField;
    qrProcuradorInscricao_Estadual: TStringField;
    qrProcuradorRegistro: TStringField;
    qrProcuradorTelefone: TStringField;
    qrProcuradorexibe_complementares: TSmallintField;
    qrProcurador2Empresa: TStringField;
    qrProcurador2Filial: TStringField;
    qrProcurador2Codigo: TStringField;
    qrProcurador2Razao_Social: TStringField;
    qrProcurador2Pais: TStringField;
    qrProcurador2CGC_CPF: TStringField;
    qrProcurador2Endereco: TStringField;
    qrProcurador2Numero: TStringField;
    qrProcurador2Complemento: TStringField;
    qrProcurador2Bairro: TStringField;
    qrProcurador2Cidade: TStringField;
    qrProcurador2CEP: TStringField;
    qrProcurador2UF: TStringField;
    qrProcurador2Estado: TStringField;
    qrProcurador2Inscricao_Estadual: TStringField;
    qrProcurador2Registro: TStringField;
    qrProcurador2Telefone: TStringField;
    qrProcurador2exibe_complementares: TSmallintField;
    tbObsTREmpresa: TStringField;
    tbObsTRFilial: TStringField;
    tbObsTRCodigo: TStringField;
    tbObsTRObservacoes: TMemoField;
    qrFaturasEmpresa: TStringField;
    qrFaturasFilial: TStringField;
    qrFaturasProcesso: TStringField;
    qrFaturasCodigo: TStringField;
    qrFaturasExportador: TStringField;
    qrFaturasIncoterm: TStringField;
    qrFaturasVinculacao: TStringField;
    qrFaturasCondicao: TStringField;
    qrFaturasValor_Total: TFloatField;
    qrFaturasPeso_Total: TFloatField;
    qrFaturasPeso_Total_Acertado: TFloatField;
    qrFaturasAcrescimos_Reducoes: TSmallintField;
    qrFaturasMoeda: TStringField;
    qrFaturasCobertura_Cambial: TStringField;
    qrFaturasMotivo_Sem_Cobertura: TStringField;
    qrFaturasModalidade_de_Pagamento: TStringField;
    qrFaturasInstituicao_Financiadora: TStringField;
    qrFaturasTipo_Parcela: TStringField;
    qrFaturasNumero_de_parcelas: TStringField;
    qrFaturasPeriodicidade: TStringField;
    qrFaturasValor_das_Parcelas: TFloatField;
    qrFaturasIndicador_Periodicidade: TStringField;
    qrFaturasTaxa_de_Juros: TSmallintField;
    qrFaturasCodigo_Taxa_de_Juros: TStringField;
    qrFaturasValor_Taxa_de_Juros: TFloatField;
    qrFaturasROF_BACEN: TStringField;
    qrFaturasPercentual_ROF: TFloatField;
    qrFaturasDT_PREV_PAG_CAMBIO: TDateTimeField;
    qrFaturasDT_PAG_CAMBIO: TDateTimeField;
    qrFaturasSTATUS_CAMBIO: TStringField;
    qrFaturasCONTRATO_CAMBIO: TStringField;
    qrFaturasSALDO_CAMBIO: TFloatField;
    qrFaturasDtEmissao: TDateTimeField;
    qrFaturasPeso_Libra: TSmallintField;
    qrTaxaConvEmpresa: TStringField;
    qrTaxaConvFilial: TStringField;
    qrTaxaConvProcesso: TStringField;
    qrTaxaConvMoeda: TStringField;
    qrTaxaConvTaxa_conversao: TFloatField;
    qrTaxaConvTaxa_conversaoc: TFloatField;
    qrConhecimentoNumerodoccarga: TStringField;
    qrConhecimentoNumeromaster: TStringField;
    qrConhecimentoURF_Despacho: TStringField;
    qrFiadorEmpresa: TStringField;
    qrFiadorFilial: TStringField;
    qrFiadorCodigo: TStringField;
    qrFiadorRazao_Social: TStringField;
    qrFiadorPais: TStringField;
    qrFiadorCGC_CPF: TStringField;
    qrFiadorEndereco: TStringField;
    qrFiadorNumero: TStringField;
    qrFiadorComplemento: TStringField;
    qrFiadorBairro: TStringField;
    qrFiadorCidade: TStringField;
    qrFiadorCEP: TStringField;
    qrFiadorUF: TStringField;
    qrFiadorEstado: TStringField;
    qrFiadorInscricao_Estadual: TStringField;
    qrFiadorImportador: TStringField;
    tbParamEmpresa: TStringField;
    tbParamFilial: TStringField;
    tbParamNumerador_Processos: TStringField;
    tbParamNumerador_Documentos: TStringField;
    tbParamEndereco_ftp: TStringField;
    tbParamUsuario_ftp: TStringField;
    tbParamSenha_ftp: TStringField;
    tbParamHost: TStringField;
    tbParamVersao: TStringField;
    tbParamkeycrypt: TStringField;
    tbParamHost_smtp: TStringField;
    tbParamPorta_smtp: TSmallintField;
    tbParamUsuario_smtp: TStringField;
    tbParamSenha_smtp: TStringField;
    tbParamNumerador_Transmittal: TStringField;
    tbParamPATH_SERVER: TStringField;
    tbParamAliq_PIS_PASEP: TFloatField;
    tbParamAliq_COFINS: TFloatField;
    tbParamAliq_ICMS: TFloatField;
    tbParamAliq_ICMS_EXTRA: TFloatField;
    tbParamNumerador_Sol_Cheques: TStringField;
    tbParamNumerador_Sol_Reg: TStringField;
    tbParamNumerador_Sol_Tracla: TStringField;
    t_propisEmpresa: TStringField;
    t_propisFilial: TStringField;
    t_propisProcesso: TStringField;
    t_propisAdicao: TStringField;
    t_propisNCM: TStringField;
    t_propisVA: TFloatField;
    t_propisOT: TFloatField;
    t_propisDA: TFloatField;
    t_propisAliq_NCM_II: TFloatField;
    t_propisAliq_NCM_IPI: TFloatField;
    t_propisAliq_PIS_PASEP: TFloatField;
    t_propisAliq_COFINS: TFloatField;
    t_propisAliq_ICMS: TFloatField;
    t_propisAliq_ICMS_EXTRA: TFloatField;
    t_propisBASEC_PISCOFINS: TFloatField;
    t_propisBASEC_ICMS: TFloatField;
    t_propisVALOR_II: TFloatField;
    t_propisVALOR_IPI: TFloatField;
    t_propisVALOR_ICMS: TFloatField;
    t_propisVALOR_ICMS_EXTRA: TFloatField;
    t_propisVALOR_PIS_PASEP: TFloatField;
    t_propisVALOR_COFINS: TFloatField;
    t_propisPrazo_permanencia: TIntegerField;
    t_propisVA_proporcional: TFloatField;
    t_propisAliq_NCM_II_proporcional: TFloatField;
    t_propisAliq_NCM_IPI_proporcional: TFloatField;
    t_propisFOB: TFloatField;
    q_piscofinstribProcesso: TStringField;
    q_piscofinstribAdicao: TStringField;
    q_piscofinstribRegime_Tributacao_II: TStringField;
    q_piscofinstribRegime_Tributacao_IPI: TStringField;
    q_piscofinstribDESCRICAO: TStringField;
    tbDocEmpresa: TStringField;
    tbDocFilial: TStringField;
    tbDocImportador: TStringField;
    tbDocProcesso: TStringField;
    tbDocTipo_Doc: TStringField;
    tbDocSub_Tipo_Doc: TStringField;
    tbDocNumero_Doc: TStringField;
    tbDocPagina: TStringField;
    tbDocCodigo: TStringField;
    tbDocArquivo: TStringField;
    tbDocftp: TIntegerField;
    tbDocVigencia_inicial: TDateTimeField;
    tbDocVigencia_final: TDateTimeField;
    tbDocObservacoes: TStringField;
    tbDocContrato: TStringField;
    tbDocLocal: TStringField;
    tbDocData_inclusao: TDateTimeField;
    tbDocData_baixa: TDateTimeField;
    tbDocData_renovacao: TDateTimeField;
    tbDocStatus: TStringField;
    tbDocData_envio: TDateTimeField;
    tbDocusuario_dig: TStringField;
    q_UpdateDoc: TQuery;
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
    tbProcessosIN_MOEDA_UNICA: TIntegerField;
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
    tbProcessosUrgente: TIntegerField;
    tbProcessosconsolidado: TIntegerField;
    tbProcessosPag_proporcional: TIntegerField;
    tbProcessosTR_VAL_FOB_US: TFloatField;
    tbProcessosTR_VAL_CIF_US: TFloatField;
    tbProcessosTR_VAL_II: TFloatField;
    tbProcessosTR_VAL_IPI: TFloatField;
    tbProcessosDDE: TStringField;
    tbProcessosProcesso_Adm: TStringField;
    tbProcessosProc_Adm_Data_Entrada: TDateTimeField;
    tbProcessosFaturado: TIntegerField;
    tbProcessosFechado: TIntegerField;
    tbProcessosCentro_Custo: TStringField;
    tbProcessosProcurador2: TStringField;
    tbProcessosTR_VAL_PIS: TFloatField;
    tbProcessosTR_VAL_COFINS: TFloatField;
    tbProcessosRCR_LOCAL: TStringField;
    tbProcessosResponsavel_EmpresaC: TStringField;
    tbProcessosvinc_processo: TIntegerField;
    tbProcessosproc_vinc: TStringField;
    tbProcessossem_nfs: TIntegerField;
    edtNumTR: TMaskEdit;
    btnView: TSpeedButton;
    qDocumentoScaneado: TQuery;
    qDocumentoScaneadoArquivo: TStringField;
    btnFollowTR: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure ME_nossarefChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbProcessosAfterPost(DataSet: TDataSet);
    procedure btnImprimeTRClick(Sender: TObject);
    procedure btnImprimeVersoClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnOKVersoClick(Sender: TObject);
    procedure btnCancelarVersoClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure sbLimpaProcuradorClick(Sender: TObject);
    procedure dbEdtDtEntradaChange(Sender: TObject);
    procedure dbEdtDtVencChange(Sender: TObject);
    procedure dbEdtDtDepositoChange(Sender: TObject);
    procedure sbLimpaFiadorClick(Sender: TObject);
    procedure dbLcbFiadorClick(Sender: TObject);
    procedure btnFrenteVersoClick(Sender: TObject);
    procedure QuickRepAfterPreview(Sender: TObject);
    procedure sbLimpaProcurador2Click(Sender: TObject);
    procedure tbProcessosAfterScroll(DataSet: TDataSet);
    procedure btnViewClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnFollowTRClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_proTR: TF_proTR;
  vEmp, vFil,vertime: String;
  QRPaginas: TQRPageList;
  QRPrn2: TQuickRep;
  QRPrn: TQRPrinter;
  q_suspe,q_suspe_II,q_suspe_IPI:string;
  total_pis,total_cofins,total_icms:real;

implementation

uses U_MSCOMEX, U_TR, U_TRverso;

{$R *.DFM}


procedure TF_proTR.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin
  Left := 1;
  Top  := 1;

  vertime := timetostr(time());
  vertime := copy(vertime,1,2)+copy(vertime,4,2)+copy(vertime,7,2);
  vertime := vertime + '.rpt';
end;

procedure TF_proTR.ME_nossarefChange(Sender: TObject);
var cnpj: String;
begin
     If Length(F_MSCOMEX.LRTrim(me_nossaref.Text)) <> 8 Then
        Exit;

     Screen.Cursor := crHourGlass;

     qrProcessos.ParamByName( 'Processo' ).Value := me_nossaref.Text;
     qrProcessos.Close;
     qrProcessos.Open;
     
     If ( Not qrProcessos.IsEmpty ) Then Begin
     {Fim eduardo.souza 02/06/2011}
        vEmp := qrProcessosEmpresa.AsString;
        vFil := qrProcessosFilial.AsString;

        With qrFaturas Do Begin
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
        End;
        With qrTaxaConv Do Begin
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
        End;
        With qrConhecimento Do Begin
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := qrProcessosProcesso.AsString;
        End;
        With qrProcurador Do Begin
            Close;
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Open;
        End;
        With qrProcurador2 Do Begin
            Close;
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Open;
        End;
        With qrFiador Do Begin
            Close;
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Open;
        End;

        tbProcessos.close;
        tbProcessos.Open;
        tbObsTR.close;
        tbObsTR.Open;

        If  (tbProcessosTipo_Declaracao.AsString = '01')  Then Begin
           pnlPrincipal.Visible := False;
           pnlAtualizar.Visible := False;
           pnlBaixo.Visible := False;
           MessageDlg('Declara��o n�o � de Admiss�o Tempor�ria!', mtInformation, [mbOk], 0);
           l_cliente.Caption := '';
           Screen.Cursor := crDefault;
           Exit;
        End;

        edtvalfob.text  := FormatFloat('#0.00', tbprocessostr_val_fob_us.asfloat);
        edtvalcif.text  := FormatFloat('#0.00', tbprocessostr_val_cif_us.asfloat);
        edtimposto.text := FormatFloat('#0.00', tbprocessostr_val_ii.asfloat);
        edtipi.text     := FormatFloat('#0.00', tbprocessostr_val_ipi.asfloat);
        edtPIS.text     := FormatFloat('#0.00', tbprocessostr_val_PIS.asfloat);
        edtCOFINS.text  := FormatFloat('#0.00', tbprocessostr_val_COFINS.asfloat);
        edttotal.text   := FormatFloat('#0.00', tbprocessostr_val_PIS.asFLOAT+tbprocessostr_val_COFINS.asFLOAT+tbprocessostr_val_ii.asfloat+tbprocessostr_val_ipi.asfloat);

        If tbProcessosTipo_Garantia.AsString <> '' Then
           rgGarantia.ItemIndex := StrToInt(tbProcessosTipo_Garantia.AsString)
        Else
           rgGarantia.ItemIndex := 0;

        //alterei em 27/07/2005 - mm - chupisco!!!
        v_AlteraPRO := 1;
        If (not qrprocessosAtivo.asinteger = 0) then begin
           //If (not v_Edita_cliente_inativo)  then begin
           If (v_Edita_cliente_inativo = 0)  then begin
              Showmessage(v_usuario+', este Cliente est� Inativo. Somente usu�rios habilitados para editar clientes inativos poder�o alterar as informa��es do processo.');
              v_AlteraPRO := 0;
           end;
        end;
        
        If (qrprocessosFechado.asinteger = 1) then begin
           //If (not v_Edita_Processo_Fechado)  then begin
           If (v_Edita_Processo_Fechado = 0)  then begin
                Showmessage(v_usuario+', este Processo est� Fechado. Somente usu�rios habilitados em editar processos fechados poder�o alterar as informa��es do processo.');
                v_AlteraPRO := 0;
           end
           else v_AlteraPRO := 1;
        end;

        v_AlteraPRO := 1;

        //mm 24/07/2006 - usuariosclientes
        if f_mscomex.q_usucli.recordcount>0 then begin
           if f_mscomex.q_usucli.locate('Importador',qrProcessosimportador.asstring,[]) then begin
              v_autorizadocli := 1;
           end
           else begin
              v_autorizadocli := 0;
           end;
        end
        else begin
              v_autorizadocli := 1;
        end;
        F_MSCOMEX.atualizacpastas(ME_nossaref.text);
        If (v_autorizadocli = 1) Then Begin


           cnpj := qrprocessosqcnpj.asstring;
           cnpj := Copy(cnpj,1,2)+'.'+Copy(cnpj,3,3)+'.'+Copy(cnpj,6,3)+'/'+Copy(cnpj,9,4)+'-'+Copy(cnpj,13,2);

           l_cliente.Caption := qrProcessosCliente.AsString+' - CNPJ: '+cnpj;
           pnlPrincipal.Visible := True;
           pnlAtualizar.Visible := True;
           pnlBaixo.Visible := True;

           btnFollowTR.Enabled := v_documentador;
        End
        Else Begin
           l_cliente.Caption := '';
           pnlPrincipal.Visible := false;
           pnlAtualizar.Visible := false;
           pnlBaixo.Visible := false;
           Showmessage(v_usuario+', este Processo pertence a um Cliente que seu acesso n�o est� permitido!');
        End;


     End
     Else Begin
        MessageDlg('Processo n�o encontrado!', mtInformation,[mbOk], 0);
        l_cliente.Caption := '';
        me_nossaref.Clear;
        pnlPrincipal.Visible := False;
        pnlAtualizar.Visible := False;
        pnlBaixo.Visible := False;
        me_nossaref.SetFocus
     End;

     Screen.Cursor := crDefault;
end;

procedure TF_proTR.FormClose(Sender: TObject;
  var Action: TCloseAction);
  var
        diretorio : string;
begin
     f_mscomex.tr1.Enabled := True;
     f_protr := nil;
//     QR_TR.QRPrinter := nil;
     QR_TR := NIL;
     QRPaginas := nil;
     QRPrn := nil;
     F_MSCOMEX.apaga_rpt;
     Action := caFree;

end;

procedure TF_proTR.tbProcessosAfterPost(DataSet: TDataSet);
begin
     logusu('P','Alterou TR do Processo: '+tbProcessosCodigo.AsString);
end;

procedure TF_proTR.btnImprimeTRClick(Sender: TObject);
var i: Integer;
begin
     Screen.Cursor := crHourGlass;

     If Not Assigned(QR_TR) Then begin
       /// Application.CreateForm(TQR_TR, QR_TR);
       QR_TR := TQR_TR.Create(self);
     end
     else begin
//     showmessage('passou');
      QRPaginas := nil;
      QRPrn := nil;
      QR_TR.Destroy;
      QR_TR := NIL;
      F_MSCOMEX.apaga_rpt;
        
        QR_TR := TQR_TR.Create(self);
//        Application.CreateForm(TQR_TR, QR_TR);
     end;


     {roda a sql de itens de rcr}
     With QR_TR.Q_TR Do Begin
         Close;
         Params[0].AsString := qrProcessosProcesso.AsString;
         Open;
     End;
     With QR_TR Do Begin
         qrl_valorfob.Caption := 'US$ '+ FormatFloat('###,###,###,###,###,##0.00', StrToFloat(edtValFOB.Text));
         qrl_valorcif.Caption := 'US$ '+ FormatFloat('###,###,###,###,###,##0.00', StrToFloat(edtValCIF.Text));
         qrl_valorii.Caption  := 'R$ '+ FormatFloat('###,###,###,###,###,##0.00', StrToFloat(edtImposto.Text));
         qrl_valoripi.Caption := 'R$ '+ FormatFloat('###,###,###,###,###,##0.00', StrToFloat(edtIPI.Text));
         qrl_valortot.Caption := 'R$ '+ FormatFloat('###,###,###,###,###,##0.00', StrToFloat(edtTotal.Text));
     End;

     If MessageDlg('Imprimir data de Vencimento no TR?',mtConfirmation,[mbYes, mbNo], 0) = mrYes Then begin
        If MessageDlg('Imprimir Somente data de Vig�ncia Final no TR?',mtConfirmation,[mbYes, mbNo], 0) = mrYes Then
           QR_TR.qrl_periodo.Caption := ' _____/_____/_______  a  '+dbEdtDtVenc.Text
        Else
           QR_TR.qrl_periodo.Caption := dbEdtDtentrada.Text+' a  '+dbEdtDtVenc.Text
     end
     Else
        QR_TR.qrl_periodo.Caption := ' _____/_____/_______  a  _____/_____/_______ ';




     if v_nivel='0' then begin
        QR_TR.qrl_valorfob.Enabled := TRUE;
        QR_TR.qrl_valorfob.Transparent := FALSE;
        QR_TR.qrl_valorcif.Enabled := TRUE;
        QR_TR.qrl_valorcif.Transparent := FALSE;
        If MessageDlg('Imprimir valores FOB e CIF em BRANCO?',mtConfirmation,[mbYes, mbNo], 0) = mrYes Then BEGIN
          QR_TR.qrl_valorfob.Enabled := false;
          QR_TR.qrl_valorfob.Transparent := true;
          QR_TR.qrl_valorcif.Enabled := false;
          QR_TR.qrl_valorcif.Transparent := true;
        END;

     end;
     Screen.Cursor := crDefault;
     Case btnFrenteVerso.Tag Of
         0: QR_TR.Preview;
         1: Begin
            QRPaginas := nil;
            QRPaginas := TQRPageList.Create;
            QRPaginas.Stream := TQRStream.Create(100000);
            QR_TR.Prepare;
            For i := 1 To QR_TR.QRPrinter.PageCount Do
               QRPaginas.AddPage(QR_TR.QRPrinter.GetPage(i));

            btnImprimeVerso.Click;
         End;
     End;
end;

procedure TF_proTR.btnImprimeVersoClick(Sender: TObject);
begin
     memotermo.clear;
//     btnFrenteVerso.Tag := 0;
     Screen.Cursor := crHourGlass;
     qrConhecimento.Open;
     ///retirado em 10/12/2008 - Tatiana
{     If qrConhecimentoURF_Despacho.AsString = '0710200' Then Begin

{        memotermo.Lines.Add('TERMO LAVRADO E AUTORIZADO');
        memotermo.Lines.Add('');
        memotermo.Lines.Add('PELO CHEFE DO SEANA.');}
//     End
//     Else Begin
        memoTermo.Clear;
//     End;

     If Not Assigned(QR_TRverso) Then
       Application.CreateForm(TQR_TRverso, QR_TRverso)
     else begin
       QR_TRverso.Destroy;
       QR_TRverso := nil;
       Application.CreateForm(TQR_TRverso, QR_TRverso)
     end;

     pnlPrincipal.Enabled := False;
     pnlAtualizar.Enabled := False;
     pnlBaixo.Enabled := False;
     tbObsTR.Close;
     tbObsTR.Open;
     tbObsTR.Edit;
     If MessageDlg(V_USUARIO+', Deseja inserir os valores de PIS e COFINS nas OBS do Verso do TR?',mtConfirmation,[mbYes, mbNo], 0) = mrYes Then BEGIN
        dbmemoverso.Lines.Add('');
        //dbmemoverso.Lines.Add('Valor Total PIS (SUSPENSO) R$ '+edtpis.text);
        //dbmemoverso.Lines.Add('Valor Total COFINS (SUSPENSO) R$ '+edtcofins.text);
        dbmemoverso.Lines.Add('Valor Total PIS (SUSPENSO) R$ '+FormatFloat('#0.00', tbprocessostr_val_PIS.asfloat));
        dbmemoverso.Lines.Add('Valor Total COFINS (SUSPENSO) R$ '+FormatFloat('#0.00', tbprocessostr_val_COFINS.asfloat));
     end;
     With pnlTRVerso Do Begin
         Left := 40;
         Top := 62;
         Height := 300;
         Visible := True;
     End;
     dbMemoVerso.SetFocus;
     Screen.Cursor := crDefault;
end;

procedure TF_proTR.btnAtualizarClick(Sender: TObject);
var
    qvalfob: Real;
    qvalcif: Real;
    qvalii: Real;
    qvalipi: Real;
    qvaltot: Real;
    ovalorfob: Real;
    ovalorcif: Real;
    q_taxa: String;

begin
     If Not Assigned(QR_TR) Then Application.CreateForm(TQR_TR, QR_TR);

     {roda a sql de itens de rcr}
     With QR_TR.Q_TR Do Begin
         Close;
         Params[0].AsString := qrProcessosProcesso.AsString;
         Open;
     End;

     With qrFaturas Do Begin
         Close;
         Params[2].AsString := qrProcessosProcesso.AsString;
         Open;
     End;
     With qrTaxaConv Do Begin
         Close;
         Params[2].AsString := qrProcessosProcesso.AsString;
         Open;
     End;

     {totalizar saldos totais por dolar e real}
     qvalfob := 0;
     qvalcif := 0;
     qvalii  := 0;
     qvalipi := 0;
     qvaltot := 0;
//     If QR_TR.Q_TR.RecordCount <> 0 Then
//        QR_TR.Q_TR.First;
     While Not QR_TR.Q_TR.Eof Do Begin
          qrFaturas.First;
          qrFaturas.Locate('Codigo',QR_TR.Q_TRFatura.AsString,[]);
          If qrFaturasMoeda.AsString = '220' Then Begin
             qvalfob := qvalfob + QR_TR.Q_TRSomaDeValor_Mercadoria.AsFloat;
             qvalcif := qvalcif + QR_TR.Q_TRSomaDeBase_Calc_II.AsFloat;
             {converte para real}
             qrTaxaConv.Locate('Moeda',qrFaturasMoeda.AsString,[]);
             q_taxa  := qrTaxaConvTaxa_Conversao.AsString;
             qvalii  := qvalii + StrToFloat(FloatToStrF((QR_TR.Q_TRSomaDeValor_II_Devido.AsFloat*StrToFloat(q_taxa)),fffixed,10,5));
             qvalipi := qvalipi + StrToFloat(FloatToStrF((QR_TR.Q_TRSomaDeValor_IPI_Devido.AsFloat*StrToFloat(q_taxa)),fffixed,10,5));
          End
          Else Begin
             {converte para real}
             qrTaxaConv.Locate('Moeda',qrFaturasMoeda.AsString,[]);
             q_taxa := qrTaxaConvTaxa_Conversao.AsString;

             ovalorfob := (QR_TR.Q_TRSomaDeValor_Mercadoria.AsFloat*StrToFloat(q_taxa));
             ovalorcif := (QR_TR.Q_TRSomaDeBase_Calc_II.AsFloat*StrToFloat(q_taxa));
             qvalii  := qvalii + StrToFloat(FloatToStrF((QR_TR.Q_TRSomaDeValor_II_Devido.AsFloat*StrToFloat(q_taxa)),fffixed,10,5));
             qvalipi := qvalipi + StrToFloat(FloatToStrF((QR_TR.Q_TRSomaDeValor_IPI_Devido.AsFloat*StrToFloat(q_taxa)),fffixed,10,5));
             {converte para dolar}
             qrTaxaConv.Locate('Moeda','220',[]);
             q_taxa := qrTaxaConvTaxa_Conversao.AsString;

             ovalorfob := (ovalorfob/StrToFloat(q_taxa));
             ovalorcif := (ovalorcif/StrToFloat(q_taxa));
             qvalfob   := qvalfob + ovalorfob;
             qvalcif   := qvalcif + ovalorcif;
          End;

          QR_TR.Q_TR.Next;
     End;

     //////coloquei em 11072007
      q_piscofinstrib.close;
      q_piscofinstrib.Params[0].asstring := me_nossaref.text;
      q_piscofinstrib.open;

      t_propis.close;
      t_propis.Filter := 'Processo = '+chr(39)+me_nossaref.text+chr(39);
      t_propis.open;

       t_propis.first;
       total_pis    := 0;
       total_cofins := 0;
       total_icms   := 0;

       while not t_propis.eof do begin
             q_suspe := '';
             q_suspe_II := '';
             q_suspe_IPI := '';
             if q_piscofinstrib.Locate('Adicao',t_propisadicao.asstring,[loCaseInsensitive]) then begin
                if q_piscofinstribRegime_Tributacao_II.asstring='5' then q_suspe_II := 'II';
                if q_piscofinstribRegime_Tributacao_IPI.asstring='5' then q_suspe_IPI := 'IPI';

                /// verificando se � SUSPENS�O
                /// leandro dia 21/09/2006, solicitado por Jorge
                if (q_suspe_II<>'') or (q_suspe_IPI<>'') then
                   q_suspe :=' -> ( SUSPENS�O '
                else begin
                   /// verificando se � ISEN��O
                   /// leandro dia 21/09/2006, solicitado por Jorge
                   if q_piscofinstribRegime_Tributacao_II.asstring='3' then q_suspe_II := 'II';
                   if q_piscofinstribRegime_Tributacao_IPI.asstring='3' then q_suspe_IPI := 'IPI';
                   if (q_suspe_II<>'') or (q_suspe_IPI<>'') then q_suspe :=' -> ( ISEN��O ';
                end;
             end;
             if (q_suspe_II<>'') or (q_suspe_IPI<>'') then begin
                /// tratamento passou a ser feito logo acima
                ///q_suspe :=' -> ( SUSPENS�O ';
                if q_suspe_II<>'' then begin
                   q_suspe := q_suspe+'II';
                   if q_suspe_IPI<>'' then begin
                      q_suspe := q_suspe+' e IPI';
                   end;
                end
                else begin
                   if q_suspe_IPI<>'' then begin
                      q_suspe := q_suspe+'IPI';
                   end;
                end;
                q_suspe := q_suspe+' )';
             end;

             /// proporcional 24/09/2004
             ////AQUI 30/03/2006
             if (q_suspe_II='') then begin
//                total_pis := total_pis+t_propisvalor_pis_pasep.asfloat;
//                total_cofins := total_cofins+t_propisvalor_cofins.asfloat;
//                total_icms := total_icms+t_propisvalor_icms.asfloat;
             end
             else begin
                total_pis := total_pis+t_propisvalor_pis_pasep.asfloat;
                total_cofins := total_cofins+t_propisvalor_cofins.asfloat;
                total_icms := total_icms+t_propisvalor_icms.asfloat;
             end;
             t_propis.next;
       end;

     qvaltot := total_pis + total_cofins+ qvalii + qvalipi;



     edtValFOB.Text  := FormatFloat('#0.00', qvalfob);
     edtValCIF.Text  := FormatFloat('#0.00', qvalcif);
     edtImposto.Text := FormatFloat('#0.00', qvalii);
     edtIPI.Text     := FormatFloat('#0.00', qvalipi);
     edtPIS.Text     := FormatFloat('#0.00', total_pis);
     edtCOFINS.Text  := FormatFloat('#0.00', total_cofins);
     edtTotal.Text   := FormatFloat('#0.00', qvaltot);

     {
     edtValFOB.Text  := FloatToStrF(qvalfob,ffFixed,10,2);
     edtValCIF.Text  := FloatToStrF(qvalcif,ffFixed,10,2);
     edtImposto.Text := FloatToStrF(qvalii,ffFixed,10,2);
     edtIPI.Text     := FloatToStrF(qvalipi,ffFixed,10,2);
     edtPIS.Text     := FloatToStrF(total_pis,ffFixed,10,2);
     edtCOFINS.Text  := FloatToStrF(total_cofins,ffFixed,10,2);
     edtTotal.Text   := FloatToStrF(qvaltot,ffFixed,10,2);
     }

///     tbprocessos.edit;
     tbprocessostr_val_fob_us.asstring := edtValFOB.Text;
     tbprocessostr_val_cif_us.asstring := edtValCIF.Text;
     tbprocessostr_val_ii.asstring     := edtImposto.Text;
     tbprocessostr_val_ipi.asstring    := edtIPI.Text;
     tbprocessostr_val_pis.asstring     := edtpis.Text;
     tbprocessostr_val_cofins.asstring    := edtcofins.Text;
///     tbprocessos.post;

end;

procedure TF_proTR.btnOKVersoClick(Sender: TObject);
var i: Integer;
begin
     pnlTRVerso.Visible := False;
     pnlAtualizar.Enabled := True;
     pnlBaixo.Enabled := True;
     tbObsTR.Post;

     qr_trverso.qrm_lavro.Enabled     := False;
     qr_trverso.qrm_lavro.Transparent := True;

     Case btnFrenteVerso.Tag Of
         0: QR_TRverso.Preview;
         1: Begin
            btnFrenteVerso.Tag := 0;

            QR_TRVerso.Prepare;
            For i := 1 to QR_TRVerso.QRPrinter.PageCount do
               QRPaginas.AddPage(QR_TRVerso.QRPrinter.GetPage(I));
            QRPaginas.Finish;
            QRPaginas.UnlockList;
            QRPaginas.SaveToFile(vertime);

            If Assigned(QRPrn) Then QRPrn.Destroy;
            QRPrn := nil;

            QRPrn := TQRPrinter.Create(self);
            QRPrn.AfterPreview := quickrepafterpreview;
            QRPrn.Load(vertime);
            QRPrn.ExtendedDuplex := DMDUP_VERTICAL;
            QRPrn.Preview;

            F_MSCOMEX.apaga_rpt;
         End;
     End;

     qrConhecimento.Close;
     tbObsTR.Close;
end;

procedure TF_proTR.btnCancelarVersoClick(Sender: TObject);
begin
     pnlTRVerso.Visible := False;
     pnlAtualizar.Enabled := True;
     pnlBaixo.Enabled := True;
     tbObsTR.Cancel;
     btnFrenteVerso.Tag := 0;
end;

procedure TF_proTR.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure TF_proTR.btnAlterarClick(Sender: TObject);
begin
if (v_AlteraPRO = 1) then begin
     pnlTop.Enabled := False;
     pnlPrincipal.Enabled := True;
     btnAlterar.Enabled := False;
     btnSair.Enabled := False;
     btnImprimeTR.Enabled := False;
     btnImprimeVerso.Enabled := False;
     btnFrenteVerso.Enabled := False;
     btnSalvar.Enabled := True;
     btnCancelar.Enabled := True;

     tbProcessos.Edit;
     tbProcessosProcurador.AsString := Trim(tbProcessosProcurador.AsString);
end

else begin
      Showmessage(v_usuario+', ATEN��O! Acesso n�o permitido � processos sob Responsabilidade e/ou o processo est� fechado e/ou o Cliente est� Inativo.');
end;
end;

procedure TF_proTR.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
     If tbProcessos.State In [dsEdit] Then Begin
        MessageDlg('O TR est� em edi��o!', mtInformation,[mbOk], 0);
        CanClose := False;
     End
     Else
        CanClose := True;
end;

procedure TF_proTR.btnSalvarClick(Sender: TObject);
var vNum, vArq, dtIni, dtFin : String;

begin
     {Leandro Serra - 31/08/2011
        Solicita��o da Sra Odilma
        O usu�rio s� poder� salvar se o documento N� da TR estiver escaneado}
      if (Length(F_MSCOMEX.LRTrim(edtNumTR.Text)) >= 7) or
       ( edtNumTR.Text <> '       /  ')then
      begin
         with qDocumentoScaneado do
         begin
             close;
             //ParamByName('pProc').asstring := ME_nossaref.text;
             //ParamByName('pNumDoc').asstring := 'like "%' + edtNumTR.text + '"';
             sql.clear;
             sql.add('select Arquivo from Documentos ');
             sql.add('where Processo ="'+ME_nossaref.text+'" ');
             sql.add('AND Tipo_doc ="PROC" AND Sub_Tipo_Doc ="11" ');
             sql.add('and Numero_Doc like "%'+edtNumTR.text+'" ');
             Open;
         end;
         if qDocumentoScaneado.RecordCount < 1 then
         begin
            MessageDlg(v_usuario+',  somente � permitido salvar o registro se houver o N�MERO TR digitalizado.', mtWarning, [mbOk], 0);
            exit;
         end;
     end;
     {Fim 31/08/2011}

     if dbEdtDtVenc.Text<>'' then begin
     If dbEdtDtVenc.Text = '  /  /    ' Then Begin
        MessageDlg(v_usuario+',  Aten��o! "Vig�ncia Final" est� em branco!', mtWarning, [mbOk], 0);
//        dbEdtDtVenc.SetFocus;
//        Exit;
     End;
     end;

     If dbEdtDtEntrada.Text<>'' then begin
     If dbEdtDtEntrada.Text <> '  /  /    ' Then
        If StrToDate(dbEdtDtEntrada.Text) > StrToDate(dbEdtDtVenc.Text) Then Begin
           MessageDlg(v_usuario+',  "Vig�ncia Final" � menor que a "Vig�ncia Inicial"!', mtWarning, [mbOk], 0);
           dbEdtDtVenc.SetFocus;
           Exit;
        End;
     end;

     If Trim(edtValFOB.Text) = '' Then
        edtValFOB.Text := '0'
     Else
        Try
           StrToFloat(edtValFOB.Text);
        Except
           MessageDlg('Valor FOB inv�lido!', mtWarning, [mbOk], 0);
           edtValFOB.SetFocus;
           Exit;
        End;
     If Trim(edtValCIF.Text) = '' Then
        edtValCIF.Text := '0'
     Else
        Try
           StrToFloat(edtValCIF.Text);
        Except
           MessageDlg('Valor CIF inv�lido!', mtWarning, [mbOk], 0);
           edtValCIF.SetFocus;
           Exit;
        End;
     If Trim(edtImposto.Text) = '' Then
        edtImposto.Text := '0'
     Else
        Try
           StrToFloat(edtImposto.Text);
        Except
           MessageDlg('Imposto de Importa��o inv�lido!', mtWarning, [mbOk], 0);
           edtImposto.SetFocus;
           Exit;
        End;
     If Trim(edtIPI.Text) = '' Then
        edtIPI.Text := '0'
     Else
        Try
           StrToFloat(edtIPI.Text);
        Except
           MessageDlg('IPI inv�lido!', mtWarning, [mbOk], 0);
           edtIPI.SetFocus;
           Exit;
        End;
     If Trim(edtpis.Text) = '' Then
        edtpis.Text := '0'
     Else
        Try
           StrToFloat(edtpis.Text);
        Except
           MessageDlg('PIS inv�lido!', mtWarning, [mbOk], 0);
           edtPIS.SetFocus;
           Exit;
        End;
     If Trim(edtCOFINS.Text) = '' Then
        edtCOFINS.Text := '0'
     Else
        Try
           StrToFloat(edtCOFINS.Text);
        Except
           MessageDlg('COFINS inv�lido!', mtWarning, [mbOk], 0);
           edtCOFINS.SetFocus;
           Exit;
        End;


     If Trim(edtTotal.Text) = '' Then
        edtTotal.Text := '0'
     Else
        Try
           StrToFloat(edtTotal.Text);
        Except
           MessageDlg('Total dos Impostos inv�lido!', mtWarning, [mbOk], 0);
           edtTotal.SetFocus;
           Exit;
        End;

     If ((tbProcessosProcurador.AsString <> '') OR (Not tbProcessosProcurador.IsNull))
        AND (tbProcessosProcurador2.AsString = tbProcessosProcurador.AsString) Then Begin
        MessageDlg('Selecione um segundo Procurador diferente do primeiro!', mtWarning, [mbOk], 0);
  //      dbLcbProcurador2.SetFocus;
  //      Exit;
     End;
     If ((tbProcessosProcurador.AsString = '') OR tbProcessosProcurador.IsNull)
        AND ((tbProcessosProcurador2.AsString <> '') OR (Not tbProcessosProcurador2.IsNull)) Then Begin
        MessageDlg('Selecione o primeiro Procurador!', mtWarning, [mbOk], 0);
   //     dbLcbProcurador.SetFocus;
   //     Exit;
     End;

     Screen.Cursor := crHourGlass;

     If rgGarantia.ItemIndex <> 0 Then
        tbProcessosTipo_Garantia.AsString := IntToStr(rgGarantia.ItemIndex)
     Else
        tbProcessosTipo_Garantia.AsString := '';

     pnlTop.Enabled := True;
     pnlPrincipal.Enabled := False;
     btnAlterar.Enabled := True;
     btnSair.Enabled := True;
     btnImprimeTR.Enabled := True;
     btnImprimeVerso.Enabled := True;
     btnFrenteVerso.Enabled := True;
     btnSalvar.Enabled := False;
     btnCancelar.Enabled := False;

     tbProcessosTR_VAL_FOB_US.AsString := edtValFOB.Text;
     tbProcessosTR_VAL_CIF_US.AsString := edtValCIF.Text;
     tbProcessosTR_VAL_II.AsString     := edtImposto.Text;
     tbProcessosTR_VAL_IPI.AsString    := edtIPI.Text;
     tbProcessosTR_VAL_PIS.AsString    := edtPIS.Text;
     tbProcessosTR_VAL_COFINS.AsString    := edtCOFINS.Text;
     If ( Length(F_MSCOMEX.LRTrim( edtNumTR.Text )) >= 7 )Or
       ( edtNumTR.Text = '       /  ') Then Begin
       if ( edtNumTR.Text = '       /  ') then
         tbProcessosNumero_TR.AsString := ''
       Else
         tbProcessosNumero_TR.AsString := edtNumTR.Text;
     End;
     tbProcessos.Post;

     dtIni := dbEdtDtEntrada.Text;
     dtFin := dbEdtDtVenc.Text;

     If dtIni <> '' Then dtIni := 'Cast("'+dtIni+'" as date)' Else dtIni := 'Null';
     If dtFin <> '' Then dtFin := 'Cast("'+dtFin+'" as date)' Else dtFin := 'Null';

     //IF edtNumTR.TexT <> '       /  ' THEN BEGIN
     If ( Length(F_MSCOMEX.LRTrim( edtNumTR.Text )) >= 7 ) Then Begin
     With q_UpdateDoc.SQL Do Begin
         Clear;
         Add('UPDATE Documentos SET ');
         Add('Vigencia_inicial = '+dtIni+', ');
         Add('Vigencia_final = '+dtFin+', ');
         Add('NUMERO_DOC = '''+edtNumTR.Text+''' ');
         Add('WHERE Processo = '''+tbProcessosCodigo.AsString+''' ');
//                 (tbDocImportador.AsString   = tbProcessosImportador.AsString) And
         //         Add(' AND NUMERO_DOC = '''+dbEdtNum.Text+''' ');
         Add(' AND TIPO_DOC = ''PROC'' ');
         Add(' AND Sub_Tipo_Doc = ''11'' ');
     End;
     logusu('A','Alterou TRSDOCS:'+edtNumTR.Text+' sql->'+q_UpdateDoc.Text);
     q_UpdateDoc.ExecSQL   ;
     END;
     
     If edtNumTR.Text = '       /  ' Then Begin
        Screen.Cursor := crDefault;
        Exit;
     End;

     tbParam.Open;
     vNum := tbParamNumerador_Documentos.AsString;
     vNum := IntToStr(StrToInt(vNum)+1);
     vNum := StringOfChar('0', 8-Length(vNum)) + vNum;
     vArq := Copy(tbProcessosFilial.AsString,1,3) + vNum;

     if vArq<>'' then begin
     With tbDoc Do Begin
         Open;
         If Not FindKey([vEmp,vFil,tbProcessosImportador.AsString,tbProcessosCodigo.AsString,'PROC','11']) Then Begin
            Append;
            tbDocEmpresa.AsString := vEmp;
            tbDocFilial.AsString := vFil;
            tbDocImportador.AsString := tbProcessosImportador.AsString;
            tbDocProcesso.AsString := tbProcessosCodigo.AsString;
            tbDocTipo_Doc.AsString := 'PROC';
            tbDocSub_Tipo_Doc.AsString := '11';
            tbDocNumero_Doc.AsString := edtNumTR.Text;
            tbDocPagina.AsString := '1';
            tbDocftp.AsINTEGER := 1;
            tbDocVigencia_inicial.AsString := dbEdtDtEntrada.Text;
            tbDocVigencia_final.AsString := dbEdtDtVenc.Text;
            tbDocContrato.AsString := tbProcessosContrato.AsString;
            tbDocLocal.AsString := tbProcessosLocal_Inventario.AsString;
            tbDocStatus.AsString := '1';
            tbDocArquivo.AsString := vArq;
            tbDocCodigo.AsString := vArq;
            Post;
            tbParam.Edit;
            tbParamNumerador_Documentos.AsString := vNum;
            tbParam.Post;
            tbParam.close;
            tbParam.open;
         End;
         {Else
            While ((Not Eof) And
                   (tbDocEmpresa.AsString      = vEmp) And
                   (tbDocFilial.AsString       = vFil) And
                   (tbDocImportador.AsString   = tbProcessosImportador.AsString) And
                   (tbDocProcesso.AsString     = tbProcessosCodigo.AsString) And
                   (tbDocTipo_Doc.AsString     = 'PROC') And
                   (tbDocSub_Tipo_Doc.AsString = '11')) Do Begin

                 Edit;
                 tbDocNumero_Doc.AsString       := dbEdtNum.Text;
                 tbDocVigencia_inicial.AsString := dbEdtDtEntrada.Text;
                 tbDocVigencia_final.AsString   := dbEdtDtVenc.Text;
                 Post;
                 Next;
            End;}

         Close;
     End;
     end
     else begin
         Showmessage(v_usuario+', c�digo de arquivo inv�lido n�o foi poss�vel incluir no controle de documentos.')
     end;

     tbParam.Close;

     Screen.Cursor := crDefault;
end;

procedure TF_proTR.btnCancelarClick(Sender: TObject);
begin
     edtvalfob.text  := tbprocessostr_val_fob_us.asstring;
     edtvalcif.text  := tbprocessostr_val_cif_us.asstring;
     edtimposto.text := tbprocessostr_val_ii.asstring;
     edtipi.text     := tbprocessostr_val_ipi.asstring;
     edtPIS.text     := tbprocessostr_val_PIS.asstring;
     edtCOFINS.text     := tbprocessostr_val_COFINS.asstring;
     edttotal.text   := floattostr(tbprocessostr_val_PIS.ASFLOAT+tbprocessostr_val_COFINS.ASFLOAT+tbprocessostr_val_ii.asfloat+tbprocessostr_val_ipi.asfloat);

     pnlTop.Enabled := True;
     pnlPrincipal.Enabled := False;
     btnAlterar.Enabled := True;
     btnSair.Enabled := True;
     btnImprimeTR.Enabled := True;
     btnImprimeVerso.Enabled := True;
     btnFrenteVerso.Enabled := True;
     btnSalvar.Enabled := False;
     btnCancelar.Enabled := False;
     If tbProcessosTipo_Garantia.AsString <> '' Then
        rgGarantia.ItemIndex := StrToInt(tbProcessosTipo_Garantia.AsString)
     Else
        rgGarantia.ItemIndex := 0;

     edtNumTR.Text := tbProcessosNumero_TR.AsString;   
     tbProcessos.Cancel;
end;

procedure TF_proTR.sbLimpaProcuradorClick(Sender: TObject);
begin
     tbProcessosProcurador.Clear;
end;

procedure TF_proTR.dbEdtDtEntradaChange(Sender: TObject);
begin
     if tbProcessos.State in [dsEdit,dsInsert] then
        If dbEdtDtEntrada.Text = '  /  /    ' Then
           tbProcessosData_Entrada_TR.AsString := ''
end;

procedure TF_proTR.dbEdtDtVencChange(Sender: TObject);
begin
     if tbProcessos.State in [dsEdit,dsInsert] then
        If dbEdtDtVenc.Text = '  /  /    ' Then
           tbProcessosData_vencimento_TR.AsString := ''
end;

procedure TF_proTR.dbEdtDtDepositoChange(Sender: TObject);
begin
     if tbProcessos.State in [dsEdit,dsInsert] then
        If dbEdtDtDeposito.Text = '  /  /    ' Then
           tbProcessosData_deposito_GAR.AsString := ''
end;

procedure TF_proTR.sbLimpaFiadorClick(Sender: TObject);
begin
     tbProcessosCNPJ_fiador_GAR.Clear;
     tbProcessosnome_fiador_GAR.Clear;
     tbProcessosendereco_fiador_GAR.Clear;
end;

procedure TF_proTR.dbLcbFiadorClick(Sender: TObject);
var vEnd: String;

begin
     If qrFiadorEndereco.AsString <> '' Then Begin
        vEnd := qrFiadorEndereco.AsString;
        If qrFiadorNumero.AsString <> '' Then Begin
           vEnd := vEnd +', '+ qrFiadorNumero.AsString;
           If qrFiadorComplemento.AsString <> '' Then
              vEnd := vEnd +'/'+ qrFiadorComplemento.AsString;
        End;
        vEnd := vEnd +', ';
     End;
     If qrFiadorBairro.AsString <> '' Then
        vEnd := vEnd + qrFiadorBairro.AsString;
     If qrFiadorCidade.AsString <> '' Then
        vEnd := vEnd +' - '+ qrFiadorCidade.AsString;
     If qrFiadorUF.AsString <> '' Then
        vEnd := vEnd +' - '+ qrFiadorUF.AsString;

     tbProcessosnome_fiador_GAR.AsString := qrFiadorRazao_Social.AsString;
     tbProcessosendereco_fiador_GAR.AsString := Trim(vEnd);
end;

procedure TF_proTR.btnFrenteVersoClick(Sender: TObject);
begin
     vertime := timetostr(time());
     vertime := copy(vertime,1,2)+copy(vertime,4,2)+copy(vertime,7,2);
     vertime := vertime + '.rpt';
//     showmessage(vertime);
     memotermo.clear;
     
     btnFrenteVerso.Tag := 1;
     btnImprimeTR.Click;
end;

procedure TF_proTR.QuickRepAfterPreview(Sender: TObject);
begin
     TQRPrinter(Sender).Cleanup;
     F_MSCOMEX.apaga_rpt;
end;

procedure TF_proTR.sbLimpaProcurador2Click(Sender: TObject);
begin
     tbProcessosProcurador2.Clear;
end;

procedure TF_proTR.tbProcessosAfterScroll(DataSet: TDataSet);
begin
  edtNumTR.Text := tbProcessosNumero_TR.AsString;
end;

procedure TF_proTR.btnViewClick(Sender: TObject);
begin
  Application.MessageBox(PChar('N�mero TR sem mascara: '+tbProcessosNumero_TR.AsString ), 'Visualiza��o N� TR', MB_OK+MB_ICONINFORMATION);
end;

procedure TF_proTR.Button1Click(Sender: TObject);
begin
 if (Length(F_MSCOMEX.LRTrim(edtNumTR.Text)) = 8) then
        ShowMessage('cheio '+ edtNumTR.Text)
 else
        ShowMessage('vazio' + edtNumTR.Text);
end;

procedure TF_proTR.btnFollowTRClick(Sender: TObject);
begin
  if (Length(F_MSCOMEX.LRTrim(me_nossaref.Text)) = 8)
   then begin
     if F_MSCOMEX.IncluiFollow(ME_nossaref.Text, '952', '0', '', v_usuario, date, time())
      then begin
        Showmessage(v_usuario+', ATEN��O! Foi INCLU�DO Follow up de Termo de Responsabilidade ORIGINAL arquivado pasta controle (MS) para o Processo: ' + pchar(ME_nossaref.Text)+'.');
        logusu('P','Incluiu Follow Up: Termo de Responsabilidade ORIGINAL arquivado pasta controle (MS). Processo: '+ME_nossaref.Text);
      end;
   end;     
end;

end.
