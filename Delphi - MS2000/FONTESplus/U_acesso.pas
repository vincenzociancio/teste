unit U_acesso;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, Db, DBTables, dialogs, MPlayer, ExtCtrls, OleCtrls, SHDocVw;

type
  Tf_senha = class(TForm)
    DS_empresas: TDataSource;
    DS_filiais: TDataSource;
    T_empresas: TTable;
    T_filiais: TTable;
    DS_usuarios: TDataSource;
    T_usuarios: TTable;
    DS_parametros: TDataSource;
    T_parametros: TTable;
    Panel1: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    E_usuario: TEdit;
    Label1: TLabel;
    E_senha: TEdit;
    B_confirma: TBitBtn;
    B_cancela: TBitBtn;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit3: TEdit;
    Edit4: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    DB_MSCOMEX_acesso: TDatabase;
    DB_LOGMSCOMEX: TDatabase;
    Panel3: TPanel;
    WB1: TWebBrowser;
    Panel4: TPanel;
    t_dataFollow: TTable;
    Q_USU_HAB: TQuery;
    Q_USU_HABUsuarios_HABILITADO: TStringField;
    Q_USU_HABHabilitado: TSmallintField;
    Q_USU_HABUsuarios: TStringField;
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
    T_usuariosEmpresa: TStringField;
    T_usuariosFilial: TStringField;
    T_usuariosUsuario: TStringField;
    T_usuariosSenha: TStringField;
    T_usuariosNome_Completo: TStringField;
    T_usuariosDiretorio_SISCOMEX: TStringField;
    T_usuariosNivel: TStringField;
    T_usuariosNivel_ccorrente: TStringField;
    T_usuariosData_validade_senha: TDateTimeField;
    T_usuariosEmail: TStringField;
    T_usuariosEmail_Sol_Num: TSmallintField;
    T_usuariosEmail_aviso_oper: TSmallintField;
    T_usuariosEmail_aviso_finan: TSmallintField;
    T_usuariosEmail_aviso_diretoria: TSmallintField;
    T_usuariosEmail_aviso_sistema: TSmallintField;
    T_usuariosDistribui_processo: TSmallintField;
    T_usuariosAbre_processos: TSmallintField;
    T_usuariosEdita_eventos: TSmallintField;
    T_usuariosDigitalizador: TSmallintField;
    T_usuariosTraduz_Classifica: TSmallintField;
    T_usuariosInativa_Cliente: TSmallintField;
    T_usuariosEdita_cliente_inativo: TSmallintField;
    T_usuariosFecha_Processo: TSmallintField;
    T_usuariosEdita_Processo_Fechado: TSmallintField;
    T_usuariosAcessa_Patrimonio: TSmallintField;
    T_usuariosSupervisor: TStringField;
    T_usuariosAcessa_PARAFAT: TSmallintField;
    T_usuariosDesconto_Faturamento: TSmallintField;
    T_usuariosResponsavel: TSmallintField;
    T_usuariosDistribui_processoC: TSmallintField;
    T_usuariosResponsavelC: TSmallintField;
    T_usuariosSupervisorC: TStringField;
    T_usuariosSetor: TStringField;
    T_filiaisCodigo_Empresa: TStringField;
    T_filiaisCodigo_Filial: TStringField;
    T_filiaisDescricao: TStringField;
    T_filiaisEndereco: TStringField;
    T_filiaisNumero: TStringField;
    T_filiaisComplemento: TStringField;
    T_filiaisBairro: TStringField;
    T_filiaisCidade: TStringField;
    T_filiaisUF: TStringField;
    T_filiaisCEP: TStringField;
    T_filiaisTelefone: TStringField;
    T_filiaisFax: TStringField;
    T_empresasCodigo: TStringField;
    T_empresasRazao_Social: TStringField;
    t_dataFollowData: TDateTimeField;
    T_usuariosFOLLOW_LIBERADO: TIntegerField;
    q_feriados: TQuery;
    q_feriadosData: TDateTimeField;
    q_feriadosDescricao: TStringField;
    q_feriadosFilial: TStringField;
    q_feriadosCodObservacao: TStringField;
    qryCheck: TQuery;
    T_usuariosAtivo: TBooleanField;
    T_usuarios_: TQuery;
    T_usuarios_Empresa: TStringField;
    T_usuarios_Filial: TStringField;
    T_usuarios_Usuario: TStringField;
    T_usuarios_Senha: TStringField;
    T_usuarios_Nome_Completo: TStringField;
    T_usuarios_Diretorio_SISCOMEX: TStringField;
    T_usuarios_Nivel: TStringField;
    T_usuarios_Nivel_ccorrente: TStringField;
    T_usuarios_Data_validade_senha: TDateTimeField;
    T_usuarios_Email: TStringField;
    T_usuarios_Email_Sol_Num: TIntegerField;
    T_usuarios_Email_aviso_oper: TIntegerField;
    T_usuarios_Email_aviso_finan: TIntegerField;
    T_usuarios_Email_aviso_diretoria: TIntegerField;
    T_usuarios_Email_aviso_sistema: TIntegerField;
    T_usuarios_Distribui_processo: TIntegerField;
    T_usuarios_Abre_processos: TIntegerField;
    T_usuarios_Edita_eventos: TIntegerField;
    T_usuarios_Digitalizador: TIntegerField;
    T_usuarios_Traduz_Classifica: TIntegerField;
    T_usuarios_Inativa_Cliente: TIntegerField;
    T_usuarios_Edita_cliente_inativo: TIntegerField;
    T_usuarios_Fecha_Processo: TIntegerField;
    T_usuarios_Edita_Processo_Fechado: TIntegerField;
    T_usuarios_Acessa_Patrimonio: TIntegerField;
    T_usuarios_Supervisor: TStringField;
    T_usuarios_Acessa_PARAFAT: TIntegerField;
    T_usuarios_Desconto_Faturamento: TIntegerField;
    T_usuarios_Responsavel: TIntegerField;
    T_usuarios_Distribui_processoC: TIntegerField;
    T_usuarios_ResponsavelC: TIntegerField;
    T_usuarios_SupervisorC: TStringField;
    T_usuarios_Setor: TStringField;
    T_usuarios_FOLLOW_LIBERADO: TIntegerField;
    T_usuarios_PK_USUARIO: TIntegerField;
    T_usuarios_Ramal: TStringField;
    T_usuarios_Celular: TStringField;
    T_usuarios_Hierarquia: TIntegerField;
    T_usuarios_Ativo: TIntegerField;
    T_usuarios_scanner: TBooleanField;
    T_usuariosDocumentador: TBooleanField;
    T_usuariosHierarquia: TIntegerField;
    T_usuariosArquivista: TBooleanField;
    T_usuariosMontador: TBooleanField;
    T_usuariosCPF: TStringField;
    T_usuariosPK_USUARIO: TIntegerField;
    T_usuariosRamal: TStringField;
    T_usuariosCelular: TStringField;
    T_usuariosscanner: TBooleanField;
    T_usuariosAcessoWeb: TBooleanField;
    T_usuariosRegistra_Di: TIntegerField;
    T_usuariosAudita_Di: TIntegerField;
    T_parametrosAlerta_Atualizacao: TIntegerField;
    T_parametrosValorMinimoRegistroDI: TFloatField;
    T_parametrosValorMaximoRegistroDI: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure B_cancelaClick(Sender: TObject);
    procedure B_confirmaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Follow_Check();
  end;

