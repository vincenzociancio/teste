unit u_importadores_grupos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, DBTables, ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons;

type
  Tf_importadores_grupos = class(TForm)
    DBGrid1: TDBGrid;
    ds_qimportadores: TDataSource;
    ds_importadores_grupos: TDataSource;
    Panel3: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Panel4: TPanel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Panel1: TPanel;
    Label4: TLabel;
    Panel2: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    t_importadores_grupos: TTable;
    t_importadores_gruposCodigo: TStringField;
    t_importadores_gruposNome_Grupo: TStringField;
    t_importadores_gruposAvisos_Operacionais: TStringField;
    t_importadores_gruposAvisos_Financeiros: TStringField;
    t_importadores_gruposAvisos_Gerenciais: TStringField;
    q_importadores: TQuery;
    btnFechar: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    btnAlterar: TBitBtn;
    t_importadores_agrupados: TTable;
    ds_importadores_agrupados: TDataSource;
    q_manipula: TQuery;
    t_importadores_agrupadosEmpresa: TStringField;
    t_importadores_agrupadosFilial: TStringField;
    t_importadores_agrupadosCodigo: TStringField;
    t_importadores_agrupadosCodigo_AGRUPADO: TStringField;
    t_importadores_agrupadosNome_Grupo: TStringField;
    q_importadoresEmpresa: TStringField;
    q_importadoresFilial: TStringField;
    q_importadoresCodigo: TStringField;
    q_importadoresCNPJ_CPF_COMPLETO: TStringField;
    q_importadoresRazao_Social: TStringField;
    btnIncluirNovoGrupo: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    btnFiltrar: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure HabilitarBotoesIAE();
    procedure DesabilitarBotoesIAE();
    procedure HabilitarBotoesSC();
    procedure DesabilitarBotoesSC();
    procedure HabilitarComponentes();
    procedure DesabilitarComponentes();
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnIncluirNovoGrupoClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    //procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
    //  DataCol: Integer; Column: TColumn; State: TGridDrawState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_importadores_grupos: Tf_importadores_grupos;
  Acao: string;

implementation

uses U_MSCOMEX, u_importadores_grupos_filtrar;

{$R *.DFM}

procedure Tf_importadores_grupos.FormActivate(Sender: TObject);
begin
     Left := 1;
     Top  := 1;

end;

procedure Tf_importadores_grupos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//if t_importadores.state=dsedit then t_importadores.post;
   q_importadores.Close;
   t_importadores_agrupados.Close;
   t_importadores_grupos.Close;
   action := cafree;
   f_importadores_grupos := nil;
   f_mscomex.ControleListasEMAILSAVISOS1.enabled := true;

end;

procedure Tf_importadores_grupos.FormCreate(Sender: TObject);
begin
   q_importadores.close;
   t_importadores_agrupados.close;
   t_importadores_grupos.close;
   q_importadores.open;
   t_importadores_agrupados.Open;
   t_importadores_grupos.open;
   DesabilitarComponentes();
end;

procedure Tf_importadores_grupos.HabilitarBotoesIAE();
begin
        //Button1.Enabled := true;
        btnAlterar.Enabled := true;
        btnIncluirNovoGrupo.Enabled := true;
        DBGrid1.Enabled := true;
        //DBGrid1.Font.Color := clWindowText;
        //DBGrid1.TitleFont.Color := clWindowText;
end;

procedure Tf_importadores_grupos.DesabilitarBotoesIAE();
begin
        //Button1.Enabled := false;
        btnAlterar.Enabled := false;

        btnIncluirNovoGrupo.Enabled := false;
        DBGrid1.Enabled := false;

        //DBGrid1.Font.Color := cl3DLight;
        //DBGrid1.TitleFont.Color := clInactiveCaption;
end;

procedure Tf_importadores_grupos.HabilitarBotoesSC();
begin
        btnSalvar.Enabled := true;
        btnCancelar.Enabled := true;
end;

procedure Tf_importadores_grupos.DesabilitarBotoesSC();
begin
        btnSalvar.Enabled := false;
        btnCancelar.Enabled := false;
end;

procedure Tf_importadores_grupos.HabilitarComponentes();
begin
        DBLookupComboBox1.Enabled := true;
        DBLookupComboBox1.Visible := true;
        DBEdit4.Enabled := true;
        DBEdit5.Enabled := true;
        DBEdit6.Enabled := true;
end;

procedure Tf_importadores_grupos.DesabilitarComponentes();
begin
        DBLookupComboBox1.Enabled := False;
        Edit1.Enabled := False;
        Edit1.Visible := False;
        Label1.Visible := False;
        Label1.Enabled := False;
        Edit2.Enabled := False;
        Edit2.Visible := False;
        DBEdit4.Enabled := False;
        DBEdit5.Enabled := False;
        DBEdit6.Enabled := False;
end;

procedure Tf_importadores_grupos.btnFecharClick(Sender: TObject);
begin
        Close;
end;

