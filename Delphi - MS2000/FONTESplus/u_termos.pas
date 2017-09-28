unit u_termos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, ComCtrls, Gauges, Db, DBTables, Grids, DBGrids;

type
  Tf_termos = class(TForm)
    Panel1: TPanel;
    ds_qtermos: TDataSource;
    q_termos: TQuery;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    q_termossemdata: TQuery;
    ds_qtermossemdata: TDataSource;
    q_termosEmpresa: TStringField;
    q_termosFilial: TStringField;
    q_termosCodigo: TStringField;
    q_termosRazao_Social: TStringField;
    q_termosNumero_TR: TStringField;
    q_termosData_Vencimento_TR: TDateTimeField;
    q_termosqdias: TIntegerField;
    q_termossemdataEmpresa: TStringField;
    q_termossemdataFilial: TStringField;
    q_termossemdataCodigo: TStringField;
    q_termossemdataRazao_Social: TStringField;
    q_termossemdataNumero_TR: TStringField;
    q_termossemdataData_vencimento_TR: TDateTimeField;
    q_termossemdataqdias: TIntegerField;
    q_termossemdataData_Baixa_TR: TDateTimeField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_termos: Tf_termos;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_termos.FormActivate(Sender: TObject);

begin
     Left := 1;
     Top  := 1;


q_termos.close;
q_termos.sql.clear;

if tipoBanco = 1 then
  q_termos.sql.add('SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Processos.Numero_TR, Processos.Data_Vencimento_TR, datediff(day,getdate(),[data_vencimento_tr]) AS qdias ')
else
  q_termos.sql.add('SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Processos.Numero_TR, Processos.Data_Vencimento_TR, ([data_vencimento_tr]-Date()) AS qdias ');

q_termos.sql.add('FROM Processos INNER JOIN Importadores ON (Processos.Empresa = Importadores.Empresa) AND (Processos.Filial = Importadores.Filial) AND (Processos.Importador = Importadores.Codigo) ');

if tipoBanco = 1 then
  q_termos.sql.add('WHERE (((Processos.Empresa)=:qempresa) AND ((Processos.Filial)=:qfilial) AND ((Processos.Numero_TR) Is Not Null) AND ((Processos.data_baixa_TR) Is Null) AND (((datediff(day,getdate(),[data_vencimento_tr])))>=0)) ')
else
  q_termos.sql.add('WHERE (((Processos.Empresa)=:qempresa) AND ((Processos.Filial)=:qfilial) AND ((Processos.Numero_TR) Is Not Null) AND ((Processos.data_baixa_TR) Is Null) AND ((([data_vencimento_tr]-Date()))>=0)) ');

q_termos.sql.add('ORDER BY Processos.Data_Vencimento_TR;');

q_termos.Params[0].AsString := v_empresa;
q_termos.Params[1].AsString := v_filial;
q_termos.ExecSQL;
q_termos.active := true;

q_termossemdata.close;
q_termossemdata.sql.clear;
if tipoBanco = 1 then
  q_termossemdata.sql.add('SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Processos.Numero_TR, Processos.Data_vencimento_TR, datediff(day,getdate(),[data_vencimento_tr]) AS qdias, Processos.Data_Baixa_TR ')
else
  q_termossemdata.sql.add('SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Processos.Numero_TR, Processos.Data_vencimento_TR, ([data_vencimento_tr]-Date()) AS qdias, Processos.Data_Baixa_TR ');
  
q_termossemdata.sql.add('FROM Processos INNER JOIN Importadores ON (Processos.Empresa = Importadores.Empresa) AND (Processos.Filial = Importadores.Filial) AND (Processos.Importador = Importadores.Codigo) ');
q_termossemdata.sql.add('WHERE (((Processos.Empresa)=:empresa) AND ((Processos.Filial)=:filial) AND ((Processos.Numero_TR)<>"") AND ((Processos.Data_vencimento_TR) Is Null) AND ((Processos.Data_Baixa_TR) Is Null)) ');
q_termossemdata.sql.add('ORDER BY Processos.Numero_TR; ');
q_termossemdata.Params[0].AsString := v_empresa;
q_termossemdata.Params[1].AsString := v_filial;
q_termossemdata.ExecSQL;
q_termossemdata.active := true;


end;

procedure Tf_termos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action := cafree;
f_termos := nil;
f_mscomex.termosderesponsabilidade1.enabled := true;
end;

end.
