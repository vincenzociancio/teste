unit u_avldesavaliacaocolaboradores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, DBTables, DBCtrls;

type
  Tf_avldesavaliacaocolaboradores = class(TForm)
    Panel1: TPanel;
    list1: TListBox;
    list2: TListBox;
    Panel2: TPanel;
    lb1: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DataSource1: TDataSource;
    qrControleHierarquia: TQuery;
    QryAux: TQuery;
    dblcbPesquisa: TDBLookupComboBox;
    Label3: TLabel;
    tbPesquisas: TTable;
    tbPesquisasCodigo: TIntegerField;
    tbPesquisasDescricao: TStringField;
    DataSource2: TDataSource;
    Label4: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure list1DblClick(Sender: TObject);
    procedure dblcbPesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Supervisor, Gestor : Boolean;

    procedure VerificaHierarquia;
    procedure ZeraVariaveis;
  public
    { Public declarations }
    procedure BuscarColaboradoresPendentes;
    procedure BuscarColaboradoresFinalizados;
  end;

var
  f_avldesavaliacaocolaboradores: Tf_avldesavaliacaocolaboradores;

implementation

uses U_MSCOMEX, u_avldesanalisedesempenho;

{$R *.DFM}

{ Tf_avldesavaliacaocolaboradores }

procedure Tf_avldesavaliacaocolaboradores.BuscarColaboradoresFinalizados;
begin
  QryAux.Close;
  QryAux.SQL.Clear;
  QryAux.SQL.Add('SELECT DISTINCT ADHA.Colaborador                                                                                      ');
  QryAux.SQL.Add('  FROM Anl_Des_Hierarquia_Analise ADHA INNER JOIN Anl_Des_Resultados ADR                                              ');
  QryAux.SQL.Add('    ON ADHA.Fk_Analise  = ADR.Fk_Analise AND                                                                          ');
  QryAux.SQL.Add('       ADHA.Colaborador = ADR.Colaborador                                                                             ');
  QryAux.SQL.Add(' WHERE (Supervisor = :Usuario) AND                                                                                    ');
  QryAux.SQL.Add('       (SELECT COUNT(*) FROM Anl_Des_Resultados WHERE Colaborador = ADHA.COLABORADOR AND Resp_Supervisor IS NULL) = 0 ');
  QryAux.SQL.Add('UNION                                                                                                                 ');
  QryAux.SQL.Add('SELECT DISTINCT ADHA.Colaborador                                                                                      ');
  QryAux.SQL.Add('  FROM Anl_Des_Hierarquia_Analise ADHA INNER JOIN Anl_Des_Resultados ADR                                              ');
  QryAux.SQL.Add('    ON ADHA.Fk_Analise  = ADR.Fk_Analise AND                                                                          ');
  QryAux.SQL.Add('       ADHA.Colaborador = ADR.Colaborador                                                                             ');
  QryAux.SQL.Add(' WHERE (Gestor = :Usuario) AND                                                                                        ');
  QryAux.SQL.Add('       (SELECT COUNT(*) FROM Anl_Des_Resultados WHERE Colaborador = ADHA.COLABORADOR AND Resp_Gestor IS NULL) = 0     ');
  QryAux.Params[0].Value := v_usuario;
  QryAux.Open;

  list2.Items.Clear;

  while (not QryAux.eof) do
   begin
     list2.Items.Add(QryAux.fieldByName('COLABORADOR').AsString);
     QryAux.Next;
     Application.ProcessMessages;
   end;

  QryAux.close;
end;

