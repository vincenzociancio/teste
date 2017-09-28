unit U_empresas;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, Mask, DBTables, ExtCtrls, Grids, DBGrids, Buttons;

type
  TF_empresas = class(TForm)
    T_empresasCodigo: TStringField;
    T_empresasRazao_Social: TStringField;
    DS_empresas: TDataSource;
    T_empresas: TTable;
    DBG_empresas: TDBGrid;
    BitBtn1: TBitBtn;
    DS_filiais: TDataSource;
    T_filiais: TTable;
    T_filiaisCodigo_Empresa: TStringField;
    T_filiaisCodigo_Filial: TStringField;
    T_filiaisDescricao: TStringField;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBNavigator: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure atualizafil(Column: TColumn);
    procedure DBNavigatorClick(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBG_empresasColExit(Sender: TObject);
    procedure DBG_empresasCellClick(Column: TColumn);
    procedure FormActivate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  F_empresas: TF_empresas;
  nova : string;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure TF_empresas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   {f_mscomex.Empresas1.enabled := true;
   action := cafree;
   F_empresas := nil;}
end;

procedure TF_empresas.BitBtn1Click(Sender: TObject);
begin
f_empresas.close;
end;

procedure TF_empresas.atualizafil(Column: TColumn);
begin
 T_filiais.Filter := 'Codigo_empresa = '+ t_empresascodigo.asstring;
end;

procedure TF_empresas.DBNavigatorClick(Sender: TObject;
  Button: TNavigateBtn);
begin
 if Button <> nbinsert then T_filiais.Filter := 'Codigo_empresa = '+ t_empresascodigo.asstring
 else begin
     t_empresas.last;
     nova := inttostr(strtoint(t_empresascodigo.asstring)+1);
     t_empresas.append;
     t_empresascodigo.asstring := nova;
     T_filiais.Filter := 'Codigo_empresa = '+ t_empresascodigo.asstring;
     DBG_empresas.setfocus
 end
end;

procedure TF_empresas.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button = nbinsert then t_filiaisCodigo_Empresa.asstring := t_empresascodigo.asstring;
end;

procedure TF_empresas.DBG_empresasColExit(Sender: TObject);
begin
 T_filiais.Filter := 'Codigo_empresa = '+ t_empresascodigo.asstring;
end;

procedure TF_empresas.DBG_empresasCellClick(Column: TColumn);
begin
 T_filiais.Filter := 'Codigo_empresa = '+ t_empresascodigo.asstring;
end;

procedure TF_empresas.FormActivate(Sender: TObject);
begin
f_empresas.left := 0;
f_empresas.top  := 0;
end;

end.
