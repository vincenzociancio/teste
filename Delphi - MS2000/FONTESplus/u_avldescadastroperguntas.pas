unit u_avldescadastroperguntas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, Db, DBTables;

type
  Tf_avldescadastroperguntas = class(TForm)
    panel: TPanel;
    Label4: TLabel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnGravar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    GroupBox2: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    qrPerguntas: TQuery;
    QryAux: TQuery;
    DataSource1: TDataSource;
    tbPesquisas: TTable;
    tbPesquisasCodigo: TIntegerField;
    tbPesquisasDescricao: TStringField;
    DataSource2: TDataSource;
    edDescricao: TEdit;
    Label2: TLabel;
    edOrdem: TEdit;
    qrPerguntasFk_Analise: TIntegerField;
    qrPerguntasFk_Competencia: TIntegerField;
    qrPerguntasCodigo: TIntegerField;
    qrPerguntasOrdem: TIntegerField;
    qrPerguntasDescricao: TStringField;
    qrPerguntasDesc_Competencia: TStringField;
    DBLookupComboBox2: TDBLookupComboBox;
    Label3: TLabel;
    DataSource3: TDataSource;
    tbCompetencias: TTable;
    tbCompetenciasFk_Analise: TIntegerField;
    tbCompetenciasCodigo: TIntegerField;
    tbCompetenciasDescricao: TStringField;
    procedure qrPerguntasAfterScroll(DataSet: TDataSet);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure edOrdemKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Inclusao  : Boolean;
    Alteracao : Boolean;

    Fk_Pergunta : Integer;

    procedure AlterarRegistro;
    function IncluirRegistro : Boolean;
    procedure IncluirAvaliacao;
    function ValidaCampos : Boolean;

    procedure ZerarVariaveis;

    procedure AtualizaGrade;
  public
    { Public declarations }
  end;

var
  f_avldescadastroperguntas: Tf_avldescadastroperguntas;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_avldescadastroperguntas.qrPerguntasAfterScroll(
  DataSet: TDataSet);
begin
  if qrPerguntas.RecordCount > 0
   then begin
     edDescricao.Text          := qrPerguntasDescricao.AsString;
     edOrdem.Text              := qrPerguntasOrdem.AsString;
   end
   else begin
     edDescricao.Clear;
     edOrdem.clear;
   end;
end;

procedure Tf_avldescadastroperguntas.btnIncluirClick(Sender: TObject);
begin
  if (Trim(DBLookupComboBox1.Text) <> '')
   then begin
     Inclusao := True;

     btnIncluir.Enabled  := False;
     btnAlterar.Enabled  := False;
     btnExcluir.Enabled  := False;
     btnGravar.Enabled   := True;
     btnCancelar.Enabled := True;
     btnSair.Enabled     := False;

     DBGrid1.Enabled           := False;
     DBLookupComboBox2.Enabled := True;
     edDescricao.Enabled       := True;

     edDescricao.Clear;
     edOrdem.Clear;

     DBLookupComboBox2.SetFocus;
   end
   else begin
     Application.MessageBox('Favor selecionar a pesquisa na qual a pergunta será incluída.','Alerta',MB_ICONWARNING);
     DBLookupComboBox1.SetFocus;
   end;
end;

procedure Tf_avldescadastroperguntas.btnAlterarClick(Sender: TObject);
begin
  Alteracao := True;

  btnIncluir.Enabled  := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnSair.Enabled     := False;

  DBGrid1.Enabled           := False;
  DBLookupComboBox2.Enabled := False;
  edDescricao.Enabled       := True;

  edDescricao.SetFocus;
end;

procedure Tf_avldescadastroperguntas.btnGravarClick(Sender: TObject);
begin
  if ValidaCampos
   then begin
     try
       if Inclusao
        then begin
          IncluirRegistro;
          IncluirAvaliacao;
          Application.MessageBox('Pergunta incluída com sucesso!','Informação',MB_ICONINFORMATION);
        end;

       if Alteracao
        then begin
          AlterarRegistro;
          Application.MessageBox('Pesquisa alterada com sucesso!','Informação',MB_ICONINFORMATION);
        end;
     except
       Application.MessageBox('Erro na Inclusão/Alteração do Registro','Informação',MB_ICONINFORMATION);
       Abort;
     end;

     ZerarVariaveis;

     AtualizaGrade;

     btnIncluir.Enabled  := True;
     btnAlterar.Enabled  := True;
     btnExcluir.Enabled  := True;
     btnGravar.Enabled   := False;
     btnCancelar.Enabled := False;
     btnSair.Enabled     := True;

     DBLookupComboBox2.ListFieldIndex := -1;

     DBGrid1.Enabled           := True;
     DBLookupComboBox2.Enabled := False;
     edDescricao.Enabled       := False;

     DBGrid1.SetFocus;
  end;
end;

