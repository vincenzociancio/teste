unit U_exportadores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons,
  QuickRpt,QRCtrls;

type
  TF_exportadores = class(TForm)
    dsPais: TDataSource;
    dsUF: TDataSource;
    dsExportadores: TDataSource;
    t_Exportadores: TTable;
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
    dsLocalizar: TDataSource;
    dsFatura: TDataSource;
    dsExport: TDataSource;
    pnlLocalizar: TPanel;
    Label26: TLabel;
    dblcbLoc: TDBLookupComboBox;
    btnOK: TBitBtn;
    edtLocalizar: TEdit;
    DBGrid1: TDBGrid;
    q_Pais: TQuery;
    q_UF: TQuery;
    edtCod: TDBEdit;
    Panel1: TPanel;
    q_Localizar: TQuery;
    q_Export: TQuery;
    q_Fatura: TQuery;
    q_importadores: TQuery;
    ds_importadores: TDataSource;
    Label1: TLabel;
    cmbimportador: TDBLookupComboBox;
    q_PaisCODIGO: TStringField;
    q_PaisDESCRICAO: TStringField;
    q_UFCodigo: TStringField;
    q_UFDescricao: TStringField;
    q_ExportCod: TIntegerField;
    q_LocalizarEmpresa: TStringField;
    q_LocalizarFilial: TStringField;
    q_LocalizarCodigo: TStringField;
    q_LocalizarRazao_Social: TStringField;
    q_LocalizarCGC_CPF: TStringField;
    t_ExportadoresEmpresa: TStringField;
    t_ExportadoresFilial: TStringField;
    t_ExportadoresCodigo: TStringField;
    t_ExportadoresRazao_Social: TStringField;
    t_ExportadoresPais: TStringField;
    t_ExportadoresCGC_CPF: TStringField;
    t_ExportadoresEndereco: TStringField;
    t_ExportadoresNumero: TStringField;
    t_ExportadoresComplemento: TStringField;
    t_ExportadoresBairro: TStringField;
    t_ExportadoresCidade: TStringField;
    t_ExportadoresCEP: TStringField;
    t_ExportadoresUF: TStringField;
    t_ExportadoresEstado: TStringField;
    t_ExportadoresInscricao_Estadual: TStringField;
    t_ExportadoresImportador: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure t_ExportadoresAfterScroll(DataSet: TDataSet);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure edtLocalizarChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_exportadores: TF_exportadores;
  novo: string;
  op: integer;

implementation

uses U_MSCOMEX,U_relexpor;

{$R *.DFM}

procedure TF_exportadores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     q_UF.Close;
     q_Pais.Close;
     t_Exportadores.Close;

     Action := caFree;
     f_exportadores := nil;
     f_mscomex.exportadores1.Enabled := True;
end;

procedure TF_exportadores.FormActivate(Sender: TObject);
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
     width := w;    }


end;

procedure TF_exportadores.btnImprimirClick(Sender: TObject);
begin
     if not Assigned(QR_exportadores) then Application.CreateForm(TQR_exportadores, QR_exportadores);
     QR_exportadores.q_Export.Open;
     QR_exportadores.Preview;
end;

procedure TF_exportadores.btnFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TF_exportadores.btnLocalizarClick(Sender: TObject);
begin
     pnlLocalizar.Top  := 4;
     pnlLocalizar.Left := 96;
     pnlLocalizar.Visible := True;
     pnlPrincipal.Enabled := False;
     dblcbLoc.DataSource := dsLocalizar;
     q_Localizar.Open;
     edtLocalizar.SetFocus;
end;

procedure TF_exportadores.btnNovoClick(Sender: TObject);
begin
     t_Exportadores.Append;

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
     cmbimportador.Enabled   := True;
     edtRazao.SetFocus;
     op:=1;
end;

procedure TF_exportadores.btnAlterarClick(Sender: TObject);
begin
     t_Exportadores.Edit;

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
     cmbimportador.Enabled   := True;
     edtRazao.SetFocus;
     op:=2;
end;

procedure TF_exportadores.btnCancelarClick(Sender: TObject);
begin
     t_Exportadores.Cancel;

     btnNovo.Enabled      := True;
     btnExcluir.Enabled   := True;
     btnAlterar.Enabled   := True;
     btnLocalizar.Enabled := True;
     btnImprimir.Enabled  := False;
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
     cmbimportador.Enabled   := false;
     btnNovo.SetFocus;
end;

