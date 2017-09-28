{$A+,B-,C+,D+,E-,F-,G+,H+,I+,J+,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00020000}
{$IMAGEBASE $00040000}
{$APPTYPE GUI}
unit U_usuarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons,
  QuickRpt,QRCtrls, ComCtrls, ActnList, CheckTreeView, ImgList;

type
  TF_usuarios = class(TForm)
    dsEmpresas: TDataSource;
    tbUsuariosT: TTable;
    dsFiliais: TDataSource;
    dsUsuarios: TDataSource;
    dsSupervisores: TDataSource;
    qrEmpresas: TQuery;
    qrFiliais: TQuery;
    qrEmpresasCodigo: TStringField;
    qrEmpresasRazao_Social: TStringField;
    qrFiliaisCodigo_Filial: TStringField;
    qrFiliaisDescricao: TStringField;
    qrSupervisores: TQuery;
    pnlCampos: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    dbEdtUsuario: TDBEdit;
    dbEdtSenha: TDBEdit;
    dbEdtNome: TDBEdit;
    dbEdtSiscomex: TDBEdit;
    dbEdtNivel: TDBEdit;
    dbLcbEmpresas: TDBLookupComboBox;
    dbLcbFiliais: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    GroupBox2: TGroupBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    dbLcbSupervisor: TDBLookupComboBox;
    Label9: TLabel;
    dbEdtEmail: TDBEdit;
    pnlBotoes: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label10: TLabel;
    dbEdtNivelCC: TDBEdit;
    sbLimpaTipo: TSpeedButton;
    Bevel3: TBevel;
    Bevel1: TBevel;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    DBCheckBox16: TDBCheckBox;
    btnAcesso: TBitBtn;
    qrCli: TQuery;
    qrCliAcesso: TQuery;
    dsCli: TDataSource;
    dsCliAcesso: TDataSource;
    qrCliInc: TQuery;
    qrCliExc: TQuery;
    qrMenu: TQuery;
    btnMenu: TBitBtn;
    qrMenuInc: TQuery;
    qrMenuExc: TQuery;
    qrMenuAtu: TQuery;
    Bevel2: TBevel;
    pnlPrint: TPanel;
    Panel4: TPanel;
    btnFecharPrint: TBitBtn;
    rgTipo: TRadioGroup;
    rgUsuario: TRadioGroup;
    btnImprimirRel: TBitBtn;
    DBCheckBox17: TDBCheckBox;
    quppro: TQuery;
    Label14: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    DBCheckBox18: TDBCheckBox;
    Q_IN_RES_HAB: TQuery;
    Label15: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    SpeedButton2: TSpeedButton;
    q_setores: TQuery;
    q_setorescodigo: TStringField;
    q_setoresdescricao: TStringField;
    ds_qsetores: TDataSource;
    tbUsuarios: TTable;
    qrCliCodigo: TStringField;
    qrCliRazao_Social: TStringField;
    qrCliCNPJ_CPF_COMPLETO: TStringField;
    qrCliAcessoImportador: TStringField;
    qrCliAcessoRazao_Social: TStringField;
    qrCliAcessoCNPJ_CPF_COMPLETO: TStringField;
    qrMenuCodigo: TStringField;
    qrMenuDescricao: TStringField;
    qrMenuNivel: TStringField;
    qrMenuHabilitado: TSmallintField;
    qrMenuACESSA: TSmallintField;
    tbUsuariosTEmpresa: TStringField;
    tbUsuariosTFilial: TStringField;
    tbUsuariosTUsuario: TStringField;
    tbUsuariosTSenha: TStringField;
    tbUsuariosTNome_Completo: TStringField;
    tbUsuariosTDiretorio_SISCOMEX: TStringField;
    tbUsuariosTNivel: TStringField;
    tbUsuariosTNivel_ccorrente: TStringField;
    tbUsuariosTData_validade_senha: TDateTimeField;
    tbUsuariosTEmail: TStringField;
    tbUsuariosTEmail_Sol_Num: TIntegerField;
    tbUsuariosTEmail_aviso_oper: TIntegerField;
    tbUsuariosTEmail_aviso_finan: TIntegerField;
    tbUsuariosTEmail_aviso_diretoria: TIntegerField;
    tbUsuariosTEmail_aviso_sistema: TIntegerField;
    tbUsuariosTDistribui_processo: TIntegerField;
    tbUsuariosTAbre_processos: TIntegerField;
    tbUsuariosTEdita_eventos: TIntegerField;
    tbUsuariosTDigitalizador: TIntegerField;
    tbUsuariosTTraduz_Classifica: TIntegerField;
    tbUsuariosTInativa_Cliente: TIntegerField;
    tbUsuariosTEdita_cliente_inativo: TIntegerField;
    tbUsuariosTFecha_Processo: TIntegerField;
    tbUsuariosTEdita_Processo_Fechado: TIntegerField;
    tbUsuariosTAcessa_Patrimonio: TIntegerField;
    tbUsuariosTSupervisor: TStringField;
    tbUsuariosTAcessa_PARAFAT: TIntegerField;
    tbUsuariosTDesconto_Faturamento: TIntegerField;
    tbUsuariosTResponsavel: TIntegerField;
    tbUsuariosTDistribui_processoC: TIntegerField;
    tbUsuariosTResponsavelC: TIntegerField;
    tbUsuariosTSupervisorC: TStringField;
    tbUsuariosTSetor: TStringField;
    qr_tot_usuario: TQuery;
    qr_tot_usuarioUsuario: TStringField;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    qrUltimoUsuario: TQuery;
    qrManipulaMSLOGIN_USUARIOS: TQuery;
    tbMSLOGIN_USUARIOS: TTable;
    tbUsuariosEmpresa: TStringField;
    tbUsuariosFilial: TStringField;
    tbUsuariosUsuario: TStringField;
    tbUsuariosSenha: TStringField;
    tbUsuariosNome_Completo: TStringField;
    tbUsuariosDiretorio_SISCOMEX: TStringField;
    tbUsuariosNivel: TStringField;
    tbUsuariosNivel_ccorrente: TStringField;
    tbUsuariosData_validade_senha: TDateTimeField;
    tbUsuariosEmail: TStringField;
    tbUsuariosEmail_Sol_Num: TIntegerField;
    tbUsuariosEmail_aviso_oper: TIntegerField;
    tbUsuariosEmail_aviso_finan: TIntegerField;
    tbUsuariosEmail_aviso_diretoria: TIntegerField;
    tbUsuariosEmail_aviso_sistema: TIntegerField;
    tbUsuariosDistribui_processo: TIntegerField;
    tbUsuariosAbre_processos: TIntegerField;
    tbUsuariosEdita_eventos: TIntegerField;
    tbUsuariosDigitalizador: TIntegerField;
    tbUsuariosTraduz_Classifica: TIntegerField;
    tbUsuariosInativa_Cliente: TIntegerField;
    tbUsuariosEdita_cliente_inativo: TIntegerField;
    tbUsuariosFecha_Processo: TIntegerField;
    tbUsuariosEdita_Processo_Fechado: TIntegerField;
    tbUsuariosAcessa_Patrimonio: TIntegerField;
    tbUsuariosSupervisor: TStringField;
    tbUsuariosAcessa_PARAFAT: TIntegerField;
    tbUsuariosDesconto_Faturamento: TIntegerField;
    tbUsuariosResponsavel: TIntegerField;
    tbUsuariosDistribui_processoC: TIntegerField;
    tbUsuariosResponsavelC: TIntegerField;
    tbUsuariosSupervisorC: TStringField;
    tbUsuariosSetor: TStringField;
    tbUsuariosFOLLOW_LIBERADO: TIntegerField;
    tbUsuariosPK_USUARIO: TIntegerField;
    tbMSLOGIN_USUARIOSPK_USUARIO: TIntegerField;
    tbMSLOGIN_USUARIOSLOGIN: TStringField;
    tbMSLOGIN_USUARIOSSENHA: TStringField;
    tbMSLOGIN_USUARIOSFRASE_SECRETA: TStringField;
    tbMSLOGIN_USUARIOSNOME_COMPLETO: TStringField;
    tbMSLOGIN_USUARIOSDATA_VALIDADE_SENHA: TStringField;
    tbMSLOGIN_USUARIOSEMAIL: TStringField;
    tbMSLOGIN_USUARIOSSENHA_EMAIL: TStringField;
    tbMSLOGIN_USUARIOSTAMANHO_MAXIMO_ANEXO: TIntegerField;
    tbMSLOGIN_USUARIOSATIVO: TIntegerField;
    tbMSLOGIN_USUARIOSTIPO_USUARIO: TStringField;
    tbMSLOGIN_USUARIOSEMAIL_MSW: TStringField;
    tbMSLOGIN_USUARIOSSENHA_EMAIL_MSW: TStringField;
    qrUltimoUsuarioultimo_usuario: TIntegerField;
    qrManipulaMSLOGIN_USUARIOSUSUARIO: TStringField;
    qrManipulaMSLOGIN_USUARIOSSENHA: TStringField;
    qrManipulaMSLOGIN_USUARIOSNOME_COMPLETO: TStringField;
    qrManipulaMSLOGIN_USUARIOSEMAIL: TStringField;
    qrManipulaMSLOGIN_USUARIOSDATA_VALIDADE_SENHA: TDateTimeField;
    qrManipulaMSLOGIN_USUARIOSSenha_Email: TStringField;
    Label16: TLabel;
    tbUsuariosRamal: TStringField;
    dbEditRamal: TDBEdit;
    tbUsuariosCelular: TStringField;
    Label18: TLabel;
    dbEditCelular: TDBEdit;
    Label19: TLabel;
    tbUsuariosHierarquia: TIntegerField;
    cbHierarquia: TComboBox;
    tbUsuariosAtivo: TBooleanField;
    DBCheckBox21: TDBCheckBox;
    qrySolicitacaoNumerarios: TQuery;
    pnlGrid: TPanel;
    Label17: TLabel;
    dbGrdUsuarios: TDBGrid;
    edtLocalizar: TEdit;
    pnlAcesso: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Panel1: TPanel;
    btnFecharAcesso: TBitBtn;
    dbLcbCli: TDBLookupListBox;
    dbLcbCliAcesso: TDBLookupListBox;
    btnIncAcesso: TBitBtn;
    btnExcAcesso: TBitBtn;
    pnlMenu: TPanel;
    Label13: TLabel;
    Panel3: TPanel;
    btnFecharMenu: TBitBtn;
    btnGravarMenu: TBitBtn;
    IMG: TImageList;
    tbUsuariosscanner: TBooleanField;
    qryDelete: TQuery;
    btnCheck: TBitBtn;
    btnCopiar: TBitBtn;
    pnlCopiarPerfil: TPanel;
    GroupBox3: TGroupBox;
    StaticText1: TStaticText;
    Label20: TLabel;
    btnCopiarCopiar: TBitBtn;
    btnCopiarFechar: TBitBtn;
    chkAcesso: TCheckBox;
    chkMenu: TCheckBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Label21: TLabel;
    edtPerfil_Para: TEdit;
    qryPerfill_Usuarios: TQuery;
    dtsPerfill_Usuarios: TDataSource;
    qryPerfill_Usuariosusuario: TStringField;
    qryPerfil_Delete: TQuery;
    qryPerfil_Gravar: TQuery;
    btnLiberaFollow: TBitBtn;
    pnlLiberarFollow: TPanel;
    btnIncluir: TBitBtn;
    btnExcluiFollow: TBitBtn;
    ME_nossaref: TMaskEdit;
    StaticText2: TStaticText;
    DBGrid1: TDBGrid;
    qrinsertUsu_Follow: TQuery;
    qrProcessos: TQuery;
    btnFollowfecha: TBitBtn;
    qrUsu_Follow: TQuery;
    dsUsu_follow: TDataSource;
    qrUsu_Followprocesso: TStringField;
    qrUsu_Followusuario: TStringField;
    qrDeleteUsu_follow: TQuery;
    qrProcessoUsu_follow: TQuery;
    qrProcessoUsu_followprocesso: TStringField;
    qrProcessoUsu_followusuario: TStringField;
    ctvLista: TCheckTreeView;
    dbEdtCPF: TDBEdit;
    Label22: TLabel;
    tbUsuariosCPF: TStringField;
    tbUsuariosTCPF: TStringField;
    tbUsuariosTFOLLOW_LIBERADO: TIntegerField;
    tbUsuariosTPK_USUARIO: TIntegerField;
    tbUsuariosTRamal: TStringField;
    tbUsuariosTCelular: TStringField;
    tbUsuariosTHierarquia: TIntegerField;
    tbUsuariosTAtivo: TBooleanField;
    tbUsuariosTscanner: TBooleanField;
    tbUsuariosTMontador: TBooleanField;
    tbUsuariosTDocumentador: TBooleanField;
    tbUsuariosTArquivista: TBooleanField;
    tbUsuariosTAcessoWeb: TBooleanField;
    tbUsuariosTRegistra_Di: TIntegerField;
    tbUsuariosTAudita_Di: TIntegerField;
    tbUsuariosMontador: TBooleanField;
    tbUsuariosDocumentador: TBooleanField;
    tbUsuariosArquivista: TBooleanField;
    tbUsuariosAcessoWeb: TBooleanField;
    tbUsuariosRegistra_Di: TIntegerField;
    tbUsuariosAudita_Di: TIntegerField;
    dbcbRegistraDi: TDBCheckBox;
    dbcbAuditaDI: TDBCheckBox;
    btnAtivarDesativar: TBitBtn;
    btnFerias: TBitBtn;
    dsDistribuiProcessos: TDataSource;
    qryDistribuiProcessos: TQuery;
    qryDistribuiProcessosEmail: TStringField;
    qryDistribuiProcessosUsuario: TStringField;
    tbUsuariosFerias: TBooleanField;
    Bevel4: TBevel;
    pnlDistribuicaoProcessos: TPanel;
    Label23: TLabel;
    StaticText3: TStaticText;
    btnEnviaDistribuicao: TBitBtn;
    DBLookupComboBox4: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qrEmpresasAfterScroll(DataSet: TDataSet);
    procedure qrFiliaisAfterScroll(DataSet: TDataSet);
    procedure sbLimpaTipoClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure tbUsuariosTBeforeDelete(DataSet: TDataSet);
    procedure tbUsuariosTAfterInsert(DataSet: TDataSet);
    procedure tbUsuariosTAfterCancel(DataSet: TDataSet);
    procedure dbEdtUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtNivelKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtEmailKeyPress(Sender: TObject; var Key: Char);
    procedure pnlCamposEnter(Sender: TObject);
    procedure pnlCamposExit(Sender: TObject);
    procedure btnAcessoClick(Sender: TObject);
    procedure btnFecharAcessoClick(Sender: TObject);
    procedure btnIncAcessoClick(Sender: TObject);
    procedure btnExcAcessoClick(Sender: TObject);
    procedure qrCliAfterOpen(DataSet: TDataSet);
    procedure qrCliAcessoAfterOpen(DataSet: TDataSet);
    procedure btnMenuClick(Sender: TObject);
    procedure btnFecharMenuClick(Sender: TObject);
    procedure btnGravarMenuClick(Sender: TObject);
    procedure btnFecharPrintClick(Sender: TObject);
    procedure btnImprimirRelClick(Sender: TObject);
    procedure rgTipoClick(Sender: TObject);
    procedure tbUsuariosTAfterScroll(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure tbUsuariosAfterCancel(DataSet: TDataSet);
    procedure tbUsuariosAfterEdit(DataSet: TDataSet);
    procedure tbUsuariosAfterInsert(DataSet: TDataSet);
    procedure tbUsuariosAfterPost(DataSet: TDataSet);
    procedure tbUsuariosAfterScroll(DataSet: TDataSet);
    procedure tbUsuariosBeforeDelete(DataSet: TDataSet);
    procedure atualizar_grid();
    procedure SpeedButton2Click(Sender: TObject);
    procedure edtLocalizarChange(Sender: TObject);
    procedure DBCheckBox21Click(Sender: TObject);
    procedure btnCheckClick(Sender: TObject);
    procedure btnCopiarClick(Sender: TObject);
    procedure btnCopiarFecharClick(Sender: TObject);
    procedure btnCopiarCopiarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnLiberaFollowClick(Sender: TObject);
    procedure btnFollowfechaClick(Sender: TObject);
    procedure btnExcluiFollowClick(Sender: TObject);
    procedure dbEdtCPFKeyPress(Sender: TObject; var Key: Char);
    procedure btnFeriasClick(Sender: TObject);
    procedure btnAtivarDesativarClick(Sender: TObject);
    procedure btnEnviaDistribuicaoClick(Sender: TObject);
  private
    { Private declarations }
    procedure IncluirItem(pNivel: Shortint; pRoot: TTreeNode);

    function TemSolicitacaoNumerario( Usuario : String ) : Boolean;

    procedure ExcluirEmailsAvisos;

    procedure EncaminharControlePastas;

    procedure EncaminharDistribuicao;

    procedure AtivaColaborador(Ativa : Boolean);

    procedure AbrePanelDistribuicao;

    procedure DesativarEmailsAvisos;

    procedure ReativarEmailsAvisos;
  public
    { Public declarations }
  end;

  TRegMenu = Record
    NivelNode: Shortint; // NÍVEL DO NÓ DA FOLHA
    Codigo: String;      // CÓDIGO DO MENU
    Descricao: String;   // DESCRIÇÃO DO MENU
    Nivel: Integer;      // NÍVEL DE ACESSO AO MENU
    Habilitado: Boolean; // STATUS DO MENU
    Acesso: Boolean;     // ACESSO AO MENU
  end;

var
  F_usuarios: TF_usuarios;

  vetLista: Array of TRegMenu;
  regLista: TRegMenu;
  ultimo_usuario : integer;
  Ferias : Boolean;

implementation

uses U_MSCOMEX, U_relusu, U_relUsuMenu, uClientes_Check ;

{$R *.DFM}

procedure TF_usuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  f_usuarios := Nil;
  f_mscomex.usuarios1.Enabled := True;
end;

procedure TF_usuarios.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure TF_usuarios.FormCreate(Sender: TObject);
begin
  tbUsuarios.Open;
  qrEmpresas.Open;
  q_setores.open;
end;

procedure TF_usuarios.qrEmpresasAfterScroll(DataSet: TDataSet);
begin
  if tbUsuarios.State in [dsInsert, dsEdit]
   then tbUsuariosFilial.AsString := '';

  with qrFiliais do
   begin
     Close;
     Params[0].AsString := qrEmpresasCodigo.AsString;
     Open;
   end;
end;

procedure TF_usuarios.qrFiliaisAfterScroll(DataSet: TDataSet);
begin
  with qrSupervisores do
   begin
     Close;
     Params[0].AsString := tbUsuariosEmpresa.AsString;
     Params[1].AsString := tbUsuariosFilial.AsString;

     if tbUsuariosUsuario.AsString <> ''
      then Params[2].AsString := tbUsuariosUsuario.AsString
      else Params[2].AsString := ' ';

     Open;
  end;
end;

procedure TF_usuarios.sbLimpaTipoClick(Sender: TObject);
begin
  tbUsuariosSupervisor.AsString := '';
end;

procedure TF_usuarios.btnNovoClick(Sender: TObject);
begin
  Tag := 1;

  if tbUsuarios.RecordCount = 0
   then tbUsuarios.Insert
   else tbUsuarios.Append
end;

procedure TF_usuarios.btnAlterarClick(Sender: TObject);
begin
  Tag := 2;
  tbUsuarios.Edit;
end;

procedure TF_usuarios.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Confirma exclusão deste Usuário?', mtConfirmation, [mbYes, mbNo], 0) = mrNo
   then Exit;

  qrCliAcesso.Params[0].AsString := tbUsuariosUsuario.AsString;
  qrCliAcesso.Open;
  qrCliAcesso.First;

  while not qrCliAcesso.Eof do
   begin
     qrCliExc.Params[0].AsString := tbUsuariosUsuario.AsString;
     qrCliExc.Params[1].AsString := qrCliAcessoImportador.AsString;
     qrCliExc.ExecSQL;

     logusu('E','Excluiu Acesso Restrito do Usuário: '+ tbUsuariosUsuario.AsString +', Cliente: '+ qrCliAcessoImportador.AsString);

     qrCliAcesso.Next;
   end;

  qrMenuExc.Params[0].AsString := tbUsuariosUsuario.AsString;
  qrMenuExc.ExecSQL;

  //executa sql para tirar as responsabilidades por processo
  quppro.Params[0].AsString := tbUsuariosUsuario.AsString;
  quppro.ExecSQL;

  qrManipulaMSLOGIN_USUARIOS.SQL.Clear;
  qrManipulaMSLOGIN_USUARIOS.sql.Add('DELETE FROM MSLOGIN_Usuarios WHERE PK_USUARIO = '+ tbUsuariosPK_USUARIO.AsString);
  qrManipulaMSLOGIN_USUARIOS.ExecSQL;
  qrManipulaMSLOGIN_USUARIOS.Close;

  // Usuario
  qryDelete.ParamByName('Usuario').Value := tbUsuariosUsuario.AsString;
  qryDelete.ExecSQL;
  tbUsuarios.close;
  tbUsuarios.open;
end;

procedure TF_usuarios.btnGravarClick(Sender: TObject);
var
  usuario : string;
  qsenhaant, QMSG, qletras, qnumeros, qnumerosdig, qnumerosdigi : string;
  i, L, n, qtd_n, qtd_L, m, r : integer;
  senha_invalida : boolean;
  login_usuario, senha_usuario, nome_completo_usuario, email_usuario, dt_val_senha_usuario, senha_email_usuario : string;
begin
  if tbUsuariosEmpresa.AsString = ''
   then begin
     MessageDlg('Selecione uma Empresa!', mtWarning, [mbOk], 0);
     dbLcbEmpresas.SetFocus;
     Exit;
   end;

  if tbUsuariosFilial.AsString = ''
   then begin
     MessageDlg('Selecione uma Filial!', mtWarning, [mbOk], 0);
     dbLcbFiliais.SetFocus;
     Exit;
   end;

  if tbUsuariosUsuario.AsString = ''
   then begin
     MessageDlg('Digite uma identifação para o Usuário!', mtWarning, [mbOk], 0);
     dbEdtUsuario.SetFocus;
     Exit;
   end;

  if tbUsuariosSenha.AsString = ''
   then begin
     MessageDlg('Digite uma Senha para o Usuário!', mtWarning, [mbOk], 0);
     dbEdtSenha.SetFocus;
     Exit;
   end
   else begin
     senha_invalida := false;

     qtd_L := 3;
     L := 0; //letras
     qletras := 'ABCDEFGHIJKLMNOPQRSTUVXZW';

     qtd_n := 3;
     n := 0; //numeros
     qnumeros := '0123456789';

     qnumerosdig:='';

     for i := 1 to (length(dbEdtSenha.Text)) do
      begin
        if pos(copy(dbEdtSenha.text,i,1),qnumeros) > 0
         then begin
           n := n+1;
           qnumerosdig := qnumerosdig+copy(dbEdtSenha.text,i,1);
         end;

        if pos(uppercase(copy(dbEdtSenha.text,i,1)),qletras) > 0
         then L := L+1;
      end;

     qnumerosdigi:='';

     for i:= 1 to (length(qnumerosdig)) do
      begin
        qnumerosdigi := copy(qnumerosdig,i,1)+qnumerosdigi;
      end;


     //repeticao
     r := 0;

     for i:= 1 to (length(dbEdtSenha.text)) do
      begin
        for m:= 1 to (length(dbEdtSenha.text)) do
         begin
           if (copy(dbEdtSenha.text,i,1)=copy(dbEdtSenha.text,m,1)) and (i <> m)
            then r := r+1;
         end;
      end;

     if (dbEdtSenha.text = '')                     or
        (length(dbEdtSenha.text) < (qtd_L+qtd_n))  or
        (length(dbEdtSenha.text) > 10)
      then senha_invalida := true;

     if (senha_invalida=TRUE)
      then begin
        QMSG := '';
        QMSG := QMSG+v_nomecompleto+'. esta Senha está inválida!'+#13#10#13#10;
        QMSG := QMSG+'sua Senha deverá: '+#13#10#13#10;
        QMSG := QMSG+'- ser diferente de em branco;'+#13#10;
        QMSG := QMSG+'- ser diferente do nome do usuário;'+#13#10;
        QMSG := QMSG+'- possuír no mínimo '+inttostr(qtd_n+qtd_L)+' caracteres;'+#13#10;
        QMSG := QMSG+'- possuir números ou Letras DISTINTOS; '+#13#10;
        QMSG := QMSG+'- possuir no máximo de 10 caracteres. '+#13#10;
        QMSG := QMSG+'Favor informar uma NOVA SENHA!';
        showmessage(QMSG);
        Exit;
        dbEdtSenha.text := '';
        dbEdtSenha.setfocus;
      end;
   end;

  if tbUsuariosUsuario.AsString = tbUsuariosSenha.AsString
   then begin
     MessageDlg('A Senha não pode ser igual a identificação do Usuário!', mtWarning, [mbOk], 0);
     dbEdtSenha.SetFocus;
     Exit;
   end;

  if tbUsuariosNome_Completo.AsString = ''
   then begin
     MessageDlg('Digite o Nome Completo do Usuário!', mtWarning, [mbOk], 0);
     dbEdtNome.SetFocus;
     Exit;
   end;

  if tbUsuariosDiretorio_SISCOMEX.AsString = ''
   then begin
     MessageDlg('Digite o diretório do SIXCOMEX!', mtWarning, [mbOk], 0);
     dbEdtSiscomex.SetFocus;
     Exit;
   end;

  if tbUsuariosNivel.AsString = ''
   then begin
     MessageDlg('Digite um Nível para o Usuário!', mtWarning, [mbOk], 0);
     dbEdtNivel.SetFocus;
     Exit;
   end;

  try
    //se for inclusão, deve ser verificado o último pk_usuario inserido em MSLOGIN_USUARIOS
    if Tag = 1
     then begin
       qrUltimoUsuario.Close;
       qrUltimoUsuario.open;
       ultimo_usuario := qrUltimoUsuarioultimo_usuario.AsInteger + 1;
       tbUsuariosPK_USUARIO.AsInteger := ultimo_usuario;
     end;

    // Hierarquia
    tbUsuariosHierarquia.AsInteger := cbHierarquia.ItemIndex;
    tbUsuarios.Post;

    //se for inclusão, irá inserir na tabela MSLOGIN_USUARIOS, o registro que foi inserido na tabela Usuários
    if Tag = 1
     then begin
       qrManipulaMSLOGIN_USUARIOS.SQL.Clear;
       qrManipulaMSLOGIN_USUARIOS.SQL.Clear;
       qrManipulaMSLOGIN_USUARIOS.sql.Add('SELECT Usuarios.USUARIO, Usuarios.SENHA, Usuarios.NOME_COMPLETO, ');
       qrManipulaMSLOGIN_USUARIOS.sql.Add('Usuarios.EMAIL, Usuarios.DATA_VALIDADE_SENHA, Controle_Usuarios_Senhas.Senha_Email ');
       qrManipulaMSLOGIN_USUARIOS.sql.Add('FROM Usuarios LEFT OUTER JOIN Controle_Usuarios_Senhas ON Usuarios.Usuario = Controle_Usuarios_Senhas.Usuario ');
       qrManipulaMSLOGIN_USUARIOS.sql.Add('WHERE Usuarios.PK_USUARIO = '+ inttostr(ultimo_usuario));
       qrManipulaMSLOGIN_USUARIOS.Close;
       qrManipulaMSLOGIN_USUARIOS.Open;

       //armazenando a senha do email do usuário, em Controle_Usuarios_Senhas
       senha_email_usuario :=  qrManipulaMSLOGIN_USUARIOSSenha_Email.AsString;

       qrManipulaMSLOGIN_USUARIOS.SQL.Clear;
       qrManipulaMSLOGIN_USUARIOS.sql.Add('INSERT INTO MSLOGIN_USUARIOS ');
       qrManipulaMSLOGIN_USUARIOS.sql.Add('( PK_USUARIO, Login, Senha, Nome_Completo, Email, Tipo_usuario, DATA_VALIDADE_SENHA, Senha_Email, Email_MSW, Senha_Email_MSW ) ');
       qrManipulaMSLOGIN_USUARIOS.sql.Add('SELECT TOP 1 PK_USUARIO, Usuario, Senha, Nome_Completo, Email, ''MS'' , Data_validade_senha, "'+senha_email_usuario+'", ');
       qrManipulaMSLOGIN_USUARIOS.sql.Add('REPLACE(Usuarios.EMAIL,''@mslogistica.com.br'',''-msw@mslogistica.com.br''), ''msw528'' ');
       qrManipulaMSLOGIN_USUARIOS.sql.Add('FROM Usuarios WHERE PK_USUARIO = '+ inttostr(ultimo_usuario));
       qrManipulaMSLOGIN_USUARIOS.ExecSQL;
     end
     else begin
       qrManipulaMSLOGIN_USUARIOS.SQL.Clear;
       qrManipulaMSLOGIN_USUARIOS.sql.Add('SELECT Usuarios.USUARIO, Usuarios.SENHA, Usuarios.NOME_COMPLETO, ');
       qrManipulaMSLOGIN_USUARIOS.sql.Add('Usuarios.EMAIL, Usuarios.DATA_VALIDADE_SENHA, Controle_Usuarios_Senhas.Senha_Email ');
       qrManipulaMSLOGIN_USUARIOS.sql.Add('FROM Usuarios LEFT OUTER JOIN Controle_Usuarios_Senhas ON Usuarios.Usuario = Controle_Usuarios_Senhas.Usuario ');
       qrManipulaMSLOGIN_USUARIOS.sql.Add('WHERE Usuarios.PK_USUARIO = '+ tbUsuariosPK_USUARIO.AsString);
       qrManipulaMSLOGIN_USUARIOS.Close;
       qrManipulaMSLOGIN_USUARIOS.Open;

       //armazenando em variáveis os campos que necessitam ser atualizados em MSLOGIN_USUARIOS
       login_usuario         := qrManipulaMSLOGIN_USUARIOSUSUARIO.AsString;
       senha_usuario         := qrManipulaMSLOGIN_USUARIOSSENHA.AsString;
       nome_completo_usuario := qrManipulaMSLOGIN_USUARIOSNOME_COMPLETO.AsString;
       email_usuario         := qrManipulaMSLOGIN_USUARIOSEMAIL.AsString;
       dt_val_senha_usuario  := qrManipulaMSLOGIN_USUARIOSDATA_VALIDADE_SENHA.AsString;
       senha_email_usuario   :=  qrManipulaMSLOGIN_USUARIOSSenha_Email.AsString;

       qrManipulaMSLOGIN_USUARIOS.SQL.Clear;
       qrManipulaMSLOGIN_USUARIOS.sql.Add('UPDATE MSLOGIN_USUARIOS SET ');
       qrManipulaMSLOGIN_USUARIOS.sql.Add('Login            = "'+login_usuario+'", Senha = "'+senha_usuario+'", ');
       qrManipulaMSLOGIN_USUARIOS.sql.Add('Nome_Completo    = "'+nome_completo_usuario+'", Email = "'+email_usuario+'", ');
       qrManipulaMSLOGIN_USUARIOS.sql.Add('Email_MSW        = "'+stringreplace(email_usuario,'@mslogistica.com.br','-msw@mslogistica.com.br',[])+'", ');
       qrManipulaMSLOGIN_USUARIOS.sql.Add('Senha_Email      = "'+senha_email_usuario+'", Senha_Email_MSW = ''msw528'', ');
       qrManipulaMSLOGIN_USUARIOS.sql.Add('Tipo_usuario     = ''MS'', DATA_VALIDADE_SENHA = "'+dt_val_senha_usuario+'" ');
       qrManipulaMSLOGIN_USUARIOS.sql.Add('WHERE PK_USUARIO = '+ tbUsuariosPK_USUARIO.AsString);

       qrManipulaMSLOGIN_USUARIOS.ExecSQL;
     end;

    qrManipulaMSLOGIN_USUARIOS.Close;
    atualizar_grid();

    if Tag = 1
     then begin
       logusu('I','Incluiu Usuário: '+ tbUsuariosUsuario.AsString);

       qrMenuInc.Params[0].AsString := tbUsuariosUsuario.AsString;
       qrMenuInc.Params[1].AsString := tbUsuariosNivel.AsString;
       qrMenuInc.ExecSQL;
     end
     else logusu('P','Alterou Usuário: '+ tbUsuariosUsuario.AsString);

    Tag := 0;
    qr_tot_usuario.open;

    while not qr_tot_usuario.Eof do
     begin
       processamento('Aguarde... Atualizando Usuarios... ',qr_tot_usuario.recordcount,false);
       q_in_res_hab.SQL.Clear;
       q_in_res_hab.sql.Add('DELETE from Usuarios_Resp_habilitados ');
       q_in_res_hab.sql.Add('where Usuarios_HABILITADO not in( ');
       q_in_res_hab.sql.Add('   select Usuarios_Resp_habilitados.Usuarios_HABILITADO from Usuarios_Resp_habilitados ');
       q_in_res_hab.sql.Add('   right JOIN Usuarios on Usuarios_Resp_habilitados.Usuarios_HABILITADO = Usuarios.Usuario ');
       q_in_res_hab.sql.Add('   where Usuarios_Resp_habilitados.Usuarios = "'+qr_tot_usuarioUsuario.AsString+'" ) ');
       q_in_res_hab.sql.Add('and Usuarios_Resp_habilitados.Usuarios = "'+qr_tot_usuarioUsuario.AsString+'" ');
       q_in_res_hab.ExecSQL;

       q_in_res_hab.SQL.Clear;
       q_in_res_hab.sql.Add('INSERT INTO Usuarios_Resp_habilitados ( Usuarios, Usuarios_HABILITADO ) ');
       q_in_res_hab.sql.Add('SELECT Usuarios_1.Usuario, Usuarios.Usuario as Usuarios_HABILITADO FROM Usuarios, Usuarios AS Usuarios_1 ');
       q_in_res_hab.sql.Add('where Usuarios_1.Usuario =  "'+qr_tot_usuarioUsuario.AsString+'"');
       q_in_res_hab.sql.Add('and Usuarios.Usuario not in ( ');
       q_in_res_hab.sql.Add('   select Usuarios_Resp_habilitados.Usuarios_HABILITADO from Usuarios_Resp_habilitados ');
       q_in_res_hab.sql.Add('   inner JOIN Usuarios on Usuarios_Resp_habilitados.Usuarios_HABILITADO = Usuarios.Usuario');
       q_in_res_hab.sql.Add('   where Usuarios_Resp_habilitados.Usuarios = "'+qr_tot_usuarioUsuario.AsString+'" )');
       q_in_res_hab.ExecSQL;
       qr_tot_usuario.Next;
     end;

    processamento('Aguarde... Atualizando Usuarios... ',qr_tot_usuario.recordcount,true);
    qr_tot_usuario.Close;
  except
    on E: Exception do
      MessageDlg('Erro ao gravar o registro!'+#13#10+'MSG: '+E.message, mtError, [mbOk], 0);
  end;

  if not tbusuariosresponsavel.asinteger = 1
   then begin
     //executa sql para tirar as responsabilidades por processo
     if MessageDlg(v_usuario+', ATENÇÃO! Usuário não é Responsável por Processos, deseja passar a Responsabilidade de Processos para a Supervisão deste Usuário, Confirma?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
      then begin
        quppro.Params[0].AsString := tbUsuariosUsuario.AsString;
        quppro.ExecSQL;
      end;
   end;

  usuario := tbUsuariosUsuario.AsString;
  tbUsuarios.close;
  tbUsuarios.open;
  tbUsuarios.Locate('Usuario',usuario,[loCaseInsensitive]);
end;

procedure TF_usuarios.btnCancelarClick(Sender: TObject);
begin
  tbUsuarios.Cancel;     
end;

procedure TF_usuarios.btnImprimirClick(Sender: TObject);
begin
  pnlGrid.Enabled   := False;
  pnlBotoes.Enabled := False;

  pnlPrint.Left   := 198;
  pnlPrint.Top    := 132;
  pnlPrint.Height := 216;
  pnlPrint.Width  := 221;
  pnlPrint.Visible := True;

  rgTipo.SetFocus;
end;

procedure TF_usuarios.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TF_usuarios.tbUsuariosTBeforeDelete(DataSet: TDataSet);
begin
  logusu('E','Excluiu Usuário: '+ tbUsuariosUsuario.AsString);
end;

procedure TF_usuarios.tbUsuariosTAfterInsert(DataSet: TDataSet);
begin
  pnlCampos.Enabled := True;
  pnlGrid.Enabled   := False;

  btnNovo.Enabled    := False;
  btnAlterar.Enabled := False;
  btnExcluir.Enabled := False;

  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;

  btnImprimir.Enabled := False;
  btnAcesso.Enabled   := False;
  btnMenu.Enabled     := False;
  btnFechar.Enabled   := False;

  dbLcbEmpresas.SetFocus;
end;

procedure TF_usuarios.tbUsuariosTAfterCancel(DataSet: TDataSet);
begin
  pnlCampos.Enabled := False;
  pnlGrid.Enabled   := True;

  btnNovo.Enabled := True;

  if tbUsuarios.RecordCount <> 0
   then begin
     btnAlterar.Enabled  := True;
     btnExcluir.Enabled  := True;
     btnImprimir.Enabled := True;
     btnAcesso.Enabled   := True;
     btnMenu.Enabled     := True;
   end;

  btnGravar.Enabled   := False;
  btnCancelar.Enabled := False;

  btnFechar.Enabled := True;
end;

procedure TF_usuarios.dbEdtUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['a'..'z', 'A'..'Z', '0'..'9', '.', '_', #8])
   then Key := #0;
end;

procedure TF_usuarios.dbEdtNivelKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9'])
   then Key := #0;
end;

procedure TF_usuarios.dbEdtEmailKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['a'..'z', 'A'..'Z', '0'..'9', '.', '_', '-', '@', #8])
   then Key := #0;
end;

procedure TF_usuarios.pnlCamposEnter(Sender: TObject);
begin
  pnlCampos.Color := clTeal;
end;

procedure TF_usuarios.pnlCamposExit(Sender: TObject);
begin
  pnlCampos.Color := clGray;
end;

procedure TF_usuarios.btnAcessoClick(Sender: TObject);
begin
  with qrCli do
   begin
     Params[0].AsString := tbUsuariosEmpresa.AsString;
     Params[1].AsString := tbUsuariosFilial.AsString;
     Params[2].AsString := tbUsuariosUsuario.AsString;
     Open;
   end;

  qrCliAcesso.Params[0].AsString := tbUsuariosUsuario.AsString;
  qrCliAcesso.Open;

  pnlGrid.Enabled   := False;
  pnlBotoes.Enabled := False;

  pnlAcesso.Left   := 12;
  pnlAcesso.Top    := 107;
  pnlAcesso.Height := 265;
  pnlAcesso.Width  := 593;
  pnlAcesso.Visible := True;
end;

procedure TF_usuarios.btnFecharAcessoClick(Sender: TObject);
begin
  pnlGrid.Enabled   := True;
  pnlBotoes.Enabled := True;
  pnlAcesso.Visible := False;

  qrCli.Close;
  qrCliAcesso.Close;
end;

procedure TF_usuarios.btnIncAcessoClick(Sender: TObject);
var
  vCli : String;
begin
  vCli := qrCliCodigo.AsString;
  qrCliInc.Params[0].AsString := tbUsuariosUsuario.AsString;
  qrCliInc.Params[1].AsString := vCli;
  qrCliInc.ExecSQL;

  logusu('I','Incluiu Acesso Restrito ao Usuário: '+ tbUsuariosUsuario.AsString +', Cliente: '+ vCli);

  qrCli.Close;
  qrCli.Open;
  qrCliAcesso.Close;
  qrCliAcesso.Open;

  qrCliAcesso.Locate('Importador',vCli,[]);
  dbLcbCliAcesso.KeyValue := qrCliAcessoImportador.AsVariant;
end;

procedure TF_usuarios.btnExcAcessoClick(Sender: TObject);
var
  vCli: String;
begin
  vCli := qrCliAcessoImportador.AsString;
  qrCliExc.Params[0].AsString := tbUsuariosUsuario.AsString;
  qrCliExc.Params[1].AsString := vCli;
  qrCliExc.ExecSQL;

  logusu('E','Excluiu Acesso Restrito do Usuário: '+ tbUsuariosUsuario.AsString +', Cliente: '+ vCli);

  qrCli.Close;
  qrCli.Open;
  qrCliAcesso.Close;
  qrCliAcesso.Open;

  qrCli.Locate('Codigo',vCli,[]);
  dbLcbCli.KeyValue := qrCliCodigo.AsVariant;
end;

procedure TF_usuarios.qrCliAfterOpen(DataSet: TDataSet);
begin
  if qrCli.RecordCount <> 0
   then begin
     btnIncAcesso.Enabled := True;
     dbLcbCli.KeyValue    := qrCliCodigo.AsVariant;
   end
   else btnIncAcesso.Enabled := False;
end;

procedure TF_usuarios.qrCliAcessoAfterOpen(DataSet: TDataSet);
begin
  if qrCliAcesso.RecordCount <> 0
   then begin
     btnExcAcesso.Enabled    := True;
     dbLcbCliAcesso.KeyValue := qrCliAcessoImportador.AsVariant;
   end
   else btnExcAcesso.Enabled := False;
end;

procedure TF_usuarios.IncluirItem(pNivel: Shortint; pRoot: TTreeNode);
var
  vNivelAux : Shortint;
  vRootAux  : TTreeNode;
begin
  vRootAux  := pRoot;
  vNivelAux := pNivel;

  while not qrMenu.Eof do
   begin
     vNivelAux := Length(qrMenuCodigo.AsString) Div 2;

     if vNivelaux = pNivel
      then begin
        if vNivelAux = 0
         then vRootAux := ctvLista.Items.Add(pRoot, qrMenuDescricao.AsString)
         else vRootAux := ctvLista.Items.AddChild(pRoot, qrMenuDescricao.AsString)
      end
      else if vNivelAux > pNivel
            then begin
              IncluirItem(vNivelAux, vRootAux);
              Continue;
            end
            else Exit;

     SetLength(vetLista, Length(vetLista)+1);

     with vetLista[High(vetLista)] do
      begin
        NivelNode := pNivel;
        Codigo    := qrMenuCodigo.AsString;
        Descricao := qrMenuDescricao.AsString;
        Nivel     := qrMenuNivel.AsInteger;

        if qrMenuHabilitado.AsInteger = 1
         then Habilitado := True
         else Habilitado := False;

        if qrMenuAcessa.AsInteger = 1
         then Acesso := True
         else Acesso := False;
      end;

     vRootAux.StateIndex := 2;

     qrMenu.Next;
   end;
end;

procedure TF_usuarios.btnMenuClick(Sender: TObject);
var
  i : Integer;
begin
  pnlGrid.Enabled   := False;
  pnlBotoes.Enabled := False;

  SetLength(vetLista, 0);
  ctvLista.Items.Clear; { REMOVE OS NÓS EXISTENTES }

  qrMenu.Params[0].AsString := tbUsuariosUsuario.AsString;
  qrMenu.Open;

  IncluirItem(0,nil);

  with ctvLista do
   begin
     for i := 0 to Items.Count-1 do
       if not(vetLista[i].Habilitado and vetLista[i].Acesso)
        then SetStateNode(Items[i], csUnchecked);

     if Items.Count <> 0
      then Items[0].Selected := True;

     AllExpand := True;
  end;

  pnlMenu.Left   := 12;
  pnlMenu.Top    := 67;
  pnlMenu.Height := 345;
  pnlMenu.Width  := 593;
  
  pnlMenu.Visible := True;
end;

procedure TF_usuarios.btnFecharMenuClick(Sender: TObject);
begin
  pnlMenu.Visible := False;
  qrMenu.Close;

  pnlGrid.Enabled := True;
  pnlBotoes.Enabled := True;

  SetLength(vetLista, 0);
  ctvLista.Items.Clear; { REMOVE OS NÓS EXISTENTES }
end;

procedure TF_usuarios.btnGravarMenuClick(Sender: TObject);
var
  i, vCont : Integer;
begin
  vCont := 0;

  for i := 0 to ctvLista.Items.Count-1 do
    if vetLista[i].Acesso <> (TCheckState(ctvLista.Items[i].StateIndex) <> csUnchecked)
     then begin
       vetLista[i].Acesso := (TCheckState(ctvLista.Items[i].StateIndex) <> csUnchecked);
       qrMenuAtu.Params[1].AsString := tbUsuariosUsuario.AsString;
       qrMenuAtu.Params[2].AsString := vetLista[i].Codigo;

       if vetLista[i].Acesso = true
        then qrMenuAtu.Params[0].Asinteger := 1
        else qrMenuAtu.Params[0].Asinteger := 0;

       qrMenuAtu.ExecSQL;
       Inc(vCont);
     end;

    if vCont <> 0
     then if vCont = 1
           then MessageDlg('Foi atualizado '+ IntToStr(vCont) +' item.', mtInformation, [mbOk], 0)
           else MessageDlg('Foram atualizados '+ IntToStr(vCont) +' itens.', mtInformation, [mbOk], 0)
     else MessageDlg('Não há itens a serem atualizados.', mtInformation, [mbOk], 0);
end;

procedure TF_usuarios.btnFecharPrintClick(Sender: TObject);
begin
  pnlPrint.Visible := False;

  pnlGrid.Enabled   := True;
  pnlBotoes.Enabled := True;
end;

procedure TF_usuarios.btnImprimirRelClick(Sender: TObject);
begin
  if rgTipo.ItemIndex = 0
   then begin
     if not Assigned(QR_usuarios)
      then Application.CreateForm(TQR_usuarios, QR_usuarios);

     QR_usuarios.Preview;
   end
   else begin
     if not Assigned(QR_UsuariosMenu)
      then Application.CreateForm(TQR_UsuariosMenu, QR_UsuariosMenu);

     with QR_UsuariosMenu do
      begin
        qrUsu.Params[0].AsString := tbUsuariosEmpresa.AsString;
        qrUsu.Params[1].AsString := tbUsuariosFilial.AsString;

        if rgUsuario.ItemIndex = 0
         then qrUsu.Params[2].AsString := tbUsuariosUsuario.AsString
         else qrUsu.Params[2].AsString := '%';

        qrUsu.Open;
        Preview;
        qrUsu.Close;
      end;
   end;

  btnFecharPrint.Click;
end;

procedure TF_usuarios.rgTipoClick(Sender: TObject);
begin
  rgUsuario.Enabled := (rgTipo.ItemIndex = 1);
end;

procedure TF_usuarios.tbUsuariosTAfterScroll(DataSet: TDataSet);
begin
  with qrSupervisores do
   begin
     Close;
     Params[0].AsString := tbUsuariosEmpresa.AsString;
     Params[1].AsString := tbUsuariosFilial.AsString;

     if tbUsuariosUsuario.AsString <> ''
      then Params[2].AsString := tbUsuariosUsuario.AsString
      else Params[2].AsString := ' ';

     Open;
   end;
end;

procedure TF_usuarios.SpeedButton1Click(Sender: TObject);
begin
  tbUsuariosSupervisorc.AsString := '';
end;

procedure TF_usuarios.tbUsuariosAfterCancel(DataSet: TDataSet);
begin
  pnlCampos.Enabled := False;
  btnNovo.Enabled := True;

  if tbUsuarios.RecordCount <> 0
   then begin
     btnAlterar.Enabled  := True;
     btnExcluir.Enabled  := True;
     btnImprimir.Enabled := True;
     btnAcesso.Enabled   := True;
     btnMenu.Enabled     := True;
   end;

  btnGravar.Enabled   := False;
  btnCancelar.Enabled := False;

  btnFechar.Enabled := True;
  pnlGrid.Enabled   := True;
end;

procedure TF_usuarios.tbUsuariosAfterEdit(DataSet: TDataSet);
begin
  pnlCampos.Enabled := True;
  pnlGrid.Enabled   := False;

  btnNovo.Enabled    := False;
  btnAlterar.Enabled := False;
  btnExcluir.Enabled := False;

  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;

  btnImprimir.Enabled := False;
  btnAcesso.Enabled   := False;
  btnMenu.Enabled     := False;
  btnFechar.Enabled   := False;

  dbLcbEmpresas.SetFocus;
end;

procedure TF_usuarios.tbUsuariosAfterInsert(DataSet: TDataSet);
begin
  pnlCampos.Enabled := True;
  pnlGrid.Enabled   := False;

  btnNovo.Enabled    := False;
  btnAlterar.Enabled := False;
  btnExcluir.Enabled := False;

  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;

  btnImprimir.Enabled := False;
  btnAcesso.Enabled   := False;
  btnMenu.Enabled     := False;
  btnFechar.Enabled   := False;

  dbLcbEmpresas.SetFocus;
end;

procedure TF_usuarios.tbUsuariosAfterPost(DataSet: TDataSet);
begin
  pnlCampos.Enabled := False;
  pnlGrid.Enabled := True;

  btnNovo.Enabled := True;

  if tbUsuarios.RecordCount <> 0
   then begin
     btnAlterar.Enabled  := True;
     btnExcluir.Enabled  := True;
     btnImprimir.Enabled := True;
     btnAcesso.Enabled   := True;
     btnMenu.Enabled     := True;
   end;

  btnGravar.Enabled   := False;
  btnCancelar.Enabled := False;

  btnFechar.Enabled := True;
end;

procedure TF_usuarios.tbUsuariosAfterScroll(DataSet: TDataSet);
begin
  with qrSupervisores do
   begin
     Close;
     Params[0].AsString := tbUsuariosEmpresa.AsString;
     Params[1].AsString := tbUsuariosFilial.AsString;

     if tbUsuariosUsuario.AsString <> ''
      then Params[2].AsString := tbUsuariosUsuario.AsString
      else Params[2].AsString := ' ';

     Open;
   end;

  cbHierarquia.ItemIndex := tbUsuariosHierarquia.AsInteger;
end;

procedure TF_usuarios.tbUsuariosBeforeDelete(DataSet: TDataSet);
begin
  logusu('E','Excluiu Usuário: '+ tbUsuariosUsuario.AsString);
end;

procedure TF_usuarios.atualizar_grid();
begin
  pnlCampos.Enabled := true;
  pnlGrid.Enabled   := True;

  btnNovo.Enabled := True;

  if tbUsuarios.RecordCount <> 0
   then begin
     btnAlterar.Enabled  := True;
     btnExcluir.Enabled  := True;
     btnImprimir.Enabled := True;
     btnAcesso.Enabled   := True;
     btnMenu.Enabled     := True;
   end;

  btnGravar.Enabled   := False;
  btnCancelar.Enabled := False;

  btnFechar.Enabled := True;
end;

procedure TF_usuarios.SpeedButton2Click(Sender: TObject);
begin
  tbUsuariosSetor.AsString := '';
end;

procedure TF_usuarios.edtLocalizarChange(Sender: TObject);
begin
  tbUsuarios.Locate('Usuario', edtLocalizar.Text, [loCaseInsensitive, loPartialKey]);
end;

function TF_usuarios.TemSolicitacaoNumerario(Usuario: String): Boolean;
begin
  try
    qrySolicitacaoNumerarios.ParamByName('Usuario').Value := Usuario;
    qrySolicitacaoNumerarios.close;
    qrySolicitacaoNumerarios.Open;

    if ( qrySolicitacaoNumerarios.IsEmpty )
     then Result := False
     else Result := True;
  finally
    qrySolicitacaoNumerarios.Close;
  end;
end;

procedure TF_usuarios.DBCheckBox21Click(Sender: TObject);
begin
  if tbUsuariosAtivo.AsBoolean
   then btnAtivarDesativar.Caption := 'Desativar'
   else btnAtivarDesativar.Caption := 'Ativar';

  {if ( not DBCheckBox21.Checked )
   then begin
     if ( TemSolicitacaoNumerario( dbEdtUsuario.Text ) )
      then begin
        DBCheckBox21.Checked := true;
        MessageDlg('Usuário possui soicitação(ões) de autorização de numerários em aberto, não será possível desativá-lo.', mtInformation, [mbOk], 0);
      end;
   end;}
end;

procedure TF_usuarios.btnCheckClick(Sender: TObject);
begin
  Application.CreateForm(TfrmClientes_Check, frmClientes_Check);
  logusu('A','Acessou Usuários/Check');
  frmClientes_Check.Show;
end;

procedure TF_usuarios.btnCopiarClick(Sender: TObject);
begin
  pnlCopiarPerfil.Show;
  pnlCopiarPerfil.Top  := 165;
  pnlCopiarPerfil.left := 169;

  qryPerfill_Usuarios.close;
  qryPerfill_Usuarios.Open;
  edtPerfil_Para.Text := tbUsuariosUsuario.AsString;
end;

procedure TF_usuarios.btnCopiarFecharClick(Sender: TObject);
begin
  qryPerfill_Usuarios.close;
  pnlCopiarPerfil.Hide;
end;

procedure TF_usuarios.btnCopiarCopiarClick(Sender: TObject);
begin
  if ( DBLookupComboBox3.Text = '' )
   then begin
     Application.MessageBox('Campo perfil não pode ser vazio','Aviso', MB_OK+MB_ICONWARNING);
     Abort;
   end;

  if ( chkMenu.Checked )
   then begin
     qryPerfil_Delete.SQL.Clear;
     qryPerfil_Delete.SQL.Text := 'delete from UsuariosMenus where Usuario =:Usuario ';
     qryPerfil_Delete.ParamByName('Usuario').Value := edtPerfil_Para.Text;
     qryPerfil_Delete.ExecSQL;

     qryPerfil_Gravar.SQL.Clear;
     qryPerfil_Gravar.SQL.Text := 'insert into UsuariosMenus(Usuario, Menu, ACESSA) '+
                                 'Select :UsuarioDest, Menu, ACESSA from UsuariosMenus where Usuario =:UsuarioCopia ';
     qryPerfil_Gravar.ParamByName('UsuarioDest').Value := edtPerfil_Para.Text;
     qryPerfil_Gravar.ParamByName('UsuarioCopia').Value := DBLookupComboBox3.Text;
     qryPerfil_Gravar.ExecSQL;
   end;

  if ( chkAcesso.Checked )
   then begin
     qryPerfil_Delete.SQL.Clear;
     qryPerfil_Delete.SQL.Text := 'delete from UsuariosClientes where Usuario =:Usuario ';
     qryPerfil_Delete.ParamByName('Usuario').Value := edtPerfil_Para.Text;
     qryPerfil_Delete.ExecSQL;

     qryPerfil_Gravar.SQL.Clear;
     qryPerfil_Gravar.SQL.Text := 'insert into UsuariosClientes(Usuario, importador) '+
                                  'Select :UsuarioDest, importador from UsuariosClientes where Usuario =:UsuarioCopia ';
     qryPerfil_Gravar.ParamByName('UsuarioDest').Value := edtPerfil_Para.Text;
     qryPerfil_Gravar.ParamByName('UsuarioCopia').Value := DBLookupComboBox3.Text;
     qryPerfil_Gravar.ExecSQL;
   end;

  DBLookupComboBox3.KeyValue := -1;
  Application.MessageBox('Perfil copiado com sucesso','Aviso', MB_OK+MB_ICONINFORMATION);
  pnlCopiarPerfil.Hide;
end;

procedure TF_usuarios.btnIncluirClick(Sender: TObject);
begin
  if Length(F_MSCOMEX.LRTrim(me_nossaref.Text)) <> 8
   then Exit;

  qrProcessos.ParamByName( 'qProcesso' ).Value := me_nossaref.Text;
  qrProcessos.Close;
  qrProcessos.Open;

  if ( not qrProcessos.IsEmpty )
   then begin
     qrProcessoUsu_follow.close;
     qrProcessoUsu_follow.ParamByName('Processo').Value := ME_nossaref.text ;
     qrProcessoUsu_follow.Open;

     if (qrProcessoUsu_followprocesso.AsString = '')
      then begin
        qrinsertUsu_Follow.close;
        qrinsertUsu_Follow.ParamByName('Processo').Value := ME_nossaref.text ;
        qrinsertUsu_Follow.ParamByName('Usuario').Value  := dbEdtUsuario.text;

        ShowMessage ('Foi efetuado a inclusão com sucesso.');

        ME_nossaref.Clear;
        qrinsertUsu_Follow.ExecSQL;
        qrUsu_Follow.close;
        qrUsu_Follow.ParamByName('qUsuario').Value := dbEdtUsuario.text;
        qrUsu_Follow.open;
      end
      else MessageDlg('O processo está liberado para o usuário: '  +qrProcessoUsu_followusuario.AsString, mtInformation,[mbOk], 0);

     me_nossaref.Clear;
     me_nossaref.SetFocus
   end
   else begin
     MessageDlg('Processo não encontrado!', mtInformation,[mbOk], 0);
     me_nossaref.Clear;
     me_nossaref.SetFocus
   end;
end;

procedure TF_usuarios.btnLiberaFollowClick(Sender: TObject);
begin
  pnlLiberarFollow.show;
  pnlLiberarFollow.Top := 165;
  pnlLiberarFollow.left := 169;

  ME_nossaref.setfocus;

  qrUsu_Follow.close;
  qrUsu_Follow.ParamByName('qUsuario').Value := dbEdtUsuario.text;
  qrUsu_Follow.open;
end;

procedure TF_usuarios.btnFollowfechaClick(Sender: TObject);
begin
  pnlLiberarFollow.hide;
end;

procedure TF_usuarios.btnExcluiFollowClick(Sender: TObject);
begin
  qrDeleteUsu_follow.close;
  qrDeleteUsu_follow.ParamByName('processo').Value := qrUsu_Followprocesso.AsString;
  qrDeleteUsu_follow.ExecSQL;

  qrUsu_Follow.close;
  qrUsu_Follow.ParamByName('qUsuario').Value := dbEdtUsuario.text;
  qrUsu_Follow.open;
end;

procedure TF_usuarios.dbEdtCPFKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9',Chr(8)])
   then Key:= #0;
end;

procedure TF_usuarios.btnFeriasClick(Sender: TObject);
begin
  Ferias := True;

  if (TemSolicitacaoNumerario(dbEdtUsuario.Text))
   then begin
     MessageDlg('Usuário possui solicitação(ões) de autorização de numerários em aberto, não será possível desativá-lo.', mtInformation, [mbOk], 0);
     Abort;
   end;

  if MessageDlg('Os processos serão encaminhados para outro responsável, deseja prosseguir ?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
   then AbrePanelDistribuicao;
end;

procedure TF_usuarios.btnAtivarDesativarClick(Sender: TObject);
begin
  Ferias := False;

  if (btnAtivarDesativar.Caption = 'Desativar')
   then begin
     if (TemSolicitacaoNumerario(dbEdtUsuario.Text))
      then begin
        MessageDlg('Usuário possui solicitação(ões) de autorização de numerários em aberto, não será possível desativá-lo.', mtInformation, [mbOk], 0);
        Abort;
      end;

     if MessageDlg('Deseja realmente desativar o colaborador ? Os processos serão encaminhados para outro responsável.', mtConfirmation,[mbYes, mbNo], 0) = mrYes
      then begin
        ExcluirEmailsAvisos;

        AbrePanelDistribuicao;
      end;
   end;

  if (btnAtivarDesativar.Caption = 'Ativar')
   then begin
     AtivaColaborador(True);

     ReativarEmailsAvisos;
   end;
end;

procedure TF_usuarios.EncaminharControlePastas;
var
  QrAux : TQuery;
begin
  QrAux := TQuery.Create(nil);
  QrAux.DatabaseName := 'DBNMSCOMEX';

  try
    QrAux.SQL.Add('UPDATE Controle_Pastas SET Usuario = :UsuarioDestinatario, Aceite = 2 WHERE Usuario = :UsuarioRemetente');
    QrAux.ParamByName('UsuarioDestinatario').Value := qryDistribuiProcessosUsuario.AsString;
    QrAux.ParamByName('UsuarioRemetente').Value    := tbUsuariosUsuario.AsString;
    QrAux.ExecSQL;

    logusu('E','Pastas do Usuário inativado ' +tbUsuariosUsuario.AsString+ ' transferidas para o Usuário: '+ qryDistribuiProcessosUsuario.AsString);
  finally
    QrAux.Free;
  end;
end;

procedure TF_usuarios.EncaminharDistribuicao;
var
  QrAux : TQuery;
begin
  QrAux := TQuery.Create(nil);
  QrAux.DatabaseName := 'DBNMSCOMEX';

  try
    QrAux.Close;
    QrAux.SQL.Clear;
    QrAux.SQL.Add(' UPDATE Processos                                                            ');
    QrAux.SQL.Add('    SET Responsavel_Empresa = :Responsavel_Empresa_Destinatario              ');
    QrAux.SQL.Add('  WHERE Fechado = 0 AND Responsavel_Empresa = :Responsavel_Empresa_Remetente ');
    QrAux.ParamByName('Responsavel_Empresa_Destinatario').Value := qryDistribuiProcessosUsuario.AsString;
    QrAux.ParamByName('Responsavel_Empresa_Remetente').Value    := tbUsuariosUsuario.AsString;
    QrAux.ExecSQL;

    logusu('E','Responsabilidade dos Processos do Ex-Colaborador : ' + tbUsuariosUsuario.AsString + ' transferida para o colaborador '+ qryDistribuiProcessosUsuario.AsString);

    QrAux.Close;
    QrAux.SQL.Clear;
    QrAux.SQL.Add(' UPDATE Processos                                                    ');
    QrAux.SQL.Add('    SET Supervisor_Resp = :Supervisor_Resp_Destinatario              ');
    QrAux.SQL.Add('  WHERE Fechado = 0 AND Supervisor_Resp = :Supervisor_Resp_Remetente ');
    QrAux.ParamByName('Supervisor_Resp_Destinatario').Value := qryDistribuiProcessosUsuario.AsString;
    QrAux.ParamByName('Supervisor_Resp_Remetente').Value    := tbUsuariosUsuario.AsString;
    QrAux.ExecSQL;

    logusu('E','Supervisão dos Processos do Ex-Colaborador : ' + tbUsuariosUsuario.AsString + ' transferida para o colaborador '+ qryDistribuiProcessosUsuario.AsString);

    QrAux.Close;
    QrAux.SQL.Clear;
    QrAux.SQL.Add(' UPDATE Processos                                                      ');
    QrAux.SQL.Add('    SET Coordenador_Resp = :Coordenador_Resp_Destinatario              ');
    QrAux.SQL.Add('  WHERE Fechado = 0 AND Coordenador_Resp = :Coordenador_Resp_Remetente ');
    QrAux.ParamByName('Coordenador_Resp_Destinatario').Value := qryDistribuiProcessosUsuario.AsString;
    QrAux.ParamByName('Coordenador_Resp_Remetente').Value    := tbUsuariosUsuario.AsString;
    QrAux.ExecSQL;

    logusu('E','Coordenação dos Processos do Ex-Colaborador : ' + tbUsuariosUsuario.AsString + ' transferida para o colaborador '+ qryDistribuiProcessosUsuario.AsString);
  finally
    QrAux.Free;
  end;
end;

procedure TF_usuarios.ExcluirEmailsAvisos;
var
  QrAux : TQuery;
begin
  QrAux := TQuery.Create(nil);
  QrAux.DatabaseName := 'DBNMSCOMEX';

  try
    QrAux.SQL.Add('DELETE FROM Emails_avisos WHERE Email = :Email');
    QrAux.ParamByName('Email').Value := tbUsuariosEmail.AsString;
    QrAux.ExecSQL;

    logusu('E','Avisos do Usuário: '+ tbUsuariosUsuario.AsString +' excluídos do sistema');
  finally
    QrAux.Free;
  end;
end;

procedure TF_usuarios.btnEnviaDistribuicaoClick(Sender: TObject);
begin
  EncaminharControlePastas;

  EncaminharDistribuicao;

  AtivaColaborador(False);

  if Ferias
   then begin
     DesativarEmailsAvisos;
     
     logusu('A','Colaborador colocado em Férias : ' + tbUsuariosUsuario.AsString + ' pelo Usuário ' + v_usuario);
   end;

  logusu('A','Colaborador : ' + tbUsuariosUsuario.AsString + ' inativado no sistema.');

  DBLookupComboBox4.KeyValue := '';
  pnlDistribuicaoProcessos.Visible := False;
end;

procedure TF_usuarios.AtivaColaborador(Ativa: Boolean);
begin
  tbUsuarios.Edit;
  tbUsuariosAtivo.Value := Ativa;

  if Ferias
   then tbUsuariosFerias.Value := True
   else tbUsuariosFerias.Value := False;

  tbUsuarios.Post;

  if tbUsuariosAtivo.AsBoolean
   then btnAtivarDesativar.Caption := 'Desativar'
   else btnAtivarDesativar.Caption := 'Ativar';

  btnFerias.Enabled := (not tbUsuariosFerias.Value) and (tbUsuariosAtivo.Value);
end;

procedure TF_usuarios.AbrePanelDistribuicao;
begin
  qryDistribuiProcessos.close;
  qryDistribuiProcessos.Open;

  pnlDistribuicaoProcessos.Visible := True;
  pnlDistribuicaoProcessos.Top    := 250;
  pnlDistribuicaoProcessos.Left   := 121;
  pnlDistribuicaoProcessos.Height := 100;
  pnlDistribuicaoProcessos.Width  := 371;
end;

procedure TF_usuarios.DesativarEmailsAvisos;
var
  QrAux : TQuery;
begin
  QrAux := TQuery.Create(nil);
  QrAux.DatabaseName := 'DBNMSCOMEX';

  try
    QrAux.SQL.Add('UPDATE Emails_avisos SET Ativo = 0 WHERE Email = :Email');
    QrAux.ParamByName('Email').Value := tbUsuariosEmail.AsString;
    QrAux.ExecSQL;

    logusu('E','Avisos do Usuário: '+ tbUsuariosUsuario.AsString +' desativados.');
  finally
    QrAux.Free;
  end;
end;

procedure TF_usuarios.ReativarEmailsAvisos;
var
  QrAux : TQuery;
begin
  QrAux := TQuery.Create(nil);
  QrAux.DatabaseName := 'DBNMSCOMEX';

  try
    QrAux.SQL.Add('UPDATE Emails_avisos SET Ativo = 1 WHERE Email = :Email');
    QrAux.ParamByName('Email').Value := tbUsuariosEmail.AsString;
    QrAux.ExecSQL;

    logusu('E','Avisos do Usuário: '+ tbUsuariosUsuario.AsString +' reativados.');
  finally
    QrAux.Free;
  end;
end;

end.
