unit u_conpastas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, StdCtrls, DBCtrls, Mask, Buttons;

type
  TF_conpastas = class(TForm)
    ds_pastas: TDataSource;
    ds_usuarioenvio: TDataSource;
    q_pastas: TQuery;
    q_usuarioenvio: TQuery;
    q_movpastas_insert: TQuery;
    q_pastas_update: TQuery;
    q_pastasEmpresa: TStringField;
    q_pastasFilial: TStringField;
    q_pastasProcesso: TStringField;
    q_pastasUsuario: TStringField;
    q_usuarioenvioEmpresa: TStringField;
    q_usuarioenvioFilial: TStringField;
    q_usuarioenvioUsuario: TStringField;
    q_usuarioenvioNome_Completo: TStringField;
    dsControle_Pastas_Pendente: TDataSource;
    q_Controle_Pastas_Pendente: TQuery;
    q_Controle_Pastas_PendenteEmpresa: TStringField;
    q_Controle_Pastas_PendenteFilial: TStringField;
    q_Controle_Pastas_PendenteProcesso: TStringField;
    q_Controle_Pastas_PendenteUsuario: TStringField;
    q_Controle_Pastas_PendenteAceite: TSmallintField;
    q_Controle_Pastas_PendenteData: TDateTimeField;
    GroupBox1: TGroupBox;
    dbgControleDePastas: TDBGrid;
    btnAceitar: TButton;
    btnRejeitar: TButton;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    me_processo: TMaskEdit;
    Label1: TLabel;
    dblcUsuarioEnvio: TDBLookupComboBox;
    btnEnvia: TBitBtn;
    q_Update_Controle_Pastas: TQuery;
    QryAux: TQuery;
    q_Email_De_Para: TQuery;
    q_Email_De_ParaNome_Completo: TStringField;
    q_Email_De_ParaEmail: TStringField;
    tbEmailAuto: TTable;
    q_pastasaceite: TSmallintField;
    qAceite: TQuery;
    qAceiteaceite: TSmallintField;
    btnArquivar: TButton;
    btnRecuperar: TButton;
    qArquivista: TQuery;
    qArquivistaarquivista: TBooleanField;
    qVerificaControlePastas: TQuery;
    qVerificaControlePastasUsuario: TStringField;
    qVerificaControlePastasaceite: TSmallintField;
    qProcessoFechado: TQuery;
    qProcessoFechadoFechado: TIntegerField;
    qrCtrPastas: TQuery;
    qrPara_usuario: TQuery;
    qrPara_usuarioDe_usuario: TStringField;
    qrPara_usuarioPara_usuario: TStringField;
    q_usuarioenvioSetor: TStringField;
    tbEmailAutoCodigo: TAutoIncField;
    tbEmailAutoPrograma: TStringField;
    tbEmailAutoAssunto: TStringField;
    tbEmailAutoTitulo: TStringField;
    tbEmailAutoDe: TStringField;
    tbEmailAutoPara: TStringField;
    tbEmailAutoCC: TStringField;
    tbEmailAutoCCO: TStringField;
    tbEmailAutoBody: TMemoField;
    tbEmailAutoAnexo: TStringField;
    tbEmailAutoHTML: TIntegerField;
    tbEmailAutoData: TDateTimeField;
    tbEmailAutoHora: TDateTimeField;
    tbEmailAutoLixo: TIntegerField;
    tbEmailAutoErro_Message: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure sb_enviaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure me_processoChange(Sender: TObject);
    procedure btnAceitarClick(Sender: TObject);
    procedure EnviaEmail;
    procedure TrazDe_usuario;   
    procedure btnRejeitarClick(Sender: TObject);
    procedure btnArquivarClick(Sender: TObject);
    procedure btnRecuperarClick(Sender: TObject);
  private
    { Private declarations }

    procedure ProcessoEstaNoFinanceiro(MS : String);
  public                                            
    { Public declarations }

  end;

var
  F_conpastas: TF_conpastas;
  vDe, vPara, vCC, vCCO : String;
  vAssunto : String;
  vTitulo  : String;
  vBody    : String;
  vHTML    : integer = 1;
  vAnexo   : String = '';
  De_Usuario : String;
  Para_Usuario : String;
  oper : String;
  vArquivista : Boolean;
  processo : string;


implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure TF_conpastas.FormActivate(Sender: TObject);
var
  s,w,h,m,p : integer;
  mc : string;
begin
  Left := 1;
  Top  := 1;


  with q_Controle_Pastas_Pendente do
  begin
        Close;
        ParamByName('pUsuario').asstring := v_usuario;
        Open;
  end;
  {Leandro Serra - Ticket 2424
  Obs:Foi Criado este campo na tabela Usuario para
  definir quem tem acesso a movimenta��o de pastas no arquivo}
  with qArquivista do
  begin
      Close;
      ParamByName('pUsu').asstring := v_usuario;
      Open;
  end;
  if (qArquivistaarquivista.AsBoolean = True) then
  begin
     btnArquivar.Enabled := true;
     btnRecuperar.Enabled := true;
     vArquivista := True;
  end
  else
  begin
     btnArquivar.Enabled := false;
     btnRecuperar.Enabled := false;
     vArquivista := False;     
  end;
  {Fim Ticket 2424}

  q_pastas.close;
  q_pastas.Params[0].AsString := v_empresa;
  q_pastas.Params[1].AsString := v_filial;
  q_pastas.Params[2].AsString := v_usuario;
  q_pastas.open;

//  Edit1.Text := v_nomecompleto;

  if (vArquivista) or (v_documentador)
   then begin
     q_usuarioenvio.Close;
     q_usuarioenvio.SQL.Clear;
     q_usuarioenvio.SQL.Add('   SELECT EMPRESA, FILIAL, USUARIO, NOME_COMPLETO, SETOR ');
     q_usuarioenvio.SQL.Add('     FROM USUARIOS                                ');
     q_usuarioenvio.SQL.Add('    WHERE EMPRESA =  :p1                          ');
     q_usuarioenvio.SQL.Add('      AND FILIAL  =  :p2                          ');
     q_usuarioenvio.SQL.Add('      AND USUARIO <> :p3                          ');
     q_usuarioenvio.SQL.Add('      AND ATIVO   = 1                             ');
     q_usuarioenvio.SQL.Add(' ORDER BY NOME_COMPLETO                           ');
   end
   else begin
     q_usuarioenvio.Close;
     q_usuarioenvio.SQL.Clear;
     q_usuarioenvio.SQL.Add('   SELECT EMPRESA, FILIAL, USUARIO, NOME_COMPLETO, SETOR   ');
     q_usuarioenvio.SQL.Add('     FROM USUARIOS                                  ');
     q_usuarioenvio.SQL.Add('    WHERE EMPRESA =  :p1                            ');
     q_usuarioenvio.SQL.Add('      AND FILIAL  =  :p2                            ');
     q_usuarioenvio.SQL.Add('      AND USUARIO <> :p3                            ');
     q_usuarioenvio.SQL.Add('      AND ATIVO   = 1                               ');
     q_usuarioenvio.SQL.Add('AND NOT USUARIO in (''ARQUIVO'',''DUDA'',''MANUEL'')');
     q_usuarioenvio.SQL.Add('      AND Setor <> ''inf''                          ');

     {Se o setor for operacional ou vit�ria n�o trazer montadores do financeiro}
     if ((v_setor = 'OPN') or (v_setor = 'VIT'))
      then q_usuarioenvio.SQL.Add(' AND MONTADOR = 0 ');

     q_usuarioenvio.SQL.Add(' ORDER BY NOME_COMPLETO                             ');
   end;

  q_usuarioenvio.Params[0].AsString := v_empresa;
  q_usuarioenvio.Params[1].AsString := v_filial;
  q_usuarioenvio.Params[2].AsString := v_usuario;   
  q_usuarioenvio.open;   
  if v_usuario <> 'ODILMA' then begin
    if q_pastas.RecordCount < 1 then begin
      showmessage('N�o existe pasta dispon�vel para aceitar ou rejeitar.');
      btnEnvia.Enabled := false;
    end;
  end;
end;