var
  f_senha: Tf_senha;
  qdata: TDateTime;
  achou_feriado:boolean;


implementation

uses U_MSCOMEX, uGrafico;

{$R *.DFM}

procedure Tf_senha.FormCreate(Sender: TObject);
begin
    deuerro    := false;
    Try
    DB_MSCOMEX_acesso.Params.Values['USER NAME'] := BDUser;
    DB_MSCOMEX_acesso.Params.Values['PASSWORD'] := BDSenha;
    DB_MSCOMEX_acesso.Connected := true;
    DB_LOGMSCOMEX.Params.Values['USER NAME'] := BDUser;
    DB_LOGMSCOMEX.Params.Values['PASSWORD'] := BDSenha;
    DB_LOGMSCOMEX.Connected := true;


    Except
    On E:Exception do begin
       SHOWMESSAGE('Erro de Conexão com o Banco de Dados. Verifique sua conexão de rede');
       f_senha.free;
       deuerro := true;
       f_senha.close;
       end;
    end;

t_parametros.Open;
t_empresas.open;
t_filiais.open;

v_empresa := t_parametrosEmpresa.AsString;
v_filial  := t_parametrosfilial.asstring;
v_usuario := ' ';
v_nomecompleto := ' ';
v_email := '';
v_nivel    := ' ';
v_distribui:= 0;
v_distribuic:= 0;
v_abreproc:= 0;
v_editaevento := 0;
v_nivel_cc := ' ';
v_supervisor := '';
v_supervisorc := '';
v_ValorMinimoRegistroDI := T_parametrosValorMinimoRegistroDI.AsFloat;
v_ValorMaximoRegistroDI := T_parametrosValorMaximoRegistroDI.AsFloat;

