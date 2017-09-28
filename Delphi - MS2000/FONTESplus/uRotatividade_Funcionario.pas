unit uRotatividade_Funcionario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Spin, ExtCtrls, Db, DBTables;

type
  TRotatividade = class
  private
    fAno: Integer;
    fMes: Integer;
    fContratado: Integer;
    fDispensado: Integer;
  public
    property Ano : Integer read fAno write fAno;
    property Mes : Integer read fMes write fMes;
    property Contratado : Integer read fContratado write fContratado;
    property Dispensado : Integer read fDispensado write fDispensado; 
    procedure Novo();
    procedure Gravar();
    procedure Alterar();
    procedure Cancelar();
    procedure Excluir();
    procedure Open();
    procedure Close();
end;

type
  TfrmRotatividade = class(TForm)
    gridMain: TDBGrid;
    Panel1: TPanel;
    lbNovo: TLabel;
    lbGravar: TLabel;
    lbExcluir: TLabel;
    lbCancelar: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edtAno: TSpinEdit;
    edtContratado: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    lbPrior: TLabel;
    lbFirst: TLabel;
    lbNext: TLabel;
    lbLast: TLabel;
    Label15: TLabel;
    Bevel2: TBevel;
    lbAlterar: TLabel;
    Label12: TLabel;
    dtsMain: TDataSource;
    qryMain: TQuery;
    qryG: TQuery;
    qryE: TQuery;
    qryU: TQuery;
    txtModo: TStaticText;
    edtMes: TComboBox;
    edtDispensado: TEdit;
    Label4: TLabel;
    qryMainPK_ID: TAutoIncField;
    qryMainAno: TIntegerField;
    qryMainMes: TIntegerField;
    qryMainContratado: TIntegerField;
    qryMainDispensado: TIntegerField;
    procedure lbFirstClick(Sender: TObject);
    procedure lbLastClick(Sender: TObject);
    procedure lbNextClick(Sender: TObject);
    procedure lbPriorClick(Sender: TObject);
    procedure lbNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lbGravarClick(Sender: TObject);
    procedure qryMainAfterScroll(DataSet: TDataSet);
    procedure lbAlterarClick(Sender: TObject);
    procedure lbCancelarClick(Sender: TObject);
    procedure lbExcluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryMainMesGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TModo = ( Inclusao, Navegacao, Alteracao );

var
  frmRotatividade: TfrmRotatividade;

  Rotatividade: TRotatividade;

  Meses : array [1..12] of String = ('Janeiro',
                                     'Fevereiro',
                                     'Março',
                                     'Abril',
                                     'Maio',
                                     'Junho',
                                     'Julho',
                                     'Agosto',
                                     'Setembro',
                                     'Outubro',
                                     'Novembro',
                                     'Dezembro');

  Modo : TModo;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure TfrmRotatividade.lbFirstClick(Sender: TObject);
begin
  if Not( qryMain.Bof ) then
    qryMain.First;
end;

procedure TfrmRotatividade.lbLastClick(Sender: TObject);
begin
  if Not( qryMain.Eof ) then
    qryMain.Last;
end;

procedure TfrmRotatividade.lbNextClick(Sender: TObject);
begin
  if Not( qryMain.Eof ) then
    qryMain.Next;
end;

procedure TfrmRotatividade.lbPriorClick(Sender: TObject);
begin
  if Not( qryMain.Bof ) then
    qryMain.Prior;
end;

procedure TfrmRotatividade.lbNovoClick(Sender: TObject);
begin
  Rotatividade.Novo();
end;

{ THoraExtra }
procedure TRotatividade.Alterar;
begin
  Modo := Alteracao;
  frmRotatividade.txtModo.Caption := 'Modo (Alteração)';
  frmRotatividade.edtAno.ReadOnly := false;
  frmRotatividade.edtMes.Enabled := true;
  frmRotatividade.edtContratado.ReadOnly := false;
  frmRotatividade.edtDispensado.ReadOnly := false;

  // Button
  frmRotatividade.lbNovo.Enabled := false;
  frmRotatividade.lbGravar.Enabled := true;
  frmRotatividade.lbAlterar.Enabled := false;
  frmRotatividade.lbCancelar.Enabled := true;
  frmRotatividade.lbExcluir.Enabled := false;
end;

procedure TRotatividade.Cancelar;
begin
  Modo := Navegacao;
  frmRotatividade.txtModo.Caption := 'Modo (Navegação)';
  frmRotatividade.edtAno.ReadOnly := true;
  frmRotatividade.edtMes.Enabled := false;
  frmRotatividade.edtContratado.ReadOnly := true;
  frmRotatividade.edtDispensado.ReadOnly := true;

  frmRotatividade.edtAno.Value := StrToInt( FormatDateTime('yyyy', Date));
  frmRotatividade.edtMes.ItemIndex := StrToInt( FormatDateTime('mm', Date))-1;
  frmRotatividade.edtContratado.Text := '0';
  frmRotatividade.edtDispensado.Text := '0';
  // Button
  frmRotatividade.lbNovo.Enabled := true;
  frmRotatividade.lbGravar.Enabled := false;
  frmRotatividade.lbAlterar.Enabled := true;
  frmRotatividade.lbCancelar.Enabled := false;
  frmRotatividade.lbExcluir.Enabled := true;
  //Button
  frmRotatividade.lbAlterar.Enabled := Not frmRotatividade.qryMain.IsEmpty;
  frmRotatividade.lbExcluir.Enabled := Not frmRotatividade.qryMain.IsEmpty;
end;

procedure TRotatividade.Close;
begin
  frmRotatividade.qryMain.Close;
end;

