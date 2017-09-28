unit u_Destinatario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DBCtrls, Db, DBTables;

type
  Tf_destinatario = class(TForm)
    pnlPrincipal: TPanel;
    edtDestinatario: TEdit;
    btnFechar: TBitBtn;
    btnLocalizar: TBitBtn;
    btnCancelar: TBitBtn;
    btnGravar: TBitBtn;
    btnExcluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnNovo: TBitBtn;
    Bevel1: TBevel;
    dbGridDestinatario: TDBGrid;
    lblDestinatario: TLabel;
    qrDestinatario: TQuery;
    dsDestinatario: TDataSource;
    tbDestinatario: TTable;
    pnlLocalizar: TPanel;
    lblLocaliza: TLabel;
    btnOK: TBitBtn;
    pnlLocaliza: TPanel;
    dbGridLocaliza: TDBGrid;
    edtlocalizar: TEdit;
    qrDestinatariocodigo: TIntegerField;
    qrDestinatariodestinatario: TStringField;
    tbDestinatarioCodigo: TIntegerField;
    tbDestinatarioDestinatario: TStringField;
    procedure btnNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure edtlocalizarChange(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure tbDestinatarioBeforeDelete(DataSet: TDataSet);
    procedure tbDestinatarioAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_destinatario: Tf_destinatario;
  v_novo_destinatario: Boolean;
  v_codigo_localiza: Integer;
implementation

uses U_MSCOMEX, u_ctrlTransmittal;

{$R *.DFM}

procedure Tf_destinatario.btnNovoClick(Sender: TObject);
begin
     v_novo_Destinatario := True;
     btnNovo.Enabled := False;
     btnAlterar.Enabled := False;
     btnExcluir.Enabled := False;
     btnGravar.Enabled := True;
     btnCancelar.Enabled := True;
     btnLocalizar.Enabled := False;
     btnFechar.Enabled := False;
     edtDestinatario.Enabled := True;
     dbGridDestinatario.Enabled := False;
     edtDestinatario.SetFocus;
end;

procedure Tf_destinatario.FormCreate(Sender: TObject);
begin
     qrDestinatario.Open;
     v_novo_Destinatario := False;
end;

procedure Tf_destinatario.btnGravarClick(Sender: TObject);
var v_codigo : Integer;
    v_destinatario : String;
begin
     If edtDestinatario.Text = '' Then Begin
      MessageDlg('Destinatário não pode ser em branco!', mtInformation,[mbOK], 0);
      edtDestinatario.SetFocus;
      Exit;
     End;
     If v_novo_Destinatario Then Begin
       tbDestinatario.Open;
       tbDestinatario.Last;
       v_codigo := tbDestinatarioCodigo.AsInteger;
       Inc(v_codigo);
       tbDestinatario.Append;
       tbDestinatarioCodigo.AsInteger := v_codigo;
       tbDestinatarioDestinatario.AsString := Trim(edtDestinatario.Text);
       v_destinatario := tbDestinatarioDestinatario.AsString;
       tbDestinatario.Post;
       tbDestinatario.Close;
       v_novo_Destinatario := False;
     End
     Else begin
       v_codigo := qrDestinatariocodigo.AsInteger;
       tbDestinatario.Open;
       tbDestinatario.Locate('codigo',v_codigo,[loCaseInsensitive]);
       tbDestinatario.Edit;
       tbDestinatarioDestinatario.AsString := Trim(edtDestinatario.Text);
       tbDestinatario.Post;
       v_destinatario := Trim(edtDestinatario.Text);
       tbDestinatario.Close;
     End;
     btnNovo.Enabled := True;
     btnAlterar.Enabled := True;
     btnExcluir.Enabled := True;
     btnGravar.Enabled := False;
     btnCancelar.Enabled := False;
     btnLocalizar.Enabled := True;
     btnFechar.Enabled := True;
     edtDestinatario.Text := '';
     edtDestinatario.Enabled := False;
     dbGridDestinatario.Enabled := True;
     dbGridDestinatario.SetFocus;
     qrDestinatario.Close;
     qrDestinatario.Open;
     qrDestinatario.Locate('codigo',v_codigo,[loCaseInsensitive]);
     If Assigned(f_ctrlTransmittal) Then Begin
       f_ctrlTransmittal.qrDestinatario.Close;
       f_ctrlTransmittal.qrDestinatario.Open;

     End;
end;

procedure Tf_destinatario.btnCancelarClick(Sender: TObject);
begin
     btnNovo.Enabled := True;
     btnAlterar.Enabled := True;
     btnExcluir.Enabled := True;
     btnGravar.Enabled := False;
     btnCancelar.Enabled := False;
     btnLocalizar.Enabled := True;
     btnFechar.Enabled := True;
     edtDestinatario.Text := '';
     edtDestinatario.Enabled := False;
     dbGridDestinatario.Enabled := True;
     dbGridDestinatario.SetFocus;
     v_novo_Destinatario := False;

end;

procedure Tf_destinatario.btnFecharClick(Sender: TObject);
begin
     Close;

end;

procedure Tf_destinatario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := caFree;
     f_destinatario := nil;
     f_mscomex.CadastrodeDestinatrios1.Enabled := True;

end;

procedure Tf_destinatario.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

     Left := 1;
     Top  := 1;


    { h := Height;
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
     width := w;}
end;

procedure Tf_destinatario.btnAlterarClick(Sender: TObject);
begin
     btnNovo.Enabled := False;
     btnAlterar.Enabled := False;
     btnExcluir.Enabled := False;
     btnGravar.Enabled := True;
     btnCancelar.Enabled := True;
     btnLocalizar.Enabled := False;
     btnFechar.Enabled := False;
     edtDestinatario.Enabled := True;
     dbGridDestinatario.Enabled := False;
     edtDestinatario.SetFocus;
     edtDestinatario.Text := qrDestinatariodestinatario.AsString;
end;

Procedure Tf_destinatario.btnExcluirClick(Sender: TObject);
Var v_codigo : Integer;
    v_posiciona : Integer;
Begin
     If MessageDlg('Tem certeza que deseja excluir o destinatário?', mtConfirmation,[mbYes,mbNo], 0) = mrYes Then Begin
       v_codigo := qrDestinatariocodigo.AsInteger;

       If qrDestinatario.FindNext = True Then v_posiciona := qrDestinatariocodigo.AsInteger
         Else If qrDestinatario.FindPrior = True Then v_posiciona := qrDestinatariocodigo.AsInteger
           Else v_posiciona := -1;

       tbDestinatario.Open;
       tbDestinatario.Locate('codigo',v_codigo,[loCaseInsensitive]);
       tbDestinatario.Delete;
       tbDestinatario.Close;

       qrDestinatario.Close;
       qrDestinatario.Open;
       qrDestinatario.Locate('codigo',v_posiciona,[loCaseInsensitive]);
     End;
End;

procedure Tf_destinatario.edtlocalizarChange(Sender: TObject);
begin
     qrDestinatario.Filter := '[destinatario] = '''+ edtLocalizar.Text +'*''';
     if edtLocalizar.Text = '' then
        qrDestinatario.Filtered := False
     else
        qrDestinatario.Filtered := True;

end;

procedure Tf_destinatario.btnLocalizarClick(Sender: TObject);
begin
     v_codigo_localiza := qrDestinatariocodigo.AsInteger;
     pnlLocalizar.Left := 23;
     pnlLocalizar.Top := 4;
     pnlLocalizar.Width := 417;
     pnlLocalizar.Height := 213;

     pnlLocalizar.Visible := True;
     pnlPrincipal.Enabled := False;
     edtLocalizar.Text := '';
     edtLocalizar.SetFocus;
end;

procedure Tf_destinatario.btnOKClick(Sender: TObject);
begin
//     If Trim(edtLocalizar.Text) <> '' Then Begin
       v_codigo_localiza := qrDestinatariocodigo.AsInteger;
//     End;

     qrDestinatario.Filtered := False;
     qrDestinatario.Locate('codigo',v_codigo_localiza,[loCaseInsensitive]);
     pnlLocalizar.Visible := False;
     pnlPrincipal.Enabled := True;

end;

procedure Tf_destinatario.tbDestinatarioBeforeDelete(DataSet: TDataSet);
begin
     logusu('E','Excluiu Destinatario (Transmittal): '+tbDestinatarioDestinatario.asstring);

end;

procedure Tf_destinatario.tbDestinatarioAfterPost(DataSet: TDataSet);
begin
     logusu('P','Alterou dados do  Destinatario (Transmittal): '+tbDestinatarioDestinatario.asstring);

end;

end.
