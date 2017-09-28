unit U_fiadores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons,
  QuickRpt,QRCtrls;

type
  TF_fiadores = class(TForm)
    dsPais: TDataSource;
    dsUF: TDataSource;
    dsFiadores: TDataSource;
    t_Fiadores: TTable;
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
    dsQFiadores: TDataSource;
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
    q_Fiadores: TQuery;
    q_Processo: TQuery;
    Label1: TLabel;
    cmbimportador: TDBLookupComboBox;
    q_importadores: TQuery;
    ds_importadores: TDataSource;
    t_FiadoresEmpresa: TStringField;
    t_FiadoresFilial: TStringField;
    t_FiadoresCodigo: TStringField;
    t_FiadoresRazao_Social: TStringField;
    t_FiadoresPais: TStringField;
    t_FiadoresCGC_CPF: TStringField;
    t_FiadoresEndereco: TStringField;
    t_FiadoresNumero: TStringField;
    t_FiadoresComplemento: TStringField;
    t_FiadoresBairro: TStringField;
    t_FiadoresCidade: TStringField;
    t_FiadoresCEP: TStringField;
    t_FiadoresUF: TStringField;
    t_FiadoresEstado: TStringField;
    t_FiadoresInscricao_Estadual: TStringField;
    t_FiadoresImportador: TStringField;
    q_PaisCODIGO: TStringField;
    q_PaisDESCRICAO: TStringField;
    q_UFCodigo: TStringField;
    q_UFDescricao: TStringField;
    q_ProcessoCNPJ_fiador_GAR: TStringField;
    q_FiadoresCod: TStringField;
    q_LocalizarEmpresa: TStringField;
    q_LocalizarFilial: TStringField;
    q_LocalizarCodigo: TStringField;
    q_LocalizarRazao_Social: TStringField;
    q_LocalizarCGC_CPF: TStringField;
    q_LocalizarImportador: TStringField;
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
    procedure t_FiadoresAfterScroll(DataSet: TDataSet);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure edtLocalizarChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edtCnpjKeyPress(Sender: TObject; var Key: Char);
    procedure edtCepKeyPress(Sender: TObject; var Key: Char);
    procedure edtInscKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_fiadores: TF_fiadores;
  vEmp, vFil: String;
  novo: String;
  op: Integer;

implementation

uses U_MSCOMEX,U_relfiador;

{$R *.DFM}

procedure TF_fiadores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     q_UF.Close;
     q_Pais.Close;
     t_Fiadores.Close;

     Action := caFree;
     f_Fiadores := nil;
     f_mscomex.Fiadores1.Enabled := True;
end;

procedure TF_fiadores.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

//     Left := 0;
//     Top  := 0;