procedure Tf_avldescadastroperguntas.btnCancelarClick(Sender: TObject);
begin
  ZerarVariaveis;

  btnIncluir.Enabled  := True;
  btnAlterar.Enabled  := True;
  btnExcluir.Enabled  := True;
  btnGravar.Enabled   := False;
  btnCancelar.Enabled := False;
  btnSair.Enabled     := True;

  DBLookupComboBox2.ListFieldIndex := -1;

  DBGrid1.Enabled           := True;
  DBLookupComboBox2.Enabled := False;
  edDescricao.Enabled       := False;

  DBGrid1.SetFocus;
end;

procedure Tf_avldescadastroperguntas.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure Tf_avldescadastroperguntas.AlterarRegistro;
begin
  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('UPDATE ANL_DES_PERGUNTAS SET DESCRICAO = :DESCRICAO, ORDEM = :ORDEM WHERE CODIGO = :CODIGO');
    QryAux.Params[0].Value := edDescricao.Text;
    QryAux.Params[1].Value := edOrdem.Text;
    QryAux.Params[2].Value := qrPerguntasCodigo.AsInteger;

    QryAux.ExecSQL;
  finally
    QryAux.Close;
  end;
end;

procedure Tf_avldescadastroperguntas.AtualizaGrade;
begin
  qrPerguntas.Close;
  qrPerguntas.Open;
end;

function Tf_avldescadastroperguntas.IncluirRegistro: Boolean;
begin
  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('INSERT INTO ANL_DES_PERGUNTAS(FK_ANALISE, FK_COMPETENCIA, DESCRICAO, ORDEM) VALUES (:FK_ANALISE, :FK_COMPETENCIA, :DESCRICAO, :ORDEM) ');
    QryAux.Params[0].Value := tbPesquisasCodigo.AsInteger;
    QryAux.Params[1].Value := tbCompetenciasCodigo.AsInteger;
    QryAux.Params[2].Value := edDescricao.Text;
    QryAux.Params[3].Value := edOrdem.Text;

    QryAux.ExecSQL;

    Result := True;

    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('SELECT MAX(CODIGO) FROM ANL_DES_PERGUNTAS WHERE FK_ANALISE = :FK_ANALISE');
    QryAux.Params[0].Value := tbPesquisasCodigo.AsInteger;

    QryAux.Open;

    Fk_Pergunta := QryAux.Fields[0].AsInteger;
  finally
    QryAux.Close;
  end;
end;

function Tf_avldescadastroperguntas.ValidaCampos: Boolean;
begin
  Result := True;

  if (Trim(edDescricao.Text) = '')
   then begin
     Application.MessageBox('Informe o campo Descrição!','Atenção',MB_ICONWARNING);
     edDescricao.SetFocus;
     Result := False;
     Exit;
   end;

  if (Trim(edOrdem.Text) = '')
   then begin
     Application.MessageBox('Informe o campo Ordem!','Atenção',MB_ICONWARNING);
     edOrdem.SetFocus;
     Result := False;
     Exit;
   end;
end;

procedure Tf_avldescadastroperguntas.ZerarVariaveis;
begin
  Inclusao  := False;
  Alteracao := False;
end;

procedure Tf_avldescadastroperguntas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  f_avldescadastroperguntas := Nil;
  F_MSCOMEX.CadastrodePerguntas1.Enabled := True;
end;

procedure Tf_avldescadastroperguntas.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_avldescadastroperguntas.FormCreate(Sender: TObject);
begin
  ZerarVariaveis;

  tbPesquisas.Open;

  tbCompetencias.Open;

  AtualizaGrade;
end;

procedure Tf_avldescadastroperguntas.DBLookupComboBox1Click(
  Sender: TObject);
begin
  if not(Alteracao)
   then begin
     qrPerguntas.Filter   := 'FK_ANALISE = ' + IntToStr(tbPesquisasCodigo.AsInteger);
     qrPerguntas.Filtered := True;

     tbCompetencias.Filter   := 'FK_ANALISE = ' + IntToStr(tbPesquisasCodigo.AsInteger);
     tbCompetencias.Filtered := True;
   end;
end;

procedure Tf_avldescadastroperguntas.IncluirAvaliacao;
begin
  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('INSERT INTO ANL_DES_RESULTADOS(FK_ANALISE, COLABORADOR, NOME, FK_COMPETENCIA, FK_PERGUNTA)                                ');
    QryAux.SQL.Add('                        SELECT :FK_ANALISE, USUARIO, NOME, :FK_COMPETENCIA, :FK_PERGUNTA FROM ANL_DES_CONTROLE_HIERARQUIA ');
    QryAux.Params[0].Value := tbPesquisasCodigo.AsInteger;
    QryAux.Params[1].Value := tbCompetenciasCodigo.AsInteger;
    QryAux.Params[2].Value := Fk_Pergunta;

    QryAux.ExecSQL;
  finally
    QryAux.Close;
  end;
end;

procedure Tf_avldescadastroperguntas.edOrdemKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9',#8,#13])
   then Key := #0;
end;

end.
