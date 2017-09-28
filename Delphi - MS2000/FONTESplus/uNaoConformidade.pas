unit uNaoConformidade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, Buttons, ExtCtrls, DBCtrls, DBTables, Mask;

type
  TfrmNaoConformidade = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lblRespIdentif: TLabel;
    lblData: TLabel;
    pnlConformidade: TPanel;
    pnlDisposicao: TPanel;
    edtResponsavel: TEdit;
    pnlBaixo: TPanel;
    btnIncluir: TBitBtn;
    btnSair: TBitBtn;
    lblNumero: TLabel;
    lblNorma: TLabel;
    edtNorma: TEdit;
    qrNaoConformidade: TQuery;
    qrNaoConformidadeSequencial: TAutoIncField;
    InsertNaoConformidade: TQuery;
    dsTipo_NC: TDataSource;
    rdgrpReal_potencial: TRadioGroup;
    qrTipo_NC: TQuery;
    qrTipo_NCCodigo: TStringField;
    qrTipo_NCDescricao: TStringField;
    cmbLocal: TComboBox;
    cmbTipo: TComboBox;
    edtDtDisposicao: TMaskEdit;
    MmConformidade: TMemo;
    MmDisposicao: TMemo;
    qrUsuario: TQuery;
    qrUsuarioNome_Completo: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIncluirClick(Sender: TObject);
    procedure edtDtDisposicaoKeyPress(Sender: TObject; var Key: Char);
  private 
    { Private declarations }
  public
    { Public declarations }
  end;

var

  frmNaoConformidade: TfrmNaoConformidade;
  op: integer;
implementation
 uses U_MSCOMEX;
{$R *.DFM}

procedure TfrmNaoConformidade.FormActivate(Sender: TObject);
begin

  qrTipo_NC.close;
  qrTipo_NC.Open;
  qrTipo_NC.first;
  cmbTipo.items.clear;
  while not qrTipo_NC.eof do
  begin
  cmbTipo.items.add(qrTipo_NCDescricao.AsString);
  qrTipo_NC.next;
  end;

  qrUsuario.close;
  qrUsuario.ParamByName('usu').Value := v_usuario;
  qrUsuario.open;

  lblRespIdentif.Caption :=qrUsuarioNome_Completo.AsString ;
  lblData.Caption := DateToStr(Date());
   with qrNaoConformidade do begin
    close;
    Open;
    last;
   End;
   lblNumero.Caption := IntToStr(strtoint(qrNaoConformidadeSequencial.AsString) + 1);
end;

procedure TfrmNaoConformidade.btnSairClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmNaoConformidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     f_mscomex.AberturaNaoConformidade.Enabled := True;
     frmNaoConformidade := Nil;
     Action := caFree;
end;

procedure TfrmNaoConformidade.btnIncluirClick(Sender: TObject);
begin
     If cmbLocal.text = '' then begin
      MessageDlg('Favor Informar o Local.', mtWarning, [mbOk], 0);
      exit;
     End;
     If cmbTipo.text = '' then begin
      MessageDlg('Favor Informar o Tipo.', mtWarning, [mbOk], 0);
      exit;
     End;
     If MmConformidade.text = '' then begin
      MessageDlg('Favor Informar a Descrição da não-conformidade.', mtWarning, [mbOk], 0);
      exit;
     End;

     // if edtDtDisposicao.Text = '  /  /    '  then edtDtDisposicao.Text := '';

      InsertNaoConformidade.close;
      InsertNaoConformidade.ParamByName('Responsavel').Value := lblRespIdentif.Caption;
      InsertNaoConformidade.ParamByName('data').Value := lblData.Caption;
      InsertNaoConformidade.ParamByName('norma').Value := edtNorma.text ;
      InsertNaoConformidade.ParamByName('local').Value := cmbLocal.text;
      InsertNaoConformidade.ParamByName('Real_potencial').Value := rdgrpReal_potencial.ItemIndex ;
      InsertNaoConformidade.ParamByName('conformidade').AsMemo := MmConformidade.Text;
      InsertNaoConformidade.ParamByName('disposicao').AsMemo := MmDisposicao.Text ;
      InsertNaoConformidade.ParamByName('Resp_disposicao').Value := edtResponsavel.Text;
      InsertNaoConformidade.ParamByName('Data_diposicao').Value := edtDtDisposicao.Text ;
      InsertNaoConformidade.ParamByName('tipo_NC').Value := cmbTipo.ItemIndex;
      InsertNaoConformidade.ExecSQL;

      edtNorma.Clear;
      MmConformidade.Clear;
      MmDisposicao.Clear;
      edtResponsavel.Clear;
      cmbTipo.Text := '';
      cmbLocal.text := '';
      edtDtDisposicao.Clear;

      with qrNaoConformidade do begin
        close;
        Open;
        last;
      End;
      lblNumero.Caption := IntToStr(strtoint(qrNaoConformidadeSequencial.AsString) + 1);

end;

procedure TfrmNaoConformidade.edtDtDisposicaoKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (Key in ['0'..'9']) then
      abort;
end;

end.