procedure TF_conpastas.sb_enviaClick(Sender: TObject);
begin

   if me_processo.Text <> '' then
   begin
      processo := me_processo.text;
      if dblcUsuarioEnvio.Text = '' then
      begin
          ShowMessage(v_usuario + ', informe o usu�rio para transferir a pasta, por favor.');
          dblcUsuarioEnvio.SetFocus;
          exit;
      end;

      with  qrPara_usuario do
       begin
          Close;
          ParamByName('proc').asstring := me_processo.Text;
          open;
      end;
      if (v_usuario = 'ODILMA') or (v_usuario = 'FERREIRA') or (v_usuario = 'LFERRAZ') or (v_usuario = 'ANDRE') then begin
       oper := 'E';
     //   TrazDe_usuario;
        q_movpastas_insert.close;
        q_movpastas_insert.Params[0].AsString := v_empresa;
        q_movpastas_insert.Params[1].AsString := v_filial;
        q_movpastas_insert.Params[2].AsString := processo;
        q_movpastas_insert.Params[3].AsString := qrPara_usuarioPara_usuario.AsString;
        q_movpastas_insert.Params[4].AsString := v_usuario;
        q_movpastas_insert.Params[5].asdatetime := date();
        q_movpastas_insert.Params[6].asdatetime := time();
        q_movpastas_insert.ExecSQL;

        q_movpastas_insert.close;
        q_movpastas_insert.Params[0].AsString := v_empresa;
        q_movpastas_insert.Params[1].AsString := v_filial;
        q_movpastas_insert.Params[2].AsString := processo;
        q_movpastas_insert.Params[3].AsString := v_usuario;
        q_movpastas_insert.Params[4].AsString := q_usuarioenviousuario.asstring;
        q_movpastas_insert.Params[5].asdatetime := date();
        q_movpastas_insert.Params[6].asdatetime := time();
        q_movpastas_insert.ExecSQL;

        q_pastas_update.Params[0].AsString := q_usuarioenviousuario.asstring;

        if (q_usuarioenvioSetor.AsString <> 'ADFI')
         then q_pastas_update.Params[1].AsString := '1'
         else q_pastas_update.Params[1].AsString := '2';
         
        q_pastas_update.Params[2].AsString := processo;
        q_pastas_update.ExecSQL;
      end
      Else begin
       oper := 'T';
        q_movpastas_insert.Params[0].AsString := v_empresa;
        q_movpastas_insert.Params[1].AsString := v_filial;
        q_movpastas_insert.Params[2].AsString := processo;
        q_movpastas_insert.Params[3].AsString := v_usuario;
        q_movpastas_insert.Params[4].AsString := q_usuarioenviousuario.asstring;
        q_movpastas_insert.Params[5].asdatetime := date();
        q_movpastas_insert.Params[6].asdatetime := time();
        q_movpastas_insert.ExecSQL;


        q_pastas_update.Params[0].AsString := q_usuarioenviousuario.asstring;
        q_pastas_update.Params[1].AsString := '2';
        q_pastas_update.Params[2].AsString := processo;
        q_pastas_update.ExecSQL;
      End;

      q_pastas.close;
      q_pastas.Params[0].AsString := v_empresa;
      q_pastas.Params[1].AsString := v_filial;
      q_pastas.Params[2].AsString := v_usuario;
      q_pastas.open;
      me_processo.Clear;

     { if q_pastas.RecordCount < 1
       then begin
         showmessage('N�o existe pasta dispon�vel!');
         btnEnvia.Enabled := false;
       end;}

      EnviaEmail;
      me_processo.SetFocus;
      showmessage('Pasta transferida para o usu�rio ' +q_usuarioenviousuario.asstring);

      logusu('I', v_usuario + ', registrou uma movimenta��o de pasta transferindo o processo '+processo+'para, '+q_usuarioenviousuario.asstring);
   end
   else
   begin
        showmessage('Informe o n�mero do processo');
        me_processo.SetFocus;
   end;

end;

procedure TF_conpastas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  f_mscomex.ControledePastas2.Enabled := True;
  Action := caFree;
  f_conpastas := nil;
end;

