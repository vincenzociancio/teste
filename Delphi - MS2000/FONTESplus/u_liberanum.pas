unit u_liberanum;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids;

type
  Tf_liberanum = class(TForm)
    q_libera: TQuery;
    ds_qlibera: TDataSource;
    q_liberaProcesso: TStringField;
    q_liberaRazoSocial: TStringField;
    q_liberaDescricao: TStringField;
    q_liberaUsuario_Previsao: TStringField;
    q_liberaData_Previsao: TDateTimeField;
    q_liberaValor_Previsao: TFloatField;
    q_liberaPrevisao_solicitada: TStringField;
    q_liberaOk_Previsao_financeiro: TStringField;
    DBGrid1: TDBGrid;
    q_liberaEmpresa: TStringField;
    q_liberaFilial: TStringField;
    q_liberaREG: TAutoIncField;
    t_numerarios: TTable;
    ds_numerarios: TDataSource;
    t_numerariosEmpresa: TStringField;
    t_numerariosFilial: TStringField;
    t_numerariosProcesso: TStringField;
    t_numerariosREG: TAutoIncField;
    t_numerariosNumerario: TStringField;
    t_numerariosUsuario_Previsao: TStringField;
    t_numerariosData_Previsao: TDateTimeField;
    t_numerariosValor_Previsao: TFloatField;
    t_numerariosPrevisao_solicitada: TStringField;
    t_numerariosOk_Previsao_financeiro: TStringField;
    t_numerariosUsuario_Financeiro: TStringField;
    t_numerariosData_Registro: TDateTimeField;
    t_numerariosValor_Registrado: TFloatField;
    t_numerariosContabilizado: TStringField;
    t_numerariosUsuario_Contablizado: TStringField;
    q_varios: TQuery;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_liberanum: Tf_liberanum;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_liberanum.DBGrid1DblClick(Sender: TObject);
var qprocesso:string;
begin

if messagedlg('Confirma liberação desta solicitação de numerário?',mtinformation,[mbno,mbyes],0 )= mryes then begin
   qprocesso := t_numerariosprocesso.asstring;
   if messagedlg('Deseja liberar todos os numérarios do Processo '+qprocesso+' ?',mtinformation,[mbno,mbyes],0 )= mryes then begin
      q_varios.close;
      q_varios.Params[0].AsString := 'SIM';
      q_varios.Params[1].asstring := v_usuario;
      q_varios.Params[2].asstring := qprocesso;
      q_varios.execsql;
   end
   else begin
        t_numerarios.edit;
        t_numerariosOk_Previsao_financeiro.AsString := 'SIM';
        t_numerariosUsuario_Financeiro.asstring     := v_usuario;
        t_numerarios.post;
   end;
   q_libera.close;
   q_libera.Open;
   if q_libera.eof then begin
      messagedlg('Não foram encontradas solicitações de numerários para liberação.',mtcustom,[mbok],0);
      f_liberanum.close;
   end;
end;

end;

procedure Tf_liberanum.FormActivate(Sender: TObject);
begin
   f_liberanum.left := 0;
   f_liberanum.top  := 0;
   q_libera.close;
   q_libera.Open;
end;

procedure Tf_liberanum.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action := cafree;
f_liberanum := nil;
f_mscomex.LiberaodeNumerrios1.enabled := true;

end;

procedure Tf_liberanum.FormPaint(Sender: TObject);
begin
   q_libera.close;
   q_libera.Open;
   if q_libera.eof then begin
      messagedlg('Não foram encontradas solicitações de numerários para liberação.',mtcustom,[mbok],0);
      f_liberanum.close;
   end;
end;

end.
