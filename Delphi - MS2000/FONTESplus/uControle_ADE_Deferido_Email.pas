unit uControle_ADE_Deferido_Email;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons, ExtCtrls;

type
  TfrmControle_ADE_Deferido_Email = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    mmText: TMemo;
    edtDe: TEdit;
    edtPara: TEdit;
    edtCC: TEdit;
    edtAssunto: TEdit;
    btnEnviar: TBitBtn;
    btnCancel: TBitBtn;
    edtAnexo: TEdit;
    chkAnexo: TCheckBox;
    StaticText1: TStaticText;
    lbImportador: TLabel;
    lbEmbarcacao: TLabel;
    lbData: TLabel;
    lbNUM: TLabel;
    lbCNPJ: TLabel;
    procedure FormShow(Sender: TObject);
    procedure chkAnexoClick(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
  private
    fEmbarcacao: String;
    fDTPublicacao: String;
    fNum_ADE_Exe: String;
    fCnpj: String;
    fImportador: String;
    fAnexo: String;
    { Private declarations }
  public
    { Public declarations }
    property Importador : String read fImportador write fImportador;
    property Cnpj : String read fCnpj write fCnpj;
    property Embarcacao : String read fEmbarcacao write fEmbarcacao;
    property DTPublicacao : String read fDTPublicacao write fDTPublicacao;
    property Num_ADE_Exe : String read fNum_ADE_Exe write fNum_ADE_Exe;
    property Anexo : String read fAnexo write fAnexo;
  end;

var
  frmControle_ADE_Deferido_Email: TfrmControle_ADE_Deferido_Email;

implementation

{$R *.DFM}

procedure TfrmControle_ADE_Deferido_Email.FormShow(Sender: TObject);
begin
  lbImportador.Caption := 'Importador: ' + Importador;
  lbEmbarcacao.Caption := 'Embarcação: ' + Embarcacao;
  lbData.Caption := 'Data da Publicação: ' + DTPublicacao;
  lbNUM.Caption := 'Número ADE: ' + Num_ADE_Exe;
  lbCNPJ.Caption := 'CNPJ: ' + Cnpj;
end;

procedure TfrmControle_ADE_Deferido_Email.chkAnexoClick(Sender: TObject);
begin
  if ( chkAnexo.Checked ) then
    edtAnexo.Text := Anexo
  else
    edtAnexo.Clear;
end;

procedure TfrmControle_ADE_Deferido_Email.btnEnviarClick(Sender: TObject);
begin
  If ( Trim( edtPara.Text ) = '' ) Then Begin
    Application.MessageBox( 'Campo Para não pode ser vazio','Aviso', MB_OK + MB_ICONWARNING );
    Self.ModalResult := mrAbort;
  end;
end;

end.
