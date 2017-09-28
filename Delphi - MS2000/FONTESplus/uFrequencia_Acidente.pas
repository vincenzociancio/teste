unit uFrequencia_Acidente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Spin, ExtCtrls, Db, DBTables;

type
  TFreqAcidente = class
  private
    fAno: Integer;
    fMes: Integer;
    fTotalHoras: Integer;
    fAcidentes: Integer;
  public
    property Ano : Integer read fAno write fAno;
    property Mes : Integer read fMes write fMes;
    property TotalHoras : Integer read fTotalHoras write fTotalHoras;
    property Acidentes : Integer read fAcidentes write fAcidentes;
    procedure Novo();
    procedure Gravar();
    procedure Alterar();
    procedure Cancelar();
    procedure Excluir();
    procedure Open();
    procedure Close();
end;

type
  TfrmFreqAcidente = class(TForm)
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
    edtHoras: TEdit;
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
    edtAcidentes: TEdit;
    Label4: TLabel;
    qryMainPK_ID: TAutoIncField;
    qryMainAno: TIntegerField;
    qryMainMes: TIntegerField;
    Label5: TLabel;
    qryMainTotal_Horas: TFloatField;
    qryMainTotal_Acidentes: TIntegerField;
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
  frmFreqAcidente: TfrmFreqAcidente;

  FreqAcidente: TFreqAcidente;

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

procedure TfrmFreqAcidente.lbFirstClick(Sender: TObject);
begin
  if Not( qryMain.Bof ) then
    qryMain.First;
end;

procedure TfrmFreqAcidente.lbLastClick(Sender: TObject);
begin
  if Not( qryMain.Eof ) then
    qryMain.Last;
end;

procedure TfrmFreqAcidente.lbNextClick(Sender: TObject);
begin
  if Not( qryMain.Eof ) then
    qryMain.Next;
end;

procedure TfrmFreqAcidente.lbPriorClick(Sender: TObject);
begin
  if Not( qryMain.Bof ) then
    qryMain.Prior;
end;

procedure TfrmFreqAcidente.lbNovoClick(Sender: TObject);
begin
  FreqAcidente.Novo();
end;

{ THoraExtra }
procedure TFreqAcidente.Alterar;
begin
  Modo := Alteracao;
  frmFreqAcidente.txtModo.Caption := 'Modo (Alteração)';
  frmFreqAcidente.edtAno.ReadOnly := false;
  frmFreqAcidente.edtMes.Enabled := true;
  frmFreqAcidente.edtHoras.ReadOnly := false;
  frmFreqAcidente.edtAcidentes.ReadOnly := false;

  // Button
  frmFreqAcidente.lbNovo.Enabled := false;
  frmFreqAcidente.lbGravar.Enabled := true;
  frmFreqAcidente.lbAlterar.Enabled := false;
  frmFreqAcidente.lbCancelar.Enabled := true;
  frmFreqAcidente.lbExcluir.Enabled := false;
end;

procedure TFreqAcidente.Cancelar;
begin
  Modo := Navegacao;
  frmFreqAcidente.txtModo.Caption := 'Modo (Navegação)';
  frmFreqAcidente.edtAno.ReadOnly := true;
  frmFreqAcidente.edtMes.Enabled := false;
  frmFreqAcidente.edtHoras.ReadOnly := true;
  frmFreqAcidente.edtAcidentes.ReadOnly := true;

  frmFreqAcidente.edtAno.Value := StrToInt( FormatDateTime('yyyy', Date));
  frmFreqAcidente.edtMes.ItemIndex := StrToInt( FormatDateTime('mm', Date))-1;
  frmFreqAcidente.edtHoras.Text := '0';
  frmFreqAcidente.edtAcidentes.Text := '0';
  // Button
  frmFreqAcidente.lbNovo.Enabled := true;
  frmFreqAcidente.lbGravar.Enabled := false;
  frmFreqAcidente.lbAlterar.Enabled := true;
  frmFreqAcidente.lbCancelar.Enabled := false;
  frmFreqAcidente.lbExcluir.Enabled := true;
  //Button
  frmFreqAcidente.lbAlterar.Enabled := Not frmFreqAcidente.qryMain.IsEmpty;
  frmFreqAcidente.lbExcluir.Enabled := Not frmFreqAcidente.qryMain.IsEmpty;
end;

procedure TFreqAcidente.Close;
begin
  frmFreqAcidente.qryMain.Close;
end;

procedure TFreqAcidente.Excluir;
begin
  Modo := Navegacao;
  frmFreqAcidente.txtModo.Caption := 'Modo (Navegação)';
  if Not( frmFreqAcidente.qryMain.IsEmpty ) then begin
    if ( MessageDlg('Deseja realmente excluir este registro?', mtConfirmation, [mbYes, mbOK], 0 ) = mrYes ) then begin
      frmFreqAcidente.qryE.ParamByName('ID').Value := frmFreqAcidente.qryMainPK_ID.Value;
      frmFreqAcidente.qryE.ExecSQL;
    end;
  end;
  // Button
  frmFreqAcidente.lbNovo.Enabled := true;
  frmFreqAcidente.lbGravar.Enabled := false;
  frmFreqAcidente.lbAlterar.Enabled := true;
  frmFreqAcidente.lbCancelar.Enabled := false;
  frmFreqAcidente.lbExcluir.Enabled := true;