t_dataFollow.open;
v_dataFollow := t_dataFollowdata.asstring;

qdata := StrToDate(v_dataFollow)-1;

achou_feriado:=false;

q_feriados.close;
q_feriados.params[0].asstring :=  datetostr(qdata);
q_feriados.open;
if q_feriados.RecordCount>0 then  achou_feriado:=true;


while (DayOfWeek(qdata)=1) or (DayOfWeek(qdata)=7) or (achou_feriado=true) do begin
      qdata := (qdata)-1;

      achou_feriado:=false;
      q_feriados.close;
      q_feriados.params[0].asstring :=  datetostr(qdata);
      q_feriados.open;
      if q_feriados.RecordCount>0 then  achou_feriado:=true;

end;
q_feriados.close;
v_dataFollowant := datetostr(qdata);
//showmessage(v_dataFollowant);

t_dataFollow.close;

if t_empresas.findkey([t_parametrosEmpresa.AsString]) then begin
   edit1.text  := t_empresasrazao_social.AsString;
   v_empresanome := t_empresasrazao_social.AsString;
///   f_mscomex.L_empresa.caption := f_mscomex.L_empresa.caption+t_empresasrazao_social.AsString;
   end
else begin
   edit1.text  := 'EMPRESA NAO ENCONTRADA';
   v_empresanome := 'EMPRESA NAO ENCONTRADA';
///   f_mscomex.L_empresa.caption := f_mscomex.L_empresa.caption+'EMPRESA NAO ENCONTRADA';
   end;
if t_filiais.findkey([t_parametrosEmpresa.AsString,t_parametrosfilial.asstring]) then begin
   edit2.text  := t_filiaisdescricao.AsString;
   v_filialnome := t_filiaisdescricao.AsString;
   //   f_mscomex.L_filial.caption := f_mscomex.L_filial.caption+t_filiaisdescricao.AsString;
   end
else begin
   edit2.text  := 'FILIAL NAO ENCONTRADA';
   v_filialnome := 'FILIAL NAO ENCONTRADA';
////   f_mscomex.L_filial.caption := f_mscomex.L_filial.caption+'FILIAL NAO ENCONTRADA';
   end;
t_empresas.close;
t_filiais.close;
t_parametros.close;

e_usuario.text := v_user;
e_senha.text := v_pass;

if (v_user<>'') and (v_pass<>'') then begin

//     F_SENHA.SetFocus;
//   e_usuario.SetFocus;
//   e_senha.SetFocus;
//   b_confirma.SetFocus;
   B_confirmaClick(f_senha);
   F_MSCOMEX.FormActivate(F_SENHA);
//   f_senha.close;//Visible := false;
end
else f_senha.Visible := true;
//gravaweb_log('','iniciou o sistema');

end;

procedure Tf_senha.B_cancelaClick(Sender: TObject);
begin
   f_senha.close;
   application.terminate;
end;