procedure TF_conpastas.me_processoChange(Sender: TObject);
begin
     If Length( F_MSCOMEX.LRTrim( me_processo.Text ) ) <> 8 Then
      Exit;

    if ((v_usuario = 'ODILMA') or (v_usuario = 'FERREIRA') or (v_usuario = 'LFERRAZ') or (v_usuario = 'ANDRE')) then begin
       ProcessoEstaNoFinanceiro(me_processo.Text);

       btnEnvia.Enabled:= True;
       qrCtrPastas.close;
       qrCtrPastas.Params[0].AsString := v_empresa;
       qrCtrPastas.Params[1].AsString := v_filial;
   end
   Else begin
      btnEnvia.Enabled:= True;
      q_pastas.close;
      q_pastas.Params[0].AsString := v_empresa;
      q_pastas.Params[1].AsString := v_filial;
      q_pastas.Params[2].AsString := v_usuario;
      q_pastas.open;

      qAceite.close;
      qAceite.Params[0].AsString := v_empresa;
      qAceite.Params[1].AsString := v_filial;
      qAceite.Params[2].AsString := v_usuario;
      qAceite.Params[3].AsString := me_processo.text;
      qAceite.open;

      if vArquivista = False then
      begin
          if q_Pastas.RecordCount > 0 then
          begin
             if qAceiteaceite.value <> 1 then
             begin
                showmessage('Para realizar a transfer�ncia de pasta para outro colaborador, voc� precisa aceitar esta pasta.');
                btnEnvia.Enabled:= false;
                me_processo.text := '';
             end;
          end
          else
          begin
            showmessage('Pasta n�o localizada!');
            btnEnvia.Enabled:= false;
          end;
      end;
      with qVerificaControlePastas do
      begin
          Close;
          ParamByName('pProcesso').asString := me_processo.Text;
          Open;
      end;
      if qVerificaControlePastasUsuario.AsString = 'ARQUIVO' then
      begin
          showmessage(v_usuario +', esta pasta encontra-se arquivada.');
          btnEnvia.Enabled:= True;
      end;
   end;
end;

procedure TF_conpastas.btnAceitarClick(Sender: TObject);
begin
    Oper := 'A';
    processo := q_Controle_Pastas_PendenteProcesso.Value;
    with q_Update_Controle_Pastas do
    begin
        close;
        ParamByName('pAceite').asInteger := 1;
        ParamByName('pData').AsDateTime := Now;
        ParamByName('pUsu').asString := v_usuario;
        ParamByName('pProcesso').asString := q_Controle_Pastas_PendenteProcesso.Value;
        ExecSQL;
    end;
    EnviaEmail;
    with q_Controle_Pastas_Pendente do
    begin
          Close;
          ParamByName('pUsuario').asstring := v_usuario;
          Open;
    end;
    ShowMessage(v_usuario + ', agora � poss�vel transferir o processo '+processo+' para outro usu�rio se desejar.');
    logusu('I','O Usu�rio: '+ v_usuario + ' aceitou o processo '+ processo +' '+ DateTimeToStr(Now) );
    me_processo.Text := processo;
end;
procedure TF_conpastas.TrazDe_usuario;
var
    QryAux : TQuery;
begin
    if processo = '' then exit;
    QryAux := TQuery.Create(nil);
    QryAux.DatabaseName := 'DBNMSCOMEX';

    try

      QryAux.Close;
      QryAux.SQL.Clear;
      QryAux.SQL.Add('select top 1 De_usuario, Para_usuario from Movimentacao_pastas where ');
      QryAux.SQL.Add(' PROCESSO ='+chr(39)+ processo + chr(39)+ 'order by movimento desc ');
      QryAux.Open;


      if ((oper = 'T') or (oper = 'E')) then
        De_Usuario := QryAux.Fields[1].AsString
      else
        De_Usuario := QryAux.Fields[0].AsString;


      QryAux.Close;
    finally
      QryAux.Free;
    end;
end;

procedure TF_conpastas.EnviaEmail;
var
  opcao, ErrOpcao, vRetornando, corpo_email, nome_usuario : string;
