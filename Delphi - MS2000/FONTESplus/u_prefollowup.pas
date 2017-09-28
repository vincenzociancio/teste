unit u_prefollowup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, DBTables, Grids, DBGrids, Mask, Buttons;

type
  TF_prelfollowup = class(TForm)
    T_parametros: TTable;
    ds_parametros: TDataSource;
    T_processos: TTable;
    ds_processos: TDataSource;
    ds_importadores: TDataSource;
    b_imprime: TBitBtn;
    rg_opcao: TRadioGroup;
    T_status: TTable;
    ds_status: TDataSource;
    t_sitfis: TTable;
    ds_sitfis: TDataSource;
    Panel1: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    me_dataini: TMaskEdit;
    me_datafin: TMaskEdit;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    cb_imp: TCheckBox;
    Panel3: TPanel;
    DBGrid3: TDBGrid;
    cb_status: TCheckBox;
    Panel4: TPanel;
    DBGrid4: TDBGrid;
    cb_sitfis: TCheckBox;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label2: TLabel;
    edt_processo: TEdit;
    Panel8: TPanel;
    DBGrid2: TDBGrid;
    cb_loc: TCheckBox;
    Panel9: TPanel;
    t_locais: TTable;
    ds_locais: TDataSource;
    Panel10: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    me_dini: TMaskEdit;
    me_dfin: TMaskEdit;
    q_importadores: TQuery;
    Panel11: TPanel;
    DBGrid5: TDBGrid;
    cb_tipospro: TCheckBox;
    Panel12: TPanel;
    ds_tipospro: TDataSource;
    Q_TIPOSPRO: TQuery;
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
    q_importadoresEmpresa: TStringField;
    q_importadoresFilial: TStringField;
    q_importadoresCodigo: TStringField;
    q_importadoresRazao_Social: TStringField;
    q_importadoresPais: TStringField;
    q_importadoresCNPJ_CPF_COMPLETO: TStringField;
    q_importadoresCGC_CPF: TStringField;
    q_importadoresTipo_Importador: TStringField;
    q_importadoresEndereco: TStringField;
    q_importadoresNumero: TStringField;
    q_importadoresComplemento: TStringField;
    q_importadoresBairro: TStringField;
    q_importadoresCidade: TStringField;
    q_importadoresCEP: TStringField;
    q_importadoresUF: TStringField;
    q_importadoresEstado: TStringField;
    q_importadoresInscricao_Estadual: TStringField;
    q_importadoresBanco: TStringField;
    q_importadoresAgencia: TStringField;
    q_importadoresConta_Corrente: TStringField;
    q_importadoresConta_Corrente_Registro: TIntegerField;
    q_importadoresConta_Corrente_Deposito: TIntegerField;
    q_importadoreslink: TStringField;
    q_importadoresCAE: TStringField;
    q_importadoresTelefone: TStringField;
    q_importadoresAtivo: TSmallintField;
    q_importadoresAcesso_WEB_MS: TSmallintField;
    q_importadoresAcesso_WEB_CLI: TSmallintField;
    q_importadoresAcesso_WEB_REC: TSmallintField;
    q_importadoresBASE_ICMS: TSmallintField;
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
    T_statusCODIGO: TStringField;
    T_statusDESCRICAO: TStringField;
    t_sitfisCODIGO: TStringField;
    t_sitfisDESCRICAO: TStringField;
    t_locaisEmpresa: TStringField;
    t_locaisFilial: TStringField;
    t_locaisImportador: TStringField;
    t_locaisContrato: TStringField;
    t_locaisLocal: TStringField;
    t_locaisDescricao: TStringField;
    t_locaisTipo_local: TStringField;
    t_locaisProcesso_Adm: TStringField;
    t_locaisCNPJ: TStringField;
    t_locaisUnidade_Jur: TStringField;
    t_locaisFiel_nome: TStringField;
    t_locaisFiel_cpf: TStringField;
    t_locaisSIGLA: TStringField;
    t_locaisAtivo: TSmallintField;
    Q_TIPOSPROCODIGO: TStringField;
    Q_TIPOSPRODESCRICAO: TStringField;
    Q_TIPOSPROAtivo: TSmallintField;
    Q_TIPOSPROResponsavel_EmpresaC: TStringField;
    Q_TIPOSPROResponsavel_EmpresaO: TStringField;
    Q_TIPOSPROResponsavel_EmpresaF: TStringField;
    procedure SB_localizaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure b_imprimeClick(Sender: TObject);
    procedure edt_processoChange(Sender: TObject);
    procedure cb_impClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_prelfollowup: TF_prelfollowup;

implementation

uses U_localizapro, U_MSCOMEX, u_relfollow, u_relplaproc;

