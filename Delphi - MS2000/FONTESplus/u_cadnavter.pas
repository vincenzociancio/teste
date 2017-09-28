unit u_cadnavter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, Grids, DBGrids, Db, DBTables;

type
  Tf_cadnavter = class(TForm)
    qrTerminais: TQuery;
    DataSource1: TDataSource;
    qrTerminaisPK_TERMINAL: TIntegerField;
    qrTerminaisNOME_TERMINAL: TStringField;
    qrTerminaisEXCLUIDO: TBooleanField;
    QryDeterminaID: TQuery;
    QryAux: TQuery;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    BooleanField2: TBooleanField;
    Panel1: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    edTerminal: TEdit;
    sbControle: TScrollBox;
    Bevel1: TBevel;
    Bevel4: TBevel;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    btnExcluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnIncluir: TBitBtn;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure qrTerminaisAfterScroll(DataSet: TDataSet);
  private
    Inclusao  : Boolean;
    Alteracao : Boolean;

    function DeterminaChavePrimaria : Integer;
    procedure AlterarRegistro;
    procedure ExcluirRegistro;
    procedure IncluirRegistro;
    function ValidaCampos : Boolean;    

    procedure ZerarVariaveis;
    procedure AtualizaGrade;
    { Private d,eclarations }
  public
    { Public declarations }
  end;

var
  f_cadnavter: Tf_cadnavter;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_cadnavter.btnIncluirClick(Sender: TObject);
begin
  Inclusao := True;

  btnIncluir.Enabled  := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnSair.Enabled     := False;

  DBGrid1.Enabled    := False;
  EdTerminal.Enabled := True;

  EdTerminal.Clear;
  EdTerminal.SetFocus;
end;

procedure Tf_cadnavter.btnAlterarClick(Sender: TObject);
begin
  Alteracao := True;

  btnIncluir.Enabled  := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnSair.Enabled     := False;

  DBGrid1.Enabled    := False;
  EdTerminal.Enabled := True;

  EdTerminal.SetFocus;
end;

procedure Tf_cadnavter.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Confirma a exclusão deste Terminal ?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
   then begin
     ExcluirRegistro;
     ShowMessage('Terminal excluído!');
     AtualizaGrade;
   end;

  DBGrid1.SetFocus;
end;

procedure Tf_cadnavter.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure Tf_cadnavter.btnGravarClick(Sender: TObject);
begin
  if ValidaCampos
   then begin
     try
       if Inclusao
        then begin
          IncluirRegistro;
          Application.MessageBox('Terminal incluído com sucesso!','Informação',MB_ICONINFORMATION);
        end;

       if Alteracao
        then begin
          AlterarRegistro;
          Application.MessageBox('Terminal alterado com sucesso!','Informação',MB_ICONINFORMATION);
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
     EdTerminal.Enabled := False;

     DBGrid1.SetFocus;
  end;
end;

procedure Tf_cadnavter.FormCreate(Sender: TObject);
begin
  if (v_usuario = 'LFERRAZ') or (v_usuario = 'SULE') or (v_usuario = 'SIMONE') or
     (v_usuario = 'ODILMA')  or (v_usuario = 'DUDA') or (v_usuario = 'ELIANE') or
     (v_usuario = 'WMEDEIROS')
   then begin
     btnIncluir.Enabled := True;
     btnAlterar.Enabled := True;
     btnExcluir.Enabled := True;
   end
   else begin
     btnIncluir.Enabled := False;
     btnAlterar.Enabled := False;
     btnExcluir.Enabled := False;
   end;

  ZerarVariaveis;

  qrTerminais.Open;
end;

procedure Tf_cadnavter.btnCancelarClick(Sender: TObject);
begin
  ZerarVariaveis;

  btnIncluir.Enabled  := True;
  btnAlterar.Enabled  := True;
  btnExcluir.Enabled  := True;
  btnGravar.Enabled   := False;
  btnCancelar.Enabled := False;
  btnSair.Enabled     := True;

  DBGrid1.Enabled    := True;
  EdTerminal.Enabled := False;

  DBGrid1.SetFocus;
end;

procedure Tf_cadnavter.qrTerminaisAfterScroll(DataSet: TDataSet);
begin
  if (qrTerminais.RecordCount = 0)
   then begin
     btnAlterar.Enabled := False;
     btnExcluir.Enabled := False;
   end;

  edTerminal.Text := qrTerminais.FieldByName('NOME_TERMINAL').AsString;  
end;

procedure Tf_cadnavter.ZerarVariaveis;
begin
  Inclusao  := False;
  Alteracao := False;
end;

procedure Tf_cadnavter.AlterarRegistro;
begin
  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('UPDATE CONTROLE_NAVIOS_TERMINAL SET NOME_TERMINAL = :NOME_TERMINAL WHERE PK_TERMINAL = :PK_TERMINAL');
    QryAux.Params[0].Value := EdTerminal.Text;
    QryAux.Params[1].Value := qrTerminais.FieldByName('PK_TERMINAL').AsInteger;
    QryAux.ExecSQL;
  finally
    QryAux.Close;
  end;
end;

procedure Tf_cadnavter.ExcluirRegistro;
begin
  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('UPDATE CONTROLE_NAVIOS_TERMINAL SET EXCLUIDO =:EXCLUIDO WHERE PK_TERMINAL = :PK_TERMINAL');
    QryAux.Params[0].Value := 1;
    QryAux.Params[1].Value := qrTerminais.FieldByName('PK_TERMINAL').AsInteger;
    QryAux.ExecSQL;
  finally
    QryAux.Close;
  end;
end;

procedure Tf_cadnavter.IncluirRegistro;
begin
  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('INSERT INTO CONTROLE_NAVIOS_TERMINAL VALUES (:PK_TERMINAL,:NOME_TERMINAL,:EXCLUIDO)');
    QryAux.Params[0].Value := DeterminaChavePrimaria;
    QryAux.Params[1].Value := EdTerminal.Text;
    QryAux.Params[2].Value := 0;

    QryAux.ExecSQL;
  finally
    QryAux.Close;
  end;
end;

function Tf_cadnavter.ValidaCampos: Boolean;
begin
  Result := True;

  if (Trim(EdTerminal.Text) = '')
   then begin
     Application.MessageBox('Digite o Nome do Terminal!','Atenção',MB_ICONWARNING);
     EdTerminal.SetFocus;
     Result := False;
     Exit;
   end;
end;

function Tf_cadnavter.DeterminaChavePrimaria: Integer;
begin
  try
    QryDeterminaID.Open;

    if QryDeterminaID.Fields[0].IsNull
      then Result := 1
      else Result := QryDeterminaID.Fields[0].AsInteger + 1;
  finally
    QryDeterminaID.Close;
  end;
end;

procedure Tf_cadnavter.AtualizaGrade;
begin
  qrTerminais.Close;
  qrTerminais.Open;
end;

end.
