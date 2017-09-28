unit u_avldesanalisedesempenho;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, jpeg, ImgList, Buttons, DBCtrls, Mask, Db, DBTables,
  QuickRpt, Qrctrls;

type
  Tf_avldesanalisedesempenho = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Bevel1: TBevel;
    Label8: TLabel;
    Label11: TLabel;
    Bevel2: TBevel;
    btnProxima: TBitBtn;
    Label12: TLabel;
    dbeResposta: TDBEdit;
    btnAnterior: TBitBtn;
    Label13: TLabel;
    DataSource1: TDataSource;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Bevel3: TBevel;
    dbtCompetencia: TDBText;
    dbtDescricao: TDBText;
    Label9: TLabel;
    q_anl_des_resultados: TQuery;
    q_anl_des_resultadosDesc_Comp: TStringField;
    q_anl_des_resultadosDesc_Perg: TStringField;
    q_anl_des_resultadosResp_Usuario: TIntegerField;
    t_anl_des_resultados: TTable;
    t_anl_des_resultadosResp_Usuario: TIntegerField;
    t_anl_des_resultadosResp_Supervisor: TIntegerField;
    t_anl_des_resultadosResp_Gestor: TIntegerField;
    DataSource2: TDataSource;
    t_anl_des_resultadosColaborador: TStringField;
    Query1: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField1: TIntegerField;
    DataSource3: TDataSource;
    q_anl_des_resultadosColaborador: TStringField;
    QryAux: TQuery;
    Label10: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label25: TLabel;
    pnlIniciarPesquisa: TPanel;
    t_anl_des_resultadosFk_Competencia: TIntegerField;
    t_anl_des_resultadosResult_Usuario: TIntegerField;
    t_anl_des_resultadosResult_Supervisor: TIntegerField;
    t_anl_des_resultadosResult_Gestor: TIntegerField;
    Memo1: TMemo;
    lblOpiniaoSugestao: TLabel;
    pnlFinalizarPesquisa: TPanel;
    procedure FormActivate(Sender: TObject);
    procedure btnProximaClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure dbeRespostaChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbeRespostaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnIniciarClick(Sender: TObject);
    procedure pnlFinalizarPesquisaClick(Sender: TObject);
  private
    { Private declarations }


    function DefineResultado : Integer;

    procedure MontaTela;

    procedure InformaColaboradorAvaliado;

    procedure FinalizaPerguntas;

    procedure MostraOpiniaoSugestao(Ativo : Boolean);

    procedure InsereOpiniaoSugestao;
  public
    v_colaborador, v_supervisor, v_gestor : String;

    procedure Inicia;
    
    { Public declarations }
  end;

var
  f_avldesanalisedesempenho: Tf_avldesanalisedesempenho;

implementation

uses U_MSCOMEX, u_avldesavaliacaocolaboradores;

{$R *.DFM}

procedure Tf_avldesanalisedesempenho.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_avldesanalisedesempenho.btnProximaClick(Sender: TObject);
begin
  if (dbeResposta.Text <> '')
   then begin
     if (StrToInt(dbeResposta.Text) < 1) or (StrToInt(dbeResposta.Text) > 10)
      then begin
        Application.MessageBox('Informe um número entre 1 e 10.','Alerta',MB_ICONWARNING);
        dbeResposta.SetFocus;
        Exit;
      end;

     t_anl_des_resultados.Edit;

{     if (dbeResposta.DataField = 'RESP_USUARIO')
      then t_anl_des_resultadosResult_Usuario.Value := DefineResultado;

     if (dbeResposta.DataField = 'RESP_SUPERVISOR')
      then t_anl_des_resultadosResult_Supervisor.Value := DefineResultado;

     if (dbeResposta.DataField = 'RESP_GESTOR')
      then t_anl_des_resultadosResult_Gestor.Value := DefineResultado;}

     t_anl_des_resultados.Post;

     if not (q_anl_des_resultados.eof)
      then begin
        q_anl_des_resultados.Next;
        t_anl_des_resultados.Next;
      end
      else begin
        FinalizaPerguntas;

        MostraOpiniaoSugestao(True);

        Exit;
      end;
   end
   else Application.MessageBox('Favor informar um número entre 1 e 10, para seguir para a próxima pergunta.','Alerta',MB_ICONWARNING);

  dbeResposta.SetFocus;
end;

procedure Tf_avldesanalisedesempenho.btnAnteriorClick(Sender: TObject);
begin
  if (dbeResposta.Text <> '')
   then begin
     if (StrToInt(dbeResposta.Text) < 1) or (StrToInt(dbeResposta.Text) > 10)
      then begin
        Application.MessageBox('Informe um número entre 1 e 10.','Alerta',MB_ICONWARNING);
        dbeResposta.SetFocus;
        Exit;
      end;
   end;

  q_anl_des_resultados.Prior;
  t_anl_des_resultados.Prior;

  dbeResposta.SetFocus;
