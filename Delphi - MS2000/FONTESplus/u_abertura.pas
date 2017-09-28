{$DEFINE TestTicket_1773}
unit u_abertura;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Buttons, Mask, ExtCtrls, Db, DBTables, ActnList;

Type
  TOperacao = (tInsert, tUpdate);

type
  Tf_abertura = class(TForm)
    pnlPrincipal: TPanel;
    L_dataini: TLabel;
    Label13: TLabel;
    L_refcli: TLabel;
    L_decla: TLabel;
    Label31: TLabel;
    Label186: TLabel;
    Label187: TLabel;
    dbLcbTipoDec: TDBLookupComboBox;
    dbLcbTipoProc: TDBLookupComboBox;
    dbLcbContratos: TDBLookupComboBox;
    dbLcbLocais: TDBLookupComboBox;
    dbLcbImport: TDBLookupComboBox;
    dbEdtRefCli: TDBEdit;
    dbEdtData: TDBEdit;
    dbcb_urgente: TDBCheckBox;
    tbProcessos: TTable;
    dsProcessos: TDataSource;
    dsTipoProc: TDataSource;                                                
    dsImport: TDataSource;
    dsTipoDec: TDataSource;
    dsContrato: TDataSource;
    dsLocal: TDataSource;
    sb_limpadecla: TSpeedButton;
    sb_limpacontrato: TSpeedButton;
    sb_limpalocal: TSpeedButton;
    sb_limpatipo: TSpeedButton;
    sb_limpacliente: TSpeedButton;
    qrImport: TQuery;
    dbCbPag: TDBCheckBox;
    pnlTop: TPanel;
    Label1: TLabel;
    ME_nossaref: TMaskEdit;
    pnlBaixo: TPanel;
    btnAlterar: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    btnIncluir: TBitBtn;
    btnExcluir: TBitBtn;
    btnLocalizar: TBitBtn;
    qrProcessos: TQuery;
    qrTipoProc: TQuery;
    qrLocal: TQuery;
    qrTipoDec: TQuery;
    qrContrato: TQuery;
    dsProc: TDataSource;
    tbNumerador: TTable;
    alVerifica: TActionList;
    acVerificarTipo: TAction;
    dblcbCentrosCustos: TDBLookupComboBox;
    Label2: TLabel;
    qrCentrosCustos: TQuery;
    dsCentrosCustos: TDataSource;
    q_upitens: TQuery;
    q_deltrib: TQuery;
    p_vinc: TPanel;
    DBCheckBox2: TDBCheckBox;
    Edit1: TEdit;
    q_vincdel1: TQuery;
    q_vincdel2: TQuery;
    q_vincdel3: TQuery;
    q_proc2: TQuery;
    q_vincinc1: TQuery;
    q_vincinc2: TQuery;
    BitBtn1: TBitBtn;
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
    tbProcessosResponsavel_Empresa: TStringField;
    tbProcessosResponsavel_Importador: TStringField;
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
    tbProcessosident_meio1: TStringField;
    tbProcessosident_meio2: TStringField;
    tbProcessosCodevento: TStringField;
    tbProcessosCodobs: TStringField;
    tbProcessosObs_especifica: TStringField;
    tbProcessosData_ufollowup: TDateTimeField;
    tbProcessosHora_ufollowup: TStringField;
    tbProcessosData_liberacao: TDateTimeField;
    tbProcessosUrgente: TSmallintField;
    tbProcessosconsolidado: TSmallintField;
    tbProcessosPag_proporcional: TSmallintField;
    tbProcessosDDE: TStringField;
    tbProcessosProcesso_Adm: TStringField;
    tbProcessosProc_Adm_Data_Entrada: TDateTimeField;
    tbProcessosFaturado: TSmallintField;
    tbProcessosFechado: TSmallintField;
    tbProcessosCentro_Custo: TStringField;
    tbProcessosProcurador2: TStringField;
    tbProcessosRCR_LOCAL: TStringField;
    tbProcessosResponsavel_EmpresaC: TStringField;
    tbProcessosvinc_processo: TSmallintField;
    tbProcessosproc_vinc: TStringField;
    qrCentrosCustosCodigo: TStringField;
    qrCentrosCustosDescricao: TStringField;
    qrTipoProcCODIGO: TStringField;
    qrTipoProcDESCRICAO: TStringField;
    qrTipoProcAtivo: TSmallintField;
    qrTipoProcResponsavel_EmpresaC: TStringField;
    qrTipoProcResponsavel_EmpresaO: TStringField;
    qrTipoProcResponsavel_EmpresaF: TStringField;
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
    qrTipoDecCodigo: TStringField;
    qrTipoDecDescricao: TStringField;
    qrContratoContrato: TStringField;
    qrContratoDescricao: TStringField;
    qrContratoAtivo: TSmallintField;
    qrLocalLocal: TStringField;
    qrLocalDescricao: TStringField;
    qrLocalAtivo: TSmallintField;
    qrProcessosEmpresa: TStringField;
    qrProcessosFilial: TStringField;
    qrProcessosCodigo: TStringField;
    qrProcessosData: TDateTimeField;
    qrProcessosCentro_Custo: TStringField;
    qrProcessosvinc_processo: TSmallintField;
    qrProcessosTipo: TStringField;
    qrProcessosImportador: TStringField;
    qrProcessosCodigo_Cliente: TStringField;
    qrProcessosPag_proporcional: TSmallintField;
    qrProcessosTipo_Declaracao: TStringField;
    qrProcessosContrato: TStringField;
    qrProcessosLocal_Inventario: TStringField;
    qrProcessosResponsavel_EmpresaC: TStringField;
    qrProcessosResponsavel_Empresa: TStringField;
    tbProcessosIN_MOEDA_UNICA: TSmallintField;
    tbProcessosQuantidade_LI: TFloatField;
    tbProcessosValor_FOB: TFloatField;
    tbProcessosValor_CIF: TFloatField;
    tbProcessosSaldo_Faturamento: TFloatField;
    tbProcessosValor_FOBC: TFloatField;
    tbProcessosValor_CIFC: TFloatField;
    tbProcessosTR_VAL_FOB_US: TFloatField;
    tbProcessosTR_VAL_CIF_US: TFloatField;
    tbProcessosTR_VAL_II: TFloatField;
    tbProcessosTR_VAL_IPI: TFloatField;
    tbProcessosTR_VAL_PIS: TFloatField;
    tbProcessosTR_VAL_COFINS: TFloatField;
    tbNumeradorEmpresa: TStringField;
    tbNumeradorFilial: TStringField;
    tbNumeradorNumerador_Processos: TStringField;
    q_proc2Codigo: TStringField;
    edtTipo_Urgencia: TDBLookupComboBox;
    qryTipo_Urgencia: TQuery;
    dtsTipo_Urgencia: TDataSource;
    tbProcessosFK_Processos_Tipo_Urgencia: TIntegerField;
    q_follow_insert: TQuery;
    q_CNPJ: TQuery;
    q_CNPJCNPJ_CPF_COMPLETO: TStringField;
    lblRotuloCNPJ: TLabel;
    lblCNPJ: TLabel;
    q_insere_numerarios: TQuery;
    qryEmail_Auto: TQuery;
    btnVerifica: TBitBtn;
    qrProcessosstatus: TStringField;
    qryNumerarioObrigatorio: TQuery;
    qryNumerarioObrigatorioFK_Tipo_Processo: TStringField;
    qryNumerarioObrigatorioFK_Tipo_Declaracao: TStringField;
    qryNumerarioObrigatorioFK_Tipo_Numerario: TStringField;
    qryGravaNumerarioObrigatorio: TQuery;
    qInsereControlePastas: TQuery;
    q_verifica_controle_pasta: TQuery;
    tbProcessosMaterial_Usado: TSmallintField;
    rdgMaterialUsado: TDBRadioGroup;
    qrVerificaContratoJUR: TQuery;
    qrUpdateProcesso: TQuery;
    Label3: TLabel;
    edNumRTC: TEdit;
    tbProcessosNumero_RTC: TStringField;
    qrProcessosNumero_RTC: TStringField;
    procedure ME_nossarefChange(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sb_limpadeclaClick(Sender: TObject);
    procedure sb_limpacontratoClick(Sender: TObject);
    procedure sb_limpalocalClick(Sender: TObject);
    procedure sb_limpatipoClick(Sender: TObject);
    procedure sb_limpaclienteClick(Sender: TObject);
    procedure tbProcessosAfterPost(DataSet: TDataSet);
    procedure tbProcessosBeforeDelete(DataSet: TDataSet);
    procedure dbLcbImportClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure tbProcessosTipoChange(Sender: TField);
    procedure tbProcessosImportadorChange(Sender: TField);
    procedure tbProcessosTipo_DeclaraoChange(Sender: TField);
    procedure tbProcessosContratoChange(Sender: TField);
    procedure btnCancelarClick(Sender: TObject);
    procedure qrImportAfterScroll(DataSet: TDataSet);
    procedure qrContratoAfterScroll(DataSet: TDataSet);
    procedure tbProcessosAfterEdit(DataSet: TDataSet);
    procedure tbProcessosBeforeInsert(DataSet: TDataSet);
    procedure acVerificarTipoExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure qrTipoProcAfterScroll(DataSet: TDataSet);
    procedure tbProcessosAfterScroll(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure qrTipoDecAfterScroll(DataSet: TDataSet);
    procedure dbcb_urgenteClick(Sender: TObject);
    procedure dbLcbImportCloseUp(Sender: TObject);
    procedure btnVerificaClick(Sender: TObject);
    procedure dbLcbTipoProcClick(Sender: TObject);
    procedure dbLcbContratosEnter(Sender: TObject);
  private
    { Private declarations }
    //eduardo.souza 11/07/2011
    Processo : String;
    Operacao : TOperacao;

    function ClienteNaoTemParametroFaturamento : Boolean;
    function verifica: Boolean;
    procedure EnviaEmailAviso;
    procedure IncluiEmailAuto(CodAPL, Titulo, Assunto, Anexo, De, Para, Cco, Cc, Body: String);
  public
    { Public declarations }
  end;

var
  f_abertura: Tf_abertura;
  vEmp, vFil, vtipo: String;
  v_autorizado: Boolean;

implementation

uses U_localizapro, U_MSCOMEX;

{$R *.DFM}

procedure Tf_abertura.ME_nossarefChange(Sender: TObject);
begin
  if Length( F_MSCOMEX.LRTrim( me_nossaref.Text ) ) <> 8
   then Exit;

  Screen.Cursor := crHourGlass;
  {Inicio eduardo.souza 02/06/2011}

  q_CNPJ.Close;
  q_CNPJ.ParamByName('pCodigo').Value := me_nossaref.Text;
  q_CNPJ.Open;

  lblCNPJ.Caption:=q_CNPJCNPJ_CPF_COMPLETO.Value;

  lblRotuloCNPJ.Visible:=True;
  lblCNPJ.Visible:=True;
  qrProcessos.ParamByName( 'Processo' ).Value := me_nossaref.Text;
  qrProcessos.Close;
  qrProcessos.Open;
  {Obs: Que porra é essa, aqui!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!}

  if (not qrProcessos.IsEmpty)
   then begin
     {Fim eduardo.souza 02/06/2011}

     F_MSCOMEX.atualizacpastas(ME_nossaref.text);
     vEmp  := qrProcessosEmpresa.AsString;
     vFil  := qrProcessosFilial.AsString;
     vTipo := qrProcessosTipo.AsString;

     with qrImport do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT *                                   ');
        SQL.Add('  FROM Importadores                        ');
        SQL.Add(' WHERE Empresa = :emp AND Filial = :filial ');
        SQL.Add('ORDER BY Razao_Social                      ');
        Params[0].AsString := vEmp;
        Params[1].AsString := vFil;
        Open;
      end;

     qrContrato.Close;
     qrContrato.Params[0].AsString  := qrImportCodigo.AsString;
     qrContrato.Params[1].asstring  := qrprocessoscontrato.asstring;
     qrContrato.Open;

     qrLocal.Close;
     qrLocal.Params[0].AsString := qrImportCodigo.AsString;
     qrLocal.Params[1].AsString := qrContratoContrato.AsString;
     qrLocal.Params[2].Asstring := qrprocessoslocal_inventario.asstring;
     qrLocal.Open;

     // eduardo.souza 28/04/2011
     edtTipo_Urgencia.Visible := ( tbProcessosFK_Processos_Tipo_Urgencia.AsInteger > 0 );

     if ( edtTipo_Urgencia.Visible )
      then begin
        qryTipo_Urgencia.Close;
        qryTipo_Urgencia.Open;
      end;
     //--

     if qrCentrosCustos.State = dsInactive then qrCentrosCustos.Open;
     if qrTipoProc.State = dsInactive then qrTipoProc.Open;
     if qrTipoDec.State = dsInactive then qrTipoDec.Open;
     if qrimport.State = dsInactive then qrimport.Open;

     if f_mscomex.q_usucli.recordcount > 0
      then begin
        if f_mscomex.q_usucli.locate('Importador',qrimportcodigo.asstring,[])
         then v_autorizadocli := 1
         else begin
           {
            v_versão = 30/05/2011-a
            Autor: Leandro Serra
            Data: 30/05/2011
            Solicitação:  Patricia Mota, Claudia Campos
            Motivo: Erro ao abrir o processo, a tela ficava travada em modo de edição.
           }
           if qrimportcodigo.asstring = 'X111'
            then v_autorizadocli := 1
            else v_autorizadocli := 0;
         end;
      end
      else v_autorizadocli := 1;

     if (v_abreproc = 1)
      then v_autorizado := True
      else begin
        v_autorizado := False;
        showmessage(v_usuario+', ATENÇÃO! Acesso não permitido à processos sob Responsabilidade de Oper.'+qrProcessosResponsavel_Empresa.AsString);//+' - Comer.'+qrProcessosResponsavel_Empresac.AsString);
      end;

     if v_abreproc = 1
      then btnIncluir.Enabled := true
      else btnIncluir.Enabled := false;

     btnExcluir.Enabled := false;
     btnAlterar.Enabled := v_autorizado;

     pnlBaixo.Visible := v_autorizado;

     acVerificarTipo.Execute;

     F_MSCOMEX.atualizacpastas(ME_nossaref.text);

     if (v_autorizadocli = 1)
      then begin
        pnlPrincipal.Visible := True;
        pnlBaixo.Visible     := True;
      end
      else begin
        pnlPrincipal.Visible := False;
        pnlBaixo.Visible := False;
        Showmessage(v_usuario+', este Processo pertence a um Cliente que seu acesso não está permitido!');
      end;

     if (not qrimportAtivo.asinteger = 1) and (not tbprocessosimportador.IsNull)
      then begin
        Showmessage(v_usuario+', este Cliente está Inativo. Somente usuários habilitados em editar clientes inativos poderão alterar as informações do processo.');
        pnlBaixo.Visible := False;

        if (v_Edita_cliente_inativo = 1)
         then pnlBaixo.Visible := True;
      end;

     if (tbProcessosFechado.asinteger = 1)
      then begin
        Showmessage(v_usuario+', este Processo está Fechado. Somente usuários habilitados em editar processos fechados poderão alterar as informações do processo.');
        pnlBaixo.Visible := False;

        if (v_Edita_Processo_Fechado = 1)
         then pnlBaixo.Visible := True;
      end;

     dbCbPag.Visible := (qrtipodeccodigo.AsString = '12');
   end
   else begin
     MessageDlg('Processo não cadastrado!', mtInformation, [mbOk], 0);
     me_nossaref.Clear;
     pnlPrincipal.Visible := False;

     if v_abreproc = 1
      then pnlBaixo.Visible := true
      else pnlBaixo.Visible := false;

     if (v_abreproc = 1)
      then begin
        btnAlterar.Enabled := False;
        btnExcluir.Enabled := False;
      end;

     me_nossaref.SetFocus;
   end;

  //eduardo.souza 01/02/2012 - Para processos fechados - Exibi mensagem e fecha a tela
  if (IsClosedProcess(me_nossaref.Text, f_abertura))
   then begin
     pnlBaixo.Visible     := false;
     btnLocalizar.Enabled := false;
   end;
  //--

  Screen.Cursor := crDefault;
end;

procedure Tf_abertura.btnIncluirClick(Sender: TObject);
var
  v_num : Integer;
  v_numt : String;
  qsql : string;
begin
  if MessageDlg('Confirma Inclusão de um novo Processo?' +v_numt, mtConfirmation, [mbYes, mbNo], 0) = mrNo
   then Exit;

  tbNumerador.Open;
  v_num  := (StrToInt(Copy(tbNumeradorNumerador_Processos.AsString,1,5))+1);
  v_numt := '00000'+IntToStr(v_num);
  v_numt := Copy(v_numt,Length(v_numt)-4,5)+Copy(tbNumeradorNumerador_Processos.AsString,6,3);

  try
    while tbProcessos.FindKey([vEmp,vFil,v_numt]) do
     begin
       v_num  := (StrToInt(Copy(tbNumeradorNumerador_Processos.AsString,1,5))+1);
       v_numt := '00000'+IntToStr(v_num);
       v_numt := Copy(v_numt,Length(v_numt)-4,5)+Copy(tbNumeradorNumerador_Processos.AsString,6,3);
     end;

    tbProcessos.Append;
    tbProcessosEmpresa.AsString       := tbNumeradorEmpresa.AsString;
    tbProcessosFilial.AsString        := tbNumeradorFilial.AsString;
    tbProcessosCodigo.AsString        := v_numt;
    tbProcessosData.AsDateTime        := Date();
    tbProcessosCOD_SIT.AsString       := '1';
    tbProcessosStatus.AsString        := '0';
    tbProcessosCentro_Custo.AsString  := v_filial;

    tbProcessos.Post;
    tbprocessos.ApplyUpdates;
  except
    // Faz nada
  end;

  tbNumerador.Edit;
  tbNumeradorNumerador_Processos.AsString := v_numt;
  tbNumerador.Post;

  tbNumerador.Close;

  ME_nossaref.Text := v_numt;

  qrImport.Close;

  with qrImport do
   begin
     Close;
     SQL.Clear;
     SQL.Add('SELECT *                                                     ');
     SQL.Add('  FROM Importadores                                          ');
     SQL.Add(' WHERE Ativo = ''1'' AND Empresa = :emp AND Filial = :filial ');
     SQL.Add('ORDER BY Razao_Social                                        ');
     Params[0].AsString := vEmp;
     Params[1].AsString := vFil;
     Open;
   end;

  qrContrato.Close;
  qrContrato.Params[0].AsString  := qrImportCodigo.AsString;
  qrContrato.Params[1].asstring  := '';
  qrContrato.Open;

  qrLocal.Close;
  qrLocal.Params[0].AsString := qrImportCodigo.AsString;
  qrLocal.Params[1].AsString := qrContratoContrato.AsString;
  qrLocal.Params[2].Asstring := '';
  qrLocal.Open;

  // Follow Automático eduardo.souza 11/07/2011
  if ( Not F_MSCOMEX.IncluiFollow(tbProcessoscodigo.AsString, '412','0', '', v_usuario, Date, Now))
   then Application.MessageBox('Não foi possível incluir o Follow Automático de Abertura','Aviso', MB_OK+MB_ICONWARNING);

  // Tomar cuidado com a merda abaixo
  btnAlterar.Click;
  // ---
end;

procedure Tf_abertura.btnLocalizarClick(Sender: TObject);
begin
  if not Assigned(F_localizapro)
   then Application.CreateForm(TF_localizapro, F_localizapro)
   else f_localizapro.Show;
end;

procedure Tf_abertura.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  f_mscomex.Abertura1.Enabled := True;
  f_abertura := Nil;
  Action := caFree;
end;

procedure Tf_abertura.sb_limpadeclaClick(Sender: TObject);
begin
  tbProcessosTipo_Declaracao.AsString := '';
end;

procedure Tf_abertura.sb_limpacontratoClick(Sender: TObject);
begin
  tbProcessosContrato.AsString         := '';
  tbProcessosLocal_Inventario.AsString := '';
end;

procedure Tf_abertura.sb_limpalocalClick(Sender: TObject);
begin
  tbProcessosLocal_Inventario.AsString := '';
end;

procedure Tf_abertura.sb_limpatipoClick(Sender: TObject);
begin
  tbProcessosTipo.AsString := '';
end;

procedure Tf_abertura.sb_limpaclienteClick(Sender: TObject);
begin
  tbProcessosImportador.AsString       := '';
  tbProcessosContrato.AsString         := '';
  tbProcessosLocal_Inventario.AsString := '';
end;

procedure Tf_abertura.tbProcessosAfterPost(DataSet: TDataSet);
begin
  logusu('P','Alterou Processo: '+ tbProcessosCodigo.AsString);
end;

procedure Tf_abertura.tbProcessosBeforeDelete(DataSet: TDataSet);
begin
  logusu('E','Excluiu Processo: '+ tbProcessosCodigo.AsString);
end;

procedure Tf_abertura.dbLcbImportClick(Sender: TObject);
var qimpor, cnpj: String;
begin
  cnpj := qrImportCNPJ_CPF_COMPLETO.AsString;
  cnpj := Copy(cnpj,1,2)+'.'+Copy(cnpj,3,3)+'.'+Copy(cnpj,6,3)+'/'+Copy(cnpj,9,4)+'-'+Copy(cnpj,13,2);
  
  qimpor := 'Importador: ' + qrImportRazao_Social.AsString +#13#10
          + 'CNPJ: '       + cnpj +#13#10
          + 'Endereço: '   + qrImportEndereco.AsString +', '+ qrImportNumero.AsString +' - '+ qrImportComplemento.AsString +#13#10
          + 'Bairro: '     + qrImportBairro.AsString +#13#10
          + 'Cidade: '     + qrImportCidade.AsString +#13#10
          + 'Estado: '     + qrImportEstado.AsString +#13#10;

  ShowMessage(qimpor);
  dbcb_urgente.Enabled := ( dbLcbImport.Text <> '' );
  dbcb_urgente.Checked := False;
end;

procedure Tf_abertura.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if tbProcessos.State in [dsEdit]
   then begin
     MessageDlg('O Processo está em edição!', mtWarning, [mbOk], 0);
     CanClose := False;
   end
   else CanClose := True;
end;

procedure Tf_abertura.btnSalvarClick(Sender: TObject);
begin
  {Leandro Serra 20/10/2011 Ticket 802}
  if ((dbLcbTipoProc.Text = 'Reexportação') or (qrTipoProcCODIGO.AsString = '22')) or
     ((dbLcbTipoProc.Text = 'Transferência de Regime - Bem Principal') or (qrTipoProcCODIGO.AsString = '6A'))
   then begin
     if (Trim(dbLcbContratos.Text) = '') or (dbLcbContratos.Text = 'SEM CONTRATO')
      then begin
        Application.MessageBox( 'Por favor, para Tipo de Processo Reexportação OU Transferência de Regime - Bem Principal informe o Contrato.','Aviso', MB_OK+MB_ICONWARNING );
        Exit;
      end;

     if( Trim( dbLcbLocais.Text ) = '' )
      then begin
        Application.MessageBox( 'Por favor, para Tipo de Processo Reexportação ou Transferência de Regime - Bem Principal informe o Local de Inventário.','Aviso', MB_OK+MB_ICONWARNING );
        Exit;
      end;
   end;

  //eduardo.souza 28/04/2011
  if (edtTipo_Urgencia.Visible) and (edtTipo_Urgencia.Text = '')
   then begin
     MessageDlg('Selecione um tipo de urgência para o processo!', mtWarning, [mbOk], 0);
     edtTipo_Urgencia.SetFocus;
     Exit;
   end;

  if (edtTipo_Urgencia.Visible) and (edtTipo_Urgencia.Text <> '')
   then begin
     tbProcessos.Edit;
     tbProcessosFK_Processos_Tipo_Urgencia.AsInteger := qryTipo_Urgencia.FieldValues[ 'PK_Tipo_Urgencia' ];
     tbProcessos.Post;
   end;

  if tbProcessosImportador.AsString = ''
   then begin
     MessageDlg('Selecione um cliente para o processo!', mtWarning, [mbOk], 0);
     dbLcbImport.SetFocus;
     Exit;
   end;

  if (not qrimportAtivo.asinteger = 1) and (not tbprocessosimportador.IsNull)
   then begin
     if (not v_Edita_cliente_inativo = 1)
      then begin
        Showmessage(v_usuario+', este Cliente está Inativo. Somente usuários habilitados em editar clientes inativos poderão alterar as informações do processo.');
        dbLcbImport.SetFocus;
        Exit;
      end;
   end;

  if (tbprocessosvinc_processo.asinteger = 1) and (edit1.text = '')
   then begin
     Showmessage(v_usuario+', favor informar o processo vinculado.');
     edit1.SetFocus;
     Exit;
   end;

  //eduardo.souza 11/07/2011 - solicitado por Odilma do operacional
  //Quando o tipo selecionado for admissão temporaria o usuário deve informar obrigatóriamente o contrato e local.
  if (Trim(dbLcbTipoDec.Text) = 'ADMISSAO TEMPORARIA')
   then begin
     if (Trim(dbLcbContratos.Text) = '')
      then begin
        Application.MessageBox( 'Tipo de declaração igual a "Admissão Temporária", o campo contrato não pode ser vazio','Aviso', MB_OK+MB_ICONWARNING );
        Exit;
      end
      else if( Trim( dbLcbLocais.Text ) = '' )
            then Begin
              Application.MessageBox( 'Tipo de declaração igual a "Admissão Temporária", o campo local de inventário não pode ser vazio','Aviso', MB_OK+MB_ICONWARNING );
              Exit;
            end;
   end;
  //fim 11/07/2011

  // Leonardo.alabarce 16/02/2012 - Ticket 1935
  if (dbLcbTipoProc.Text = 'Exportação Fícta') or (qrTipoProcCODIGO.AsString = '23')
   then begin
     if ( Trim( dbLcbContratos.Text ) = '' )
      then begin
        Application.MessageBox( 'Por favor, para Tipo de Processo Exportação Fícta informe o Contrato.','Aviso', MB_OK+MB_ICONWARNING );
        Exit;
      end;

     if( Trim( dbLcbLocais.Text ) = '' )
      then begin
        Application.MessageBox( 'Por favor, para Tipo de Processo Exportação Fícta informe o Local de Inventário.','Aviso', MB_OK+MB_ICONWARNING );
        Exit;
      end;
   end;
  //Fim---------------------------------------------------------------

  // Leonardo.alabarce 05/10/2011 - Ticket 740
  if (Trim( dbLcbTipoDec.Text ) = 'ADMISSAO TEMPORARIA')
   then begin
     if ((qrContratoDescricao.AsString = 'S/CONTRATO') or (qrContratoDescricao.AsString = 'SEM CONTRATO')or (qrLocalDescricao.AsString ='SEM CONTRATO')or(qrLocalDescricao.AsString ='S/LOCAL DE INVENTÁRIO')or (qrLocalDescricao.AsString ='SEM LOCAL DE INVENTÁRIO'))
      then Begin
        MessageDlg('Para o Contrato de admissão temporária, Informe o Contrato e/ou Local de inventário.', mtWarning, [mbOk], 0);
        dbLcbContratos.setfocus;
        dbLcbLocais.setfocus;
        Exit;
      end;
   end;
  // Fim - leonardo.alabarce

  //Leonardo.alabarce 18/08/2011 - solicitado por Odilma do operacional
  //Quando o tipo selecionado for RMBR - Autorização para Movimentação de Bem Admitido no REPETRO o usuário deve informar obrigatóriamente o contrato e local.
  if ( qrTipoProcCODIGO.AsString = 'RM' )
   then begin
     if ( Trim( dbLcbContratos.Text ) = '' )
      then begin
        Application.MessageBox( 'Tipo de Processo igual a "RMBR - Autorização para Movimentação de Bem Admitido no REPETRO", o campo contrato não pode ser vazio','Aviso', MB_OK+MB_ICONWARNING );
        Exit;
      end
      else if( Trim( dbLcbLocais.Text ) = '' )
            then begin
              Application.MessageBox( 'Tipo de Processo igual a "RMBR - Autorização para Movimentação de Bem Admitido no REPETRO", o campo local de inventário não pode ser vazio','Aviso', MB_OK+MB_ICONWARNING );
              Exit;
            end;
   end;

  //Quando o tipo selecionado for PAD - Pedido de Autorização de Desembarque o usuário deve informar obrigatóriamente o contrato e local.
  if ( qrTipoProcCODIGO.AsString = 'PD' )
   then begin
     if ( Trim( dbLcbContratos.Text ) = '' )
      then begin
        Application.MessageBox( 'Tipo de Processo igual a "PAD - Pedido de Autorização de Desembarque", o campo contrato não pode ser vazio','Aviso', MB_OK+MB_ICONWARNING );
        Exit;
      end
      else if( Trim( dbLcbLocais.Text ) = '' )
            then begin
              Application.MessageBox( 'Tipo de Processo igual a "PAD - Pedido de Autorização de Desembarque", o campo local de inventário não pode ser vazio','Aviso', MB_OK+MB_ICONWARNING );
              Exit;
            end;
   end;
  //fim 18/08/2011------------------------------------------------------------------------

  if (not tbprocessosvinc_processo.asinteger = 1) and (tbprocessosproc_vinc.asstring <> '')
   then begin
     if MessageDlg(v_usuario+', ATENÇÃO! este processo será desvinculado e todas as faturas e itens serão excluídos!! CONFIRMA?', mtConfirmation, [mbYes, mbNo], 0) = mrNo
      then Exit;

     logusu('P','Confirmou desvinculação e exclusão de todas as faturas e itens do processo: '+ tbProcessosCodigo.AsString );

     //excluir faturas, itens e tributação
     q_vincdel1.Params[0].asstring := tbprocessoscodigo.asstring;
     q_vincdel1.ExecSQL;
     q_vincdel2.Params[0].asstring := tbprocessoscodigo.asstring;
     q_vincdel2.ExecSQL;
     q_vincdel3.Params[0].asstring := tbprocessoscodigo.asstring;
     q_vincdel3.ExecSQL;

     tbProcessos.Edit;
     tbprocessosvinc_processo.asinteger := 0;
     tbProcessosproc_vinc.asstring :='';
     tbProcessos.Post;
   end;

  tbProcessos.Edit;
  //Leandro Serra 21/09/2011 - Solicitado por Odilma
  //Quando o Tipo de Processo for Prorrogação de TR (8) ou Baixa de TR (BT)
  //Não Obrigar informar o Tipo de Declaração
  //Obs: Verificar se o APEN irá cobrar está ressalva

  if (qrProcessosTipo.Value = '8') or (qrProcessosTipo.Value = 'BT')
   then begin
     if dbLcbTipoDec.KeyValue = '00'
      then tbProcessosTipo_Declaracao.value := '00';

     dbLcbTipoDec.Enabled  :=false;
     sb_limpadecla.Enabled :=false;
   end;

  if (Trim(edNumRTC.Text) = '')
   then tbProcessosNumero_RTC.AsString := ''
   else tbProcessosNumero_RTC.AsString := edNumRTC.Text;

  tbProcessos.Post;
  //Fim 21/09/2011

  f_mscomex.MSPGP(tbProcessoscodigo.asstring);

  if (ClienteNaoTemParametroFaturamento)
   then EnviaEmailAviso;

  //alterei para DSI
  if vTipo <> tbProcessosTipo.AsString
   then begin
     tbProcessos.Edit;
     tbProcessostx_info_compl.Clear;
     tbProcessos.Post;
     q_deltrib.params[0].asstring := tbProcessoscodigo.AsString;
     q_deltrib.execsql;
     q_upitens.params[0].asstring := tbProcessoscodigo.AsString;
     q_upitens.execsql;
     logusu('P','Alterou Tipo de Processo: '+ tbProcessosCodigo.AsString + ', foram excluídas as tributações.');
   end;

  pnlTop.Enabled       := True;
  pnlPrincipal.Enabled := False;

  if v_abreproc = 1
   then btnIncluir.Enabled := true
   else btnIncluir.Enabled := false;

  btnAlterar.Enabled  := v_autorizado;
  btnExcluir.Enabled  := false;
  btnSalvar.Enabled   := False;
  btnCancelar.Enabled := False;

  qrContrato.Close;
  qrContrato.Params[0].AsString := qrImportCodigo.AsString;
  qrContrato.Params[1].asstring := qrprocessoscontrato.asstring;
  qrContrato.Open;

  qrLocal.Close;
  qrLocal.Params[0].AsString := qrImportCodigo.AsString;
  qrLocal.Params[1].AsString := qrContratoContrato.AsString;
  qrLocal.Params[2].Asstring := qrprocessoslocal_inventario.asstring;
  qrLocal.Open;
  tbProcessos.CommitUpdates;

  // Incio Eduardo Souza - 26/03/2012 - Ticket : 1773
  {$IFDEF TestTicket_1773}
  qryNumerarioObrigatorio.Close;
  qryNumerarioObrigatorio.ParamByName( 'tpProcesso' ).Value := dbLcbTipoProc.KeyValue;

  if ( trim(dbLcbTipoDec.text) = '' )
   then qryNumerarioObrigatorio.ParamByName( 'tpDeclaracao' ).Value := ''
   else qryNumerarioObrigatorio.ParamByName( 'tpDeclaracao' ).Value := dbLcbTipoDec.KeyValue;

  qryNumerarioObrigatorio.ParamByName( 'Processo' ).Value := qrProcessosCodigo.AsString;
  qryNumerarioObrigatorio.Open;

  while not( qryNumerarioObrigatorio.Eof ) do
   begin
     qryGravaNumerarioObrigatorio.ParamByName( 'numerario' ).Value := qryNumerarioObrigatorioFK_Tipo_Numerario.AsString;
     qryGravaNumerarioObrigatorio.ParamByName( 'processo' ).Value := qrProcessosCodigo.AsString;
     qryGravaNumerarioObrigatorio.ExecSQL;
     qryNumerarioObrigatorio.Next;
   end;

  qryNumerarioObrigatorio.Close;

  {$ELSE}
  {Numerários Padrão - Leandro Serra 11/08/2011 }
  with q_insere_numerarios do
   begin
     Close;
     SQL.Clear;
     SQL.add('INSERT INTO [Numerarios_Processos]([Empresa],[Filial],[Processo],[Numerario])');
     SQL.add(' select Empresa, Filial, "'+ ME_nossaref.text +'", Codigo from Tipos_Numerario where');
     SQL.add(' Codigo in ("II","IPI","TAXA","PP","CF","ICMS","FECP", "FRET", "MAR", "DEM", "LIBE",');
     SQL.add(' "ARMZ", "CAP","MUL","LT","FM" )');
     ExecSQL;
   end;
  {$ENDIF}

  //Fim Eduardo Souza - 26/03/2012 - Ticket : 1773

  if qrContratoContrato.asstring = 'AD'
   then begin
     with qrVerificaContratoJUR do
      begin
        Close;
        ParamByName('imp').AsString  := tbProcessosImportador.Value;
        ParamByName('cont').AsString := tbProcessosContrato.Value;
        Open;
      end;

     if qrVerificaContratoJUR.recordcount = 0
      then begin
        with qrUpdateProcesso do
         begin
           Close;
           ParamByName('qrProc').Value :=ME_nossaref.text;
           ExecSQL;
         end;

        showmessage('Este processo não pode utilizar Contratos Jurídico.Favor Recadastrar o Contrato.');
        qrProcessos.Close;
        qrProcessos.Open;
      end;
   end;

  {Insere o Processo e o usuário que abriu na controle de pastas Leandro Serra 27/03/2012}
  {Verifica se é a primeira vez na Abertura}
  with q_verifica_controle_pasta do
   begin
     Close;
     ParamByName('pPROCESSO').AsString := ME_nossaref.TEXT;
     Open;
   end;

  if q_verifica_controle_pasta.RecordCount = 0
   then begin
     with qInsereControlePastas do
      begin
        Close;
        ParamByName('pPROCESSO').AsString := ME_nossaref.TEXT;
        ParamByName('pUSUSARIO').AsString := v_usuario;
        ExecSQL;
      end;
   end;

  q_verifica_controle_pasta.close;
  {Fim}
end;

procedure Tf_abertura.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Confirma Exclusão deste Processo?', mtConfirmation, [mbYes, mbNo], 0) = mrNo
   then Exit;

  tbProcessos.Delete;
  ME_nossaref.Clear;
end;

procedure Tf_abertura.FormCreate(Sender: TObject);
begin
  if v_abreproc = 1
   then pnlBaixo.Visible := true
   else pnlBaixo.Visible := false;

  tbProcessos.Open;
end;

procedure Tf_abertura.btnAlterarClick(Sender: TObject);
begin
  pnlTop.Enabled       := False;
  pnlPrincipal.Enabled := True;

  btnIncluir.Enabled  := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnSalvar.Enabled   := True;
  btnCancelar.Enabled := True;

  with qrImport do
   begin
     Close;
     SQL.Clear;
     SQL.Add('SELECT *                                                     ');
     SQL.Add('  FROM Importadores                                          ');
     SQL.Add(' WHERE Ativo = ''1'' AND Empresa = :emp AND Filial = :filial ');
     SQL.Add('ORDER BY Razao_Social                                        ');
     Params[0].AsString := vEmp;
     Params[1].AsString := vFil;
     Open;
   end;

  tbProcessos.Edit;
  //dbEdtData.Enabled := v_abreproc;
  //eduardo.souza 11/07/2011
  dbEdtData.Enabled := false;
  //fim eduardo.souza

  if v_abreproc = 1
   then dblcbCentrosCustos.Enabled := true
   else dblcbCentrosCustos.Enabled := false;

  if v_abreproc = 1
   then dbLcbTipoProc.Enabled := true
   else dbLcbTipoProc.Enabled := false;

  if v_abreproc = 1
   then sb_limpatipo.Enabled := true
   else sb_limpatipo.Enabled := false;

  if v_abreproc = 1
   then dbLcbImport.Enabled := true
   else dbLcbImport.Enabled := false;

  if v_abreproc = 1
   then sb_limpacliente.Enabled := true
   else sb_limpacliente.Enabled := false;

  if (v_abreproc = 1)
   then //dbEdtData.SetFocus; eduardo.souza 11/07/2011
   else begin
     if dbLcbTipoDec.enabled
      then dbLcbTipoDec.SetFocus;
   end;

  //Leandro Serra 21/09/2011 - Solicitado por Odilma
  //Quando o Tipo de Processo for Prorrogação de TR (8) ou Baixa de TR (BT)
  //Não Obrigar informar o Tipo de Declaração
  //Obs: Verificar se o APEN irá cobrar está ressalva
  if (qrProcessosTipo.Value = '8') or (qrProcessosTipo.Value = 'BT')
   then begin
     dbLcbTipoDec.Enabled  := true;
     sb_limpadecla.Enabled := true;
     dbLcbTipoDec.KeyValue := -1;
   end
   else begin
     dbLcbTipoDec.Enabled  := false;
     sb_limpadecla.Enabled := false;
   end;
  //Fim 21/09/2011
  //Leandro Serra - 23/09/2011 Ticket 614
  {Permitido alteração somente para Coordenadores}

  if (v_usuario = 'NATASHA' ) or (v_usuario = 'LFERRAZ') or (v_usuario = 'ODILMA') or
     (v_usuario = 'FERREIRA') or (v_usuario = 'ANDRE'  )
   then begin
     dbLcbTipoDec.Enabled :=True;
     sb_limpadecla.Enabled :=True;
   end;
  //Fim Tickcet614
end;

procedure Tf_abertura.tbProcessosTipoChange(Sender: TField);
begin
  if not (tbProcessos.State in [dsInsert, dsEdit])
   then Exit;

  acVerificarTipo.Execute;
end;

procedure Tf_abertura.tbProcessosImportadorChange(Sender: TField);
begin
  if not (tbProcessos.State in [dsInsert, dsEdit])
   then Exit;

  tbProcessosContrato.AsString         := '';
  tbProcessosLocal_Inventario.AsString := '';

  if tbProcessosImportador.AsString = ''
   then qrContrato.Close;
end;

procedure Tf_abertura.tbProcessosTipo_DeclaraoChange(Sender: TField);
begin
  dbCbPag.Visible := (qrtipodeccodigo.AsString = '12');

  if not (tbProcessos.State in [dsInsert, dsEdit])
   then Exit;

  tbProcessosPag_proporcional.AsBoolean := False;
end;

procedure Tf_abertura.tbProcessosContratoChange(Sender: TField);
begin
  if not (tbProcessos.State in [dsInsert, dsEdit])
   then Exit;

  sb_limpalocal.Click;
  
  if tbProcessosContrato.AsString = ''
   then qrLocal.Close;
end;

procedure Tf_abertura.btnCancelarClick(Sender: TObject);
begin
  pnlTop.Enabled       := True;
  pnlPrincipal.Enabled := False;

  if v_abreproc = 1
   then btnIncluir.Enabled := true
   else btnIncluir.Enabled := false;

  btnAlterar.Enabled := v_autorizado;

  if v_abreproc = 1
   then btnExcluir.Enabled := true
   else btnExcluir.Enabled := false;

  btnSalvar.Enabled   := False;
  btnCancelar.Enabled := False;

  tbProcessos.Cancel;
  acVerificarTipo.Execute;
end;

procedure Tf_abertura.btnVerificaClick(Sender: TObject);
begin
  // Leonardo.alabarce  08/12/2011 - ticket 1140
  if verifica
   then MessageDlg('A Referência Cliente está cadastrado no processo: '+ Processo +'', mtWarning, [mbOk], 0)
   else MessageDlg('A Referência Cliente não está cadastrada', mtWarning, [mbOk], 0);

  //fim------------------------------------
end;

procedure Tf_abertura.qrImportAfterScroll(DataSet: TDataSet);
begin
  if tbProcessosImportador.AsString <> ''
   then begin
     qrContrato.Close;
     qrContrato.Params[0].AsString := tbProcessosImportador.AsString;
     qrContrato.Params[1].asstring := tbProcessoscontrato.asstring;
     qrContrato.Open;

     qrLocal.Close;
     qrLocal.Params[0].AsString := tbProcessosImportador.AsString;
     qrLocal.Params[1].AsString := tbProcessosContrato.AsString;
     qrLocal.Params[2].Asstring := tbProcessoslocal_inventario.asstring;
     qrLocal.Open;
   end;
end;

procedure Tf_abertura.qrContratoAfterScroll(DataSet: TDataSet);
begin
  if tbProcessosContrato.AsString = ''
   then Exit;

  qrLocal.Close;
  qrLocal.Params[0].AsString := tbProcessosImportador.AsString;
  qrLocal.Params[1].AsString := qrContratoContrato.AsString;
  qrLocal.Params[2].Asstring := qrprocessoslocal_inventario.asstring;
  qrLocal.Open;
end;

procedure Tf_abertura.tbProcessosAfterEdit(DataSet: TDataSet);
begin
  if v_abreproc = 1
   then begin
     dbLcbTipoProc.Enabled   := true;
     sb_limpatipo.Enabled    := true;
     dbLcbImport.Enabled     := true;
     sb_limpacliente.Enabled := true;
     dbEdtRefCli.Enabled     := true;
   end
   else begin
     dbEdtData.Enabled       := false;
     dbLcbTipoProc.Enabled   := false;
     sb_limpatipo.Enabled    := false;
     dbLcbImport.Enabled     := false;
     sb_limpacliente.Enabled := false;
     dbEdtRefCli.Enabled     := false;
   end;

  dbcb_urgente.Enabled     := v_autorizado;
  dbLcbContratos.Enabled   := v_autorizado;
  sb_limpacontrato.Enabled := v_autorizado;
  dbLcbLocais.Enabled      := v_autorizado;
  sb_limpalocal.Enabled    := v_autorizado;
end;

procedure Tf_abertura.tbProcessosBeforeInsert(DataSet: TDataSet);
begin
  logusu('I','Incluiu Processo: '+ tbProcessosCodigo.AsString);
end;

procedure Tf_abertura.acVerificarTipoExecute(Sender: TObject);
begin
  if ((tbProcessosTipo.AsString = '1')  or
      (tbProcessosTipo.AsString = '11') or
      (tbProcessosTipo.AsString = '12') or
      (tbProcessosTipo.AsString = '13') or
      (tbProcessosTipo.AsString = '16') or
      (tbProcessosTipo.AsString = '17') or
      (tbProcessosTipo.AsString = '18') or
      (tbProcessosTipo.AsString = '6')  or
      (tbProcessosTipo.AsString = 'NC') or
      (tbProcessosTipo.AsString = '5')  or
      (tbProcessosTipo.AsString = '9')  or
      (tbProcessosTipo.AsString = '19') or
      (tbProcessosTipo.AsString = 'TT') or
      (tbProcessosTipo.AsString = 'IT') or
      (tbProcessosTipo.AsString = 'IB'))
   then begin
     //colocado 'NC' em 12/12/2005 Odilma/Flayber
     //colocado '5'  destruição 30/05/2006 Odilma/Jorge
     //colocado 'TT'  transferencia de titularidade 26112008 Odilma/Tatiana
     dbLcbTipoDec.Enabled := True;
     sb_limpadecla.Enabled := True;

     if not (tbProcessos.State in [dsInsert, dsEdit])
      then
      else begin
        dbLcbTipoDec.Enabled  := False;
        sb_limpadecla.Enabled := False;

        if not (tbProcessos.State in [dsInsert, dsEdit])
         then Exit;

        sb_limpadecla.Click;
      end;

     if v_abreproc = 1
      then dblcbCentrosCustos.Enabled := true
      else dblcbCentrosCustos.Enabled := false;
   end;
end;   

procedure Tf_abertura.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_abertura.qrTipoProcAfterScroll(DataSet: TDataSet);
begin
  p_vinc.Visible := false;

  //importaçao fícta
  if tbprocessostipo.asstring = '19'
   then p_vinc.Visible := true;

  //Transferência de Titularidade
  if tbprocessostipo.asstring = 'TT'
   then p_vinc.Visible := true;

  //Transferência de Regime
  if tbprocessostipo.asstring = '6'
   then p_vinc.Visible := true;

  //Nacionalização
  if tbprocessostipo.asstring = 'NC'
   then p_vinc.Visible := true;

  {Leandro Serra - 20/10/2011 Ticket 802}

  //Reexportação
  if tbprocessostipo.asstring = '22'
   then p_vinc.Visible := true;

  //Baixa de TR
  if tbprocessostipo.asstring = 'BT'
   then p_vinc.Visible := true;

  //eduardo.souza 28/10/2011 - solicitado por Odilma

  //Prorrogação de TR
  if tbprocessostipo.asstring = '8'
   then p_vinc.Visible := true;
  //--

  {Leandro Serra - 03/11/2011
  A linha abaixo estava cancelando o código acima
  Comentei com a Sra. Odilma e ela sugeriu retirar
  if tbprocessosnr_declaracao_imp.asstring <> '' then p_vinc.Visible := false;}
  
  if not p_vinc.Visible
   then begin
     if tbprocessosvinc_processo.asinteger <> 0
      then begin
        tbProcessos.Edit;
        tbprocessosvinc_processo.asinteger := 0;
        tbProcessos.Post;
        tbProcessos.ApplyUpdates;
      end;
   end;

  dbLcbTipoDec.Enabled := True;
end;

procedure Tf_abertura.tbProcessosAfterScroll(DataSet: TDataSet);
begin
  edit1.Text    := tbprocessosproc_vinc.asstring;
  edNumRTC.Text := tbprocessosNumero_RTC.asstring;
end;

procedure Tf_abertura.BitBtn1Click(Sender: TObject);
var
  CopiouFatura : Boolean;
begin
  CopiouFatura := False;

  q_proc2.Params[0].asstring := edit1.Text;
  q_proc2.Open;

  if q_proc2.RecordCount > 0
   then begin
     if MessageDlg(v_usuario+', ATENÇÃO! este processo será vinculado, as atuais faturas serão excluídas e as faturas serão copiadas do processo vinculado! CONFIRMA?', mtConfirmation, [mbYes, mbNo], 0) = mrNo
      then Exit;

     logusu('P','Confirmou vinculação e exclusão de todas as faturas e itens do processo: '+ tbProcessosCodigo.AsString );

     //excluir faturas, itens e tributação
     if ((qrProcessosTipo.AsString <> '27') and  (qrProcessosTipo.AsString <> '29') and (qrProcessosTipo.AsString <> '8') and
         (qrProcessosTipo.AsString <> 'PP') and  (qrProcessosTipo.AsString <> '28') and (qrProcessosTipo.AsString <> 'BP') and
         (qrProcessosTipo.AsString <> 'PR') and  (qrProcessosTipo.AsString <> 'BF') and (qrProcessosTipo.AsString <> 'BT'))
      then begin
        q_vincdel1.Params[0].asstring := tbprocessoscodigo.asstring;
        q_vincdel1.ExecSQL;
        q_vincdel2.Params[0].asstring := tbprocessoscodigo.asstring;
        q_vincdel2.ExecSQL;
        q_vincdel3.Params[0].asstring := tbprocessoscodigo.asstring;
        q_vincdel3.ExecSQL;

        {4013 -  Leandro Serra 09/01/2013
         Quando a pasta for prorrogação ou baixa a vinculação deverá ser sem copiar a fatura no caso o usuário deve selecionar NÃO
         SIM = Não copiar as faturas
         NÃO = Copiar as faturas}
        if MessageDlg(v_usuario+', ATENÇÃO! Esta pasta é de Prorrogação ou Baixa? Se SIM, não copia as faturas. Se NÃO, será copiada as faturas.', mtConfirmation, [mbYes, mbNo], 0) = mrNo
         then begin
           CopiouFatura := True;

           q_vincinc1.Params[0].asstring := tbprocessoscodigo.asstring;
           q_vincinc1.Params[1].asstring := edit1.text;
           q_vincinc1.ExecSQL;
           
           q_vincinc2.Params[0].asstring := tbprocessoscodigo.asstring;
           q_vincinc2.Params[1].asstring := edit1.text;
           q_vincinc2.ExecSQL;
         end;
      end;

     tbProcessos.Edit;
     tbprocessosvinc_processo.asinteger := 1;
     tbProcessosproc_vinc.asstring := edit1.text;
     tbProcessos.Post;

     if CopiouFatura
      then showmessage(v_usuario+', as faturas foram copiadas. ATENÇÃO! deverão ser informados os EXPORTADORES nas faturas!')
      else Showmessage(v_usuario+', o processo foi vinculado sem copiar a fatura.');
   end
   else begin
     MessageDlg(v_usuario+', Processo vinculado não foi localizado!', mtInformation, [mbOk], 0);
     edit1.Clear;
     edit1.SetFocus;
   end;

  q_proc2.Close;
end;

procedure Tf_abertura.qrTipoDecAfterScroll(DataSet: TDataSet);
begin
  if (qrtipodeccodigo.AsString <> '12')
   then begin
     dbCbPag.Visible := true;
     dbCbPag.checked := false;
   end;

  dbCbPag.Visible := (qrtipodeccodigo.AsString = '12');
end;

procedure Tf_abertura.dbcb_urgenteClick(Sender: TObject);
begin
  if dbcb_urgente.Checked
   then begin
     edtTipo_Urgencia.Visible := True;
     qryTipo_Urgencia.Close;
     qryTipo_Urgencia.Open;
   end
   else Begin
     if ( qryTipo_Urgencia.Active )
      then qryTipo_Urgencia.Close;

     edtTipo_Urgencia.Visible := False;
   end;
end;

procedure Tf_abertura.dbLcbImportCloseUp(Sender: TObject);
begin
  dbcb_urgente.Enabled := (dbLcbImport.Text <> '');
  dbcb_urgente.Checked := False;
end;

function Tf_abertura.ClienteNaoTemParametroFaturamento : Boolean;
var
  q_Aux : TQuery;
begin
  q_Aux := TQuery.Create(nil);
  q_Aux.DatabaseName := 'DBNMSCOMEX';

  try
    q_Aux.SQL.Clear;
    q_Aux.SQL.Add('SELECT ATIVO FROM PARAMETROS_FATURAMENTO WHERE ATIVO = 1 AND IMPORTADOR = :p0 ');
    q_Aux.Params[0].Value := tbProcessosImportador.AsString;
    q_Aux.Open;

    if q_Aux.RecordCount = 0
     then Result := True
     else Result := False;
  finally
    FreeAndNil(q_Aux);
  end;
end;

function Tf_abertura.verifica: Boolean;
var
  q_Aux : TQuery;
begin
  q_Aux := TQuery.Create(nil);
  q_Aux.DatabaseName := 'DBNMSCOMEX';

  Processo := '';

  try
    q_Aux.SQL.Clear;
    q_Aux.SQL.Add('select codigo_cliente, codigo from Processos where Codigo_Cliente = :p0 and Status in( ''0'',''01'')');
    q_Aux.Params[0].Value := dbEdtRefCli.Text;
    q_Aux.Open;

    if (q_Aux.RecordCount <> 0)
     then begin
       Processo := q_Aux.FieldByName('codigo').AsString;

       Result := True
     end
     else Result := False;
  finally
    FreeAndNil(q_Aux);
  end;
end;

procedure Tf_abertura.EnviaEmailAviso;
var
  vCodApl, vTitulo, vAssunto, vAnexo, vDe, vPara, vCco, vCc, vBody : String;
begin
  vCodApl  := 'MS2000';
  vTitulo  := 'MS2000Plus - Sistema Gerencial Aduaneiro - Versão Plus 2011 - SQL Server';
  vAssunto := 'MS2000Plus - Ausência de Parâmetros de Faturamento';
  vAnexo   := '';
  vDe      := vCodApl + ' <auditoria@logistic-ms.com.br>';
  vPara    := 'financeiro@mslogistica.com.br';
  vCCo     := '';
  vCC      := '';

  vBody    := '<BR>'
            + 'Prezado(a),<BR>'
            + '<BR>'
            + 'Por meio deste, informamos que foi aberto o Processo ' + ME_nossaref.Text + ',<BR>'
            + 'do importador '+ qrImportRazao_Social.AsString +', <BR>'
            + 'porém não existem parâmetros de faturamento cadastrados ou ativos para esse importador.<BR>'
            + '<BR>'
            + StringOfChar('_', 80)
            + '<BR><BR>'
            + 'Este e-mail é automático e não necessita de resposta. <BR>'
            + '<BR><BR>'
            + 'Atenciosamente,'
            + '<BR><BR>'
            + 'MS2000 - SISTEMA GERENCIAL ADUANEIRO'
            + '<BR><BR>';

  IncluiEmailAuto(vCodApl, vTitulo, vAssunto, vAnexo, vDe, vPara, vCco, vCc, vBody);
end;

procedure Tf_abertura.IncluiEmailAuto(CodAPL, Titulo, Assunto, Anexo, De, Para, Cco, Cc, Body: String);
begin
  try
    qryEmail_Auto.ParamByName('Programa').Value := CodAPL;
    qryEmail_Auto.ParamByName('Assunto').Value  := Assunto;
    qryEmail_Auto.ParamByName('Titulo').Value   := Titulo;
    qryEmail_Auto.ParamByName('De').Value       := De;
    qryEmail_Auto.ParamByName('Para').Value     := Para;
    qryEmail_Auto.ParamByName('Cc').Value       := Cc;
    qryEmail_Auto.ParamByName('Cco').Value      := Cco;
    qryEmail_Auto.ParamByName('Body').Value     := Body;
    qryEmail_Auto.ParamByName('Anexo').Value    := Anexo;
    qryEmail_Auto.ParamByName('HTML').Value     := 1;
    qryEmail_Auto.ParamByName('Data').Value     := Date();
    qryEmail_Auto.ParamByName('Hora').Value     := Now();
    qryEmail_Auto.ExecSQL;
  except
  end;
end;

//Leonardo.Alabarce 12/01/2011 ticket 1462
procedure Tf_abertura.dbLcbTipoProcClick(Sender: TObject);
begin
  if dbLcbImport.Text = ''
   then begin
     ShowMessage('Favor Informar o Cliente.');
     dbLcbTipoProc.KeyValue := Null;
   end;

  if qrTipoProcCODIGO.AsString = 'IN'
   then begin
     dbLcbTipoDec.Enabled := false;
     tbProcessosTipo_Declaracao.AsString := '';
   end;

  if qrTipoProcCODIGO.AsString = 'AD'
   then begin
     qrContrato.Close;
     qrContrato.SQL.Clear;
     qrContrato.SQL.Add('  SELECT Contratos.Contrato, Contratos.Descricao, Contratos.Ativo    ');
     qrContrato.SQL.Add('    FROM Contratos                                                   ');
     qrContrato.SQL.Add('   WHERE ( (Contratos.Importador= :imp)                              ');
     qrContrato.SQL.Add('     AND (( Contratos.Ativo = 1 )  or ( Contratos.contrato = :cont)) ');
     qrContrato.SQL.Add('     AND (Setor =''JUR''  )  )                                       ');
     qrContrato.SQL.Add('ORDER BY Contratos.Descricao                                         ');

     qrContrato.Params[0].AsString  := qrImportCodigo.AsString;
     qrContrato.Params[1].asstring  := '';
     qrContrato.Open;

     qrLocal.Close;
     qrLocal.Params[0].AsString := qrImportCodigo.AsString;
     qrLocal.Params[1].AsString := qrContratoContrato.AsString;
     qrLocal.Params[2].Asstring := '';
     qrLocal.Open;
   end
   else begin
     qrContrato.Close;
     qrContrato.SQL.Clear;
     qrContrato.SQL.Add('  SELECT Contratos.Contrato, Contratos.Descricao, Contratos.Ativo    ');
     qrContrato.SQL.Add('    FROM Contratos                                                   ');
     qrContrato.SQL.Add('   WHERE ( (Contratos.Importador= :imp)                              ');
     qrContrato.SQL.Add('     AND (( Contratos.Ativo = 1 )  or ( Contratos.contrato = :cont)) ');
     qrContrato.SQL.Add('     AND (Setor =''OPN''  )  )                                       ');
     qrContrato.SQL.Add('ORDER BY Contratos.Descricao                                         ');

     qrContrato.Params[0].AsString  := qrImportCodigo.AsString;
     qrContrato.Params[1].asstring  := '';
     qrContrato.Open;

     qrLocal.Close;
     qrLocal.Params[0].AsString := qrImportCodigo.AsString;
     qrLocal.Params[1].AsString := qrContratoContrato.AsString;
     qrLocal.Params[2].Asstring := '';
     qrLocal.Open;
   end;

  { ticket 4305 - Processos que referenciam extinções do repetro para habilitação do RTC }
  {22	- Reexportação, 5 - Destruíção, 6 - Transferência de Regime, 6A	- Transferência de Regime - Bem Principal, NC	- Nacionalização, TT - Transferência de Titularidade}
  edNumRTC.Enabled := ((qrTipoProcCODIGO.AsString = '22') or (qrTipoProcCODIGO.AsString = '5' ) or (qrTipoProcCODIGO.AsString = '6' ) or
                       (qrTipoProcCODIGO.AsString = '6A') or (qrTipoProcCODIGO.AsString = 'NC') or (qrTipoProcCODIGO.AsString = 'TT'));
end;

procedure Tf_abertura.dbLcbContratosEnter(Sender: TObject);
begin
  if qrTipoProcCODIGO.AsString = 'AD'
   then begin
     qrContrato.Close;
     qrContrato.SQL.Clear;
     qrContrato.SQL.Add('   SELECT Contratos.Contrato, Contratos.Descricao, Contratos.Ativo    ');
     qrContrato.SQL.Add('     FROM Contratos                                                   ');
     qrContrato.SQL.Add('    WHERE ( (Contratos.Importador= :imp)                              ');
     qrContrato.SQL.Add('      AND (( Contratos.Ativo = 1 )  or ( Contratos.contrato = :cont)) ');
     qrContrato.SQL.Add('      AND (Setor =''JUR''  )  )                                       ');
     qrContrato.SQL.Add(' ORDER BY Contratos.Descricao                                         ');

     qrContrato.Params[0].AsString := qrImportCodigo.AsString;
     qrContrato.Params[1].asstring := '';
     qrContrato.Open;

     qrLocal.Close;
     qrLocal.Params[0].AsString := qrImportCodigo.AsString;
     qrLocal.Params[1].AsString := qrContratoContrato.AsString;
     qrLocal.Params[2].Asstring := '';
     qrLocal.Open;
   end
   else begin
     qrContrato.Close;
     qrContrato.SQL.Clear;
     qrContrato.SQL.Add('   SELECT Contratos.Contrato, Contratos.Descricao, Contratos.Ativo ');
     qrContrato.SQL.Add('   FROM Contratos                                                  ');
     qrContrato.SQL.Add('   WHERE ((Contratos.Importador= :imp)                             ');
     qrContrato.SQL.Add('   AND ((Contratos.Ativo = 1)  or (Contratos.contrato = :cont))    ');
     qrContrato.SQL.Add('   AND (Setor =''OPN''))                                           ');
     qrContrato.SQL.Add('     ORDER BY Contratos.Descricao                                  ');

     qrContrato.Params[0].AsString  := qrImportCodigo.AsString;
     qrContrato.Params[1].asstring  := '';
     qrContrato.Open;

     qrLocal.Close;
     qrLocal.Params[0].AsString := qrImportCodigo.AsString;
     qrLocal.Params[1].AsString := qrContratoContrato.AsString;
     qrLocal.Params[2].Asstring := '';
     qrLocal.Open;
   end;
end;

end.
