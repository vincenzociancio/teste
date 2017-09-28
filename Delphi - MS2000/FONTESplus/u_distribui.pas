unit u_distribui;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBCtrls, Grids, DBGrids, ExtCtrls, Db, DBTables, Mask;

type
  Tf_distribui = class(TForm)
    Panel1: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    b_ok: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    ds_imp: TDataSource;
    q_contapro: TQuery;
    ds_contapro: TDataSource;
    t_processos: TTable;
    ds_processos: TDataSource;
    ds_usuarios: TDataSource;
    ds_resp: TDataSource;
    Label5: TLabel;
    DBText1: TDBText;
    t_imp: TTable;
    Label6: TLabel;
    DBText2: TDBText;
    BBCANCEL: TBitBtn;
    sb_limpadecla: TSpeedButton;
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
    q_usuarios: TQuery;
    q_resp: TQuery;
    q_CNPJ: TQuery;
    q_CNPJCNPJ_CPF_COMPLETO: TStringField;
    qryCoordenador: TQuery;
    dtsCoordenacao: TDataSource;
    DBLookupComboBox3: TDBLookupComboBox;
    qryCoordenadorUsuario: TStringField;
    qryCoordenadorNome_Completo: TStringField;
    Label7: TLabel;
    Label8: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    bb_atualiza: TBitBtn;
    dtsSupervisor: TDataSource;
    qrySupervisor: TQuery;
    qrySupervisorUsuario: TStringField;
    qrySupervisorNome_Completo: TStringField;
    Panel3: TPanel;
    Panel4: TPanel;
    Label4: TLabel;
    ME_nossaref: TMaskEdit;
    btnLocalizar: TSpeedButton;
    lblRotuloCNPJ: TLabel;
    lblCNPJ: TLabel;
    t_processosCoordenador_Resp: TStringField;
    t_processosSupervisor_Resp: TStringField;
    SpeedButton1: TSpeedButton;
    procedure b_okClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bb_atualizaClick(Sender: TObject);
    procedure BBCANCELClick(Sender: TObject);
    procedure sb_limpadeclaClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure ME_nossarefChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_distribui: Tf_distribui;

implementation

uses U_MSCOMEX;

{$R *.DFM}

function FormataCNPJ(CNPJ: string): string;
begin
  Result := Copy(CNPJ,1,2)+'.'+Copy(CNPJ,3,3)+'.'+Copy(CNPJ,6,3)+'/'+
            Copy(CNPJ,9,4)+'-'+Copy(CNPJ,13,2);
end;

procedure Tf_distribui.b_okClick(Sender: TObject);
begin
  if ( DBLookupComboBox4.Text = '' ) then begin
    Application.MessageBox('Campo supervisor responsável é obrigatório!','Aviso', MB_OK+MB_ICONINFORMATION);
    Abort;
  end;
  if ( DBLookupComboBox3.Text = '' ) then begin
    Application.MessageBox('Campo coordenador responsável é obrigatório!','Aviso', MB_OK+MB_ICONINFORMATION);
    Abort;
  end;
  if MessageDlg('Confirma distribuição deste Processo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
    t_processos.edit;
    t_processos.post;
  end;
end;

procedure Tf_distribui.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

     Left := 1;
     Top  := 1;


     {h := Height;
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
     width := w; }
          ME_nossaref.SetFocus;
end;

procedure Tf_distribui.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
  f_distribui := nil;
  f_mscomex.distribuicao.enabled := true;

end;


procedure Tf_distribui.FormCreate(Sender: TObject);
begin
  t_processos.open;
  t_imp.open;
  q_resp.open;
  q_usuarios.open;
  qryCoordenador.Open;
  qrySupervisor.Open;
end;

procedure Tf_distribui.bb_atualizaClick(Sender: TObject);
begin
  q_contapro.close;
  q_contapro.open;
end;

procedure Tf_distribui.BBCANCELClick(Sender: TObject);
begin
  t_processos.Cancel;
end;

procedure Tf_distribui.sb_limpadeclaClick(Sender: TObject);
begin
  t_processos.edit;
  t_processosresponsavel_empresa.AsString := '';
end;
          
procedure Tf_distribui.btnLocalizarClick(Sender: TObject);
begin
  if not t_processos.FindKey([v_empresa,v_filial,ME_nossaref.text]) then begin
    DBLookupComboBox1.KeyValue := '';
    DBLookupComboBox2.KeyValue := '';
    DBLookupComboBox3.KeyValue := '';
    DBLookupComboBox4.KeyValue := '';
    showmessage('Processo não encontrado!');
  end
  else
  begin
    q_CNPJ.Close;
    q_CNPJ.ParamByName('pCodigo').Value := ME_nossaref.Text;
    q_CNPJ.Open;
    lblCNPJ.Caption := FormataCNPJ( q_CNPJCNPJ_CPF_COMPLETO.AsString );
    lblRotuloCNPJ.Visible := True;
    lblCNPJ.Visible := True;
  end;
end;

procedure Tf_distribui.ME_nossarefChange(Sender: TObject);
begin
  If Length(F_MSCOMEX.LRTrim(me_nossaref.Text)) <> 8 Then
    Exit;
  // eduardo.souza 01/02/2012 - Para processos fechados - Exibi mensagem e fecha a tela
  If (IsClosedProcess( me_nossaref.Text, f_distribui )) Then
    Abort;
  //--
  if not t_processos.FindKey([v_empresa,v_filial,ME_nossaref.text]) then begin
    DBLookupComboBox1.KeyValue := -1;
    DBLookupComboBox2.KeyValue := -1;
    DBLookupComboBox3.KeyValue := -1;
    DBLookupComboBox4.KeyValue := -1;
    showmessage('Processo não encontrado!');
  end
  else
  begin
    if F_MSCOMEX.AcessaPasta(me_nossaref.Text, t_processosTipo.AsString, f_distribui)
     then
     else begin
       f_distribui.Close;
       Abort;
     end;

    q_CNPJ.Close;
    q_CNPJ.ParamByName('pCodigo').Value := ME_nossaref.Text;
    q_CNPJ.Open;

    lblCNPJ.Caption := FormataCNPJ( q_CNPJCNPJ_CPF_COMPLETO.AsString );
    lblRotuloCNPJ.Visible := True;
    lblCNPJ.Visible := True;
  end;   
end;

procedure Tf_distribui.SpeedButton1Click(Sender: TObject);
begin
  t_processos.edit;
  t_processosResponsavel_Importador.AsString := '';
end;

procedure Tf_distribui.FormShow(Sender: TObject);
begin
  DBLookupComboBox1.KeyValue := '';
  DBLookupComboBox2.KeyValue := '';
  DBLookupComboBox3.KeyValue := '';
  DBLookupComboBox4.KeyValue := '';
end;

end.
