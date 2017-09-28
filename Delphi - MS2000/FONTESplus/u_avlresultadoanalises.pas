unit u_avlresultadoanalises;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Buttons, Db, DBTables;

type
  Tf_avlresultadoanalises = class(TForm)
    dblcbPesquisa: TDBLookupComboBox;
    Label3: TLabel;
    btnImprimir: TBitBtn;
    DataSource2: TDataSource;
    tbPesquisas: TTable;
    tbPesquisasCodigo: TIntegerField;
    tbPesquisasDescricao: TStringField;
    qryColaborador: TQuery;
    StringField1: TStringField;
    qryColaboradorUsuario: TStringField;
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Hierarquia : String;

    function TrazHierarquia: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_avlresultadoanalises: Tf_avlresultadoanalises;

implementation

{$R *.DFM}

Uses u_avlrelresultadoanalises, U_MSCOMEX;

procedure Tf_avlresultadoanalises.FormShow(Sender: TObject);
begin
  tbPesquisas.Open;
end;

procedure Tf_avlresultadoanalises.btnImprimirClick(Sender: TObject);
begin
  if (dblcbPesquisa.Text <> '')
   then begin
     if (v_usuario <> 'PGALAVOTTI')
      then begin
        HIERARQUIA := TrazHierarquia;

        if HIERARQUIA <> ''
         then qryColaborador.ParamByName('Usuario').Value := v_usuario
         else Exit;
      end
      else qryColaborador.ParamByName('Usuario').Value := '%';

     try
       if not Assigned(f_avlrelresultadoanalises)
        then Application.CreateForm(Tf_avlrelresultadoanalises, f_avlrelresultadoanalises);

       f_avlrelresultadoanalises.QuickRep2.Preview;
     finally
       FreeAndNil(f_avlrelresultadoanalises);
     end;
   end;
end;

procedure Tf_avlresultadoanalises.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  f_avlresultadoanalises := nil;
  F_MSCOMEX.ResultadoSupervisionados1.Enabled := True;
end;

function Tf_avlresultadoanalises.TrazHierarquia: String;
var
  QrAux : TQuery;
  Teste : String;
begin
  try
    QrAux := TQuery.Create(nil);
    QrAux.DatabaseName := 'DBNMSCOMEX';

    QrAux.SQL.Clear;
    QrAux.SQL.Add(' SELECT DISTINCT SUPERVISOR, GESTOR FROM ANL_DES_HIERARQUIA_ANALISE WHERE (SUPERVISOR = :USUARIO) OR (GESTOR = :USUARIO) ');
    QrAux.Params[0].Value := v_usuario;
    QrAux.Open;

    if QrAux.RecordCount > 0
     then begin
       if (QrAux.FieldByName('SUPERVISOR').AsString = v_usuario)
        then begin
          Result := 'SUPERVISOR';
          Exit;
        end;

       if (QrAux.FieldByName('GESTOR').AsString = v_usuario)
        then begin
          Result := 'GESTOR';
          Exit;
        end;
     end
     else Result := '';
  finally
    QrAux.Free;
  end;
end;

end.
