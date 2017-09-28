unit U_usuresp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, StdCtrls;

type
  Tf_usuresp = class(TForm)
    DBGrid1: TDBGrid;
    Q_USU: TQuery;
    q_usuresp: TQuery;
    DBG_USU: TDBGrid;
    Label1: TLabel;
    ds_qusu: TDataSource;
    ds_qusuresp: TDataSource;
    Label2: TLabel;
    t_usuresp: TTable;
    t_usurespUsuarios: TStringField;
    t_usurespUsuarios_HABILITADO: TStringField;
    t_usurespHabilitado: TIntegerField;
    q_usurespUsuarios: TStringField;
    q_usurespUsuarios_HABILITADO: TStringField;
    q_usurespNome_Completo: TStringField;
    q_usurespHabilitado: TStringField;
    Q_USUUsuario: TStringField;
    Q_USUNome_Completo: TStringField;
    Q_USUSupervisor: TStringField;
    Q_USUResponsavel: TIntegerField;
    Q_USUSupervisorC: TStringField;
    Q_USUResponsavelC: TIntegerField;
    Q_USUAPARECE: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Q_USUAfterScroll(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_usuresp: Tf_usuresp;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_usuresp.FormCreate(Sender: TObject);
begin

    q_usu.close;
    q_usu.params[0].asString := v_usuario;
    q_usu.params[1].asString := v_usuario;
    q_usu.params[2].asString := v_usuario;

    {if (v_nivel='0') or (v_usuario='DUDA') then begin
       q_usu.params[3].asInteger := 1;
       q_usu.params[4].asInteger := 1;
       q_usu.params[5].asInteger := 1;
       q_usu.params[6].asInteger := 1;
    end
    else begin
       q_usu.params[3].asInteger := 1;
       q_usu.params[4].asInteger := 1;
       q_usu.params[5].asInteger := 1;
       q_usu.params[6].asInteger := 1;
    end;   }
    
    q_usu.open;

    dbg_usu.Enabled := false;
    dbgrid1.Enabled := false;
    if (q_usuresponsavel.asString = '1') or (q_usuresponsavelc.asString = '1') then begin
//    if q_usu.recordcount >1 then  begin
       dbg_usu.Enabled := true;
       dbgrid1.Enabled := true;       
    end;   

end;

procedure Tf_usuresp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     f_mscomex.HabilitarUsurios1.Enabled := True;
     f_usuresp := Nil;
     Action := caFree;
end;

procedure Tf_usuresp.Q_USUAfterScroll(DataSet: TDataSet);
begin
    q_usuresp.close;
    q_usuresp.params[0].asstring := q_usuusuario.asstring;
    q_usuresp.open;
    t_usuresp.open;
end;

procedure Tf_usuresp.DBGrid1DblClick(Sender: TObject);
begin
t_usuresp.edit;
if t_usuresphabilitado.asinteger = 1 then begin
   t_usuresphabilitado.asinteger := 0;
   logusu('P','Usuários por Responsável, Desabilitou acesso do usuário : '+t_usurespusuarios.asstring+' <- '+t_usurespusuarios_habilitado.asstring);
end
else begin
   t_usuresphabilitado.asinteger := 1;
   logusu('P','Usuários por Responsável, Habilitou acesso do usuário : : '+t_usurespusuarios.asstring+' <- '+t_usurespusuarios_habilitado.asstring);
end;
t_usuresp.post;
q_usuresp.Close;
q_usuresp.OPEN;

end;

procedure Tf_usuresp.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 if (q_usuresphabilitado.asstring = 'SIM') then begin
     dbGrid1.Columns[0].font.Color := clNavy;
     dbGrid1.Columns[1].font.Color := clNavy;
end
else begin
     dbGrid1.Columns[0].font.Color := clMaroon;
     dbGrid1.Columns[1].font.Color := clMaroon;
end;

if gdSelected in state then
   dbGrid1.Canvas.font.color := clwhite;

dbGrid1.defaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.
