unit U_parametros;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, DBTables, Mask, ExtCtrls, Grids, DBGrids, Buttons;

type
  TF_parametros = class(TForm)
    T_parametrosEmpresa: TStringField;
    T_parametrosFilial: TStringField;
    DS_parametros: TDataSource;
    T_parametros: TTable;
    T_empresas: TTable;
    T_filiais: TTable;
    DS_empresas: TDataSource;
    DS_filiais: TDataSource;
    T_empresasCodigo: TStringField;
    T_empresasRazao_Social: TStringField;
    T_filiaisCodigo_Empresa: TStringField;
    T_filiaisCodigo_Filial: TStringField;
    T_filiaisDescricao: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    Q_filiais: TQuery;
    DS_filaisporempresa: TDataSource;
    Q_filiaisCodigo_Empresa: TStringField;
    Q_filiaisCodigo_Filial: TStringField;
    Q_filiaisDescricao: TStringField;
    Label2: TLabel;
    DBL_filiaisporempresa: TDBLookupComboBox;
    B_confirma: TBitBtn;
    B_cancela: TBitBtn;
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure B_confirmaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure B_cancelaClick(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  F_parametros: TF_parametros;

implementation

uses U_MSCOMEX;

{$R *.DFM}


procedure TF_parametros.DBLookupComboBox1Click(Sender: TObject);
begin
f_parametros.left := 0;
f_parametros.top  := 0;
Q_filiais.active := false;
Q_filiais.SQL.Clear;

Q_filiais.SQL.Add('SELECT Filiais.Codigo_Empresa, Filiais.Codigo_Filial, Filiais.Descricao');
Q_filiais.SQL.Add('FROM Filiais INNER JOIN Empresas ON Filiais.Codigo_Empresa = Empresas.Codigo');
Q_filiais.SQL.Add('WHERE Filiais.Codigo_Empresa = :qempresa ');

Q_filiais.Params[0].AsString := t_parametrosempresa.asstring;
Q_filiais.ExecSQL;
Q_filiais.active := true;

end;

procedure TF_parametros.B_confirmaClick(Sender: TObject);
begin
    t_parametros.edit;
    t_parametros.post;
    f_parametros.close;
end;

procedure TF_parametros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    //f_mscomex.Parametros2.enabled := true;
    {f_parametros.destroy;}
    {f_parametros.free;}
    {Action := caFree;
    F_parametros := nil;}
end;


procedure TF_parametros.B_cancelaClick(Sender: TObject);
begin
   f_parametros.close;
end;

end.