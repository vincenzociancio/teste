unit u_gerasenhas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables;

type
  Tf_gerapass = class(TForm)
    DB_MSCOMEX: TDatabase;
    t_parametros: TTable;
    ds_parametros: TDataSource;
    t_parametrosEmpresa: TStringField;
    t_parametrosFilial: TStringField;
    t_parametrosNumerador_Processos: TStringField;
    t_parametrosNumerador_Documentos: TStringField;
    t_parametrosEndereco_ftp: TStringField;
    t_parametrosUsuario_ftp: TStringField;
    t_parametrosSenha_ftp: TStringField;
    t_parametrosHost: TStringField;
    t_importadores: TTable;
    t_importadoresEmpresa: TStringField;
    t_importadoresFilial: TStringField;
    t_importadoresCodigo: TStringField;
    t_importadoresRazoSocial: TStringField;
    t_importadoresPas: TStringField;
    t_importadoresCNPJ_CPF_COMPLETO: TStringField;
    t_importadoresCGCCPF: TStringField;
    t_importadoresTipoImportador: TStringField;
    t_importadoresEndereo: TStringField;
    t_importadoresNmero: TStringField;
    t_importadoresComplemento: TStringField;
    t_importadoresBairro: TStringField;
    t_importadoresCidade: TStringField;
    t_importadoresCEP: TStringField;
    t_importadoresUF: TStringField;
    t_importadoresEstado: TStringField;
    t_importadoresInscrioEstadual: TStringField;
    t_importadoresBanco: TStringField;
    t_importadoresAgencia: TStringField;
    t_importadoresConta_Corrente: TStringField;
    t_importadoresConta_Corrente_Registro: TIntegerField;
    t_importadoresConta_Corrente_Deposito: TIntegerField;
    t_importadoreslink: TStringField;
    ds_importadores: TDataSource;
    t_cpf: TTable;
    ds_cpf: TDataSource;
    t_usuariosnet: TTable;
    ds_usuariosnet: TDataSource;
    t_usuariosnetCGCCPF: TStringField;
    t_usuariosnetUsuario: TStringField;
    t_usuariosnetSenha: TStringField;
    t_usuariosnetNome_Completo: TStringField;
    t_usuariosnetNivel: TStringField;
    t_cpfNome_Completo: TStringField;
    t_cpfUsuario: TStringField;
    t_cpfSenha: TStringField;
    t_cpfEmail: TStringField;
    t_cpfNivel: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_gerapass: Tf_gerapass;

implementation

{$R *.DFM}

procedure Tf_gerapass.FormCreate(Sender: TObject);
begin
    DB_MSCOMEX.Params.Values['USER NAME'] := '';
    DB_MSCOMEX.Params.Values['PASSWORD'] := 'lasbrug30';
    DB_MSCOMEX.Connected := true;
    t_parametros.open;
    t_importadores.open;
    t_cpf.open;
    t_usuariosnet.open;
end;

procedure Tf_gerapass.FormShow(Sender: TObject);
var
   I,J: Integer;
   qsenha : string;

begin

if MessageDlg('Confirma geração de novas senhas para Internet?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
   Randomize;
   t_importadores.First;
   while not t_importadores.eof do begin
         if t_importadoreslink.asstring <> '' then begin
         t_cpf.first;
         while not t_cpf.eof do begin
              if not t_usuariosnet.findkey([t_importadorescgccpf.asstring,t_cpfusuario.asstring]) then begin
                 qsenha := '';
                 for J := 1 to 6 do begin
                     I := random(255);
                     while ((I < 48) or (I > 57) and (I < 97) or (I > 122)) do begin
                           I := random(255);
                     end;
                     qsenha := qsenha + CHR(I);
                 end;

                 t_usuariosnet.append;
                 t_usuariosnetCGCCPF.asstring        := t_importadorescgccpf.asstring;
                 t_usuariosnetUsuario.asstring       := t_cpfusuario.asstring;
                 t_usuariosnetSenha.asstring         := qsenha;
                 t_usuariosnetNome_Completo.asstring := t_cpfnome_completo.asstring;
                 t_usuariosnetNivel.asstring         := '3';
                 t_usuariosnet.post;

              end;

              t_cpf.next;

         end;
         end;
         t_importadores.next;

   end;

end;
f_gerapass.close;

end;

end.