{     h := Height;
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

procedure TF_fiadores.btnImprimirClick(Sender: TObject);
begin
     If Not Assigned(QR_Fiadores) Then Application.CreateForm(TQR_Fiadores, QR_Fiadores);
     QR_Fiadores.q_Fiador.Open;
     QR_Fiadores.Preview;
end;

procedure TF_fiadores.btnFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TF_fiadores.btnLocalizarClick(Sender: TObject);
begin
     With pnlLocalizar Do Begin
         Height := 225;
         Width := 417;
         Top  := 4;
         Left := 96;
         Visible := True;
     End;
     pnlPrincipal.Enabled := False;
     dblcbLoc.DataSource := dsLocalizar;
     q_Localizar.Open;
     edtLocalizar.SetFocus;
end;

procedure TF_fiadores.btnNovoClick(Sender: TObject);
begin
     t_Fiadores.Append;

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

procedure TF_fiadores.btnAlterarClick(Sender: TObject);
begin
     t_Fiadores.Edit;

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

procedure TF_fiadores.btnCancelarClick(Sender: TObject);
begin
     t_Fiadores.Cancel;

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

procedure TF_fiadores.btnGravarClick(Sender: TObject);
begin
     edtRazao.Text := Trim(edtRazao.Text);
     If edtRazao.Text = '' Then Begin
        MessageDlg('Digite a Razão Social do Fiador!', mtWarning, [mbOk], 0);
        edtRazao.SetFocus;
        Exit;
     End;

     edtCnpj.Text := StringReplace(edtCnpj.Text, ' ', '', [rfReplaceAll]);
     If edtCnpj.Text = '' Then Begin
        MessageDlg('Digite o CGC/CPF do Fiador!', mtWarning, [mbOk], 0);
        edtCnpj.SetFocus;
        Exit;
     End;

     If t_FiadoresImportador.AsString = '' Then Begin
        MessageDlg('Selecione um Importador!', mtWarning, [mbOk], 0);
        cmbImportador.SetFocus;
        Exit;
     End;


     If op = 1 Then Begin
        With q_Localizar Do Begin
            Filter := 'Codigo <> '''' AND Importador = '''+ t_FiadoresImportador.AsString +''' '
                    + 'AND CGC_CPF = '''+ edtCnpj.Text +''' ';
            Filtered := True;
            Params[0].AsString := v_empresa;
            Params[1].AsString := v_filial;
            Open;
            If RecordCount <> 0 Then Begin
               MessageDlg('Já existe Fiador com esse CGC/CPF para este Importador!', mtWarning, [mbOk], 0);
               edtCnpj.SetFocus;
               Exit;
            End;
            Close;
            Filtered := False;
        End;
        novo := '1';
        if tipoBanco = 1 then begin
          q_Fiadores.sql.clear;
          q_Fiadores.sql.add('SELECT Codigo AS Cod FROM Fiadores ');
          q_Fiadores.sql.add('GROUP BY Codigo, Empresa, Filial ');
          q_Fiadores.sql.add('HAVING Empresa = :emp AND Filial = :filial ');
          q_Fiadores.sql.add('ORDER BY Cast(Codigo as integer) DESC ');
        end
        else begin
          q_Fiadores.sql.clear;
          q_Fiadores.sql.add('SELECT Codigo AS Cod FROM Fiadores ');
          q_Fiadores.sql.add('GROUP BY Codigo, Empresa, Filial ');
          q_Fiadores.sql.add('HAVING Empresa = :emp AND Filial = :filial ');
          q_Fiadores.sql.add('ORDER BY Val(Codigo) DESC ');
        end;
        With q_Fiadores Do Begin
         Params[0].AsString := v_empresa;
         Params[1].AsString := v_filial;
        End;
        q_Fiadores.Open;
        If q_Fiadores.RecordCount <> 0 Then
           novo := IntToStr(StrToInt(q_FiadoresCod.AsString) + 1);
        q_Fiadores.Close;

        t_FiadoresEmpresa.AsString := v_empresa;
        t_FiadoresFilial.AsString := v_filial;
        t_FiadoresCodigo.AsString := novo;
        t_Fiadores.Post;
        MessageDlg('Fiador incluido com sucesso!', mtInformation,[mbOk], 0);
     End
     Else Begin
        With q_Localizar Do Begin
            Filter := 'Codigo <> '''+ edtCod.Text +''' '
                    + 'AND Importador = '''+ t_FiadoresImportador.AsString +''' '
                    + 'AND CGC_CPF = '''+ edtCnpj.Text +''' ';
            Filtered := True;
            Open;
            If RecordCount <> 0 Then Begin
               MessageDlg('Já existe Fiador com esse CGC/CPF para este Importador!', mtWarning, [mbOk], 0);
               edtCnpj.SetFocus;
               Exit;
            End;
            Close;
            Filtered := False;
        End;
        t_Fiadores.Post;
        MessageDlg('Alteração do Fiador feita com sucesso!', mtInformation, [mbOk], 0);
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
     cmbImportador.Enabled := false;

     btnNovo.Enabled      := True;
     btnExcluir.Enabled   := True;
     btnAlterar.Enabled   := True;
     btnLocalizar.Enabled := True;
     btnImprimir.Enabled  := True;
     btnCancelar.Enabled  := False;
     btnGravar.Enabled    := False;

     btnNovo.SetFocus;
end;

procedure TF_fiadores.FormCreate(Sender: TObject);
begin
     vEmp := v_empresa;
     vFil := v_filial;

     With q_Fiadores Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
     End;
     With q_Localizar Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
     End;
     With q_Processo Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
     End;
     With q_importadores Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Open;
     End;
     With t_Fiadores Do Begin
         Filter := 'Empresa = '''+ vEmp +''' AND Filial = '''+ vFil +''' ';
         Filtered := True;
         Open;
     End;

     q_Pais.Open;
     q_UF.Open;
end;

procedure TF_fiadores.t_FiadoresAfterScroll(DataSet: TDataSet);
begin
     If not t_Fiadores.Eof Then begin
        btnAlterar.Enabled   := True;
        btnExcluir.Enabled   := True;
        btnLocalizar.Enabled := True;
        btnImprimir.Enabled  := True;
     end
     else begin
        btnAlterar.Enabled   := False;
        btnExcluir.Enabled   := False;
        btnLocalizar.Enabled := False;
        btnImprimir.Enabled  := False;
     end;
end;

procedure TF_fiadores.btnExcluirClick(Sender: TObject);
begin
     With q_Processo Do Begin
         Params[2].AsString := t_FiadoresImportador.AsString;
         Params[3].AsString := t_FiadoresCGC_CPF.AsString;
         Open;
         If RecordCount <> 0 Then Begin
            MessageDlg('Existem Faturas com este Fiador. Não pode ser excluído!', mtInformation,[mbOk], 0);
            Close;
            Exit;
         End;
         If MessageDlg('Confirma exclusão deste Fiador?', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then Begin
            Close;
            Exit;
         End;
         t_Fiadores.Delete;
         MessageDlg('Fiador excluído!', mtInformation, [mbOk], 0);
         Close;
     End;
     btnNovo.SetFocus;
end;

procedure TF_fiadores.btnOKClick(Sender: TObject);
begin
     pnlLocalizar.Visible := False;
     pnlPrincipal.Enabled := True;
     dblcbLoc.DataSource := nil;
     q_Localizar.Close;
     edtLocalizar.Text := '';
     btnNovo.SetFocus;
end;

procedure TF_fiadores.edtLocalizarChange(Sender: TObject);
begin
     q_Localizar.Filter := 'Razao_Social = '''+ edtLocalizar.Text +'*''';
     if edtLocalizar.Text = '' then
        q_Localizar.Filtered := False
     else
        q_Localizar.Filtered := True;
end;

procedure TF_fiadores.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     If t_Fiadores.State In [dsInsert, dsEdit] Then Begin
        MessageDlg('O Fiador está em edição!', mtWarning, [mbOk], 0);
        CanClose := False;
     End
     Else
        CanClose := True;
end;

procedure TF_fiadores.edtCnpjKeyPress(Sender: TObject; var Key: Char);
begin
     If Not(Key In ['0'..'9',#8]) Then
        Key := #0;
end;

procedure TF_fiadores.edtCepKeyPress(Sender: TObject; var Key: Char);
begin
     If Not(Key In ['0'..'9','-',#8]) Then
        Key := #0;
end;

procedure TF_fiadores.edtInscKeyPress(Sender: TObject; var Key: Char);
begin
     If Not(Key In ['0'..'9','.','-','/',#8]) Then
        Key := #0;
end;

end.
