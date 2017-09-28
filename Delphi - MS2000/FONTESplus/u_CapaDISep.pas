unit u_CapaDISep;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, ComCtrls, ExtCtrls, Db, DBTables, ActnList, Buttons,
  Mask;

type
  TfrmCapaDISep = class(TForm)
    alAcoes: TActionList;
    acAtualizarCampos: TAction;
    qrProcurador: TQuery;
    dsProcurador: TDataSource;
    ScrollBox1: TScrollBox;
    Bevel2: TBevel;
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
    cbCmp1: TCheckBox;
    cbCmp2: TCheckBox;
    cbCmp3: TCheckBox;
    cbCmp4: TCheckBox;
    cbCmp5: TCheckBox;
    cbCmp6: TCheckBox;
    cbCmp7: TCheckBox;
    cbCmp8: TCheckBox;
    cbCmp9: TCheckBox;
    qrProcuradorCodigo: TStringField;
    qrProcuradorRazao_Social: TStringField;
    qrProcuradorRegistro: TStringField;
    qrLocProc: TQuery;
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
  frmCapaDISep: TfrmCapaDISep;

implementation

uses U_MSCOMEX,u_RelCapaDISep;

{$R *.DFM}

procedure TfrmCapaDISep.FormCreate(Sender: TObject);
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

     ScrollBox1.VertScrollBar.Position := 0; }
end;

procedure TfrmCapaDISep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     frmCapaDISep := Nil;
     Action := caFree;
     F_MSCOMEX.CapaDISepetiba1.enabled := True;
end;

procedure TfrmCapaDISep.edtCmp1Enter(Sender: TObject);
begin
     With TEdit(Sender) Do
         Color := clWhite;
end;

procedure TfrmCapaDISep.edtCmp1Exit(Sender: TObject);
begin
     With TEdit(Sender) Do
         Color := $00DFFFFF;
end;

procedure TfrmCapaDISep.acAtualizarCamposExecute(Sender: TObject);
begin
     { VALORES PADRÕES }
     edtCmp1.Text := qrLocProcNR_DECLARACAO_IMP.AsString;
     edtCmp2.Text := qrLocProcRazao_Social.AsString;
     edtCmp3.Text := 'Ao Senhor Chefe';
     edtCmp4.Lines.Text := #9 +'Vimos, por intermédio desta, solicitara V. Sa. o desembaraço referente a D.I. em epigrafe.';
end;

procedure TfrmCapaDISep.edtCmp4Change(Sender: TObject);
begin
    // TJustifyRichEdit(Sender).Justify;
end;

procedure TfrmCapaDISep.ME_nossarefChange(Sender: TObject);
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

    if F_MSCOMEX.AcessaPasta(me_nossaref.Text,'',frmCapaDISep)
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

procedure TfrmCapaDISep.btnSairClick(Sender: TObject);
begin
close;
end;

procedure TfrmCapaDISep.btnIncluirClick(Sender: TObject);
begin
   If Not Assigned(qrepCapaDISep) Then
     Application.CreateForm(TqrepCapaDISep, qrepCapaDISep);
     qrepCapaDISep.Preview;
     logusu('A','Acessou o Rel. da Capa da DI de Sepetiba. MS: '+ qrLocProcCodigo.AsString);
end;

end.