{$R *.DFM}

procedure TF_prelfollowup.SB_localizaClick(Sender: TObject);
begin
if not assigned (F_localizapro) then Application.CreateForm(TF_localizapro, F_localizapro)
else f_localizapro.show;

end;

procedure TF_prelfollowup.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action := cafree;
f_prelfollowup := nil;
//f_mscomex.FollowUp1.enabled := true;

end;

procedure TF_prelfollowup.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

     Left := 1;
     Top  := 1;


    { h := Height;
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
     width := w;}
me_datafin.text     := datetostr(date());
end;

procedure TF_prelfollowup.b_imprimeClick(Sender: TObject);
begin
    
    if rg_opcao.itemindex = 0 then begin
    {if not assigned (QR_FOLLOW) then Application.CreateForm(TQR_FOLLOW, QR_FOLLOW);
    QR_FOLLOW.q_processos.close;
    QR_FOLLOW.q_processos.Params[0].asstring := t_processosempresa.asstring;
    QR_FOLLOW.q_processos.Params[1].asstring := t_processosfilial.asstring;
    if cb_imp.checked = true then begin
       QR_FOLLOW.q_processos.Params[2].asstring := '*';
       QR_FOLLOW.q_processos.Params[3].asstring := t_processosimportador.asstring;
       if me_dataini.text='  /  /    ' then me_dataini.text := '01/01/2000';
       if me_datafin.text='  /  /    ' then me_datafin.text := '01/01/2050';
       QR_FOLLOW.q_processos.Params[4].asdatetime := strtodate(me_dataini.text);
       QR_FOLLOW.q_processos.Params[5].asdatetime := strtodate(me_datafin.text);
       end
    else begin
       QR_FOLLOW.q_processos.Params[2].asstring := t_processoscdigo.asstring;
       QR_FOLLOW.q_processos.Params[3].asstring := '*';
       QR_FOLLOW.q_processos.Params[4].asdatetime := strtodate('01/01/2000');
       QR_FOLLOW.q_processos.Params[5].asdatetime := strtodate('01/01/2050');
    end;
    if cb_status.checked = true then QR_FOLLOW.q_processos.Params[6].asstring :='*'
    else QR_FOLLOW.q_processos.Params[6].asstring := t_statuscodigo.asstring;
    if cb_sitfis.checked = true then QR_FOLLOW.q_processos.Params[7].asstring :='*'
    else QR_FOLLOW.q_processos.Params[7].asstring := t_sitfiscodigo.asstring;
    QR_FOLLOW.qpara.caption :='';
    if cb_status.checked = true then QR_FOLLOW.qpara.caption := 'Status de Processo: Visão Geral - Situação Fiscal: '
    else QR_FOLLOW.qpara.caption := 'Status de Processo: '+trim(t_statusdescricao.asstring)+' - Situação Fiscal: ';
    if cb_sitfis.checked = true then QR_FOLLOW.qpara.caption := QR_FOLLOW.qpara.caption+ 'Visão Geral'
    else QR_FOLLOW.qpara.caption := QR_FOLLOW.qpara.caption+ trim(t_sitfisdescricao.asstring);

    QR_FOLLOW.q_processos.ExecSQL;
    QR_FOLLOW.q_processos.active := true;
    if QR_FOLLOW.q_processos.eof then MessageDlg('Não existe Processos com os parâmetros informados!', mtInformation,[mbOk], 0)
    else QR_FOLLOW.preview;}

    if not assigned (QR_FOLLOW) then Application.CreateForm(TQR_FOLLOW, QR_FOLLOW);

    qr_follow.q_follow.open;
    qr_follow.q_faturas.open;
    qr_follow.t_processos.open;
    qr_follow.t_contratos.open;
    qr_follow.t_locais.open;
    qr_follow.t_tipodecl.open;
    qr_follow.t_tipoprocesso.open;
    qr_follow.t_conhecimento.open;
    qr_follow.t_via.open;
    qr_follow.t_transportadores.open;
    qr_follow.t_tipodoccarga.open;
    qr_follow.t_utilizacao.open;
    qr_follow.t_pais.open;
    qr_follow.t_urfchegada.open;
    qr_follow.t_moedafrete.open;
    qr_follow.t_moedaseguro.open;
    qr_follow.t_urfdespacho.open;
    qr_follow.t_recintos.open;
    qr_follow.t_setores.open;
    qr_follow.T_empresas.open;
    qr_follow.t_filiais.open;

    qr_follow.qr_cliente.caption := q_importadoresrazao_social.asstring;
    qr_follow.T_processos.filter := 'Importador='+chr(39)+q_importadorescodigo.asstring+chr(39);

    if cb_status.checked = true then QR_FOLLOW.qpara.caption := 'Status de Processo: Visão Geral - Situação Fiscal: '
    else begin
         QR_FOLLOW.qpara.caption := 'Status de Processo: '+trim(t_statusdescricao.asstring)+' - Situação Fiscal: ';
         QR_FOLLOW.T_processos.filter := QR_FOLLOW.T_processos.filter+' and Status='+chr(39)+t_statuscodigo.asstring+chr(39);