procedure TRotatividade.Excluir;
begin
  Modo := Navegacao;
  frmRotatividade.txtModo.Caption := 'Modo (Navegação)';
  if Not( frmRotatividade.qryMain.IsEmpty ) then begin
    if ( MessageDlg('Deseja realmente excluir este registro?', mtConfirmation, [mbYes, mbOK], 0 ) = mrYes ) then begin
      frmRotatividade.qryE.ParamByName('ID').Value := frmRotatividade.qryMainPK_ID.Value;
      frmRotatividade.qryE.ExecSQL;
    end;
  end;
  // Button
  frmRotatividade.lbNovo.Enabled := true;
  frmRotatividade.lbGravar.Enabled := false;
  frmRotatividade.lbAlterar.Enabled := true;
  frmRotatividade.lbCancelar.Enabled := false;
  frmRotatividade.lbExcluir.Enabled := true;
end;

procedure TRotatividade.Gravar;
begin
  if( Modo = Inclusao )then begin
    frmRotatividade.qryG.ParamByName( 'Ano' ).Value := Ano;
    frmRotatividade.qryG.ParamByName( 'Mes' ).Value := Mes;
    frmRotatividade.qryG.ParamByName( 'Contratado' ).Value := Contratado;
    frmRotatividade.qryG.ParamByName( 'Dispensado' ).Value := Dispensado;
    frmRotatividade.qryG.ExecSQL;
  end
  else begin
    frmRotatividade.qryU.ParamByName( 'Ano' ).Value := Ano;
    frmRotatividade.qryU.ParamByName( 'Mes' ).Value := Mes;
    frmRotatividade.qryU.ParamByName( 'Contratado' ).Value := Contratado;
    frmRotatividade.qryU.ParamByName( 'Dispensado' ).Value := Dispensado;
    frmRotatividade.qryU.ParamByName( 'id' ).Value := frmRotatividade.qryMainPK_ID.AsInteger;
    frmRotatividade.qryU.ExecSQL;
  end;

  Modo := Navegacao;
  frmRotatividade.txtModo.Caption := 'Modo (Navegação)';
  // Button
  frmRotatividade.lbNovo.Enabled := true;
  frmRotatividade.lbGravar.Enabled := false;
  frmRotatividade.lbAlterar.Enabled := true;
  frmRotatividade.lbCancelar.Enabled := false;
  frmRotatividade.lbExcluir.Enabled := true;
end;

procedure TRotatividade.Novo;
begin
  Modo := Inclusao;
  frmRotatividade.txtModo.Caption := 'Modo (Inclusão)';
  frmRotatividade.edtAno.ReadOnly := false;
  frmRotatividade.edtMes.Enabled := true;
  frmRotatividade.edtContratado.ReadOnly := false;
  frmRotatividade.edtDispensado.ReadOnly := false;

  frmRotatividade.edtAno.Value := StrToInt( FormatDateTime('yyyy', Date));
  frmRotatividade.edtMes.ItemIndex := StrToInt( FormatDateTime('mm', Date))-1;
  frmRotatividade.edtContratado.Text := '0';
  frmRotatividade.edtDispensado.Text := '0';
  // Button
  frmRotatividade.lbNovo.Enabled := false;
  frmRotatividade.lbGravar.Enabled := true;
  frmRotatividade.lbAlterar.Enabled := false;
  frmRotatividade.lbCancelar.Enabled := true;
  frmRotatividade.lbExcluir.Enabled := false;
end;

procedure TRotatividade.Open;
begin
  frmRotatividade.qryMain.Close;
  frmRotatividade.qryMain.Open;
  //Button
  frmRotatividade.lbAlterar.Enabled := Not frmRotatividade.qryMain.IsEmpty;
  frmRotatividade.lbExcluir.Enabled := Not frmRotatividade.qryMain.IsEmpty;

end;

procedure TfrmRotatividade.FormShow(Sender: TObject);
begin
  Rotatividade := TRotatividade.Create;
  Rotatividade.Open;
end;

procedure TfrmRotatividade.lbGravarClick(Sender: TObject);
begin
  Rotatividade.Ano := edtAno.Value;
  Rotatividade.Mes := edtMes.ItemIndex+1;
  try
      Rotatividade.Contratado := StrToInt(edtContratado.Text);
  except
    Application.MessageBox('Valor Contratado é inválido!','Erro', MB_OK+MB_ICONWARNING);
    abort;
  end;

  try
      Rotatividade.Dispensado := StrToInt(edtDispensado.Text);
  except
    Application.MessageBox('Valor Dispensado é inválido!','Erro', MB_OK+MB_ICONWARNING);
    abort;
  end;
  Rotatividade.Gravar;
  Rotatividade.Cancelar;
  Rotatividade.Open;
end;

procedure TfrmRotatividade.qryMainAfterScroll(DataSet: TDataSet);
begin
  edtAno.Value := qryMainAno.AsInteger;
  edtMes.ItemIndex := qryMainMes.AsInteger-1;
  edtContratado.Text := qryMainContratado.AsString;
  edtDispensado.Text := qryMainDispensado.AsString;
end;

procedure TfrmRotatividade.lbAlterarClick(Sender: TObject);
begin
  Rotatividade.Alterar;
end;

procedure TfrmRotatividade.lbCancelarClick(Sender: TObject);
begin
  Rotatividade.Cancelar;
end;

procedure TfrmRotatividade.lbExcluirClick(Sender: TObject);
begin
  Rotatividade.Excluir;
  Rotatividade.Open;
end;

procedure TfrmRotatividade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmRotatividade := Nil;
  F_MSCOMEX.Turnover1.Enabled := true;
  Action := caFree;
end;

procedure TfrmRotatividade.qryMainMesGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  if( qryMainMes.AsInteger > 0 )then
    Text := Meses[qryMainMes.AsInteger];
end;

end.