procedure Tf_senha.B_confirmaClick(Sender: TObject);
begin

  t_usuarios.open;
  if t_usuarios.findkey([v_empresa,v_filial,E_usuario.text]) then begin
  //if t_usuarios.Locate('Usuario', E_usuario.text, []) then begin
    if (E_senha.text = t_usuariossenha.asstring) then begin
      if (T_usuariosAtivo.asBoolean = True ) then begin
        v_usuario := Trim(E_usuario.Text);
        v_nomecompleto := t_usuariosnome_completo.asstring;
        v_email := t_usuariosemail.asstring;
        v_nivel    := t_usuariosnivel.asstring;
        v_distribui := t_usuariosdistribui_processo.asinteger;
        v_distribuic := t_usuariosdistribui_processoc.asinteger;
        v_abreproc := T_usuariosAbre_processos.Asinteger;
        v_editaevento := T_usuariosedita_eventos.Asinteger;
        v_nivel_cc := t_usuariosnivel_ccorrente.asstring;

        v_Inativa_Cliente        := T_usuariosInativa_Cliente.Asinteger;
        v_Edita_cliente_inativo  := T_usuariosEdita_cliente_inativo.Asinteger;
        v_Fecha_Processo         := T_usuariosFecha_Processo.Asinteger;
        v_Edita_Processo_Fechado := T_usuariosEdita_Processo_Fechado.Asinteger;
        v_Acessa_Patrimonio      := T_usuariosAcessa_Patrimonio.Asinteger;
        v_Acessa_PARAFAT         := T_usuariosAcessa_PARAFAT.Asinteger;
        v_follow_liberado        := T_usuariosfollow_liberado.Asinteger;

        v_supervisor := t_usuariossupervisor.asstring;
        v_supervisorc := t_usuariossupervisorc.asstring;

        v_digitalizador := T_usuariosDigitalizador.AsInteger;
        v_documentador  := T_usuariosDocumentador.AsBoolean;
        v_hierarquia    := T_usuariosHierarquia.AsInteger;
        v_arquivista    := T_usuariosArquivista.AsBoolean;
        v_montador      := T_usuariosMontador.AsBoolean;
        v_setor         := T_usuariosSetor.AsString;
        v_registra_di   := T_usuariosRegistra_DI.AsInteger;
        v_audita_di     := T_usuariosAudita_DI.AsInteger;

        ///mm 21/07/2006 menu de acesso
        f_mscomex.q_menu.Params[0].AsString := v_usuario;
        f_mscomex.q_menu.Params[1].AsString := v_nivel;
        f_mscomex.q_menu.open;

        ///mm 24/07/2006 usuarios clientes
        f_mscomex.q_usucli.Params[0].AsString := v_usuario;
        f_mscomex.q_usucli.open;

        {t_usuarios.first;
        while not t_usuarios.Eof do begin
          if (t_usuariossupervisor.asstring=v_usuario) or (t_usuariossupervisorc.asstring=v_usuario) or (v_nivel='0') or (v_usuario='DUDA') or (v_usuario='ODILMA')  then begin
             v_usuarios := v_usuarios+'|'+t_usuariosusuario.asstring;
          end;
          t_usuarios.next;
        end;

        Q_USU_HAB.close;
        Q_USU_HAB.params[0].asstring  := E_usuario.text;
        Q_USU_HAB.open;
        while not Q_USU_HAB.Eof do begin
          v_usuarios := v_usuarios+'|'+Q_USU_HABusuarios.asstring;
          Q_USU_HAB.next;
        end;
        Q_USU_HAB.close;}

        t_usuarios.findkey([v_empresa,v_filial,E_usuario.text]);
        logusu('A','Iniciou acesso ao Sistema.');
        //gravaweb_log(v_usuario,v_nomecompleto+', Iniciou acesso ao Sistema ' );

        if not assigned (f_mscomex) then
          Application.CreateForm(TF_mscomex, F_mscomex);
        f_mscomex.enabled  := true;
        f_mscomex.visible  := true;
        F_mscomex.show;
        v_frasesok := true;
        if (date() > t_usuariosdata_validade_senha.asdatetime) or (uppercase(E_senha.text) = uppercase(v_usuario)) then begin
           //if MessageDlg('Bem vindo(a) '+v_nomecompleto+', sua senha expirou. Favor alterar sua senha?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
