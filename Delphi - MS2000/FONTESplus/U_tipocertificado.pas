unit U_tipocertificado;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, Grids, DBGrids;

type
  TF_Tipocertificado = class(TForm)
    pnlPrincipal: TPanel;
    Label15: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    Bevel1: TBevel;
    edtCod: TEdit;
    edtDesc: TDBEdit;
    edtOrgao: TDBEdit;
    btnNovo: TBitBtn;
    btnExcluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnLocalizar: TBitBtn;
    btnImprime: TBitBtn;
    btnFecha: TBitBtn;
    T_parametros: TTable;
    T_parametrosEmpresa: TStringField;
    T_parametrosFilial: TStringField;
    DS_parametros: TDataSource;
    T_TipoCertificado: TTable;
    DS_TipoCertificado: TDataSource;
    Q_Tipo: TQuery;
    Q_TipoCodigo: TStringField;
    DS_Tipo: TDataSource;
    pnlLocalizar: TPanel;
    Label26: TLabel;
    L_busca: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    btnOK: TBitBtn;
    edtLocalizar: TEdit;
    DBGrid1: TDBGrid;
    Q_Localizar: TQuery;
    Q_LocalizarCodigo: TStringField;
    DS_Localizar: TDataSource;
    T_TipoCertificadoCodigo: TStringField;
    T_TipoCertificadoDescricao: TStringField;
    T_TipoCertificadoOrgao: TStringField;
    Q_LocalizarDescricao: TStringField;
    Q_LocalizarOrgao: TStringField;
    T_TipoCertificadoEmpresa: TStringField;
    T_TipoCertificadoFilial: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnFechaClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure T_TipoCertificadoAfterOpen(DataSet: TDataSet);
    procedure edtLocalizarChange(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Tipocertificado: TF_Tipocertificado;
  novo: string;
  op: integer;

implementation

{$R *.DFM}

procedure TF_Tipocertificado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     action := cafree;
     f_tipocertificado := nil;
end;

procedure TF_Tipocertificado.btnNovoClick(Sender: TObject);
begin
     T_tipocertificado.Append;
     btnNovo.Enabled:=False;
     btnExcluir.Enabled:=False;
     btnAlterar.Enabled:=False;
     btnLocalizar.Enabled:=False;
     btnCancelar.Enabled:=True;
     btnGravar.Enabled:=True;
     edtDesc.Enabled:=True;
     edtOrgao.Enabled:=True;
     edtDesc.SetFocus;
     op:=1;
end;

procedure TF_Tipocertificado.btnExcluirClick(Sender: TObject);
begin
        if MessageDlg('Confirma exclusão deste Tipo de Certificado?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
           t_tipocertificado.delete;
           MessageDlg('Tipo de Certificado excluído!', mtInformation,[mbOk], 0);
        end;
        btnNovo.SetFocus;
end;

procedure TF_Tipocertificado.btnAlterarClick(Sender: TObject);
begin
     T_tipocertificado.Edit;
     btnNovo.Enabled:=False;
     btnExcluir.Enabled:=False;
     btnAlterar.Enabled:=False;
     btnLocalizar.Enabled:=False;
     btnCancelar.Enabled:=True;
     btnGravar.Enabled:=True;
     edtDesc.Enabled:=True;
     edtOrgao.Enabled:=True;
     edtDesc.SetFocus;
     op:=2;
end;

procedure TF_Tipocertificado.btnFechaClick(Sender: TObject);
begin
        f_tipocertificado.close;
end;

procedure TF_Tipocertificado.btnCancelarClick(Sender: TObject);
begin
     T_tipocertificado.Cancel;
     btnNovo.Enabled:=True;
     btnExcluir.Enabled:=True;
     btnAlterar.Enabled:=True;
     btnLocalizar.Enabled:=True;
     btnCancelar.Enabled:=False;
     btnGravar.Enabled:=False;
     edtDesc.Enabled:=False;
     edtOrgao.Enabled:=False;
     btnNovo.SetFocus;
end;

procedure TF_Tipocertificado.btnGravarClick(Sender: TObject);
begin
     if op = 1 Then
       begin
         novo:='1';
         Q_Tipo.Close;
         Q_Tipo.SQL.Clear;
         Q_tipo.SQL.Add('SELECT Codigo FROM Tipos_Certificados ');
         Q_tipo.SQL.Add('WHERE Empresa="' +t_parametrosempresa.AsString+ '" ');
         Q_tipo.SQL.Add('AND Filial = "' +t_parametrosfilial.AsString+ '" ');
         Q_tipo.SQL.Add('ORDER BY val(codigo)');
         Q_tipo.ExecSQL;
         Q_tipo.Active:=True;
         Q_tipo.Last;
         if Q_tipo.RecordCount <> 0 Then
           novo := IntToStr(StrToInt(Q_tipocodigo.AsString) + 1);

         edtCod.Text:=novo;
         t_tipocertificadoempresa.asstring := t_parametrosempresa.asstring;
         t_tipocertificadofilial.asstring  := t_parametrosfilial.asstring;
         t_tipocertificadocodigo.asstring  := novo;
         t_tipocertificado.post;
         MessageDlg('Tipo de Certificado incluido com sucesso!', mtInformation,[mbOk], 0);
       end
     else
       begin
         t_tipocertificado.Post;
         MessageDlg('Alteração do Tipo de Certificado feita com sucesso!', mtInformation,[mbOk], 0);
       end;
     edtDesc.Enabled:=False;
     edtOrgao.Enabled:=False;
     btnNovo.Enabled:=True;
     btnExcluir.Enabled:=True;
     btnAlterar.Enabled:=True;
     btnLocalizar.Enabled:=True;
     btnCancelar.Enabled:=False;
     btnGravar.Enabled:=False;
     btnNovo.SetFocus;
end;

procedure TF_Tipocertificado.btnLocalizarClick(Sender: TObject);
begin
        pnlLocalizar.Top:=4;
        pnlLocalizar.Left:=96;
        pnlLocalizar.Visible:=True;
        pnlPrincipal.Enabled:=False;
        edtLocalizar.SetFocus;
end;

procedure TF_Tipocertificado.T_TipoCertificadoAfterOpen(DataSet: TDataSet);
begin
     edtCod.Text:=T_tipocertificadocodigo.AsString;
end;

procedure TF_Tipocertificado.edtLocalizarChange(Sender: TObject);
begin
     Q_Localizar.Close;
     Q_Localizar.SQL.Clear;
     Q_Localizar.SQL.Add('SELECT * FROM Tipos_Certificados ');
     Q_Localizar.SQL.Add('WHERE Empresa = "'+T_parametrosempresa.AsString+'" ');
     Q_Localizar.SQL.Add('AND Filial = "'+T_parametrosfilial.AsString+'" ');
     if edtLocalizar.text <> '' Then
       Q_Localizar.SQL.Add('AND Descricao Like "*' +edtLocalizar.text+ '*" ');
     Q_Localizar.SQL.Add('ORDER BY Descricao');
     Q_Localizar.ExecSQL;
     Q_Localizar.active := true;
end;

procedure TF_Tipocertificado.btnOKClick(Sender: TObject);
begin
        pnlLocalizar.Visible:=False;
        pnlPrincipal.Enabled:=True;
        btnNovo.SetFocus;
end;

procedure TF_Tipocertificado.FormActivate(Sender: TObject);
begin
     F_TipoCertificado.Left := 0;
     F_TipoCertificado.top  := 0;
end;

end.