//         if trim(t_statuscodigo.asstring) = '01' then showmessage(V_usuario+', lembre-se que no caso de Aguardando Desembaraço é necessário imprimir os status de Aguardando desembaraço Consumo e Admissão separadamente.');
    end;
    if cb_sitfis.checked = true then QR_FOLLOW.qpara.caption := QR_FOLLOW.qpara.caption+ 'Visão Geral'
    else begin
         QR_FOLLOW.qpara.caption := QR_FOLLOW.qpara.caption+ trim(t_sitfisdescricao.asstring);
         QR_FOLLOW.T_processos.filter := QR_FOLLOW.T_processos.filter+' and COD_SIT='+chr(39)+t_sitfiscodigo.asstring+chr(39);
    end;

    if cb_tipospro.checked = true then QR_FOLLOW.qpara.caption := QR_FOLLOW.qpara.caption+ 'Tipos de Processo: Visão Geral'
    else begin
         QR_FOLLOW.qpara.caption := QR_FOLLOW.qpara.caption+' - Tipos de Processo: '+trim(q_tiposprodescricao.asstring);
         QR_FOLLOW.T_processos.filter := QR_FOLLOW.T_processos.filter+' and Tipo='+chr(39)+q_tiposprocodigo.asstring+chr(39);
    end;

    if me_dataini.text='  /  /    ' then me_dataini.text := '01/01/2000';
    if me_datafin.text='  /  /    ' then me_datafin.text := '01/01/2050';

    QR_FOLLOW.T_processos.filter := QR_FOLLOW.T_processos.filter+' and Data>='+chr(39)+me_dataini.text+chr(39);
    QR_FOLLOW.T_processos.filter := QR_FOLLOW.T_processos.filter+' and Data<='+chr(39)+me_datafin.text+chr(39);

    if cb_imp.checked = false then
       QR_FOLLOW.T_processos.filter := QR_FOLLOW.T_processos.filter+' and Codigo='+chr(39)+t_processoscodigo.asstring+chr(39);

    if cb_loc.checked = false then begin
       QR_FOLLOW.T_processos.filter := QR_FOLLOW.T_processos.filter+' and Contrato='+chr(39)+t_locaiscontrato.asstring+chr(39);
       QR_FOLLOW.T_processos.filter := QR_FOLLOW.T_processos.filter+' and Local_Inventario='+chr(39)+t_locaislocal.asstring+chr(39);
    end;


    QR_FOLLOW.preview;

    end
    else begin
    if not assigned (QR_PLAPRO) then Application.CreateForm(TQR_PLAPRO, QR_PLAPRO);

    QR_PLAPRO.Q_processos.open;
    QR_PLAPRO.T_relprocessos.open;
    QR_PLAPRO.t_relimportadores.open;
    QR_PLAPRO.t_relempresa.open;
    QR_PLAPRO.t_relfilial.open;
    QR_PLAPRO.t_reltipoproc.open;
    QR_PLAPRO.t_relconhecimento.open;
    QR_PLAPRO.T_relcontratos.open;
    QR_PLAPRO.t_rellocais.open;
    QR_PLAPRO.T_follow.open;
    QR_PLAPRO.T_eventos.open;
    QR_PLAPRO.T_obs.open;
    QR_PLAPRO.T_faturas.open;
    QR_PLAPRO.t_reltipodoccarga.open;
    QR_PLAPRO.t_reltipodecla.open;

    QR_PLAPRO.T_relprocessos.filter := 'Importador='+chr(39)+q_importadorescodigo.asstring+chr(39);

    if cb_status.checked = true then QR_PLAPRO.qpara.caption := 'Status de Processo: Visão Geral - Situação Fiscal: '
    else begin
         QR_PLAPRO.qpara.caption := 'Status de Processo: '+trim(t_statusdescricao.asstring)+' - Situação Fiscal: ';
         QR_PLAPRO.T_relprocessos.filter := QR_PLAPRO.T_relprocessos.filter+' and Status='+chr(39)+t_statuscodigo.asstring+chr(39);