end;

procedure Tf_avldesanalisedesempenho.dbeRespostaChange(Sender: TObject);
begin
  btnAnterior.Enabled := t_anl_des_resultados.FindFirst;
  btnProxima.Enabled  := t_anl_des_resultados.FindLast;

  btnAnterior.Enabled := q_anl_des_resultados.FindFirst;
  btnProxima.Enabled  := q_anl_des_resultados.FindLast;
end;

procedure Tf_avldesanalisedesempenho.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if assigned(f_avldesavaliacaocolaboradores)
   then begin
     f_avldesavaliacaocolaboradores.BuscarColaboradoresPendentes;
     f_avldesavaliacaocolaboradores.BuscarColaboradoresFinalizados;
   end;

  if (dbeResposta.DataField = 'RESP_USUARIO') or (dbeResposta.DataField = '')
   then begin
     if not F_MSCOMEX.PesquisaConcluida and (v_usuario <> 'MANUEL')
      then begin
        Application.MessageBox(PChar(v_usuario+', pesquisa não concluída, o MS2000 será fechado.'),'Aviso', MB_ICONINFORMATION);
        Application.Terminate;
      end;
   end;   

  action := cafree;
  f_avldesanalisedesempenho := nil;
  f_mscomex.AnlisedeDesempenhoIndividual1.enabled := true;
end;

procedure Tf_avldesanalisedesempenho.dbeRespostaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9',#8,#13])
   then Key := #0;
end;

procedure Tf_avldesanalisedesempenho.MontaTela;
begin
  if (v_colaborador <> '')
   then begin
     t_anl_des_resultados.Filter   := 'Colaborador = ' + QuotedStr(v_colaborador);
     t_anl_des_resultados.Filtered := True;

     InformaColaboradorAvaliado;

     t_anl_des_resultados.Close;
     t_anl_des_resultados.Open;
     t_anl_des_resultados.First;

     q_anl_des_resultados.Close;
     q_anl_des_resultados.Params[0].Value := v_colaborador;
     q_anl_des_resultados.Open;
     q_anl_des_resultados.First;

     if (v_supervisor <> '')
      then dbeResposta.DataField := 'RESP_SUPERVISOR';

     if (v_gestor <> '')
      then dbeResposta.DataField := 'RESP_GESTOR';

//     v_colaborador := '';
//     v_supervisor  := '';
//     v_gestor      := '';
   end
   else begin
     t_anl_des_resultados.Filter   := 'Colaborador = ' + QuotedStr(v_usuario);
     t_anl_des_resultados.Filtered := True;

     t_anl_des_resultados.Close;
     t_anl_des_resultados.Open;
     t_anl_des_resultados.First;

     q_anl_des_resultados.Close;
     q_anl_des_resultados.Params[0].Value := v_usuario;
     q_anl_des_resultados.Open;
     q_anl_des_resultados.First;

     dbeResposta.DataField := 'RESP_USUARIO';
   end;

  t_anl_des_resultados.Edit;
end;

procedure Tf_avldesanalisedesempenho.FormShow(Sender: TObject);
begin
  Label13.Caption := v_nomecompleto;

  Label14.Visible := True;
  Label15.Visible := True;
  Label16.Visible := True;
  label25.Visible := True;
end;

procedure Tf_avldesanalisedesempenho.InformaColaboradorAvaliado;
begin
  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add(' SELECT NOME_COMPLETO      ');
    QryAux.SQL.Add('   FROM USUARIOS           ');
    QryAux.SQL.Add('  WHERE USUARIO = :USUARIO ');
    QryAux.Params[0].Value := v_colaborador;
    QryAux.Open;

    Label9.Visible := True;

    if QryAux.RecordCount > 0
     then Label9.Caption := 'Avaliação do Colaborador: ' + QryAux.Fields[0].AsString
     else Label9.Caption := '';
  finally
    QryAux.Close;
  end;
end;

procedure Tf_avldesanalisedesempenho.btnIniciarClick(Sender: TObject);
begin
  Inicia;
end;

procedure Tf_avldesanalisedesempenho.Inicia;
begin
  pnlIniciarPesquisa.Visible := False;

  Label14.Visible := False;
  Label15.Visible := False;
  Label16.Visible := False;
  label25.Visible := False;

  Application.ProcessMessages;

  Bevel1.Visible := True;
  Bevel2.Visible := True;

  Label11.Visible := True;
  Label1.Visible  := True;
  Label2.Visible  := True;
  Label3.Visible  := True;
  Label4.Visible  := True;
  Label5.Visible  := True;
  Label6.Visible  := True;
  Label7.Visible  := True;
  Label8.Visible  := True;

  Bevel3.Visible  := True;
  Label17.Visible := True;
  Label18.Visible := True;
  Label19.Visible := True;
  Label20.Visible := True;
  Label21.Visible := True;
  Label22.Visible := True;
  Label23.Visible := True;
  Label24.Visible := True;

  Application.ProcessMessages;

  dbeResposta.Visible := True;
  btnAnterior.Visible := True;
  btnProxima.Visible  := True;

  if (Trim(v_colaborador) = '')
   then begin
    if f_mscomex.PesquisaConcluida
     then begin
       dbtCompetencia.Visible := False;
       dbtDescricao.Visible   := False;

       dbeResposta.Clear;

       dbeResposta.Enabled := False;
       btnAnterior.Enabled := False;
       btnProxima.Enabled  := False;

       Label10.Caption := 'Prezado(a) '+v_nomecompleto+', a sua pesquisa já foi enviada. A MS Logística agradece a sua participação!';
       Label10.Visible := True;
       Exit;
     end
     else MontaTela;
   end
   else MontaTela;

  dbeResposta.SetFocus; 
