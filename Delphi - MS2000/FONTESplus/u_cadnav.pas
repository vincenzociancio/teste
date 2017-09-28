unit u_cadnav;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Db, DBTables, Grids, DBGrids, DBCtrls, Mask;

type
  Tf_cadnav = class(TForm)
    qrNavios: TQuery;
    DataSource1: TDataSource;
    qrNaviosPK_NAVIO: TIntegerField;
    qrNaviosNOME_NAVIO: TStringField;
    QryDeterminaID: TQuery;
    qrNaviosEXCLUIDO: TBooleanField;
    QryAux: TQuery;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    edNavio: TEdit;
    Label1: TLabel;
    sbControle: TScrollBox;
    Bevel1: TBevel;
    btnGravar: TBitBtn;
    Bevel4: TBevel;
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
    procedure qrNaviosAfterScroll(DataSet: TDataSet);
  private
    Inclusao  : Boolean;
    Alteracao : Boolean;

    function DeterminaChavePrimaria : Integer;
    procedure AlterarRegistro;
    procedure ExcluirRegistro;
    function IncluirRegistro : Boolean;
    function ValidaCampos : Boolean;
    function NavioJaExistente : Boolean;    

    procedure ZerarVariaveis;
    procedure AtualizaGrade;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_cadnav: Tf_cadnav;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_cadnav.btnIncluirClick(Sender: TObject);
begin
  Inclusao := True;

  btnIncluir.Enabled  := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnSair.Enabled     := False;
  
  DBGrid1.Enabled := False;
  EdNavio.Enabled := True;

  EdNavio.Clear;
  EdNavio.SetFocus;
end;

procedure Tf_cadnav.btnAlterarClick(Sender: TObject);
begin
  Alteracao := True;

  btnIncluir.Enabled  := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnSair.Enabled     := False;

  DBGrid1.Enabled := False;
  EdNavio.Enabled := True;

  EdNavio.SetFocus;
end;

procedure Tf_cadnav.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Confirma a exclusão deste Navio ?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
   then begin
     ExcluirRegistro;
     Application.MessageBox('Navio excluído com sucesso!','Informação',MB_ICONINFORMATION);
     AtualizaGrade;
   end;

  DBGrid1.SetFocus;
end;

procedure Tf_cadnav.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure Tf_cadnav.btnGravarClick(Sender: TObject);
begin
  if ValidaCampos
   then begin
     try
       if Inclusao
        then begin
          if ( IncluirRegistro ) then
          Application.MessageBox('Navio incluído com sucesso!','Informação',MB_ICONINFORMATION);
        end;

       if Alteracao
        then begin
          AlterarRegistro;
          Application.MessageBox('Navio alterado com sucesso!','Informação',MB_ICONINFORMATION);
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

     DBGrid1.Enabled := True;
     EdNavio.Enabled := False;

     DBGrid1.SetFocus;
  end;   
end;

function Tf_cadnav.DeterminaChavePrimaria : Integer;
begin
  try
    QryDeterminaID.Close;
    QryDeterminaID.Open;

    if QryDeterminaID.Fields[0].IsNull
      then Result := 1
      else Result := QryDeterminaID.Fields[0].AsInteger + 1;
  finally
    QryDeterminaID.Close;
  end;
end;

procedure Tf_cadnav.FormCreate(Sender: TObject);
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

  qrNavios.Open;
end;

procedure Tf_cadnav.btnCancelarClick(Sender: TObject);
begin
  ZerarVariaveis;

  btnIncluir.Enabled  := True;
  btnAlterar.Enabled  := True;
  btnExcluir.Enabled  := True;
  btnGravar.Enabled   := False;
  btnCancelar.Enabled := False;
  btnSair.Enabled     := True;

  DBGrid1.Enabled := True;
  EdNavio.Enabled := False;

  DBGrid1.SetFocus;
end;

procedure Tf_cadnav.qrNaviosAfterScroll(DataSet: TDataSet);
begin
  if (qrNavios.RecordCount = 0)
   then begin
     btnAlterar.Enabled := False;
     btnExcluir.Enabled := False;
   end;

  edNavio.Text := qrNavios.FieldByName('NOME_NAVIO').AsString;
end;

procedure Tf_cadnav.ZerarVariaveis;
begin
  Inclusao  := False;
  Alteracao := False;
end;

procedure Tf_cadnav.AlterarRegistro;
begin
  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('UPDATE CONTROLE_NAVIOS SET NOME_NAVIO = :NOME_NAVIO WHERE PK_NAVIO = :PK_NAVIO');
    QryAux.Params[0].Value := EdNavio.Text;
    QryAux.Params[1].Value := qrNavios.FieldByName('PK_NAVIO').AsInteger;
    QryAux.ExecSQL;
  finally
    QryAux.Close;
  end;
end;

procedure Tf_cadnav.ExcluirRegistro;
begin
  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('UPDATE CONTROLE_NAVIOS SET EXCLUIDO =:EXCLUIDO WHERE PK_NAVIO = :PK_NAVIO');
    QryAux.Params[0].Value := 1;
    QryAux.Params[1].Value := qrNavios.FieldByName('PK_NAVIO').AsInteger;
    QryAux.ExecSQL;
  finally
    QryAux.Close;
  end;
end;

function Tf_cadnav.IncluirRegistro;
begin
  if not NavioJaExistente then begin
     try
       QryAux.Close;
       QryAux.SQL.Clear;
       QryAux.SQL.Add('INSERT INTO CONTROLE_NAVIOS VALUES (:PK_NAVIO,:NOME_NAVIO,:EXCLUIDO)');
       QryAux.Params[0].Value := DeterminaChavePrimaria;
       QryAux.Params[1].Value := EdNavio.Text;
       QryAux.Params[2].Value := 0;
       QryAux.ExecSQL;
       Result := True;
     finally
       QryAux.Close;
     end;
   end
   else Result := False;  
end;

function Tf_cadnav.ValidaCampos: Boolean;
begin
  Result := True;

  if (Trim(EdNavio.Text) = '')
   then begin
     Application.MessageBox('Digite o Nome do Navio!','Atenção',MB_ICONWARNING);
     EdNavio.SetFocus;
     Result := False;
     Exit;
   end;
end;

procedure Tf_cadnav.AtualizaGrade;
begin
  qrNavios.Close;
  qrNavios.Open;
end;

function Tf_cadnav.NavioJaExistente: Boolean;
begin
  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('SELECT NOME_NAVIO FROM CONTROLE_NAVIOS WHERE NOME_NAVIO = :pNOME_NAVIO');
    QryAux.Params[0].Value := Trim( edNavio.Text );
    QryAux.Open;

    if QryAux.RecordCount > 0
     then Application.MessageBox('Favor verificar pois este Navio já está cadastrado.','Alerta',MB_ICONWARNING);

    Result := QryAux.RecordCount > 0;
  finally
    QryAux.Close;
  end;
end;

end.


