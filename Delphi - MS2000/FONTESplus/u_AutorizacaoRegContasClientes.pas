unit u_AutorizacaoRegContasClientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, DBCtrls, Db, DBTables, StdCtrls, Grids, DBGrids, ExtCtrls, Buttons;

type
  Tf_AutorizacaoRegContasClientes = class(TForm)
    pnlprincipal: TPanel;
    lblImportador: TLabel;
    DBGrid1: TDBGrid;
    T_autorizacao_registros_contas_clientes: TTable;
    T_autorizacao_registros_contas_clientesBanco: TStringField;
    T_autorizacao_registros_contas_clientesAgencia: TStringField;
    T_autorizacao_registros_contas_clientesConta_Corrente: TStringField;
    ds_autorizacao_registros_contas_clientes: TDataSource;
    Label5: TLabel;
    dbeBanco: TDBEdit;
    dbeAgencia: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    dbeContaCorrente: TDBEdit;
    dbeImportador: TDBEdit;
    dbeRazao_Social: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnFechar: TBitBtn;
    Bevel1: TBevel;
    q_Localizar: TQuery;
    q_LocalizarCodigo: TStringField;
    q_LocalizarRazao_Social: TStringField;
    q_LocalizarCNPJ_CPF_COMPLETO: TStringField;
    dsLocalizar: TDataSource;
    pnlLocalizar: TPanel;
    Label14: TLabel;
    btnOK: TBitBtn;
    edtLocalizar: TEdit;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    T_autorizacao_registros_contas_clientesImportador: TStringField;
    T_autorizacao_registros_contas_clientesRazao_Social: TStringField;
    procedure btnNovoClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtLocalizarChange(Sender: TObject);
    procedure dbeBancoKeyPress(Sender: TObject; var Key: Char);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizaGrid;

    procedure AtivaCampos(Ativa : Boolean);

    procedure AtivaBotoes(Ativa : Boolean);

    procedure LimpaCampos;
  public
    { Public declarations }
  end;

var
  f_AutorizacaoRegContasClientes: Tf_AutorizacaoRegContasClientes;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_AutorizacaoRegContasClientes.btnNovoClick(Sender: TObject);
begin
  pnlLocalizar.Visible := True;
  pnlprincipal.Enabled := False;

  AtivaBotoes(False);

  AtivaCampos(True);

  q_Localizar.Open;
  edtLocalizar.SetFocus;

  T_Autorizacao_Registros_Contas_Clientes.Append;
end;

procedure Tf_AutorizacaoRegContasClientes.btnOKClick(Sender: TObject);
begin
  pnlLocalizar.Visible := False;
  pnlprincipal.Enabled := True;

  dbeImportador.Text   := q_LocalizarCodigo.AsString;
  dbeRazao_Social.Text := q_LocalizarRazao_Social.AsString;

  q_Localizar.Close;
  edtLocalizar.Text := '';

  AtivaCampos(True);

  T_Autorizacao_Registros_Contas_Clientes.Edit;

  dbeBanco.SetFocus;
end;

procedure Tf_AutorizacaoRegContasClientes.btnCancelarClick(
  Sender: TObject);
begin
  T_Autorizacao_Registros_Contas_Clientes.Cancel;

  AtivaCampos(False);

  AtivaBotoes(True);
end;

procedure Tf_AutorizacaoRegContasClientes.btnGravarClick(Sender: TObject);
begin
  try
    T_Autorizacao_Registros_Contas_Clientes.Post;
  except
    Application.MessageBox('Erro ao incluir as informações para esse importador, favor verificar.','Atenção',MB_ICONERROR);
  end;

  AtivaBotoes(True);

  AtivaCampos(False);

  AtualizaGrid;  
end;

procedure Tf_AutorizacaoRegContasClientes.btnFecharClick(Sender: TObject);
begin
  T_Autorizacao_Registros_Contas_Clientes.Cancel;

  Close;
end;

procedure Tf_AutorizacaoRegContasClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  I : Integer;
begin
  for I := 0 to pred(ComponentCount) do
   begin
     if Components[I] is TQuery
      then TQuery(Components[I]).Close
      else if Components[I] is TTable
            then TTable(Components[I]).Close;
   end;
   
  Action := caFree;
  f_AutorizacaoRegContasClientes := nil;
  f_mscomex.CadastrodeContasClientes1.Enabled := True;
end;

procedure Tf_AutorizacaoRegContasClientes.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_AutorizacaoRegContasClientes.AtivaCampos(Ativa: Boolean);
begin
  dbeBanco.Enabled         := Ativa;
  dbeAgencia.Enabled       := Ativa;
  dbeContaCorrente.Enabled := Ativa;
end;

procedure Tf_AutorizacaoRegContasClientes.btnAlterarClick(Sender: TObject);
begin
  AtivaBotoes(False);

  AtivaCampos(True);

  dbeBanco.SetFocus;
end;

procedure Tf_AutorizacaoRegContasClientes.LimpaCampos;
begin
  dbeImportador.Clear;
  dbeRazao_Social.Clear;
  dbeBanco.Clear;
  dbeAgencia.Clear;
  dbeContaCorrente.Clear;
end;

procedure Tf_AutorizacaoRegContasClientes.AtivaBotoes(Ativa: Boolean);
begin
  btnNovo.Enabled     := Ativa;
  btnAlterar.Enabled  := Ativa;
  btnExcluir.Enabled  := Ativa;
  btnGravar.Enabled   := not Ativa;
  btnCancelar.Enabled := not Ativa;
end;

procedure Tf_AutorizacaoRegContasClientes.AtualizaGrid;
begin
  T_Autorizacao_Registros_Contas_Clientes.Close;
  T_Autorizacao_Registros_Contas_Clientes.Open;
end;

procedure Tf_AutorizacaoRegContasClientes.FormShow(Sender: TObject);
begin
  AtualizaGrid;
end;

procedure Tf_AutorizacaoRegContasClientes.edtLocalizarChange(
  Sender: TObject);
begin
  q_Localizar.Filter := 'Razao_Social = '''+ uppercase(edtLocalizar.Text) +'*''';

  if (Trim(edtLocalizar.Text) = '')
   then q_Localizar.Filtered := False
   else q_Localizar.Filtered := True;
end;

procedure Tf_AutorizacaoRegContasClientes.dbeBancoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9',#8])
   then Key := #0;
end;

procedure Tf_AutorizacaoRegContasClientes.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir as informações para esse importador ?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
   then T_Autorizacao_Registros_Contas_Clientes.Delete;
end;

end.
