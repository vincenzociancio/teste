unit u_avldescadastrocompetencia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, Db, DBTables, DBCtrls;

type
  Tf_avldescadastrocompetencia = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    edCompetencia: TEdit;
    sbControle: TScrollBox;
    Bevel1: TBevel;
    Bevel4: TBevel;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    btnExcluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnIncluir: TBitBtn;
    cbAtivo: TCheckBox;
    qrCompetencias: TQuery;
    qrCompetenciasDescricao: TStringField;
    qrCompetenciasCodigo: TIntegerField;
    QryAux: TQuery;
    DataSource1: TDataSource;
    edPeso: TEdit;
    Label2: TLabel;
    tbPesquisas: TTable;
    DataSource2: TDataSource;
    Label4: TLabel;
    edOrdem: TEdit;
    tbPesquisasCodigo: TIntegerField;
    qrCompetenciasFk_Analise: TIntegerField;
    qrCompetenciasPeso: TIntegerField;
    qrCompetenciasOrdem: TIntegerField;
    tbPesquisasDescricao: TStringField;
    qrCompetenciasAtivo: TBooleanField;
    ScrollBox1: TScrollBox;
    Label3: TLabel;
    dblcbPesquisa: TDBLookupComboBox;
    tbPesquisas2: TTable;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    DataSource3: TDataSource;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qrCompetenciasAtivoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dblcbPesquisaClick(Sender: TObject);
    procedure qrCompetenciasAfterScroll(DataSet: TDataSet);
    procedure edOrdemKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Inclusao  : Boolean;
    Alteracao : Boolean;

    procedure AlterarRegistro;
    function IncluirRegistro : Boolean;
    function ValidaCampos : Boolean;

    procedure ZerarVariaveis;
    procedure AtualizaGrade;
    function CompetenciaJaExistente: Boolean;    
  public
    { Public declarations }
  end;

var
  f_avldescadastrocompetencia: Tf_avldescadastrocompetencia;

implementation

uses u_connavs, U_MSCOMEX;

{$R *.DFM}

{ Tf_avldescadastrocompetencia }

procedure Tf_avldescadastrocompetencia.AlterarRegistro;
begin
  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('UPDATE ANL_DES_COMPETENCIAS SET FK_ANALISE = :FK_ANALISE, DESCRICAO = :DESCRICAO, PESO = :PESO, ORDEM = :ORDEM, ATIVO = :ATIVO WHERE CODIGO = :CODIGO');
    QryAux.Params[0].Value := tbPesquisasCodigo.AsInteger;
    QryAux.Params[1].Value := EdCompetencia.Text;
    QryAux.Params[2].Value := edPeso.Text;
    QryAux.Params[3].Value := edOrdem.Text;

    if cbAtivo.Checked
     then QryAux.Params[4].Value := 1
     else QryAux.Params[4].Value := 0;
     
    QryAux.Params[5].Value := qrCompetenciasCodigo.AsInteger;

    QryAux.ExecSQL;
  finally
    QryAux.Close;
  end;
end;

procedure Tf_avldescadastrocompetencia.AtualizaGrade;
begin
  qrCompetencias.Close;
  qrCompetencias.Open;
end;

function Tf_avldescadastrocompetencia.IncluirRegistro: Boolean;
begin
  if not CompetenciaJaExistente
   then begin
     try
       QryAux.Close;
       QryAux.SQL.Clear;
       QryAux.SQL.Add('INSERT INTO ANL_DES_COMPETENCIAS(FK_ANALISE, DESCRICAO, PESO, ORDEM, ATIVO) VALUES (:FK_ANALISE, :DESCRICAO, :PESO, :ORDEM, :ATIVO)');
       QryAux.Params[0].Value := tbPesquisasCodigo.AsString;
       QryAux.Params[1].Value := EdCompetencia.Text;
       QryAux.Params[2].Value := edPeso.Text;
       QryAux.Params[3].Value := edOrdem.Text;

       if cbAtivo.Checked
        then QryAux.Params[4].Value := 1
        else QryAux.Params[4].Value := 0;

       QryAux.ExecSQL;
       Result := True;
     finally
       QryAux.Close;
     end;
   end
   else Result := False;
end;

function Tf_avldescadastrocompetencia.CompetenciaJaExistente: Boolean;
begin
  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('SELECT DESCRICAO FROM ANL_DES_COMPETENCIAS WHERE DESCRICAO = :pDescricao');
    QryAux.Params[0].Value := Trim(EdCompetencia.Text);
    QryAux.Open;

    if QryAux.RecordCount > 0
     then Application.MessageBox('Favor verificar pois esta Competência já está cadastrada.','Alerta',MB_ICONWARNING);

    Result := QryAux.RecordCount > 0;
  finally
    QryAux.Close;
  end;
end;

function Tf_avldescadastrocompetencia.ValidaCampos: Boolean;
begin
  Result := True;

  if (Trim(dblcbPesquisa.KeyField) = '')
   then begin
     Application.MessageBox('Informe a Pesquisa!','Atenção',MB_ICONWARNING);
     dblcbPesquisa.SetFocus;
     Result := False;
     Exit;
   end;

  if (Trim(EdCompetencia.Text) = '')
   then begin
     Application.MessageBox('Informe a Competência!','Atenção',MB_ICONWARNING);
     EdCompetencia.SetFocus;
     Result := False;
     Exit;
   end;

  if (Trim(edPeso.Text) = '')
   then begin
     Application.MessageBox('Informe o Peso!','Atenção',MB_ICONWARNING);
     edPeso.SetFocus;
     Result := False;
     Exit;
   end;

  if (Trim(edOrdem.Text) = '')
   then begin
     Application.MessageBox('Informe a Ordem!','Atenção',MB_ICONWARNING);
     edOrdem.SetFocus;
     Result := False;
     Exit;
   end;
