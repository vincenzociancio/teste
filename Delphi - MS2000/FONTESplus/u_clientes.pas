unit u_clientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, DBTables, ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons;

type
  Tf_clientes = class(TForm)
    ds_importadores: TDataSource;
    q_importadores: TQuery;
    ds_qimportadores: TDataSource;
    T_contasdep: TTable;
    ds_contasdep: TDataSource;
    q_importadoresEmpresa: TStringField;
    q_importadoresFilial: TStringField;
    q_importadoresCodigo: TStringField;
    q_importadoresCNPJ_CPF_COMPLETO: TStringField;
    q_importadoresRazao_Social: TStringField;
    q_importadoresccdep: TAutoIncField;
    q_importadoresccdepdescr: TStringField;
    q_importadoresbancodep: TStringField;
    q_importadoresagenciadep: TStringField;
    q_importadorescontadep: TStringField;
    T_contasdepEmpresa: TStringField;
    T_contasdepFilial: TStringField;
    T_contasdepCodigo: TAutoIncField;
    T_contasdepBanco_Caixa: TStringField;
    T_contasdepDescricao: TStringField;
    T_contasdepBanco: TStringField;
    T_contasdepAgencia: TStringField;
    T_contasdepConta_Corrente: TStringField;
    T_contasdepSaldo: TFloatField;
    T_contasdepNivel: TStringField;
    T_contasdepData: TDateTimeField;
    T_contasdepEmpresacc: TStringField;
    T_contasdepFilialcc: TStringField;
    T_contasdepASCAA: TSmallintField;
    p_itens: TPanel;
    lblImportador: TLabel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Panel4: TPanel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label3: TLabel;
    edFiltroCliente: TEdit;
    cbClientesSemConta: TCheckBox;
    T_Importadores: TTable;
    btnAlterar: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    T_ImportadoresEmpresa: TStringField;
    T_ImportadoresFilial: TStringField;
    T_ImportadoresCodigo: TStringField;
    T_ImportadoresConta_Corrente_Deposito: TIntegerField;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbClientesSemContaClick(Sender: TObject);
    procedure edFiltroClienteChange(Sender: TObject);
    procedure q_importadoresAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    Importador : String;

    procedure AtualizaGrid;

    procedure HabilitaBotoes(Ativa : Boolean);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_clientes: Tf_clientes;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_clientes.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_clientes.FormClose(Sender: TObject; var Action: TCloseAction);
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

  action := cafree;
  f_clientes := nil;
  f_mscomex.clientes1.enabled := true;
end;

procedure Tf_clientes.AtualizaGrid;
begin
  if cbClientesSemConta.Checked
   then begin
     q_importadores.Close;
     q_importadores.SQL.Clear;
     q_importadores.SQL.Add('   SELECT IMPORTADORES.EMPRESA,                          ');
     q_importadores.SQL.Add('          IMPORTADORES.FILIAL,                           ');
     q_importadores.SQL.Add('          IMPORTADORES.CODIGO,                           ');
     q_importadores.SQL.Add('          IMPORTADORES.CNPJ_CPF_COMPLETO,                ');
     q_importadores.SQL.Add('          IMPORTADORES.RAZAO_SOCIAL,                     ');
     q_importadores.SQL.Add('          CONTAS_CORRENTES.CODIGO         AS CCDEP,      ');
     q_importadores.SQL.Add('          CONTAS_CORRENTES.DESCRICAO      AS CCDEPDESCR, ');
     q_importadores.SQL.Add('          CONTAS_CORRENTES.BANCO          AS BANCODEP,   ');
     q_importadores.SQL.Add('          CONTAS_CORRENTES.AGENCIA        AS AGENCIADEP, ');
     q_importadores.SQL.Add('          CONTAS_CORRENTES.CONTA_CORRENTE AS CONTADEP    ');

     q_importadores.SQL.Add('     FROM ((PARAMETROS INNER JOIN IMPORTADORES                                                      ');
     q_importadores.SQL.Add('       ON  (PARAMETROS.EMPRESA                   = IMPORTADORES.EMPRESA) AND                        ');
     q_importadores.SQL.Add('           (PARAMETROS.FILIAL                    = IMPORTADORES.FILIAL)) LEFT JOIN CONTAS_CORRENTES ');
     q_importadores.SQL.Add('       ON  (IMPORTADORES.CONTA_CORRENTE_DEPOSITO = CONTAS_CORRENTES.CODIGO) AND                     ');
     q_importadores.SQL.Add('           (IMPORTADORES.EMPRESA                 = CONTAS_CORRENTES.EMPRESA) AND                    ');
     q_importadores.SQL.Add('           (IMPORTADORES.FILIAL                  = CONTAS_CORRENTES.FILIAL))                        ');

     q_importadores.SQL.Add('    WHERE ((CONTAS_CORRENTES.CODIGO IS NULL) OR (CONTAS_CORRENTES.DESCRICAO IS NULL) OR (CONTAS_CORRENTES.BANCO IS NULL) OR (CONTAS_CORRENTES.AGENCIA IS NULL) OR (CONTAS_CORRENTES.CONTA_CORRENTE IS NULL)) ');

     if Trim(edFiltroCliente.Text) <> ''
      then q_importadores.SQL.Add(' AND IMPORTADORES.RAZAO_SOCIAL LIKE '''+edFiltroCliente.Text+'%'' ');

     q_importadores.SQL.Add(' ORDER BY IMPORTADORES.RAZAO_SOCIAL ');
     q_importadores.Open;
   end
   else begin
     q_importadores.Close;
     q_importadores.SQL.Clear;
     q_importadores.SQL.Add('   SELECT IMPORTADORES.EMPRESA,                          ');
     q_importadores.SQL.Add('          IMPORTADORES.FILIAL,                           ');
     q_importadores.SQL.Add('          IMPORTADORES.CODIGO,                           ');
     q_importadores.SQL.Add('          IMPORTADORES.CNPJ_CPF_COMPLETO,                ');
     q_importadores.SQL.Add('          IMPORTADORES.RAZAO_SOCIAL,                     ');
     q_importadores.SQL.Add('          CONTAS_CORRENTES.CODIGO         AS CCDEP,      ');
     q_importadores.SQL.Add('          CONTAS_CORRENTES.DESCRICAO      AS CCDEPDESCR, ');
     q_importadores.SQL.Add('          CONTAS_CORRENTES.BANCO          AS BANCODEP,   ');
     q_importadores.SQL.Add('          CONTAS_CORRENTES.AGENCIA        AS AGENCIADEP, ');
     q_importadores.SQL.Add('          CONTAS_CORRENTES.CONTA_CORRENTE AS CONTADEP    ');

     q_importadores.SQL.Add('     FROM ((PARAMETROS INNER JOIN IMPORTADORES                                                      ');
     q_importadores.SQL.Add('       ON  (PARAMETROS.EMPRESA                   = IMPORTADORES.EMPRESA) AND                        ');
     q_importadores.SQL.Add('           (PARAMETROS.FILIAL                    = IMPORTADORES.FILIAL)) LEFT JOIN CONTAS_CORRENTES ');
     q_importadores.SQL.Add('       ON  (IMPORTADORES.EMPRESA                 = CONTAS_CORRENTES.EMPRESA) AND                    ');
     q_importadores.SQL.Add('           (IMPORTADORES.FILIAL                  = CONTAS_CORRENTES.FILIAL) AND                     ');
     q_importadores.SQL.Add('           (IMPORTADORES.CONTA_CORRENTE_DEPOSITO = CONTAS_CORRENTES.CODIGO))                        ');

     if Trim(edFiltroCliente.Text) <> ''
      then q_importadores.SQL.Add(' WHERE IMPORTADORES.RAZAO_SOCIAL LIKE '''+edFiltroCliente.Text+'%'' ');

     q_importadores.SQL.Add(' ORDER BY IMPORTADORES.RAZAO_SOCIAL ');
     q_importadores.Open;
   end;
