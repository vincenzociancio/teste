unit uHoraExtra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Spin, ExtCtrls, Db, DBTables;

type
  THoraExtra = class
  private
    fTotal_Hora: double;
    fAno: Integer;
    fMes: Integer;
  public
    property Ano : Integer read fAno write fAno;
    property Mes : Integer read fMes write fMes;
    property Total_Hora : double read fTotal_Hora write fTotal_Hora;

    procedure Novo();
    procedure Gravar();
    procedure Alterar();
    procedure Cancelar();
    procedure Excluir();
    procedure Open();
    procedure Close();
end;

type
  TfrmHoraExtra = class(TForm)
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
    edtHora: TEdit;
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
    qryMainPK_ID: TAutoIncField;
    qryMainAno: TIntegerField;
    qryMainMes: TIntegerField;
    qryMainTotal_Horas: TFloatField;
    qryG: TQuery;
    qryE: TQuery;
    qryU: TQuery;
    txtModo: TStaticText;
    edtMes: TComboBox;
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
  frmHoraExtra: TfrmHoraExtra;

  HoraExtra: THoraExtra;

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

procedure TfrmHoraExtra.lbFirstClick(Sender: TObject);
begin
  if Not( qryMain.Bof ) then
    qryMain.First;
end;

procedure TfrmHoraExtra.lbLastClick(Sender: TObject);
begin
  if Not( qryMain.Eof ) then
    qryMain.Last;
end;

procedure TfrmHoraExtra.lbNextClick(Sender: TObject);
begin
  if Not( qryMain.Eof ) then
    qryMain.Next;
end;

procedure TfrmHoraExtra.lbPriorClick(Sender: TObject);
begin
  if Not( qryMain.Bof ) then
    qryMain.Prior;
end;

procedure TfrmHoraExtra.lbNovoClick(Sender: TObject);
begin
  HoraExtra.Novo();
end;

{ THoraExtra }
procedure THoraExtra.Alterar;
begin
  Modo := Alteracao;
  frmHoraExtra.txtModo.Caption := 'Modo (Alteração)';
  frmHoraExtra.edtAno.ReadOnly := false;
  frmHoraExtra.edtMes.Enabled := true;
  frmHoraExtra.edtHora.ReadOnly := false;

  // Button
  frmHoraExtra.lbNovo.Enabled := false;
  frmHoraExtra.lbGravar.Enabled := true;
  frmHoraExtra.lbAlterar.Enabled := false;
  frmHoraExtra.lbCancelar.Enabled := true;
  frmHoraExtra.lbExcluir.Enabled := false;
end;

procedure THoraExtra.Cancelar;
begin
  Modo := Navegacao;
  frmHoraExtra.txtModo.Caption := 'Modo (Navegação)';
  frmHoraExtra.edtAno.ReadOnly := true;
  frmHoraExtra.edtMes.Enabled := false;
  frmHoraExtra.edtHora.ReadOnly := true;
  frmHoraExtra.edtAno.Value := StrToInt( FormatDateTime('yyyy', Date));
  frmHoraExtra.edtMes.ItemIndex := StrToInt( FormatDateTime('mm', Date))-1;
  frmHoraExtra.edtHora.Text := '0';
  // Button
  frmHoraExtra.lbNovo.Enabled := true;
  frmHoraExtra.lbGravar.Enabled := false;
  frmHoraExtra.lbAlterar.Enabled := true;
  frmHoraExtra.lbCancelar.Enabled := false;
  frmHoraExtra.lbExcluir.Enabled := true;
  //Button
  frmHoraExtra.lbAlterar.Enabled := Not frmHoraExtra.qryMain.IsEmpty;
  frmHoraExtra.lbExcluir.Enabled := Not frmHoraExtra.qryMain.IsEmpty;
end;

procedure THoraExtra.Close;
begin
  frmHoraExtra.qryMain.Close;
end;

procedure THoraExtra.Excluir;
begin
  Modo := Navegacao;
  frmHoraExtra.txtModo.Caption := 'Modo (Navegação)';
  if Not( frmHoraExtra.qryMain.IsEmpty ) then begin
    if ( MessageDlg('Deseja realmente excluir este registro?', mtConfirmation, [mbYes, mbOK], 0 ) = mrYes ) then begin
      frmHoraExtra.qryE.ParamByName('ID').Value := frmHoraExtra.qryMainPK_ID.Value;
      frmHoraExtra.qryE.ExecSQL;
    end;
  end;
  // Button
  frmHoraExtra.lbNovo.Enabled := true;
  frmHoraExtra.lbGravar.Enabled := false;
  frmHoraExtra.lbAlterar.Enabled := true;
  frmHoraExtra.lbCancelar.Enabled := false;
  frmHoraExtra.lbExcluir.Enabled := true;
