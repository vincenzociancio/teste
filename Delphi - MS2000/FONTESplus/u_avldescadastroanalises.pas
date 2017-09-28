unit u_avldescadastroanalises;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, Db, DBTables;

type
  Tf_avldescadastroanalises = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    edPesquisa: TEdit;
    sbControle: TScrollBox;
    Bevel1: TBevel;
    Bevel4: TBevel;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    btnExcluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnIncluir: TBitBtn;
    qrPesquisas: TQuery;
    DataSource1: TDataSource;
    QryAux: TQuery;
    cbAtivo: TCheckBox;
    qrPesquisasCodigo: TIntegerField;
    qrPesquisasDescricao: TStringField;
    qrPesquisasAtivo: TBooleanField;
    procedure qrPesquisasAfterScroll(DataSet: TDataSet);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qrPesquisasAtivoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
    Inclusao  : Boolean;
    Alteracao : Boolean;

    procedure InsereColaboradoresAtuais;
    procedure AlterarRegistro;
    function IncluirRegistro : Boolean;
    function ValidaCampos : Boolean;

    procedure ZerarVariaveis;
    procedure AtualizaGrade;
    function PesquisaJaExistente: Boolean;
  public
    { Public declarations }
  end;

var
  f_avldescadastroanalises: Tf_avldescadastroanalises;

implementation

uses u_connavs, U_MSCOMEX;

{$R *.DFM}

procedure Tf_avldescadastroanalises.qrPesquisasAfterScroll(
  DataSet: TDataSet);
begin
  edPesquisa.Text := qrPesquisasDescricao.AsString;
  cbAtivo.Checked := qrPesquisasAtivo.AsBoolean = True;
end;

procedure Tf_avldescadastroanalises.btnIncluirClick(Sender: TObject);
begin
  Inclusao := True;

  btnIncluir.Enabled  := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnSair.Enabled     := False;
  
  DBGrid1.Enabled    := False;
  edPesquisa.Enabled := True;
  cbAtivo.Enabled    := True;
  cbAtivo.Checked    := False;

  edPesquisa.Clear;
  edPesquisa.SetFocus;
end;

procedure Tf_avldescadastroanalises.btnAlterarClick(Sender: TObject);
begin
  Alteracao := True;

  btnIncluir.Enabled  := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnSair.Enabled     := False;

  DBGrid1.Enabled    := False;
  edPesquisa.Enabled := True;
  cbAtivo.Enabled    := True;  

  edPesquisa.SetFocus;
end;