end;

function Tf_avldesanalisedesempenho.DefineResultado : Integer;
begin
  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add(' SELECT ADC.PESO                                                  ');
    QryAux.SQL.Add('  FROM ANL_DES_RESULTADOS ADR INNER JOIN ANL_DES_COMPETENCIAS ADC ');
    QryAux.SQL.Add('    ON ADR.Fk_ANALISE     = ADC.FK_ANALISE AND                    ');
    QryAux.SQL.Add('       ADR.Fk_COMPETENCIA = ADC.CODIGO                            ');
    QryAux.SQL.Add(' WHERE ADR.Fk_COMPETENCIA = :Competencia                          ');
    QryAux.Params[0].Value := t_anl_des_resultadosFk_Competencia.AsInteger;
    QryAux.Open;

    if QryAux.RecordCount > 0
     then Result := QryAux.Fields[0].AsInteger
     else Result := 0;
  finally
    QryAux.Close;
  end;
end;

procedure Tf_avldesanalisedesempenho.MostraOpiniaoSugestao(Ativo : Boolean);
begin
  lblOpiniaoSugestao.Visible   := Ativo;
  Memo1.Visible                := Ativo;
  pnlFinalizarPesquisa.Visible := Ativo;

  if Ativo
   then begin
     if (dbeResposta.DataField = 'RESP_USUARIO')
      then lblOpiniaoSugestao.Caption := 'Impacto Profissional: Avalie se as suas expectativas profissionais estão sendo atendidas em seu trabalho na MS Logística'
      else lblOpiniaoSugestao.Caption := 'Treinamentos Sugeridos';

     Memo1.SetFocus; 
   end;
end;

procedure Tf_avldesanalisedesempenho.pnlFinalizarPesquisaClick(
  Sender: TObject);
begin
  if (Trim(Memo1.Text) = '')
   then begin
     if (dbeResposta.DataField = 'RESP_USUARIO')
      then Application.MessageBox('Favor informar o Impacto Profissional', 'Aviso', MB_ICONINFORMATION)
      else Application.MessageBox('Favor informar o(s) Treinamento(s) Sugerido(s)', 'Aviso', MB_ICONINFORMATION);

     Memo1.SetFocus;
     Exit;
   end;

  InsereOpiniaoSugestao;

  MostraOpiniaoSugestao(False);

  Label10.Visible := True;
  Label10.Caption := 'Pesquisa enviada, a MS Logística agradece a sua participação!';
end;

procedure Tf_avldesanalisedesempenho.FinalizaPerguntas;
begin
  dbtCompetencia.Visible := False;
  dbtDescricao.Visible   := False;

  dbeResposta.Clear;

  dbeResposta.Visible := False;
  btnAnterior.Visible := False;
  btnProxima.Visible  := False;

  Application.ProcessMessages;
end;

procedure Tf_avldesanalisedesempenho.InsereOpiniaoSugestao;
begin
  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add(' UPDATE Anl_Des_Opinioes_Sugestoes ');

    if (dbeResposta.DataField = 'RESP_USUARIO')
     then begin
       QryAux.SQL.Add(' SET Colaborador_Impacto_Profissional = :p0');
       QryAux.Params[0].AsMemo := Memo1.Text;
     end;

    if (dbeResposta.DataField = 'RESP_SUPERVISOR')
     then begin
       QryAux.SQL.Add(' SET Supervisor_Treinamentos_Sugeridos = :p0');
       QryAux.Params[0].AsMemo := Memo1.Text;
     end;

    if (dbeResposta.DataField = 'RESP_GESTOR')
     then begin
       QryAux.SQL.Add(' SET Gestor_Treinamentos_Sugeridos = :p0');
       QryAux.Params[0].AsMemo := Memo1.Text;
     end;

    QryAux.SQL.Add(' WHERE COLABORADOR = :p1 ');

    if v_colaborador <> ''
     then QryAux.Params[1].Value := v_colaborador
     else QryAux.Params[1].Value := v_usuario;

    QryAux.ExecSQL;
  finally
    QryAux.Close;
  end;
end;

end.



