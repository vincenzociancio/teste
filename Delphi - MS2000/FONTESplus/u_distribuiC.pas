unit u_distribuiC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBCtrls, Grids, DBGrids, ExtCtrls, Db, DBTables;

type
  Tf_distribuiC = class(TForm)
    Panel1: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    b_ok: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    Label3: TLabel;
    ds_imp: TDataSource;
    q_contapro: TQuery;
    ds_contapro: TDataSource;
    t_processos: TTable;
    ds_processos: TDataSource;
    ds_resp: TDataSource;
    Label4: TLabel;
    e_proc: TEdit;
    bb_atualiza: TBitBtn;
    Label5: TLabel;
    DBText1: TDBText;
    t_imp: TTable;
    Label6: TLabel;
    DBText2: TDBText;
    BBCANCEL: TBitBtn;
    t_impEmpresa: TStringField;
    t_impFilial: TStringField;
    t_impCodigo: TStringField;
    t_impRazao_Social: TStringField;
    t_impPais: TStringField;
    t_impCNPJ_CPF_COMPLETO: TStringField;
    t_impCGC_CPF: TStringField;
    t_impTipo_Importador: TStringField;
    t_impEndereco: TStringField;
    t_impNumero: TStringField;
    t_impComplemento: TStringField;
    t_impBairro: TStringField;
    t_impCidade: TStringField;
    t_impCEP: TStringField;
    t_impUF: TStringField;
    t_impEstado: TStringField;
    t_impInscricao_Estadual: TStringField;
    t_impBanco: TStringField;
    t_impAgencia: TStringField;
    t_impConta_Corrente: TStringField;
    t_impConta_Corrente_Registro: TIntegerField;
    t_impConta_Corrente_Deposito: TIntegerField;
    t_implink: TStringField;
    t_impCAE: TStringField;
    t_impTelefone: TStringField;
    t_impAtivo: TSmallintField;
    t_impAcesso_WEB_MS: TSmallintField;
    t_impAcesso_WEB_CLI: TSmallintField;
    t_impAcesso_WEB_REC: TSmallintField;
    t_impBASE_ICMS: TSmallintField;
    q_contaproNome_Completo: TStringField;
    q_contaproUsuario: TStringField;
    q_contaproContarDeCodigo: TIntegerField;
    t_processosEmpresa: TStringField;
    t_processosFilial: TStringField;
    t_processosCodigo: TStringField;
    t_processosData: TDateTimeField;
    t_processosImportador: TStringField;
    t_processosCodigo_Cliente: TStringField;
    t_processosTipo_Declaracao: TStringField;
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
    t_processosDT_DISTRIBUICAO: TDateTimeField;
    t_processosCanal: TStringField;
    t_processosFiscal: TStringField;
    t_processosStatus: TStringField;
    t_processosCOD_SIT: TStringField;
    t_processosCD_MOTIVO_TRANS: TStringField;
    t_processosIN_MOEDA_UNICA: TSmallintField;
    t_processosTX_INFO_COMPL: TMemoField;
    t_processosCD_TIPO_PGTO_TRIB: TStringField;
    t_processosNumero_RCR: TStringField;
    t_processosData_Entrada_RCR: TDateTimeField;
    t_processosData_Aprovacao_RCR: TDateTimeField;
    t_processosFundamentacao_RCR: TStringField;
    t_processosProcurador: TStringField;
    t_processosNumero_TR: TStringField;
    t_processosData_Entrada_TR: TDateTimeField;
    t_processosData_vencimento_TR: TDateTimeField;
    t_processosData_Aprovacao_TR: TDateTimeField;
    t_processosData_Baixa_TR: TDateTimeField;
    t_processosData_CI: TDateTimeField;
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
    t_processosResponsavel_Empresa: TStringField;
    t_processosResponsavel_Importador: TStringField;
    t_processosSaldo_Faturamento: TFloatField;
    t_processosNR_DECL_IMP_MICROC: TStringField;
    t_processosNR_DECL_IMP_PROTC: TStringField;
    t_processosNR_DECLARACAO_IMPC: TStringField;
    t_processosDT_PROCESSAMENTOC: TStringField;
    t_processosDT_TRANSMISSAOC: TStringField;
    t_processosDT_REGISTRO_DIC: TStringField;
    t_processosDT_DESEMBARACOC: TDateTimeField;
    t_processosDT_DISTRIBUICAOC: TDateTimeField;
    t_processosCanalC: TStringField;
    t_processosFiscalC: TStringField;
    t_processosCOD_SITC: TStringField;
    t_processosData_CIC: TDateTimeField;
    t_processosValor_FOBC: TFloatField;
    t_processosValor_CIFC: TFloatField;
    t_processosident_meio1: TStringField;
    t_processosident_meio2: TStringField;
    t_processosCodevento: TStringField;
    t_processosCodobs: TStringField;
    t_processosObs_especifica: TStringField;
    t_processosData_ufollowup: TDateTimeField;
    t_processosHora_ufollowup: TStringField;
    t_processosData_liberacao: TDateTimeField;
    t_processosUrgente: TSmallintField;
    t_processosconsolidado: TSmallintField;
    t_processosPag_proporcional: TSmallintField;
    t_processosTR_VAL_FOB_US: TFloatField;
    t_processosTR_VAL_CIF_US: TFloatField;
    t_processosTR_VAL_II: TFloatField;
    t_processosTR_VAL_IPI: TFloatField;
    t_processosDDE: TStringField;
    t_processosProcesso_Adm: TStringField;
    t_processosProc_Adm_Data_Entrada: TDateTimeField;
    t_processosFaturado: TSmallintField;
    t_processosFechado: TSmallintField;
    t_processosCentro_Custo: TStringField;
    t_processosProcurador2: TStringField;
    t_processosTR_VAL_PIS: TFloatField;
    t_processosTR_VAL_COFINS: TFloatField;
    t_processosRCR_LOCAL: TStringField;
    t_processosResponsavel_EmpresaC: TStringField;
    t_processosvinc_processo: TSmallintField;
    t_processosproc_vinc: TStringField;
    q_usu: TQuery;
    q_usuUsuario: TStringField;
    q_usuNome_Completo: TStringField;
    q_usuNivel: TStringField;
    q_usuResponsavelC: TSmallintField;
    ds_usu: TDataSource;
    q_resp: TQuery;
    procedure b_okClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure e_procChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bb_atualizaClick(Sender: TObject);
    procedure BBCANCELClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_distribuiC: Tf_distribuiC;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_distribuiC.b_okClick(Sender: TObject);
begin
    if MessageDlg('Confirma distribuição deste Processo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
       t_processos.edit;
      // t_processosresponsavel_empresa.asstring := '';
       t_processos.post;
     //  q_processos.close;
     //  q_processos.open;
       //q_contapro.close;
       //q_contapro.open;
       
    end;
end;

procedure Tf_distribuiC.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

     Left := 1;
     Top  := 1;


   {  h := Height;
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

procedure Tf_distribuiC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action := cafree;
f_distribuiC := nil;
f_mscomex.Distribuiocomercial1.enabled := true;

end;

procedure Tf_distribuiC.e_procChange(Sender: TObject);
begin
  if length(e_proc.text)=8 then begin
     if not t_processos.FindKey([v_empresa,v_filial,e_proc.text]) then
       showmessage('Processo não encontrado!');
  end;
end;

procedure Tf_distribuiC.FormCreate(Sender: TObject);
begin
     t_processos.open;
     q_usu.open;
     t_imp.open;
     q_resp.open;
end;

procedure Tf_distribuiC.bb_atualizaClick(Sender: TObject);
begin
     q_contapro.close;
     q_contapro.open;
end;

procedure Tf_distribuiC.BBCANCELClick(Sender: TObject);
begin
t_processos.Cancel;
end;

end.