end;

procedure Tf_avldescadastrocompetencia.ZerarVariaveis;
begin
  Inclusao  := False;
  Alteracao := False;
end;

procedure Tf_avldescadastrocompetencia.btnIncluirClick(Sender: TObject);
begin
  if (Trim(dblcbPesquisa.Text) <> '')
   then begin
     Inclusao := True;

     btnIncluir.Enabled  := False;
     btnAlterar.Enabled  := False;
     btnExcluir.Enabled  := False;
     btnGravar.Enabled   := True;
     btnCancelar.Enabled := True;
     btnSair.Enabled     := False;

     DBGrid1.Enabled       := False;
     dblcbPesquisa.Enabled := False;
     EdCompetencia.Enabled := True;
     edPeso.Enabled        := True;
     edOrdem.Enabled       := True;
     cbAtivo.Enabled       := True;
     cbAtivo.Checked       := False;

     edOrdem.Clear;
     edCompetencia.Clear;
     edPeso.Clear;

     edOrdem.SetFocus;
   end
   else begin
     Application.MessageBox('Favor selecionar a pesquisa na qual a competência será incluída.','',MB_ICONWARNING);
     dblcbPesquisa.SetFocus;
   end;
end;

procedure Tf_avldescadastrocompetencia.btnAlterarClick(Sender: TObject);
begin
  Alteracao := True;

  btnIncluir.Enabled  := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnSair.Enabled     := False;

  DBGrid1.Enabled       := False;
  dblcbPesquisa.Enabled := False;
  EdCompetencia.Enabled := True;
  edPeso.Enabled        := True;
  edOrdem.Enabled       := True;
  cbAtivo.Enabled       := True;

  edOrdem.SetFocus;
end;

procedure Tf_avldescadastrocompetencia.btnGravarClick(Sender: TObject);
begin
  if ValidaCampos
   then begin
     try
       if Inclusao
        then begin
          IncluirRegistro;
          Application.MessageBox('Competência incluída com sucesso!','Informação',MB_ICONINFORMATION);
        end;

       if Alteracao
        then begin
          AlterarRegistro;
          Application.MessageBox('Competência alterada com sucesso!','Informação',MB_ICONINFORMATION);
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

     DBGrid1.Enabled       := True;
     dblcbPesquisa.Enabled := True;
     EdCompetencia.Enabled := False;
     edPeso.Enabled        := False;
     edOrdem.Enabled       := False;
     cbAtivo.Enabled       := False;

     DBGrid1.SetFocus;
  end; 
end;

procedure Tf_avldescadastrocompetencia.btnCancelarClick(Sender: TObject);
begin
  ZerarVariaveis;

  btnIncluir.Enabled  := True;
  btnAlterar.Enabled  := True;
  btnExcluir.Enabled  := True;
  btnGravar.Enabled   := False;
  btnCancelar.Enabled := False;
  btnSair.Enabled     := True;

  DBGrid1.Enabled       := True;
  dblcbPesquisa.Enabled := True;
  EdCompetencia.Enabled := False;
  edPeso.Enabled        := False;
  edOrdem.Enabled       := False;
  cbAtivo.Enabled       := False;

  DBGrid1.SetFocus;
end;

procedure Tf_avldescadastrocompetencia.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure Tf_avldescadastrocompetencia.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_avldescadastrocompetencia.FormCreate(Sender: TObject);
begin
  ZerarVariaveis;

  tbPesquisas.Open;

  tbPesquisas2.Open;
end;

procedure Tf_avldescadastrocompetencia.qrCompetenciasAtivoGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if (qrCompetenciasAtivo.AsBoolean = True)
   then Text := 'Ativo'
   else Text := 'Inativo';
end;

procedure Tf_avldescadastrocompetencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  f_avldescadastrocompetencia := Nil;
  F_MSCOMEX.CadastrodeCompetncias1.Enabled := True;
end;

procedure Tf_avldescadastrocompetencia.dblcbPesquisaClick(Sender: TObject);
begin
  if not(Alteracao)
   then begin
     qrCompetencias.Filter   := 'FK_ANALISE = ' + IntToStr(tbPesquisasCodigo.AsInteger);
     qrCompetencias.Filtered := True;
   end;

  AtualizaGrade; 
end;

procedure Tf_avldescadastrocompetencia.qrCompetenciasAfterScroll(
  DataSet: TDataSet);
begin
  edCompetencia.Text := qrCompetenciasDescricao.AsString;
  edOrdem.Text       := qrCompetenciasOrdem.AsString;
  edPeso.Text        := qrCompetenciasPeso.AsString;
  cbAtivo.Checked    := qrCompetenciasAtivo.AsBoolean = True;
end;

procedure Tf_avldescadastrocompetencia.edOrdemKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9',#8,#13])
   then Key := #0;
end;

end.
