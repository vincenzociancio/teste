unit u_cadsetor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, Db, DBTables;

type
  Tf_cadsetor = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    edSetor: TEdit;
    sbControle: TScrollBox;
    Bevel1: TBevel;
    Bevel4: TBevel;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    btnExcluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnNovo: TBitBtn;
    QryAux: TQuery;
    qrSetor: TQuery;
    qrSetorPK_SETOR: TAutoIncField;
    qrSetorNome_setor: TStringField;
    qrSetorExcluido: TBooleanField;
    DataSource1: TDataSource;
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    private
    Inclusao  : Boolean;
    Alteracao : Boolean;


    procedure AlterarRegistro;
    procedure ExcluirRegistro;
    //procedure IncluirRegistro;
    function IncluirRegistro : Boolean;
    function ValidaCampos : Boolean;
    function SetorJaExistente : Boolean;

    procedure ZerarVariaveis;
    procedure AtualizaGrade;


    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_cadsetor: Tf_cadsetor;

implementation

{$R *.DFM}

procedure Tf_cadsetor.btnNovoClick(Sender: TObject);
begin
 Inclusao := True;

  btnNovo.Enabled  := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnSair.Enabled     := False;
  
  DBGrid1.Enabled := False;
  edSetor.Enabled := True;

  edSetor.Clear;
  edSetor.SetFocus;
end;

procedure Tf_cadsetor.ZerarVariaveis;
begin
  Inclusao  := False;
  Alteracao := False;
end;

procedure Tf_cadsetor.AlterarRegistro;
begin
  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('UPDATE controle_normas_setor SET nome_setor = :NOME_SETOR WHERE PK_SETOR = :PK_SETOR');
    QryAux.Params[0].Value := edSetor.Text;
    QryAux.Params[1].Value := qrSetor.FieldByName('PK_SETOR').AsInteger;
    QryAux.ExecSQL;
  finally
    QryAux.Close;
  end;
end;

procedure Tf_cadsetor.ExcluirRegistro;
begin
  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('delete from controle_normas_setor WHERE PK_SETOR = :PK_SETOR');
  //  QryAux.Params[0].Value := 1;
    QryAux.Params[0].Value := qrSetor.FieldByName('PK_SETOR').AsInteger;
    QryAux.ExecSQL;
  finally
    QryAux.Close;
  end;
end;

function Tf_cadsetor.IncluirRegistro;
begin
  if not SetorJaExistente then begin
     try
       QryAux.Close;
       QryAux.SQL.Clear;
       QryAux.SQL.Add('INSERT INTO controle_normas_setor  VALUES (:nome_setor,:EXCLUIDO)');
       QryAux.Params[0].Value := edSetor.Text;
       QryAux.Params[1].Value := 0;
       QryAux.ExecSQL;
       Result := True;
     finally
       QryAux.Close;
     end;
   end
   else Result := False;  
end;

function Tf_cadsetor.ValidaCampos: Boolean;
begin
  Result := True;

  if (Trim(edSetor.Text) = '')
   then begin
     Application.MessageBox('Digite o Nome do Setor!','Atenção',MB_ICONWARNING);
     edSetor.SetFocus;
     Result := False;
     Exit;
   end;
end;

procedure Tf_cadsetor.AtualizaGrade;
begin
  qrSetor.Close;
  qrSetor.Open;
end;

function Tf_cadsetor.SetorJaExistente: Boolean;
begin
  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('SELECT nome_setor FROM controle_normas_setor WHERE nome_setor = :pnome_setor');
    QryAux.Params[0].Value := Trim( edSetor.Text );
    QryAux.Open;

    if QryAux.RecordCount > 0
     then Application.MessageBox('Favor verificar pois este Setor já está cadastrado.','Alerta',MB_ICONWARNING);

    Result := QryAux.RecordCount > 0;
  finally
    QryAux.Close;
  end;
end;


procedure Tf_cadsetor.btnAlterarClick(Sender: TObject);
begin
Alteracao := True;

  btnNovo.Enabled  := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnSair.Enabled     := False;

  DBGrid1.Enabled := False;
  edSetor.Enabled := True;

  edSetor.SetFocus;
end;

procedure Tf_cadsetor.btnExcluirClick(Sender: TObject);
begin
 if MessageDlg('Confirma a exclusão deste Setor ?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
   then begin
     ExcluirRegistro;
     Application.MessageBox('Setor excluído com sucesso!','Informação',MB_ICONINFORMATION);
     AtualizaGrade;
   end;

  DBGrid1.SetFocus;
end;

procedure Tf_cadsetor.btnGravarClick(Sender: TObject);
begin
 if ValidaCampos
   then begin
     try
       if Inclusao
        then begin
          if ( IncluirRegistro ) then
          Application.MessageBox('Setor incluído com sucesso!','Informação',MB_ICONINFORMATION);
        end;

       if Alteracao
        then begin
          AlterarRegistro;
          Application.MessageBox('Setor alterado com sucesso!','Informação',MB_ICONINFORMATION);
        end;
     except
       Application.MessageBox('Erro na Inclusão/Alteração do Registro','Informação',MB_ICONINFORMATION);
       Abort;
     end;

     ZerarVariaveis;

     AtualizaGrade;

     btnNovo.Enabled  := True;
     btnAlterar.Enabled  := True;
     btnExcluir.Enabled  := True;
     btnGravar.Enabled   := False;
     btnCancelar.Enabled := False;
     btnSair.Enabled     := True;

     DBGrid1.Enabled := True;
     edSetor.Enabled := False;

     DBGrid1.SetFocus;
  end;
end;

procedure Tf_cadsetor.btnCancelarClick(Sender: TObject);
begin
ZerarVariaveis;

  btnNovo.Enabled  := True;
  btnAlterar.Enabled  := True;
  btnExcluir.Enabled  := True;
  btnGravar.Enabled   := False;
  btnCancelar.Enabled := False;
  btnSair.Enabled     := True;

  DBGrid1.Enabled := True;
  edSetor.Enabled := False;

  DBGrid1.SetFocus;
end;

procedure Tf_cadsetor.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure Tf_cadsetor.FormActivate(Sender: TObject);
begin
  qrSetor.close;
  qrSetor.open;
end;

procedure Tf_cadsetor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  f_cadsetor:= nil;
  Action := caFree;
end;

end.
