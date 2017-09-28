unit U_transportadores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons,
  QuickRpt,QRCtrls;

type
  TF_transportadores = class(TForm)
    t_Transportadores: TTable;
    dsTransportadores: TDataSource;
    dsPais: TDataSource;
    dsUF: TDataSource;
    dsConhecProc: TDataSource;
    pnlLocalizar: TPanel;
    dsTransp: TDataSource;
    btnOK: TBitBtn;
    edtLocalizar: TEdit;
    dblcbLoc: TDBLookupComboBox;
    Label14: TLabel;
    pnlPrincipal: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
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
    Bevel1: TBevel;
    dsLocalizar: TDataSource;
    DBGrid1: TDBGrid;
    q_Pais: TQuery;
    q_UF: TQuery;
    q_Localizar: TQuery;
    edtCod: TDBEdit;
    Panel1: TPanel;
    q_ConhecProc: TQuery;
    q_Transp: TQuery;
    t_TransportadoresEmpresa: TStringField;
    t_TransportadoresFilial: TStringField;
    t_TransportadoresCodigo: TStringField;
    t_TransportadoresRazao_Social: TStringField;
    t_TransportadoresPais: TStringField;
    t_TransportadoresCGC_CPF: TStringField;
    t_TransportadoresEndereco: TStringField;
    t_TransportadoresNumero: TStringField;
    t_TransportadoresComplemento: TStringField;
    t_TransportadoresBairro: TStringField;
    t_TransportadoresCidade: TStringField;
    t_TransportadoresCEP: TStringField;
    t_TransportadoresUF: TStringField;
    t_TransportadoresEstado: TStringField;
    t_TransportadoresInscricao_Estadual: TStringField;
    q_PaisCODIGO: TStringField;
    q_PaisDESCRICAO: TStringField;
    q_UFCodigo: TStringField;
    q_UFDescricao: TStringField;
    q_ConhecProcTransportador: TStringField;
    q_TranspCod: TIntegerField;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure t_TransportadoresAfterScroll(DataSet: TDataSet);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtLocalizarChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_transportadores: TF_transportadores;
  novo: string;
  op: integer;

implementation

uses U_MSCOMEX,U_reltrans;

{$R *.DFM}

procedure TF_transportadores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     q_UF.Close;
     q_Pais.Close;
     t_Transportadores.Close;

     Action := caFree;
     f_transportadores := nil;
     f_mscomex.transportadores1.Enabled := True;
end;

procedure TF_transportadores.btnImprimirClick(Sender: TObject);
begin
     if not Assigned(QR_Transportadores) then Application.CreateForm(TQR_Transportadores, QR_Transportadores);
     QR_Transportadores.q_Transp.Open;
     QR_Transportadores.Preview;
end;

procedure TF_transportadores.btnFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TF_transportadores.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

//     Left := 0;
//     Top  := 0;

  {   h := Height;
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

procedure TF_transportadores.btnNovoClick(Sender: TObject);
begin
     t_Transportadores.Append;

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

procedure TF_transportadores.btnCancelarClick(Sender: TObject);
begin
     t_Transportadores.Cancel;

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

procedure TF_transportadores.btnExcluirClick(Sender: TObject);
begin
     q_ConhecProc.Params[0].AsString := t_TransportadoresCodigo.AsString;
     q_ConhecProc.Open;
     if q_ConhecProc.RecordCount <> 0 then
        MessageDlg('Existem Processos com este Transportadores. Não pode ser excluído!', mtInformation,[mbOk], 0)
     else
        if MessageDlg('Confirma exclusão deste Transportadores?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
           t_Transportadores.Delete;
           MessageDlg('Transportadores excluído!', mtInformation,[mbOk], 0);
        end;
     q_ConhecProc.Close;
     btnNovo.SetFocus;
end;

procedure TF_transportadores.t_TransportadoresAfterScroll(
  DataSet: TDataSet);
begin
     If not t_Transportadores.Eof Then begin
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

procedure TF_transportadores.btnAlterarClick(Sender: TObject);
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

     t_Transportadores.Edit;
     edtRazao.SetFocus;
     op:=2;
end;

procedure TF_transportadores.btnGravarClick(Sender: TObject);
begin
  if edtRazao.Text = '' Then begin
     MessageDlg('Digite a Razão Social do Transportadores!', mtInformation,[mbOk], 0);
     edtRazao.SetFocus;
  end
  else begin
     if op = 1 Then
       begin
         novo := '1';
         if TipoBanco = 1 then begin
           q_Transp.sql.clear;
           q_Transp.sql.add('SELECT Max(Cast(Codigo as integer)) AS Cod ');
           q_Transp.sql.add('FROM Parametros AS PA INNER JOIN Transportadores AS PR ON PA.Empresa = PR.Empresa AND PA.Filial = PR.Filial ');
         end
         else begin
           q_Transp.sql.clear;
           q_Transp.sql.add('SELECT Max(Val(Codigo)) AS Cod ');
           q_Transp.sql.add('FROM Parametros AS PA INNER JOIN Transportadores AS PR ON PA.Empresa = PR.Empresa AND PA.Filial = PR.Filial ');
         end;
         q_Transp.Open;
         if q_Transp.RecordCount <> 0 Then
            novo := IntToStr(StrToInt(q_TranspCod.AsString) + 1);
         q_Transp.Close;

         t_TransportadoresEmpresa.AsString := v_empresa;
         t_TransportadoresFilial.AsString := v_filial;
         t_TransportadoresCodigo.AsString := novo;
         t_Transportadores.Post;
         MessageDlg('Transportadores incluido com sucesso!', mtInformation,[mbOk], 0);
       end
     else
       begin
         t_Transportadores.Post;
         MessageDlg('Alteração do Transportadores feita com sucesso!', mtInformation,[mbOk], 0);
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

procedure TF_transportadores.btnOKClick(Sender: TObject);
begin
     pnlLocalizar.Visible := False;
     pnlPrincipal.Enabled := True;
     dblcbLoc.DataSource := nil;
     q_Localizar.Close;
     edtLocalizar.Text := '';
     btnNovo.SetFocus;
end;

procedure TF_transportadores.btnLocalizarClick(Sender: TObject);
begin
     pnlLocalizar.Top  := 4;
     pnlLocalizar.Left := 96;
     pnlLocalizar.Visible := True;
     pnlPrincipal.Enabled := False;
     dblcbLoc.DataSource := dsLocalizar;
     q_Localizar.Open;
     edtLocalizar.SetFocus;
end;

procedure TF_transportadores.FormCreate(Sender: TObject);
begin
     t_Transportadores.Open;
     q_Pais.Open;
     q_UF.Open;
end;

procedure TF_transportadores.edtLocalizarChange(Sender: TObject);
begin
     q_Localizar.Filter := 'Razao_Social = '''+ edtLocalizar.Text +'*''';
     if edtLocalizar.Text = '' then
        q_Localizar.Filtered := False
     else
        q_Localizar.Filtered := True;
end;

end.