begin
  with q_Email_De_Para do
  begin
      Close;
      ParamByName('pUsuario').asString:= v_usuario;;
      Open;
  end;
  nome_usuario:= q_Email_De_ParaNome_Completo.AsString;
  TrazDe_usuario;
  if Oper = 'A' then
  begin
          vTitulo  := 'MS2000 - Aviso de Aceite do Controle de Pastas';
          vAssunto := 'Processo '  + processo + ', aceito pelo usu�rio ' + nome_usuario;
          vDe      := 'MS2000 <auditoria@logistic-ms.com.br>';
          opcao    := 'aceitou';
          ErrOpcao := 'Aceitar';
          vRetornando := ' para voc�.<BR>';
          corpo_email := 'Por meio deste, informamos que o usu�rio, '+ nome_usuario +' , '+opcao+' a posse da pasta '+ processo + vRetornando

  end
  else  if Oper = 'R' then
  begin
          vTitulo  := 'MS2000 - Aviso de Rejei��o do Controle de Pastas';
          vAssunto := 'Processo '  + processo + ', rejeitado pelo usu�rio ' + nome_usuario;
          vDe      := 'MS2000 <auditoria@logistic-ms.com.br>';
          opcao    := 'rejeitou';
          ErrOpcao := 'rejeitar';
          vRetornando := ' retornando a mesma para voc�.<BR>';
          corpo_email := 'Por meio deste, informamos que o usu�rio, '+ nome_usuario +' , '+opcao+' a posse da pasta '+ processo + vRetornando
  end
  else  if Oper = 'E' then
  begin
          vTitulo  := 'MS2000 - Aviso de Transfer�ncia de Pastas';
          vAssunto := 'Foi feita a transfer�ncia da pasta '  +   processo + ', pelo usu�rio ' + nome_usuario + ' para voc�.';
          vDe      := 'MS2000 <auditoria@logistic-ms.com.br>';
          opcao    := 'Transferiu';
          ErrOpcao := 'Transferir';
          vRetornando := 'para voc�<BR>';
          corpo_email := 'Por meio deste, informamos que a Sr� Odilma movimentou a pasta '+ processo+' para voc�, n�o h� necessidade de aceitar ou rejeitar.';
  end
  else
  begin
          vTitulo  := 'MS2000 - Aviso de Transfer�ncia de Pastas';
          vAssunto := 'Foi feita a transfer�ncia da pasta '  +   processo + ', pelo usu�rio ' + nome_usuario + ' para voc�.';
          vDe      := 'MS2000 <auditoria@logistic-ms.com.br>';
          opcao    := 'Transferiu';
          ErrOpcao := 'Transferir';
          vRetornando := ' para voc�.<BR>';
          corpo_email := 'Por meio deste, informamos que o usu�rio, '+ nome_usuario +' , '+opcao+' a posse da pasta '+ processo + vRetornando;
  end;

  with q_Email_De_Para do
  begin
      Close;
      ParamByName('pUsuario').asString:= De_Usuario;
      Open;
  end;
  vPara    := q_Email_De_ParaEmail.asString;

  if vPara = '' then exit;

  vBody := '<BR>'
         + 'Prezado,<BR>'
         + '<BR>'
         +  corpo_email + '<BR><BR>'
         + 'Este e-mail � autom�tico e n�o necessita de resposta. <BR>'
         + '<BR><BR>'
         + 'Atenciosamente,'
         + '<BR><BR>'
         + 'MS2000 - SISTEMA GERENCIAL ADUANEIRO<BR><BR>';

  try
    tbEmailAuto.Open;
    tbEmailAuto.Append;
    tbEmailAutoPrograma.AsString := 'MS2000';
    tbEmailAutoTitulo.AsString   := vTitulo;
    tbEmailAutoAssunto.AsString  := vAssunto;
    tbEmailAutoAnexo.AsString    := vAnexo;
    tbEmailAutoHTML.Asinteger    := vHTML;
    tbEmailAutoDe.AsString       := vDe;
    tbEmailAutoPara.AsString     := vPara;
    tbEmailAutoCC.AsString       := vCC;
    tbEmailAutoBody.AsString     := vBody;
    tbEmailAutoData.AsDateTime   := Date();
    tbEmailAutoHora.AsDateTime   := Now;
    tbEmailAuto.Post;
    tbEmailAuto.Close;   
  except
    on E:Exception do
     begin
       showmessage(v_usuario+' Erro ao gravar registro na tabela EmailAuto, respectivamente ao evento '+ErrOpcao+' do Formul�rio de Controle de Pastas!');
     end;
  end;
