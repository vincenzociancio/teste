unit u_importadores_grupos_filtrar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, DBTables, ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons;

type
  TF_importadores_grupos_filtrar = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    btnFechar: TBitBtn;
    procedure DesabilitarComponentes();
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_importadores_grupos_filtrar: TF_importadores_grupos_filtrar;
  filtro: integer;

implementation

{$R *.dfm}

uses U_MSCOMEX, u_importadores_grupos;

procedure TF_importadores_grupos_filtrar.DesabilitarComponentes();
begin
        Edit1.Enabled := false;
        Edit2.Enabled := false;
        Label1.Enabled := false;
        Label2.Enabled := false;
end;

procedure TF_importadores_grupos_filtrar.CheckBox1Click(Sender: TObject);
begin
        if CheckBox1.State = cbUnchecked then begin
                Edit1.Enabled := false;
                Label1.Enabled := false;
                filtro := filtro - 1;
        end;
        if CheckBox1.State = cbChecked then begin
                Edit1.Enabled := true;
                Label1.Enabled := true;
                filtro := filtro + 1;
        end;
end;

procedure TF_importadores_grupos_filtrar.CheckBox2Click(Sender: TObject);
begin
        if CheckBox2.State = cbUnchecked then begin
                Edit2.Enabled := false;
                Label2.Enabled := false;
                filtro := filtro - 1;
        end;
        if CheckBox2.State = cbChecked then begin
                Edit2.Enabled := true;
                Label2.Enabled := true;
                filtro := filtro + 1;
        end;
end;

procedure TF_importadores_grupos_filtrar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        DesabilitarComponentes();
        Edit1.Clear;
        Edit2.Clear;
        CheckBox1.State := cbUnchecked;
        CheckBox2.State := cbUnchecked;
        f_importadores_grupos.HabilitarBotoesIAE();
        Action := caFree;
        F_importadores_grupos_filtrar := nil;
end;

procedure TF_importadores_grupos_filtrar.FormShow(Sender: TObject);
begin
        DesabilitarComponentes;
        filtro := 0;
end;


procedure TF_importadores_grupos_filtrar.btnSalvarClick(Sender: TObject);
var
        Filtro_SQL : string;
        Anterior : boolean;
begin
        if filtro >= 1 then begin
                Anterior := false;
                Filtro_SQL := Filtro_SQL + ' WHERE ';
                if CheckBox1.State = cbChecked then begin
                        if Edit1.Text <> '' then begin
                                Filtro_SQL := Filtro_SQL + ' Importadores.Razao_Social LIKE "%'+Edit1.Text+'%" ';
                                Anterior := true;
                        end else begin
                                ShowMessage('O campo não pode estar vazio.');
                                Edit1.SetFocus;
                                exit;
                        end;
                end;
                if CheckBox2.State = cbChecked then begin
                        if Edit2.Text <> '' then begin
                                if Anterior = true then
                                        Filtro_SQL := Filtro_SQL + ' AND ';
                                Filtro_SQL := Filtro_SQL + ' Importadores.CNPJ_CPF_COMPLETO LIKE "%'+Edit2.Text+'%" ';
                                Anterior := true;
                        end else begin
                                ShowMessage('O campo não pode estar vazio.');
                                Edit2.SetFocus;
                                exit;
                        end;
                end;

                f_importadores_grupos.q_importadores.Close;
                f_importadores_grupos.q_importadores.SQL.Clear;
                f_importadores_grupos.q_importadores.SQL.Add('SELECT     Importadores.Empresa, Importadores.Filial, Importadores.Codigo, ');
                f_importadores_grupos.q_importadores.SQL.Add('Importadores.CNPJ_CPF_COMPLETO, Importadores.Razao_Social ');
                f_importadores_grupos.q_importadores.SQL.Add('FROM Importadores INNER JOIN Parametros ON Importadores.Empresa = Parametros.Empresa AND Importadores.Filial = Parametros.Filial ');
                f_importadores_grupos.q_importadores.SQL.Add(Filtro_SQL);
                f_importadores_grupos.q_importadores.SQL.Add(' ORDER BY Importadores.Razao_Social ');
                f_importadores_grupos.q_importadores.Open;

        end else begin
                ShowMessage('Nenhum filtro foi selecionado.');
        end;
        Close();
end;

procedure TF_importadores_grupos_filtrar.btnCancelarClick(Sender: TObject);
begin
        f_importadores_grupos.q_importadores.Close;
        f_importadores_grupos.q_importadores.SQL.Clear;
        f_importadores_grupos.q_importadores.SQL.Add('SELECT     Importadores.Empresa, Importadores.Filial, Importadores.Codigo, ');
        f_importadores_grupos.q_importadores.SQL.Add('Importadores.CNPJ_CPF_COMPLETO, Importadores.Razao_Social ');
        f_importadores_grupos.q_importadores.SQL.Add('FROM Importadores INNER JOIN Parametros ON Importadores.Empresa = Parametros.Empresa AND Importadores.Filial = Parametros.Filial ');
        f_importadores_grupos.q_importadores.SQL.Add('ORDER BY Importadores.Razao_Social ');
        f_importadores_grupos.q_importadores.Open;
        Close();
end;

procedure TF_importadores_grupos_filtrar.btnFecharClick(Sender: TObject);
begin
        Close();
end;

end.