procedure Tf_importadores_grupos.btnAlterarClick(Sender: TObject);
begin
       //showmessage(t_importadores_agrupadosEmpresa.Value);
       //showmessage(t_importadores_agrupadosFilial.Value);
       //showmessage(t_importadores_agrupadosCodigo.Value);
       Acao := 'alterar';
       DesabilitarBotoesIAE();
       HabilitarBotoesSC();
       HabilitarComponentes();
       t_importadores_agrupados.Edit;
end;

procedure Tf_importadores_grupos.btnCancelarClick(Sender: TObject);
begin
      HabilitarBotoesIAE();
      DesabilitarBotoesSC();
      DesabilitarComponentes();
end;

{
procedure Tf_importadores_grupos.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

       if gdSelected in State then
                DBGrid1.Canvas.Font.Color := clWindowText;
                //DBGrid1.Canvas.Brush.Color := clActiveCaption;

        DBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);

end;
}

procedure Tf_importadores_grupos.btnSalvarClick(Sender: TObject);
var
        Erro_Validacao : boolean;
begin
       {
       //vai atualizar na tabela Importadores_Agrupados, os dados referentes à aquele cliente
       q_manipula.SQL.Clear;
       q_manipula.SQL.Add('UPDATE Importadores_Agrupados SET ');
       q_manipula.SQL.Add('CODIGO_AGRUPADO = "' + t_importadores_gruposCodigo.Value +'", ');
       q_manipula.SQL.Add('NOME_GRUPO = "' + DBLookupComboBox1.Text +'" ');
       q_manipula.SQL.Add('WHERE CODIGO_AGRUPADO = "' + codigo_old +'" ');
       q_manipula.SQL.Add('AND EMPRESA = "' + t_importadores_agrupadosEmpresa.Value +'" ');
       q_manipula.SQL.Add('AND FILIAL = "' + t_importadores_agrupadosFilial.Value +'" ');
       q_manipula.SQL.Add('AND CODIGO = "' + t_importadores_agrupadosCodigo.Value +'" ');
       //showmessage(q_manipula.sql.Text);
       q_manipula.ExecSQL;
       q_manipula.Close;

      
       //vai atualizar na tabela Importadores_Grupos, os dados referentes ao grupo daquele cliente
       q_manipula.SQL.Clear;
       q_manipula.SQL.Add('UPDATE Importadores_Grupos SET ');
       q_manipula.SQL.Add('AVISOS_OPERACIONAIS = "' + DBEdit4.Text +'", ');
       q_manipula.SQL.Add('AVISOS_FINANCEIROS = "' + DBEdit5.Text +'", ');
       q_manipula.SQL.Add('AVISOS_GERENCIAIS = "' + DBEdit6.Text +'" ');
       q_manipula.SQL.Add('WHERE CODIGO = "' + t_importadores_gruposCodigo.Value +'" ');
       //showmessage(q_manipula.sql.Text);
       q_manipula.ExecSQL;
       q_manipula.Close;
       }

       if Acao = 'alterar' then begin
       
           t_importadores_agrupadosCodigo_AGRUPADO.Value := t_importadores_gruposCodigo.Value;
           t_importadores_agrupadosNome_Grupo.Value := DBLookupComboBox1.Text;
           t_importadores_agrupados.Post;
           t_importadores_grupos.Edit;
           t_importadores_grupos.Post;

       end else begin

            Erro_Validacao := false;

           // Validar Código do Grupo
            if Edit2.Text = '' then begin
                    Erro_Validacao := true;
                    showmessage('Favor informar o Código do Grupo.');
                    Edit2.SetFocus;
                    exit;
            end;

            // Validar Nome do Grupo
            if Edit1.Text = '' then begin
                    Erro_Validacao := true;
                    showmessage('Favor informar o Nome do Grupo.');
                    Edit1.SetFocus;
                    exit;
            end;

            if Erro_Validacao = false then begin
                t_importadores_gruposCodigo.Value := Edit2.Text;
                t_importadores_gruposNome_Grupo.Value := Edit1.Text;
                t_importadores_grupos.Post;
            end;

       end;

       Acao := '';
       HabilitarBotoesIAE();
       DesabilitarBotoesSC();
       DesabilitarComponentes();
end;

procedure Tf_importadores_grupos.btnIncluirNovoGrupoClick(Sender: TObject);
begin
      Acao := 'incluir';
      DBLookupComboBox1.Visible := False;
      DBLookupComboBox1.Enabled := False;
      Edit1.Top := 48;
      Edit1.Visible := true;
      Edit1.Enabled := true;
      Label1.Visible := true;
      Label1.Enabled := true;
      Edit2.Visible := true;
      Edit2.Enabled := true;
      Edit2.SetFocus;
      DesabilitarBotoesIAE();
      HabilitarBotoesSC();
      HabilitarComponentes();
      t_importadores_grupos.Insert;
end;

procedure Tf_importadores_grupos.btnFiltrarClick(Sender: TObject);
begin
        DesabilitarBotoesIAE();
        DesabilitarBotoesSC();
        DesabilitarComponentes();
        if not assigned (F_importadores_grupos_filtrar) then Application.CreateForm(TF_importadores_grupos_filtrar, F_importadores_grupos_filtrar);
        F_importadores_grupos_filtrar.Show;
end;

end.
