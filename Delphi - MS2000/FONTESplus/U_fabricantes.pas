unit U_fabricantes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons,
  QuickRpt,QRCtrls;

type
  TF_fabricantes = class(TForm)
    dsPais: TDataSource;
    dsUF: TDataSource;
    dsFabricantes: TDataSource;
    t_Fabricantes: TTable;
    dsLocalizar: TDataSource;
    dsItensFat: TDataSource;
    pnlPrincipal: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Bevel1: TBevel;
    edtRazao: TDBEdit;
    edtCnpj: TDBEdit;
    edtEnder: TDBEdit;
    edtCidade: TDBEdit;
    edtCep: TDBEdit;
    edtInsc: TDBEdit;
    edtComple: TDBEdit;
    edtEstado: TDBEdit;
    cmbPais: TDBLookupComboBox;
    cmbUF: TDBLookupComboBox;
    btnNovo: TBitBtn;
    btnExcluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    edtNum: TDBEdit;
    edtBairro: TDBEdit;
    btnLocalizar: TBitBtn;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    dsFabric: TDataSource;
    pnlLocalizar: TPanel;
    Label26: TLabel;
    dblcbLoc: TDBLookupComboBox;
    btnOK: TBitBtn;
    edtLocalizar: TEdit;
    DBGrid1: TDBGrid;
    q_Pais: TQuery;
    q_PaisCODIGO: TStringField;
    q_PaisDESCRICAO: TStringField;
    q_UF: TQuery;
    q_UFCodigo: TStringField;
    q_UFDescricao: TStringField;
    q_ItensFat: TQuery;
    q_Localizar: TQuery;
    q_Fabric: TQuery;
    edtCod: TDBEdit;
    Panel1: TPanel;
    q_LocalizarEmpresa: TStringField;
    q_LocalizarFilial: TStringField;
    q_LocalizarCodigo: TStringField;
    q_LocalizarRazao_Social: TStringField;
    q_LocalizarPais: TStringField;
    q_LocalizarCGC_CPF: TStringField;
    q_LocalizarEndereco: TStringField;
    q_LocalizarNumero: TStringField;
    q_LocalizarComplemento: TStringField;
    q_LocalizarBairro: TStringField;
    q_LocalizarCidade: TStringField;
    q_LocalizarCEP: TStringField;
    q_LocalizarUF: TStringField;
    q_LocalizarEstado: TStringField;
    q_LocalizarInscricao_Estadual: TStringField;
    q_FabricCod: TIntegerField;
    t_FabricantesEmpresa: TStringField;
    t_FabricantesFilial: TStringField;
    t_FabricantesCodigo: TStringField;
    t_FabricantesRazao_Social: TStringField;
    t_FabricantesPais: TStringField;
    t_FabricantesCGC_CPF: TStringField;
    t_FabricantesEndereco: TStringField;
    t_FabricantesNumero: TStringField;
    t_FabricantesComplemento: TStringField;
    t_FabricantesBairro: TStringField;
    t_FabricantesCidade: TStringField;
    t_FabricantesCEP: TStringField;
    t_FabricantesUF: TStringField;
    t_FabricantesEstado: TStringField;
    t_FabricantesInscricao_Estadual: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure edtLocalizarChange(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_fabricantes: TF_fabricantes;
  novo: string;
  op: integer;

implementation

uses U_MSCOMEX,U_relfabri;

{$R *.DFM}

procedure TF_fabricantes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     q_UF.Close;
     q_Pais.Close;
     t_Fabricantes.Close;

     Action := caFree;
     f_fabricantes := nil;
     f_mscomex.FabricantesProdutores1.Enabled := True;
end;


procedure TF_fabricantes.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

//     Left := 0;
//     Top  := 0;

 {    h := Height;
     w := width ;

     Height := 0;
     width := 0;

     if h>w then m := h
     else m := w;

     p := 10;

     mc := floattostrf(abs(m/p),fffixed,5,0);
     m := strtoint(mc)-1;

     for s := 0 to m do begin

         if (s*p)<h then Height := s*p;
         if (s*p)<w then width := s*p;

     end;

     Height := h;
     width := w;   }


end;

procedure TF_fabricantes.btnImprimirClick(Sender: TObject);
begin
     if not assigned (QR_fabricantes) then Application.CreateForm(TQR_fabricantes, QR_fabricantes);
     QR_fabricantes.q_Fabric.Open;
     QR_fabricantes.Preview;
end;

procedure TF_fabricantes.btnFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TF_fabricantes.btnNovoClick(Sender: TObject);
begin
     t_Fabricantes.Append;

     btnNovo.Enabled      := False;
     btnExcluir.Enabled   := False;
     btnAlterar.Enabled   := False;
     btnLocalizar.Enabled := False;
     btnImprimir.Enabled  := False;
     btnCancelar.Enabled  := True;
     btnGravar.Enabled    := True;

     edtRazao.Enabled  := True;
     edtCnpj.Enabled   := True;
     edtEnder.Enabled  := True;
     edtNum.Enabled    := True;
     edtComple.Enabled := True;
     edtBairro.Enabled := True;
     edtCidade.Enabled := True;
     edtCep.Enabled    := True;
     cmbUF.Enabled     := True;
     edtEstado.Enabled := True;
     cmbPais.Enabled   := True;
     edtInsc.Enabled   := True;

     edtRazao.SetFocus;
     op:=1;
end;

procedure TF_fabricantes.btnAlterarClick(Sender: TObject);
begin
     btnNovo.Enabled      := False;
     btnExcluir.Enabled   := False;
     btnAlterar.Enabled   := False;
     btnLocalizar.Enabled := False;
     btnImprimir.Enabled  := False;
     btnCancelar.Enabled  := True;
     btnGravar.Enabled    := True;

     edtRazao.Enabled  := True;
     edtCnpj.Enabled   := True;
     edtEnder.Enabled  := True;
     edtNum.Enabled    := True;
     edtComple.Enabled := True;
     edtBairro.Enabled := True;
     edtCidade.Enabled := True;
     edtCep.Enabled    := True;
     cmbUF.Enabled     := True;
     edtEstado.Enabled := True;
     cmbPais.Enabled   := True;
     edtInsc.Enabled   := True;

     t_Fabricantes.Edit;
     edtRazao.SetFocus;
     op:=2;
end;

procedure TF_fabricantes.btnCancelarClick(Sender: TObject);
begin
     t_Fabricantes.Cancel;

     btnNovo.Enabled      := True;
     btnExcluir.Enabled   := True;
     btnAlterar.Enabled   := True;
     btnLocalizar.Enabled := True;
     btnImprimir.Enabled  := True;
     btnCancelar.Enabled  := False;
     btnGravar.Enabled    := False;

     edtRazao.Enabled  := False;
     edtCnpj.Enabled   := False;
     edtEnder.Enabled  := False;
     edtNum.Enabled    := False;
     edtComple.Enabled := False;
     edtBairro.Enabled := False;
     edtCidade.Enabled := False;
     edtCep.Enabled    := False;
     cmbUF.Enabled     := False;
     edtEstado.Enabled := False;
     cmbPais.Enabled   := False;
     edtInsc.Enabled   := False;

     btnNovo.SetFocus;
end;

procedure TF_fabricantes.btnGravarClick(Sender: TObject);
begin
     edtRazao.Text := Trim(edtRazao.Text);
     If edtRazao.Text = '' Then begin
        MessageDlg('Digite a Razão Social do Fabricante!', mtInformation,[mbOk], 0);
        edtRazao.SetFocus;
        Exit;
     End;
     If cmbpais.Text = '' Then begin
        MessageDlg('Selecione o País!', mtInformation,[mbOk], 0);
        cmbpais.SetFocus;
        Exit;
     End;
     If op = 1 Then Begin
        novo := '1';
        if TipoBanco = 1 then begin
          q_Fabric.sql.clear;
          q_Fabric.sql.add('SELECT Max(Cast(Codigo as integer)) AS Cod ');
          q_Fabric.sql.add('FROM Parametros AS PA INNER JOIN Fabricantes_Produtores AS PR ON PA.Empresa = PR.Empresa AND PA.Filial = PR.Filial ');
          q_Fabric.sql.add('WHERE Codigo <> "a1,c" ');
        end
        else begin
          q_Fabric.sql.clear;
          q_Fabric.sql.add('SELECT Max(Val(Codigo)) AS Cod ');
          q_Fabric.sql.add('FROM Parametros AS PA INNER JOIN Fabricantes_Produtores AS PR ON PA.Empresa = PR.Empresa AND PA.Filial = PR.Filial ');
        end;
        q_Fabric.Open;
        if q_Fabric.RecordCount <> 0 Then
           novo := IntToStr(StrToInt(q_FabricCod.AsString) + 1);
        q_Fabric.Close;

        t_FabricantesEmpresa.AsString := v_empresa;
        t_FabricantesFilial.AsString := v_filial;
        t_FabricantesCodigo.AsString := novo;
        t_Fabricantes.Post;
        MessageDlg('Fabricante incluido com sucesso!', mtInformation,[mbOk], 0);
     End
     Else Begin
        t_Fabricantes.Post;
        MessageDlg('Alteração do Fabricante feita com sucesso!', mtInformation,[mbOk], 0);
     End;
     edtRazao.Enabled  := False;
     edtCnpj.Enabled   := False;
     edtEnder.Enabled  := False;
     edtNum.Enabled    := False;
     edtComple.Enabled := False;
     edtBairro.Enabled := False;
     edtCidade.Enabled := False;
     edtCep.Enabled    := False;
     cmbUF.Enabled     := False;
     edtEstado.Enabled := False;
     cmbPais.Enabled   := False;
     edtInsc.Enabled   := False;

     btnNovo.Enabled      := True;
     btnExcluir.Enabled   := True;
     btnAlterar.Enabled   := True;
     btnLocalizar.Enabled := True;
     btnImprimir.Enabled  := True;
     btnCancelar.Enabled  := False;
     btnGravar.Enabled    := False;

     btnNovo.SetFocus;
end;

procedure TF_fabricantes.btnExcluirClick(Sender: TObject);
begin
     q_ItensFat.Params[0].AsString := t_FabricantesCodigo.AsString;
     q_ItensFat.Open;
     if q_ItensFat.RecordCount <> 0 then
        MessageDlg('Existem Itens de Faturas com este Fabricante. Não pode ser excluído!', mtInformation,[mbOk], 0)
     else
        if MessageDlg('Confirma exclusão deste Fabricante?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
           t_Fabricantes.Delete;
           MessageDlg('Fabricante excluído!', mtInformation,[mbOk], 0);
        end;
     q_ItensFat.Close;
     btnNovo.SetFocus;
end;

procedure TF_fabricantes.edtLocalizarChange(Sender: TObject);
begin
     q_Localizar.Filter := 'Razao_Social = '''+ edtLocalizar.Text +'*''';
     if edtLocalizar.Text = '' then
        q_Localizar.Filtered := False
     else
        q_Localizar.Filtered := True;
end;

procedure TF_fabricantes.btnOKClick(Sender: TObject);
begin
     pnlLocalizar.Visible := False;
     pnlPrincipal.Enabled := True;
     dblcbLoc.DataSource := nil;
     q_Localizar.Close;
     edtLocalizar.Text := '';
     btnNovo.SetFocus;
end;

procedure TF_fabricantes.btnLocalizarClick(Sender: TObject);
begin
     pnlLocalizar.Top  := 4;
     pnlLocalizar.Left := 96;
     pnlLocalizar.Visible := True;
     pnlPrincipal.Enabled := False;
     dblcbLoc.DataSource := dsLocalizar;
     q_Localizar.Open;
     edtLocalizar.SetFocus;
end;

procedure TF_fabricantes.FormCreate(Sender: TObject);
begin
     t_Fabricantes.Open;
     q_Pais.Open;
     q_UF.Open;
end;

end.