end;

procedure Tf_clientes.cbClientesSemContaClick(Sender: TObject);
begin
  AtualizaGrid;
end;

procedure Tf_clientes.edFiltroClienteChange(Sender: TObject);
begin
  AtualizaGrid;
end;

procedure Tf_clientes.q_importadoresAfterScroll(DataSet: TDataSet);
begin
  DBLookupComboBox1.KeyValue := q_importadoresccdep.AsInteger;

  T_importadores.FindKey([q_importadoresEmpresa.AsString,q_importadoresFilial.AsString,q_importadoresCodigo.AsString]);

  if q_importadoresccdep.AsInteger = 0
   then begin
     DBEdit4.Clear;
     DBEdit5.Clear;
     DBEdit6.Clear;
   end; 
end;

procedure Tf_clientes.FormShow(Sender: TObject);
begin
  T_Importadores.Open;
  q_importadores.open;
  T_contasdep.open;

  AtualizaGrid;
end;

procedure Tf_clientes.btnAlterarClick(Sender: TObject);
begin
  DBLookupComboBox1.Enabled := True;

  HabilitaBotoes(True);
end;

procedure Tf_clientes.btnSalvarClick(Sender: TObject);
var
  QrAux : TQuery;
begin
  Importador := q_importadoresCodigo.AsString;

  DBLookupComboBox1.Enabled := False;

  try
    QrAux := TQuery.Create(nil);
    QrAux.DatabaseName := 'DBNMSCOMEX';

    QrAux.Close;
    QrAux.SQL.Clear;
    QrAux.SQL.Add('UPDATE IMPORTADORES SET CONTA_CORRENTE_DEPOSITO = :p0 WHERE EMPRESA = :p1 AND FILIAL = :p2 AND CODIGO = :p3 ');
    QrAux.Params[0].Value := T_contasdepCodigo.AsString;
    QrAux.Params[1].Value := T_ImportadoresEmpresa.AsString;
    QrAux.Params[2].Value := T_ImportadoresFilial.AsString;
    QrAux.Params[3].Value := T_ImportadoresCodigo.AsString;
    QrAux.ExecSQL;
  finally
    QrAux.Free;
  end;

  AtualizaGrid;

  q_importadores.Locate('Codigo',Importador,[]);

  Importador := '';

  HabilitaBotoes(False);
end;

procedure Tf_clientes.btnCancelarClick(Sender: TObject);
begin
  DBLookupComboBox1.Enabled := False;

  HabilitaBotoes(False);
end;

procedure Tf_clientes.HabilitaBotoes(Ativa: Boolean);
begin
  btnAlterar.Enabled  := not Ativa;
  btnCancelar.Enabled := Ativa;
  btnSalvar.Enabled   := Ativa;
end;

end.