procedure Tf_avldesavaliacaocolaboradores.BuscarColaboradoresPendentes;
begin
  QryAux.Close;
  QryAux.SQL.Clear;
  QryAux.SQL.Add('  SELECT DISTINCT ADHA.COLABORADOR                                                                                              ');
  QryAux.SQL.Add('    FROM ANL_DES_HIERARQUIA_ANALISE ADHA INNER JOIN ANL_DES_RESULTADOS ADR                                                      ');
  QryAux.SQL.Add('      ON ADHA.FK_ANALISE  = ADR.FK_ANALISE AND                                                                                  ');
  QryAux.SQL.Add('         ADHA.COLABORADOR = ADR.COLABORADOR                                                                                     ');
  QryAux.SQL.Add('   WHERE (ADHA.SUPERVISOR = :Usuario) AND                                                                                       ');
  QryAux.SQL.Add('        ((SELECT COUNT(*) FROM Anl_Des_Resultados WHERE Colaborador = ADHA.COLABORADOR AND Resp_Supervisor IS NOT NULL) <>      ');
  QryAux.SQL.Add('         (SELECT COUNT(*) FROM Anl_Des_Resultados WHERE Colaborador = ADHA.COLABORADOR)) AND                                    ');
  QryAux.SQL.Add('         ADHA.FK_ANALISE = :Pesquisa                                                                                            ');
  QryAux.SQL.Add('  UNION                                                                                                                         ');
  QryAux.SQL.Add('  SELECT DISTINCT ADHA.COLABORADOR                                                                                              ');
  QryAux.SQL.Add('    FROM ANL_DES_HIERARQUIA_ANALISE ADHA INNER JOIN ANL_DES_RESULTADOS ADR                                                      ');
  QryAux.SQL.Add('      ON ADHA.FK_ANALISE  = ADR.FK_ANALISE AND                                                                                  ');
  QryAux.SQL.Add('         ADHA.COLABORADOR = ADR.COLABORADOR                                                                                     ');
  QryAux.SQL.Add('   WHERE (ADHA.GESTOR = :Usuario) AND                                                                                           ');
  QryAux.SQL.Add('        ((SELECT COUNT(*) FROM Anl_Des_Resultados WHERE Colaborador = ADHA.COLABORADOR AND Resp_GESTOR IS NOT NULL) <>          ');
  QryAux.SQL.Add('         (SELECT COUNT(*) FROM Anl_Des_Resultados WHERE Colaborador = ADHA.COLABORADOR)) AND                                    ');
  QryAux.SQL.Add('         ADHA.FK_ANALISE = :Pesquisa                                                                                            ');
  QryAux.Params[0].Value := v_usuario;
  QryAux.Params[1].Value := tbPesquisasCodigo.AsInteger;
  QryAux.Open;

  list1.Items.Clear;

  while (not QryAux.eof) do
   begin
     list1.Items.Add(QryAux.fieldByName('COLABORADOR').AsString);
     QryAux.Next;
     Application.ProcessMessages;
   end;

  QryAux.close;
end;

procedure Tf_avldesavaliacaocolaboradores.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_avldesavaliacaocolaboradores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  f_avldesavaliacaocolaboradores := Nil;
  F_MSCOMEX.AnlisedeColaboradoresSupervisionados1.Enabled := True;
end;

procedure Tf_avldesavaliacaocolaboradores.list1DblClick(Sender: TObject);
begin
  if not assigned(F_avldesanalisedesempenho)
   then Application.CreateForm(TF_avldesanalisedesempenho, F_avldesanalisedesempenho)
   else begin
     f_avldesanalisedesempenho.Close;
     Application.CreateForm(TF_avldesanalisedesempenho, F_avldesanalisedesempenho)
   end;

  VerificaHierarquia;

  f_avldesanalisedesempenho.v_colaborador := list1.Items.Strings[list1.ItemIndex];

  if Supervisor
   then f_avldesanalisedesempenho.v_supervisor := v_usuario;

  if Gestor
   then f_avldesanalisedesempenho.v_gestor := v_usuario;

  ZeraVariaveis; 

  f_avldesanalisedesempenho.Inicia;

  F_MSCOMEX.AnlisedeDesempenhoIndividual1.enabled := false;
  logusu('A','Acessou Análise de Desempenho Individual.');

  f_avldesanalisedesempenho.Show;
end;

procedure Tf_avldesavaliacaocolaboradores.VerificaHierarquia;
begin
  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add(' SELECT SUPERVISOR, GESTOR         ');
    QryAux.SQL.Add('   FROM ANL_DES_HIERARQUIA_ANALISE ');
    QryAux.SQL.Add('  WHERE COLABORADOR = :USUARIO     ');
    QryAux.Params[0].Value := list1.Items.Strings[list1.ItemIndex];
    QryAux.Open;

    Supervisor := QryAux.Fields[0].AsString = v_usuario;
    Gestor     := QryAux.Fields[1].AsString = v_usuario;
  finally
    QryAux.Close;
  end;
end;

procedure Tf_avldesavaliacaocolaboradores.ZeraVariaveis;
begin
  Supervisor := False;
  Gestor     := False;
end;

procedure Tf_avldesavaliacaocolaboradores.dblcbPesquisaClick(
  Sender: TObject);
begin
  BuscarColaboradoresPendentes;
  BuscarColaboradoresFinalizados;
end;

procedure Tf_avldesavaliacaocolaboradores.FormShow(Sender: TObject);
begin
  tbPesquisas.Open;

  Label4.Caption := v_nomecompleto;
end;

end.
