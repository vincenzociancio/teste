unit u_CapaDINit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, DBCtrls, StdCtrls, ComCtrls, ExtCtrls, Db, DBTables, Buttons,
  Mask;

type
  TfrmCapaDINit = class(TForm)
    ScrollBox1: TScrollBox;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Bevel1: TBevel;
    Label21: TLabel;
    dbTxtReg: TDBText;
    Label22: TLabel;
    edtCmp4: TRichEdit;
    edtCmp3: TEdit;
    edtCmp1: TEdit;
    edtCmp2: TEdit;
    dbLcbProcurador: TDBLookupComboBox;
    alAcoes: TActionList;
    acAtualizarCampos: TAction;
    qrLocProc: TQuery;
    qrProcurador: TQuery;
    dsProcurador: TDataSource;
    cbCmp1: TCheckBox;
    Bevel2: TBevel;
    cbCmp2: TCheckBox;
    cbCmp3: TCheckBox;
    cbCmp4: TCheckBox;
    cbCmp5: TCheckBox;
    cbCmp6: TCheckBox;
    cbCmp7: TCheckBox;
    cbCmp8: TCheckBox;
    cbCmp9: TCheckBox;
    cbCmp10: TCheckBox;
    qrProcuradorCodigo: TStringField;
    qrProcuradorRazao_Social: TStringField;
    qrProcuradorRegistro: TStringField;
    qrLocProcCodigo: TStringField;
    qrLocProcNR_DECLARACAO_IMP: TStringField;
    qrLocProcRazao_Social: TStringField;
    pnlTop: TPanel;
    Label7: TLabel;
    l_cliente: TLabel;
    ME_nossaref: TMaskEdit;
    pnlBaixo: TPanel;
    btnIncluir: TBitBtn;
    btnSair: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtCmp1Enter(Sender: TObject);
    procedure edtCmp1Exit(Sender: TObject);
    procedure acAtualizarCamposExecute(Sender: TObject);
    procedure edtCmp4Change(Sender: TObject);
    procedure ME_nossarefChange(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCapaDINit: TfrmCapaDINit;

implementation

uses  U_MSCOMEX,u_RelCapaDINit;

{$R *.DFM}

procedure TfrmCapaDINit.FormCreate(Sender: TObject);
begin
   {  With qrLocProc Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Params[2].AsString := vProc;
         Open;
     End;
     With qrProcurador Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Open;
         If RecordCount <> 0 Then
            dbLcbProcurador.KeyValue := qrProcuradorCodigo.AsString;
         acAtualizarCampos.Execute;
     End;

     ScrollBox1.VertScrollBar.Position := 0;  }
end;

procedure TfrmCapaDINit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     frmCapaDINit := Nil;
     Action := caFree;
     F_MSCOMEX.CapaDINiteri1.enabled := True;
end;

procedure TfrmCapaDINit.edtCmp1Enter(Sender: TObject);
begin
     With TEdit(Sender) Do
         Color := clWhite;
end;

procedure TfrmCapaDINit.edtCmp1Exit(Sender: TObject);
begin
     With TEdit(Sender) Do
         Color := $00DFFFFF;
end;

procedure TfrmCapaDINit.acAtualizarCamposExecute(Sender: TObject);
begin
     { VALORES PADRÕES }
     edtCmp1.Text := qrLocProcNR_DECLARACAO_IMP.AsString;
     edtCmp2.Text := qrLocProcRazao_Social.AsString;
     edtCmp3.Text := 'Ao Senhor Chefe';
     edtCmp4.Lines.Text := #9 +'Vimos, por intermédio desta, solicitara V. Sa. a emissão do comprovante de importação referente à D.I. em epigrafe.';
end;

procedure TfrmCapaDINit.edtCmp4Change(Sender: TObject);
begin
   //  TJustifyRichEdit(Sender).Justify;
end;

procedure TfrmCapaDINit.ME_nossarefChange(Sender: TObject);
begin
 If Length(F_MSCOMEX.LRTrim(me_nossaref.Text)) <> 8 Then
    Exit;

     With qrLocProc Do Begin
         Close;
         Params[0].AsString := me_nossaref.Text;
         Open;
          If RecordCount = 0 Then Begin
           me_nossaref.Clear;
           MessageDlg('Processo não encontrado!', mtWarning, [mbOk], 0);
           me_nossaref.SetFocus;
           Exit;
         End;

     End;

    if F_MSCOMEX.AcessaPasta(me_nossaref.Text,'',frmCapaDINit)
     then ;

     With qrProcurador Do Begin
         Close;
         Open;
         If RecordCount <> 0 Then
         dbLcbProcurador.KeyValue := qrProcuradorCodigo.AsString;
         acAtualizarCampos.Execute
   End;
      ScrollBox1.VertScrollBar.Position := 0;
      ScrollBox1.Visible := TRUE;
   
end;

procedure TfrmCapaDINit.btnSairClick(Sender: TObject);
begin
 close;
end;

procedure TfrmCapaDINit.btnIncluirClick(Sender: TObject);
begin
   If Not Assigned(qrepCapaDINit) Then
     Application.CreateForm(TqrepCapaDINit, qrepCapaDINit);
     qrepCapaDINit.Preview;
     logusu('A',' Acessou o Rel. da Capa da DI de Niterói. MS: '+ qrLocProcCodigo.AsString);
end;

end.