end;
procedure TF_conpastas.btnRejeitarClick(Sender: TObject);
begin
    Oper := 'R';
    processo :=  q_Controle_Pastas_PendenteProcesso.Value;
    TrazDe_usuario;
    with q_Update_Controle_Pastas do
    begin
        close;
        ParamByName('pAceite').asInteger := 2;
        ParamByName('pData').AsDateTime := Now;
        ParamByName('pUsu').asString := De_Usuario;
        ParamByName('pProcesso').asString := processo;
        ExecSQL;
    end;
    {Devolve a pasta para quem lhe enviou anteriormente }
    q_movpastas_insert.Params[0].AsString := v_empresa;
    q_movpastas_insert.Params[1].AsString := v_filial;
    q_movpastas_insert.Params[2].AsString := processo;
    q_movpastas_insert.Params[3].AsString := v_usuario;
    q_movpastas_insert.Params[4].AsString := De_Usuario;
    q_movpastas_insert.Params[5].asdatetime := date();
    q_movpastas_insert.Params[6].asdatetime := time();
    q_movpastas_insert.ExecSQL;
    EnviaEmail;
    with q_Controle_Pastas_Pendente do
    begin
          Close;
          ParamByName('pUsuario').asstring := v_usuario;
          Open;
    end;    
    showmessage(v_usuario+' , o processo '+ processo +' foi rejeitado.');
    logusu('I','O Usu�rio: '+ v_usuario + ' rejeitou o processo '+ processo + ' '+ DateTimeToStr(Now) );
end;

procedure TF_conpastas.btnArquivarClick(Sender: TObject);
var
  qsql : String;
begin
    if me_processo.text <> '' then
    begin
       {In�cio Ticket 2424}
        with qVerificaControlePastas do
        begin
            close;
            ParamByName('pProcesso').asString := me_processo.text;
            Open;
        end;
        {Somente � poss�vel enviar para arquivo se o processo estiver fechado}

        with qProcessoFechado do
        begin
            close;
            ParamByName('pProcesso').asString := me_processo.text;
            Open;
        end;
        if (qProcessoFechadofechado.asInteger = 1) then
        begin
                if (v_usuario = qVerificaControlePastasUsuario.AsString) then
                begin
                    if (qVerificaControlePastasaceite.Value = 1) then     //1 = Aceitou
                    begin
                        with q_Update_Controle_Pastas do
                        begin
                            close;
                            ParamByName('pAceite').asInteger := 1;
                            ParamByName('pData').AsDateTime := Now;
                            ParamByName('pUsu').asString := 'ARQUIVO';
                            ParamByName('pProcesso').asString := me_processo.text;
                            ExecSQL;
                        end;
                        with q_movpastas_insert do
                        begin
                           ParamByName('Empresa').asString := v_empresa;
                           ParamByName('Filial').asString := v_filial;
                           ParamByName('Processo').asString := me_processo.text;
                           ParamByName('De_usuario').asString := v_usuario;
                           ParamByName('Para_usuario').asString :=  'ARQUIVO';
                           ParamByName('Data').asDateTime := date();
                           ParamByName('Hora').asTime := time();
                           ExecSQL;
                        end;

                        F_MSCOMEX.qfol1up.sql.clear;
                        qsql := 'INSERT INTO Followup ([Processo],[Codevento] ,[Data] ,[Hora] ,[Usuario]) VALUES ( ';
                        qsql := qsql+chr(39)+me_processo.text+chr(39)+', ';
                        qsql := qsql+chr(39)+'761'+chr(39)+', ';
                        qsql := qsql+chr(39)+DateToStr(date())+chr(39)+', ';
                        qsql := qsql+chr(39)+copy(timetostr(time()),1,5)+chr(39)+', ';
                        qsql := qsql+chr(39)+v_usuario+chr(39)+' ';
                        qsql := qsql+' )';

                        me_processo.text := '';
                        me_processo.SetFocus;

                        F_MSCOMEX.qfol1up.sql.add(qsql);
                        F_MSCOMEX.qfol1up.execsql;
                        showmessage(v_usuario +', a pasta foi arquivada com sucesso.');
                        Showmessage(v_usuario+',ATEN��O! foi INCLU�DO follow up de Pasta para Arquivo para este processo nesta data!');
                        logusu('I', v_usuario + ', inseriu a movimenta��o para Arquivo, para o processo '+ me_processo.text);
                    end
                    else if (qVerificaControlePastasaceite.Value = 2) then   //2 = Pendente
                    begin
                        ShowMessage(v_usuario + ', esta pasta est� pendente, se faz necess�rio primeiro aceitar a pasta para ent�o arquiv�-la.');
                        me_processo.text := '';
                    end;
                end
                else
                begin
                    ShowMessage(v_usuario + ', este processo n�o est� sob seu controle para realizar o arquivamento.');
                    me_processo.text := '';
                end;
        end
        else
        begin
            showmessage('Somente � poss�vel enviar para arquivo se o processo estiver fechado.');
            me_processo.Text:='';
            me_processo.SetFocus;
        end;
    end
    else
    begin
        showmessage('Informe o n�mero do processo');
        me_processo.SetFocus;
    end;

        {Fim Ticket 2424}
