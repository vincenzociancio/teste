unit u_RelUsuset;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Grids, DBGrids, Buttons, ExtCtrls, Db, DBTables;

type
    TF_RelUsuset = class(TForm)
    pnlBaixo: TPanel;
    btnGravar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSair: TBitBtn;
    DBGrid1: TDBGrid;
    Label222: TLabel;
    Label221: TLabel;
    dsUsuario: TDataSource;
    qrUsuario: TQuery;
    qrUsuarioUsuario: TStringField;
    qrUsuarioNome_Completo: TStringField;
    dsNormas_Usu: TDataSource;
    qrNormas_Usu: TQuery;
    qrNormas_UsuUsuario: TStringField;
    qrNormas_UsuSetor: TStringField;
    dblcbUsuario: TDBLookupComboBox;
    dblcbSetor: TDBLookupComboBox;
    tbNormas_Usu: TTable;
    tbNormas_UsuUsuario: TStringField;
    tbNormas_UsuSetor: TStringField;
    dsNormas: TDataSource;
    qrDelete_usu: TQuery;
    qrNormas_Ususequencial: TAutoIncField;
    tbNormas_Ususequencial: TAutoIncField;
    btnNovo: TBitBtn;
    btnSetor: TBitBtn;
    dsNormas_setor: TDataSource;
    qrNormas_setor: TQuery;
    QryAux: TQuery;
    btnCancelar: TBitBtn;
    procedure btnSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSetorClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
    function UsuarioJaExistente : Boolean;
  public
    { Public declarations }
  end;

var
  F_RelUsuset: TF_RelUsuset;

implementation

uses u_cadsetor, U_MSCOMEX;

{$R *.DFM}

procedure TF_RelUsuset.btnSairClick(Sender: TObject);
begin
  qrNormas_Usu.close;
  qrUsuario.close;
  close;
end;

procedure TF_RelUsuset.FormActivate(Sender: TObject);
begin
  qrNormas_Usu.close;
  qrNormas_Usu.open;
  qrUsuario.close;
  qrUsuario.open;
  tbNormas_Usu.close;
  tbNormas_Usu.open;
  qrNormas_setor.close;
  qrNormas_setor.open;
end;

procedure TF_RelUsuset.btnGravarClick(Sender: TObject);
begin

  if (dblcbUsuario.text = '')  then begin
     MessageDlg('Favor informar o Usuário.', mtWarning, [mbOk], 0);
     exit;
  End;

  if (dblcbSetor.text = '')  then begin
     MessageDlg('Favor informar o Setor.', mtWarning, [mbOk], 0);
     exit;
  End;

   if not UsuarioJaExistente then begin
    tbNormas_Usu.post;
    qrNormas_Usu.close;
    qrNormas_Usu.open;
    btnNovo.Enabled := True;
    btnExcluir.Enabled := True;
    btnSair.Enabled := True;
    btnGravar.Enabled := False;
    dblcbUsuario.Enabled := False;
    dblcbSetor.Enabled := False;
   end;

end;

procedure TF_RelUsuset.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Confirma a exclusão deste Usuário ?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
   then begin
      qrDelete_usu.close;
      qrDelete_usu.ParamByName('sequencia').Value := qrNormas_Ususequencial.AsString;
      qrDelete_usu.ExecSQL;
      Application.MessageBox('Usuário excluído com sucesso!','Informação',MB_ICONINFORMATION);
      qrNormas_Usu.close;
      qrNormas_Usu.open;
  end;
end;

procedure TF_RelUsuset.btnNovoClick(Sender: TObject);
begin
     tbNormas_Usu.Append;
     btnNovo.Enabled := False;
     btnExcluir.Enabled := False;
     btnSair.Enabled :=False;
     btnGravar.Enabled := True;
     btnCancelar.Enabled := True;
     dblcbUsuario.Enabled := True;
     dblcbSetor.Enabled := true;
end;

procedure TF_RelUsuset.btnSetorClick(Sender: TObject);
begin
    Application.CreateForm(Tf_cadsetor,f_cadsetor);
    f_cadsetor.Show;

end;

procedure TF_RelUsuset.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   // f_mscomex.Relacaousarioesetor.Enabled := True;
    F_RelUsuset := nil;
    Action := caFree;
end;

function TF_RelUsuset.UsuarioJaExistente: Boolean;
begin
  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('select usuario from Normas_Usuario_Setor where usuario =:pUsuario  and Setor =:pSetor');
    QryAux.Params[0].Value := dblcbUsuario.Text;
    QryAux.Params[1].Value := dblcbSetor.Text;
    QryAux.Open;

    if QryAux.RecordCount > 0
     then Application.MessageBox('Este Usuário já está cadastrado nesse Setor.','Alerta',MB_ICONWARNING);

    Result := QryAux.RecordCount > 0;
  finally
    QryAux.Close;
  end;
end;

procedure TF_RelUsuset.btnCancelarClick(Sender: TObject);
begin
  tbNormas_Usu.Cancel;
  btnNovo.Enabled := True;
  btnExcluir.Enabled := True;
  btnSair.Enabled := True;
  btnGravar.Enabled := False;
  btnCancelar.Enabled := False;
  dblcbUsuario.Enabled := False;
  dblcbSetor.Enabled := False;
end;

end.