end;

procedure TFreqAcidente.Gravar;
begin
  if( Modo = Inclusao )then begin
    frmFreqAcidente.qryG.ParamByName( 'Ano' ).Value := Ano;
    frmFreqAcidente.qryG.ParamByName( 'Mes' ).Value := Mes;
    frmFreqAcidente.qryG.ParamByName( 'Total_Horas' ).Value := TotalHoras;
    frmFreqAcidente.qryG.ParamByName( 'Total_Acidentes' ).Value := Acidentes;
    frmFreqAcidente.qryG.ExecSQL;
  end
  else begin
    frmFreqAcidente.qryU.ParamByName( 'Ano' ).Value := Ano;
    frmFreqAcidente.qryU.ParamByName( 'Mes' ).Value := Mes;
    frmFreqAcidente.qryU.ParamByName( 'Total_Horas' ).Value := TotalHoras;
    frmFreqAcidente.qryU.ParamByName( 'Total_Acidentes' ).Value := Acidentes;
    frmFreqAcidente.qryU.ParamByName( 'id' ).Value := frmFreqAcidente.qryMainPK_ID.AsInteger;
    frmFreqAcidente.qryU.ExecSQL;
  end;

  Modo := Navegacao;
  frmFreqAcidente.txtModo.Caption := 'Modo (Navegação)';
  // Button
  frmFreqAcidente.lbNovo.Enabled := true;
  frmFreqAcidente.lbGravar.Enabled := false;
  frmFreqAcidente.lbAlterar.Enabled := true;
  frmFreqAcidente.lbCancelar.Enabled := false;
  frmFreqAcidente.lbExcluir.Enabled := true;
end;

procedure TFreqAcidente.Novo;
begin
  Modo := Inclusao;
  frmFreqAcidente.txtModo.Caption := 'Modo (Inclusão)';
  frmFreqAcidente.edtAno.ReadOnly := false;
  frmFreqAcidente.edtMes.Enabled := true;
  frmFreqAcidente.edtHoras.ReadOnly := false;
  frmFreqAcidente.edtAcidentes.ReadOnly := false;

  frmFreqAcidente.edtAno.Value := StrToInt( FormatDateTime('yyyy', Date));
  frmFreqAcidente.edtMes.ItemIndex := StrToInt( FormatDateTime('mm', Date))-1;
  frmFreqAcidente.edtHoras.Text := '0';
  frmFreqAcidente.edtAcidentes.Text := '0';
  // Button
  frmFreqAcidente.lbNovo.Enabled := false;
  frmFreqAcidente.lbGravar.Enabled := true;
  frmFreqAcidente.lbAlterar.Enabled := false;
  frmFreqAcidente.lbCancelar.Enabled := true;
  frmFreqAcidente.lbExcluir.Enabled := false;
end;

procedure TFreqAcidente.Open;
begin
  frmFreqAcidente.qryMain.Close;
  frmFreqAcidente.qryMain.Open;
  //Button
  frmFreqAcidente.lbAlterar.Enabled := Not frmFreqAcidente.qryMain.IsEmpty;
  frmFreqAcidente.lbExcluir.Enabled := Not frmFreqAcidente.qryMain.IsEmpty;

end;

procedure TfrmFreqAcidente.FormShow(Sender: TObject);
begin
  FreqAcidente := TFreqAcidente.Create;
  FreqAcidente.Open;
end;

procedure TfrmFreqAcidente.lbGravarClick(Sender: TObject);
begin
  FreqAcidente.Ano := edtAno.Value;
  FreqAcidente.Mes := edtMes.ItemIndex+1;
  try
    FreqAcidente.TotalHoras := StrToInt(edtHoras.Text);
  except
    Application.MessageBox('Valor da hora é inválido!','Erro', MB_OK+MB_ICONWARNING);
    abort;
  end;

  try
    FreqAcidente.Acidentes := StrToInt(edtAcidentes.Text);
  except
    Application.MessageBox('Valor do acidente é inválido!','Erro', MB_OK+MB_ICONWARNING);
    abort;
  end;
  FreqAcidente.Gravar;
  FreqAcidente.Cancelar;
  FreqAcidente.Open;
end;

procedure TfrmFreqAcidente.qryMainAfterScroll(DataSet: TDataSet);
begin
  edtAno.Value := qryMainAno.AsInteger;
  edtMes.ItemIndex := qryMainMes.AsInteger-1;
  edtHoras.Text := qryMainTotal_Horas.AsString;
  edtAcidentes.Text := qryMainTotal_Acidentes.AsString;
end;

procedure TfrmFreqAcidente.lbAlterarClick(Sender: TObject);
begin
  FreqAcidente.Alterar;
end;

procedure TfrmFreqAcidente.lbCancelarClick(Sender: TObject);
begin
  FreqAcidente.Cancelar;
end;

procedure TfrmFreqAcidente.lbExcluirClick(Sender: TObject);
begin
  FreqAcidente.Excluir;
  FreqAcidente.Open;
end;

procedure TfrmFreqAcidente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmFreqAcidente := Nil;
  F_MSCOMEX.LanamentodeAcidentes1.Enabled := true;
  Action := caFree;
end;

procedure TfrmFreqAcidente.qryMainMesGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  if( qryMainMes.AsInteger > 0 )then
    Text := Meses[qryMainMes.AsInteger];
end;

end.