//               begin
            if uppercase(v_usuario)<> 'MANUEL' then begin
              f_mscomex.enabled  := false;
              panel1.visible := false;
              panel2.visible := true;
              f_senha.Visible := true;
              edit3.setfocus;
              Showmessage('Bem vindo(a) '+v_nomecompleto+','+#13#10#13#10+'Sua senha expirou!'+#13#10+' ( a cada 30 dias será necessário informar uma NOVA SENHA ).'+#13#10#13#10+' Favor informar uma NOVA senha.');
            end;
//           else begin
//                  ///f_senha.close;
//                f_senha.Visible := false;
//                  end;
        end else begin
          ///f_senha.close;
          f_mscomex.timer2.enabled := true;
          f_senha.Visible := false;
        end;

        f_mscomex.p_msplus.Visible := True;
        f_mscomex.l_usuario.caption := 'Usuário: '+v_nomecompleto+' -  Nível: '+v_nivel;
        f_mscomex.l_data.caption    := FormatDateTime(' dddd, dd " de " mmmm " de " yyyy', date());

       IF (( v_usuario <> 'ALBERTO') and (v_usuario <> 'PJAIME') and ( v_usuario <> 'WELINGTON' )) then begin
          F_MSCOMEX.Controle_Letreiro.Enabled := true;
          f_mscomex.pnlLetreiro.Visible := True;
       End;
        // eduardo.souza 12/12/2011
        Follow_Check();
        //---
     end else begin
      MessageDlg('Usuário desativado!', mtConfirmation, [mbOk], 0);
     end
     end else begin
        v_usuario := 'NEGADO';
        logusu('S','Acesso ao Sistema negado - usuário = '+E_usuario.text);
        f_senha.Visible := true;
        //gravaweb_log('','Acesso ao Sistema negado - usuário = '+E_usuario.text);

        if MessageDlg('Acesso não permitido, a senha foi digitada errada!', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
          E_senha.Clear;
          E_senha.SetFocus;
        end
        else begin
          t_usuarios.close;
          f_senha.close;
        end
     end;
  end
  else begin
    f_senha.Visible := true;
    //gravaweb_log('','Acesso ao Sistema negado - usuário = '+E_usuario.text);
    MessageDlg('Usuário não Cadastrado!', mtConfirmation, [mbOK], 0);
    E_usuario.setfocus
  end;
    if v_usuario = 'LSERRA' then
       f_mscomex.Button1.visible := True
    else
       f_mscomex.Button1.visible := False;


end;


procedure Tf_senha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//if (v_user='') and (v_pass='') then begin
action := cafree;
f_senha := nil;
application.Terminate;
//end
//else begin
//f_senha.visible := false;
//end;
end;

procedure Tf_senha.BitBtn2Click(Sender: TObject);
begin
if MessageDlg(v_nomecompleto+','+#13#10#13#10+'para utilizar o sistema será necessário informar uma NOVA SENHA!'+#13#10#13#10+'Deseja sair do sistema?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
   ///showmessage(v_nomecompleto+', alteração de sua senha foi cancelada!');
   ////f_senha.Visible := false;
   f_senha.close;
end
else begin
   edit3.text := '';
   edit4.text := '';
   edit3.setfocus;
end;
end;

procedure Tf_senha.BitBtn1Click(Sender: TObject);
var qsenhaant,QMSG,qletras,qnumeros,qnumerosdig,qnumerosdigi:string;
    i,L,n,qtd_n,qtd_L,m,r:integer;
    senha_invalida:boolean;
begin

senha_invalida := false;

qtd_L := 3;
L:=0; //letras
qletras := 'ABCDEFGHIJKLMNOPQRSTUVXZW';

qtd_n := 3;
n:=0; //numeros
qnumeros := '0123456789';

qnumerosdig:='';
for i:= 1 to (length(edit3.text)) do begin
//    showmessage(copy(edit3.text,i,1));
    if pos(copy(edit3.text,i,1),qnumeros)>0 then begin
       n := n+1;

       qnumerosdig := qnumerosdig+copy(edit3.text,i,1);
      end;
    end;
    if pos(uppercase(copy(edit3.text,i,1)),qletras)>0 then begin
       L := L+1;
    end;

qnumerosdigi:='';
 for i:= 1 to (length(qnumerosdig)) do begin
         qnumerosdigi := copy(qnumerosdig,i,1)+qnumerosdigi;
 end;


//repeticao
r:=0;
for i:= 1 to (length(edit3.text)) do begin
//    showmessage(copy(edit3.text,i,1));
    for m:= 1 to (length(edit3.text)) do begin
       if (copy(edit3.text,i,1)=copy(edit3.text,m,1)) and (i<>m) then begin
           r := r+1;
       end;
    end;
end;

//showmessage('L='+inttostr(L));
//showmessage('N='+inttostr(N));
//if (qtd_L > L) or
  // (qtd_n > n) or
if (edit3.text <> edit4.text) or
   (edit3.text='') or
   (length(edit3.text)<(qtd_L+qtd_n))  or
   (length(edit3.text)>10) then begin
   //(edit3.text='K2X1M8') or
   //(r > 0) or
   senha_invalida := true;
   end
   else begin
   if n >= 6 then begin
     if(pos(qnumerosdig,qnumeros)>0) or
       (pos(qnumerosdigi,qnumeros)>0)then begin
        senha_invalida := true;
     end;
   end;
end;

if (senha_invalida=false) then begin
   //t_usuarios.locate('Usuario', E_usuario.text, []);
   t_usuarios.findkey([v_empresa,v_filial,E_usuario.text]);
   qsenhaant := t_usuariossenha.asstring;
   if edit3.text = qsenhaant then begin
      showmessage(v_nomecompleto+','+#13#10#13#10+'Favor informar uma NOVA SENHA!');
      edit3.text := '';
      edit4.text := '';
      EXIT;
   end;
   t_usuarios.edit;
   t_usuariossenha.asstring := edit3.text;
   t_usuariosdata_validade_senha.asdatetime := (date()+30);
   t_usuarios.post;

   logusu('P','Alterou a senha.');
   f_mscomex.enabled  := true;
   f_senha.Visible := false;
   showmessage(v_nomecompleto+','+#13#10#13#10+'sua senha foi atualizada com Sucesso!');
   f_mscomex.timer2.enabled := true; 

end
else begin
    QMSG := '';
    QMSG := QMSG+v_nomecompleto+'. esta Senha está inválida!'+#13#10#13#10;
    QMSG := QMSG+'sua Senha deverá: '+#13#10#13#10;
    QMSG := QMSG+'- ser diferente de em branco;'+#13#10;
    QMSG := QMSG+'- ser diferente do nome do usuário;'+#13#10;
    QMSG := QMSG+'- possuír no mínimo '+inttostr(qtd_n+qtd_L)+' caracteres;'+#13#10;
    QMSG := QMSG+'- possuir números ou Letras DISTINTOS; '+#13#10; 
    QMSG := QMSG+'- possuir no máximo de 10 caracteres. '+#13#10;
   { QMSG := QMSG+'- possuír no mínimo '+inttostr(qtd_n+qtd_L)+' caracteres DISTINTOS;'+#13#10;
    QMSG := QMSG+'- possuir no mínimo '+inttostr(qtd_n)+' números DISTINTOS; '+#13#10;
    QMSG := QMSG+'- possuir no mínimo '+inttostr(qtd_L)+' letras DISTINTAS; '+#13#10;
    QMSG := QMSG+'- possuir no máximo de 10 caracteres. '+#13#10;
  //  QMSG := QMSG+'- não possuir números SEQUENCIAIS! '+#13#10#13#10;
  //  QMSG := QMSG+'Exemplo: K2X1M8. '+#13#10#13#10; }
    QMSG := QMSG+'Favor informar uma NOVA SENHA!';
    showmessage(QMSG);
    edit3.text := '';
    edit4.text := '';
    edit3.setfocus;
end;

end;

procedure Tf_senha.Follow_Check;
begin
  // eduardo.souza 09/12/2011
  frmGrafico.Series1.Clear;
  frmGrafico.Series1.RefreshSeries;
  qryCheck.ParamByName('Usuario').Value := v_usuario;
  qryCheck.Close;
  qryCheck.open;
  if ( Not qryCheck.IsEmpty ) then begin
    with frmGrafico.Series1 do
    Begin
      Add( StrToInt(qryCheck.FieldByName('Check').AsString), 'Check', clGray);
      Add( StrToInt(qryCheck.FieldByName('Faltantes').AsString), 'Faltantes', clBackground);
    End;
    frmGrafico.dbchCheck.visible := true;
    if ( v_usuario = 'FBARCELLOS' ) then
      frmGrafico.dbchCheck.visible := false;
  end;
  qryCheck.Close;
  // ---
end;

end.