end;

procedure THoraExtra.Gravar;
begin
  if( Modo = Inclusao )then begin
    frmHoraExtra.qryG.ParamByName( 'Ano' ).Value := Ano;
    frmHoraExtra.qryG.ParamByName( 'Mes' ).Value := Mes;
    frmHoraExtra.qryG.ParamByName( 'Total_Horas' ).Value := Total_Hora;
    frmHoraExtra.qryG.ExecSQL;
  end
  else begin
    frmHoraExtra.qryU.ParamByName( 'Ano' ).Value := Ano;
    frmHoraExtra.qryU.ParamByName( 'Mes' ).Value := Mes;
    frmHoraExtra.qryU.ParamByName( 'Horas' ).Value := Total_Hora;
    frmHoraExtra.qryU.ParamByName( 'id' ).Value := frmHoraExtra.qryMainPK_ID.AsInteger;
    frmHoraExtra.qryU.ExecSQL;
  end;

  Modo := Navegacao;
  frmHoraExtra.txtModo.Caption := 'Modo (Navegação)';
  // Button
  frmHoraExtra.lbNovo.Enabled := true;
  frmHoraExtra.lbGravar.Enabled := false;
  frmHoraExtra.lbAlterar.Enabled := true;
  frmHoraExtra.lbCancelar.Enabled := false;
  frmHoraExtra.lbExcluir.Enabled := true;
end;

procedure THoraExtra.Novo;
begin
  Modo := Inclusao;
  frmHoraExtra.txtModo.Caption := 'Modo (Inclusão)';
  frmHoraExtra.edtAno.ReadOnly := false;
  frmHoraExtra.edtMes.Enabled := true;
  frmHoraExtra.edtHora.ReadOnly := false;
  frmHoraExtra.edtAno.Value := StrToInt( FormatDateTime('yyyy', Date));
  frmHoraExtra.edtMes.ItemIndex := StrToInt( FormatDateTime('mm', Date))-1;
  frmHoraExtra.edtHora.Text := '0';
  // Button
  frmHoraExtra.lbNovo.Enabled := false;
  frmHoraExtra.lbGravar.Enabled := true;
  frmHoraExtra.lbAlterar.Enabled := false;
  frmHoraExtra.lbCancelar.Enabled := true;
  frmHoraExtra.lbExcluir.Enabled := false;
end;

procedure THoraExtra.Open;
begin
  frmHoraExtra.qryMain.Close;
  frmHoraExtra.qryMain.Open;
  //Button
  frmHoraExtra.lbAlterar.Enabled := Not frmHoraExtra.qryMain.IsEmpty;
  frmHoraExtra.lbExcluir.Enabled := Not frmHoraExtra.qryMain.IsEmpty;

end;

procedure TfrmHoraExtra.FormShow(Sender: TObject);
begin
  HoraExtra := THoraExtra.Create;
  HoraExtra.Open;
end;

procedure TfrmHoraExtra.lbGravarClick(Sender: TObject);
begin
  HoraExtra.Ano := edtAno.Value;
  HoraExtra.Mes := edtMes.ItemIndex+1;
  try
    HoraExtra.Total_Hora := StrToFloat( edtHora.Text );
  except
    Application.MessageBox('Valor da hora total é inválido!','Erro', MB_OK+MB_ICONWARNING);
    abort;
  end;
  HoraExtra.Gravar;
  HoraExtra.Cancelar;
  HoraExtra.Open;
end;

procedure TfrmHoraExtra.qryMainAfterScroll(DataSet: TDataSet);
begin
  edtAno.Value := qryMainAno.AsInteger;
  edtMes.ItemIndex := qryMainMes.AsInteger-1;
  edtHora.Text := qryMainTotal_Horas.AsString;
end;

procedure TfrmHoraExtra.lbAlterarClick(Sender: TObject);
begin
  HoraExtra.Alterar;
end;

procedure TfrmHoraExtra.lbCancelarClick(Sender: TObject);
begin
  HoraExtra.Cancelar;
end;

procedure TfrmHoraExtra.lbExcluirClick(Sender: TObject);
begin
  HoraExtra.Excluir;
  HoraExtra.Open;
end;

procedure TfrmHoraExtra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmHoraExtra := Nil;
  F_MSCOMEX.LanamentodeHoraExtra1.Enabled := true;
  Action := caFree;
end;

procedure TfrmHoraExtra.qryMainMesGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  if( qryMainMes.AsInteger > 0 )then
    Text := Meses[qryMainMes.AsInteger];
end;

end.