procedure TF_exportadores.btnGravarClick(Sender: TObject);
begin
  if cmbimportador.Text = '' Then begin
     MessageDlg('Informe o Importador!', mtInformation,[mbOk], 0);
     cmbimportador.SetFocus;
     exit;
  end;
  if cmbPais.Text = '' Then begin
     MessageDlg('Informe o País!', mtInformation,[mbOk], 0);
     cmbPais.SetFocus;
     exit;
  end;
  if edtRazao.Text = '' Then begin
     MessageDlg('Digite a Razão Social do Exportador!', mtInformation,[mbOk], 0);
     edtRazao.SetFocus;
  end
  else begin
     if op = 1 Then
       begin
         novo := '1';
         if TipoBanco = 1 then begin
           q_Export.sql.Clear;
           q_Export.sql.Add('SELECT Max(Cast(Codigo as integer)) AS Cod ');
           q_Export.sql.Add('FROM Parametros AS P INNER JOIN Exportadores AS E ON P.Empresa = E.Empresa AND P.Filial = E.Filial ');
         end
         else begin
           q_Export.sql.Clear;
           q_Export.sql.Add('SELECT Max(Val(Codigo)) AS Cod ');
           q_Export.sql.Add('FROM Parametros AS P INNER JOIN Exportadores AS E ON P.Empresa = E.Empresa AND P.Filial = E.Filial ');
         end;
         q_Export.Open;
         if q_Export.RecordCount <> 0 Then
            novo := IntToStr(StrToInt(q_ExportCod.AsString) + 1);
         q_Export.Close;

         t_ExportadoresEmpresa.AsString := v_empresa;
         t_ExportadoresFilial.AsString := v_filial;
         t_ExportadoresCodigo.AsString := novo;
         t_Exportadores.Post;
         MessageDlg('Exportador incluido com sucesso!', mtInformation,[mbOk], 0);
       end
     else
       begin
         t_Exportadores.Post;
         MessageDlg('Alteração do Exportador feita com sucesso!', mtInformation,[mbOk], 0);
       end;
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
     cmbimportador.Enabled   := false;

     btnNovo.Enabled      := True;
     btnExcluir.Enabled   := True;
     btnAlterar.Enabled   := True;
     btnLocalizar.Enabled := True;
     btnImprimir.Enabled  := True;
     btnCancelar.Enabled  := False;
     btnGravar.Enabled    := False;

     btnNovo.SetFocus;
  end;
end;

procedure TF_exportadores.FormCreate(Sender: TObject);
begin
     t_Exportadores.Open;
     q_Pais.Open;
     q_UF.Open;
     q_importadores.open;
end;

procedure TF_exportadores.t_ExportadoresAfterScroll(DataSet: TDataSet);
begin
     If not t_Exportadores.Eof Then begin
        btnAlterar.Enabled   := True;
        btnExcluir.Enabled   := True;
        btnLocalizar.Enabled := True;
        btnImprimir.Enabled  := True;
     end
     else begin
        btnAlterar.Enabled   := False;
        btnExcluir.Enabled   := False;
        btnLocalizar.Enabled := True;
        btnImprimir.Enabled  := False;
     end;
end;

procedure TF_exportadores.btnExcluirClick(Sender: TObject);
begin
     q_Fatura.Params[0].AsString := t_ExportadoresCodigo.AsString;
     q_Fatura.Open;
     if q_Fatura.RecordCount <> 0 then
        MessageDlg('Existem Faturas com este Exportador. Não pode ser excluído!', mtInformation,[mbOk], 0)
     else
        if MessageDlg('Confirma exclusão deste Exportador?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
           t_Exportadores.Delete;
           MessageDlg('Exportador excluído!', mtInformation,[mbOk], 0);
        end;
     q_Fatura.Close;
     btnNovo.SetFocus;
end;

procedure TF_exportadores.btnOKClick(Sender: TObject);
begin
     pnlLocalizar.Visible := False;
     pnlPrincipal.Enabled := True;
     dblcbLoc.DataSource := nil;
     q_Localizar.Close;
     edtLocalizar.Text := '';
     btnNovo.SetFocus;
end;

procedure TF_exportadores.edtLocalizarChange(Sender: TObject);
begin
     q_Localizar.Filter := 'Razao_Social = '''+ edtLocalizar.Text +'*''';
     if edtLocalizar.Text = '' then
        q_Localizar.Filtered := False
     else
        q_Localizar.Filtered := True;
end;

end.