///         if trim(t_statuscodigo.asstring) = '01' then showmessage(V_usuario+', lembre-se que no caso de Aguardando Desembaraço é necessário imprimir os status de Aguardando desembaraço Consumo e Admissão separadamente.');
    end;
    if cb_sitfis.checked = true then QR_PLAPRO.qpara.caption := QR_PLAPRO.qpara.caption+ 'Visão Geral'
    else begin
         QR_PLAPRO.qpara.caption := QR_PLAPRO.qpara.caption+ trim(t_sitfisdescricao.asstring);
         QR_PLAPRO.T_relprocessos.filter := QR_PLAPRO.T_relprocessos.filter+' and COD_SIT='+chr(39)+t_sitfiscodigo.asstring+chr(39);
    end;

    if cb_tipospro.checked = true then QR_PLAPRO.qpara.caption := QR_PLAPRO.qpara.caption+ 'Tipos de Processo: Visão Geral'
    else begin
         QR_PLAPRO.qpara.caption := QR_PLAPRO.qpara.caption+' - Tipos de Processo: '+trim(q_tiposprodescricao.asstring);
         QR_PLAPRO.T_relprocessos.filter := QR_PLAPRO.T_relprocessos.filter+' and Tipo='+chr(39)+q_tiposprocodigo.asstring+chr(39);
    end;


    if me_dataini.text='  /  /    ' then me_dataini.text := '01/01/2000';
    if me_datafin.text='  /  /    ' then me_datafin.text := '01/01/2050';

    QR_PLAPRO.T_relprocessos.filter := QR_PLAPRO.T_relprocessos.filter+' and Data>='+chr(39)+me_dataini.text+chr(39);
    QR_PLAPRO.T_relprocessos.filter := QR_PLAPRO.T_relprocessos.filter+' and Data<='+chr(39)+me_datafin.text+chr(39);

    if me_dini.text<>'  /  /    ' then
      QR_PLAPRO.T_relprocessos.filter := QR_PLAPRO.T_relprocessos.filter+' and DT_DESEMBARACO>='+chr(39)+me_dini.text+chr(39);
    ///me_dini.text := '01/01/2000';
    if me_dfin.text<>'  /  /    ' then
    ///me_dfin.text := '01/01/2050';
      QR_PLAPRO.T_relprocessos.filter := QR_PLAPRO.T_relprocessos.filter+' and DT_DESEMBARACO<='+chr(39)+me_dfin.text+chr(39);


    if cb_imp.checked = false then
    QR_PLAPRO.T_relprocessos.filter := QR_PLAPRO.T_relprocessos.filter+' and Codigo='+chr(39)+t_processoscodigo.asstring+chr(39);

    if cb_loc.checked = false then begin
       QR_PLAPRO.T_relprocessos.filter := QR_PLAPRO.T_relprocessos.filter+' and Contrato='+chr(39)+t_locaiscontrato.asstring+chr(39);
       QR_PLAPRO.T_relprocessos.filter := QR_PLAPRO.T_relprocessos.filter+' and Local_Inventario='+chr(39)+t_locaislocal.asstring+chr(39);
    end;

    QR_PLAPRO.preview;

    end;
end;

procedure TF_prelfollowup.edt_processoChange(Sender: TObject);
begin
if length(edt_processo.text)=8 then begin
   if t_processos.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,edt_processo.text]) then begin
      rg_opcao.itemindex := 0;
      q_importadores.locate('Codigo',t_processosimportador.asstring,[]);
      cb_imp.checked := false;
      t_status.findkey([t_processosstatus.asstring]);
      cb_status.checked := false;
      t_sitfis.findkey([t_processoscod_sit.asstring]);
      cb_sitfis.checked := false;
      t_locais.Refresh;
      t_locais.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,t_processosimportador.asstring,t_processoscontrato.asstring,t_processoslocal_inventario.asstring]);
      cb_loc.checked := false;
      showmessage('Processo:'+edt_processo.text+#10#13+'Cliente: '+q_importadoresrazao_social.asstring+#10#13+'Local de Invetário: '+t_locaisdescricao.asstring+#10#13+'Status: '+t_statusdescricao.asstring+#10#13+'Situação Fiscal: '+t_sitfisdescricao.asstring+#10#13+#10#13);
      b_imprime.setfocus;
   end
   else begin
      showmessage('Processo não encontrado.');
      edt_processo.text :='';
      edt_processo.setfocus;
   end;
end;
end;

procedure TF_prelfollowup.cb_impClick(Sender: TObject);
begin
      edt_processo.text := '';
      cb_status.checked := true;
      cb_sitfis.checked := true;
      cb_loc.checked := true;
end;

procedure TF_prelfollowup.FormCreate(Sender: TObject);
begin
t_parametros.open;
q_importadores.open;
t_processos.open;
t_status.open;
t_sitfis.open;
t_locais.open;
q_tipospro.open;
end;

end.