end;

procedure TF_conpastas.btnRecuperarClick(Sender: TObject);
begin
    if me_processo.text <> '' then
    begin
       {In�cio Ticket 2424}
        with qVerificaControlePastas do
        begin
            close;
            ParamByName('pProcesso').asString := me_processo.text;
            Open;
        end;
        if (qVerificaControlePastasUsuario.AsString = 'ARQUIVO') then
        begin
            with q_Update_Controle_Pastas do
            begin
                close;
                ParamByName('pAceite').asInteger := 1;
                ParamByName('pData').AsDateTime := Now;
                ParamByName('pUsu').asString := v_usuario;
                ParamByName('pProcesso').asString := me_processo.text;
                ExecSQL;
            end;
            with q_movpastas_insert do
            begin
               ParamByName('Empresa').asString := v_empresa;
               ParamByName('Filial').asString := v_filial;
               ParamByName('Processo').asString := me_processo.text;
               ParamByName('De_usuario').asString := 'ARQUIVO';
               ParamByName('Para_usuario').asString := v_usuario;
               ParamByName('Data').asDateTime := date();
               ParamByName('Hora').asTime := time();
               ExecSQL;
            end;
            ShowMessage(v_usuario + ', pasta liberada para transfer�ncia.');
            logusu('I', v_usuario + ', inseriu a movimenta��o de pasta Recupera��o no Arquivo, para o processo '+ me_processo.text);
        end
        else
        begin
            ShowMessage(v_usuario + ', este processo n�o est� sob seu controle para realizar o arquivamento.');
            me_processo.text := '';
        end;
    end
    else
    begin
        showmessage('Informe o n�mero do processo');
        me_processo.SetFocus;
    end;
        {Fim Ticket 2424}

end;

procedure TF_conpastas.ProcessoEstaNoFinanceiro(MS: String);
var
  QryAux : TQuery;
begin
  QryAux := TQuery.Create(nil);
  QryAux.DatabaseName := 'DBNMSCOMEX';

  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add(' SELECT CP.USUARIO                                               ');
    QryAux.SQL.Add('   FROM Controle_Pastas CP INNER JOIN Usuarios U                 ');
    QryAux.SQL.Add('     ON CP.Usuario = U.Usuario                                   ');
    QryAux.SQL.Add('  WHERE U.Ativo = 1 AND U.Setor = ''ADFI'' AND CP.Processo = :p0 ');
    QryAux.Params[0].Value := MS;
    QryAux.Open;

    if (QryAux.RecordCount = 1)
     then begin
       Application.MessageBox('Processo sob o controle do Financeiro.','Aviso', MB_OK+MB_ICONWARNING);
       me_processo.Clear;
       Abort;
     end;
  finally
    QryAux.Free;
  end;
end;
end.