procedure Tf_avldescadastroanalises.btnExcluirClick(Sender: TObject);
begin
{  if MessageDlg('Confirma a exclusão desta Pesquisa ?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
   then begin
     ExcluirRegistro;
     Application.MessageBox('Pesquisa excluída com sucesso!','Informação',MB_ICONINFORMATION);
     AtualizaGrade;
   end;

  DBGrid1.SetFocus;}
end;

procedure Tf_avldescadastroanalises.btnGravarClick(Sender: TObject);
begin
  if ValidaCampos
   then begin
     try
       if Inclusao
        then begin
          IncluirRegistro;
          InsereColaboradoresAtuais;
          Application.MessageBox('Pesquisa incluída com sucesso!','Informação',MB_ICONINFORMATION);
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

     DBGrid1.Enabled    := True;
     edPesquisa.Enabled := False;
     cbAtivo.Enabled    := False;

     DBGrid1.SetFocus;
  end; 
end;

procedure Tf_avldescadastroanalises.btnCancelarClick(Sender: TObject);
begin
  ZerarVariaveis;

  btnIncluir.Enabled  := True;
  btnAlterar.Enabled  := True;
  btnExcluir.Enabled  := True;
  btnGravar.Enabled   := False;
  btnCancelar.Enabled := False;
  btnSair.Enabled     := True;

  DBGrid1.Enabled    := True;
  edPesquisa.Enabled := False;
  cbAtivo.Enabled    := False;

  DBGrid1.SetFocus;
end;

procedure Tf_avldescadastroanalises.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure Tf_avldescadastroanalises.AlterarRegistro;
begin
  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('UPDATE ANL_DES_ANALISES SET DESCRICAO = :DESCRICAO, ATIVO = :ATIVO WHERE CODIGO = :CODIGO');
    QryAux.Params[0].Value := edPesquisa.Text;

    if cbAtivo.Checked
     then QryAux.Params[1].Value := 1
     else QryAux.Params[1].Value := 0;

    QryAux.Params[2].Value := qrPesquisas.FieldByName('CODIGO').AsInteger;
    QryAux.ExecSQL;
  finally
    QryAux.Close;
  end;
end;

procedure Tf_avldescadastroanalises.AtualizaGrade;
begin
  qrPesquisas.Close;
  qrPesquisas.Open;
end;

function Tf_avldescadastroanalises.ValidaCampos: Boolean;
begin
  Result := True;

  if (Trim(edPesquisa.Text) = '')
   then begin
     Application.MessageBox('Digite a Descrição do campo Pesquisa!','Atenção',MB_ICONWARNING);
     edPesquisa.SetFocus;
     Result := False;
     Exit;
   end;
end;

procedure Tf_avldescadastroanalises.ZerarVariaveis;
begin
  Inclusao  := False;
  Alteracao := False;
end;

function Tf_avldescadastroanalises.IncluirRegistro : Boolean;
begin
  if not PesquisaJaExistente then begin
     try
       QryAux.Close;
       QryAux.SQL.Clear;
       QryAux.SQL.Add('INSERT INTO ANL_DES_ANALISES(DESCRICAO, ATIVO) VALUES (:DESCRICAO,:ATIVO)');
       QryAux.Params[0].Value := edPesquisa.Text;

       if cbAtivo.Checked
        then QryAux.Params[1].Value := 1
        else QryAux.Params[1].Value := 0;

       QryAux.ExecSQL;
       Result := True;
     finally
       QryAux.Close;
     end;
   end
   else Result := False;
end;

function Tf_avldescadastroanalises.PesquisaJaExistente: Boolean;
begin
  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('SELECT DESCRICAO FROM ANL_DES_ANALISES WHERE DESCRICAO = :pDescricao');
    QryAux.Params[0].Value := Trim(edPesquisa.Text);
    QryAux.Open;

    if QryAux.RecordCount > 0
     then Application.MessageBox('Favor verificar pois esta Pesquisa já está cadastrada.','Alerta',MB_ICONWARNING);

    Result := QryAux.RecordCount > 0;
  finally
    QryAux.Close;
  end;
end;

procedure Tf_avldescadastroanalises.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  f_avldescadastroanalises := nil;
  F_MSCOMEX.CadastrodeAnlises1.Enabled := True;
end;

procedure Tf_avldescadastroanalises.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_avldescadastroanalises.FormCreate(Sender: TObject);
begin
  ZerarVariaveis;

  qrPesquisas.Open;
end;

procedure Tf_avldescadastroanalises.qrPesquisasAtivoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if (qrPesquisasAtivo.AsBoolean = True)
   then Text := 'Ativo'
   else Text := 'Inativo';
end;

procedure Tf_avldescadastroanalises.InsereColaboradoresAtuais;
var
  FK_ANALISE : Integer;
begin
  try
    {Insere Colaboradores na tabela de Controle de Hierarquia}
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('INSERT INTO ANL_DES_CONTROLE_HIERARQUIA                                           ');
    QryAux.SQL.Add('  (FK_ANALISE,                                                                    ');
    QryAux.SQL.Add('   USUARIO,                                                                       ');
    QryAux.SQL.Add('   NOME,                                                                          ');
    QryAux.SQL.Add('   HIERARQUIA,                                                                    ');
    QryAux.SQL.Add('   NIVEL)                                                                         ');
    QryAux.SQL.Add(' SELECT (SELECT MAX(CODIGO) FROM ANL_DES_ANALISES WHERE ATIVO = 1) AS FK_ANALISE, ');
    QryAux.SQL.Add('        USUARIO,                                                                  ');
    QryAux.SQL.Add('        NOME_COMPLETO,                                                            ');
    QryAux.SQL.Add('        ''COLABORADOR'',                                                          ');
    QryAux.SQL.Add('        3                                                                         ');
    QryAux.SQL.Add('   FROM USUARIOS                                                                  ');
    QryAux.SQL.Add('  WHERE ATIVO = 1                                                                 ');
    QryAux.ExecSQL;

    {Insere Colaboradores na tabela de Hierarquia de Análise}
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('INSERT INTO Anl_Des_Hierarquia_Analise                                            ');
    QryAux.SQL.Add('  (FK_ANALISE,                                                                    ');
    QryAux.SQL.Add('   COLABORADOR)                                                                   ');
    QryAux.SQL.Add(' SELECT (SELECT MAX(CODIGO) FROM ANL_DES_ANALISES WHERE ATIVO = 1) AS FK_ANALISE, ');
    QryAux.SQL.Add('        USUARIO                                                                   ');
    QryAux.SQL.Add('   FROM USUARIOS                                                                  ');
    QryAux.SQL.Add('  WHERE ATIVO = 1                                                                 ');
    QryAux.ExecSQL;
  finally
    QryAux.Close;
  end;
end;

end.
