unit uAdesaoLaboral;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Spin, ExtCtrls, Db, DBTables;

type
  TLaboral = class
  private
    fTotal_Percentual: double;
    fAno: Integer;
    fMes: Integer;
  public
    property Ano : Integer read fAno write fAno;
    property Mes : Integer read fMes write fMes;
    property Total_Percentual : double read fTotal_Percentual write fTotal_Percentual;

    procedure Novo();
    procedure Gravar();
    procedure Alterar();
    procedure Cancelar();
    procedure Excluir();
    procedure Open();
    procedure Close();
end;

type
  TfrmAdesaoLaboral = class(TForm)
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
    qryG: TQuery;
    qryE: TQuery;
    qryU: TQuery;
    txtModo: TStaticText;
    edtMes: TComboBox;
    qryMainTotal_Percentual: TFloatField;
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
  frmAdesaoLaboral: TfrmAdesaoLaboral;

  Laboral: TLaboral;

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

procedure TfrmAdesaoLaboral.lbFirstClick(Sender: TObject);
begin
  if Not( qryMain.Bof ) then
    qryMain.First;
end;

procedure TfrmAdesaoLaboral.lbLastClick(Sender: TObject);
begin
  if Not( qryMain.Eof ) then
    qryMain.Last;
end;

procedure TfrmAdesaoLaboral.lbNextClick(Sender: TObject);
begin
  if Not( qryMain.Eof ) then
    qryMain.Next;
end;

procedure TfrmAdesaoLaboral.lbPriorClick(Sender: TObject);
begin
  if Not( qryMain.Bof ) then
    qryMain.Prior;
end;

procedure TfrmAdesaoLaboral.lbNovoClick(Sender: TObject);
begin
  Laboral.Novo();
end;

{ THoraExtra }
procedure TLaboral.Alterar;
begin
  Modo := Alteracao;
  frmAdesaoLaboral.txtModo.Caption := 'Modo (Alteração)';
  frmAdesaoLaboral.edtAno.ReadOnly := false;
  frmAdesaoLaboral.edtMes.Enabled := true;
  frmAdesaoLaboral.edtHora.ReadOnly := false;

  // Button
  frmAdesaoLaboral.lbNovo.Enabled := false;
  frmAdesaoLaboral.lbGravar.Enabled := true;
  frmAdesaoLaboral.lbAlterar.Enabled := false;
  frmAdesaoLaboral.lbCancelar.Enabled := true;
  frmAdesaoLaboral.lbExcluir.Enabled := false;
end;

procedure TLaboral.Cancelar;
begin
  Modo := Navegacao;
  frmAdesaoLaboral.txtModo.Caption := 'Modo (Navegação)';
  frmAdesaoLaboral.edtAno.ReadOnly := true;
  frmAdesaoLaboral.edtMes.Enabled := false;
  frmAdesaoLaboral.edtHora.ReadOnly := true;
  frmAdesaoLaboral.edtAno.Value := StrToInt( FormatDateTime('yyyy', Date));
  frmAdesaoLaboral.edtMes.ItemIndex := StrToInt( FormatDateTime('mm', Date))-1;
  frmAdesaoLaboral.edtHora.Text := '0';
  // Button
  frmAdesaoLaboral.lbNovo.Enabled := true;
  frmAdesaoLaboral.lbGravar.Enabled := false;
  frmAdesaoLaboral.lbAlterar.Enabled := true;
  frmAdesaoLaboral.lbCancelar.Enabled := false;
  frmAdesaoLaboral.lbExcluir.Enabled := true;
  //Button
  frmAdesaoLaboral.lbAlterar.Enabled := Not frmAdesaoLaboral.qryMain.IsEmpty;
  frmAdesaoLaboral.lbExcluir.Enabled := Not frmAdesaoLaboral.qryMain.IsEmpty;
end;

procedure TLaboral.Close;
begin
  frmAdesaoLaboral.qryMain.Close;
end;

procedure TLaboral.Excluir;
begin
  Modo := Navegacao;
  frmAdesaoLaboral.txtModo.Caption := 'Modo (Navegação)';
  if Not( frmAdesaoLaboral.qryMain.IsEmpty ) then begin
    if ( MessageDlg('Deseja realmente excluir este registro?', mtConfirmation, [mbYes, mbOK], 0 ) = mrYes ) then begin
      frmAdesaoLaboral.qryE.ParamByName('ID').Value := frmAdesaoLaboral.qryMainPK_ID.Value;
      frmAdesaoLaboral.qryE.ExecSQL;
    end;
  end;
  // Button
  frmAdesaoLaboral.lbNovo.Enabled := true;
  frmAdesaoLaboral.lbGravar.Enabled := false;
  frmAdesaoLaboral.lbAlterar.Enabled := true;
  frmAdesaoLaboral.lbCancelar.Enabled := false;
  frmAdesaoLaboral.lbExcluir.Enabled := true;
end;

procedure TLaboral.Gravar;
begin
  if( Modo = Inclusao )then begin
    frmAdesaoLaboral.qryG.ParamByName( 'Ano' ).Value := Ano;
    frmAdesaoLaboral.qryG.ParamByName( 'Mes' ).Value := Mes;
    frmAdesaoLaboral.qryG.ParamByName( 'Total_Percentual' ).Value := Total_Percentual;
    frmAdesaoLaboral.qryG.ExecSQL;
  end
  else begin
    frmAdesaoLaboral.qryU.ParamByName( 'Ano' ).Value := Ano;
    frmAdesaoLaboral.qryU.ParamByName( 'Mes' ).Value := Mes;
    frmAdesaoLaboral.qryU.ParamByName( 'Total_Percentual' ).Value := Total_Percentual;
    frmAdesaoLaboral.qryU.ParamByName( 'id' ).Value := frmAdesaoLaboral.qryMainPK_ID.AsInteger;
    frmAdesaoLaboral.qryU.ExecSQL;
  end;

  Modo := Navegacao;
  frmAdesaoLaboral.txtModo.Caption := 'Modo (Navegação)';
  // Button
  frmAdesaoLaboral.lbNovo.Enabled := true;
  frmAdesaoLaboral.lbGravar.Enabled := false;
  frmAdesaoLaboral.lbAlterar.Enabled := true;
  frmAdesaoLaboral.lbCancelar.Enabled := false;
  frmAdesaoLaboral.lbExcluir.Enabled := true;
end;

procedure TLaboral.Novo;
begin
  Modo := Inclusao;
  frmAdesaoLaboral.txtModo.Caption := 'Modo (Inclusão)';
  frmAdesaoLaboral.edtAno.ReadOnly := false;
  frmAdesaoLaboral.edtMes.Enabled := true;
  frmAdesaoLaboral.edtHora.ReadOnly := false;
  frmAdesaoLaboral.edtAno.Value := StrToInt( FormatDateTime('yyyy', Date));
  frmAdesaoLaboral.edtMes.ItemIndex := StrToInt( FormatDateTime('mm', Date))-1;
  frmAdesaoLaboral.edtHora.Text := '0';
  // Button
  frmAdesaoLaboral.lbNovo.Enabled := false;
  frmAdesaoLaboral.lbGravar.Enabled := true;
  frmAdesaoLaboral.lbAlterar.Enabled := false;
  frmAdesaoLaboral.lbCancelar.Enabled := true;
  frmAdesaoLaboral.lbExcluir.Enabled := false;
end;

procedure TLaboral.Open;
begin
  frmAdesaoLaboral.qryMain.Close;
  frmAdesaoLaboral.qryMain.Open;
  //Button
  frmAdesaoLaboral.lbAlterar.Enabled := Not frmAdesaoLaboral.qryMain.IsEmpty;
  frmAdesaoLaboral.lbExcluir.Enabled := Not frmAdesaoLaboral.qryMain.IsEmpty;

end;

procedure TfrmAdesaoLaboral.FormShow(Sender: TObject);
begin
  Laboral := TLaboral.Create;
  Laboral.Open;
end;

procedure TfrmAdesaoLaboral.lbGravarClick(Sender: TObject);
begin
  Laboral.Ano := edtAno.Value;
  Laboral.Mes := edtMes.ItemIndex+1;
  try
    Laboral.Total_Percentual := StrToFloat( edtHora.Text );
  except
    Application.MessageBox('Valor da hora total é inválido!','Erro', MB_OK+MB_ICONWARNING);
    abort;
  end;
  Laboral.Gravar;
  Laboral.Cancelar;
  Laboral.Open;
end;

procedure TfrmAdesaoLaboral.qryMainAfterScroll(DataSet: TDataSet);
begin
  edtAno.Value := qryMainAno.AsInteger;
  edtMes.ItemIndex := qryMainMes.AsInteger-1;
  edtHora.Text := qryMainTotal_Percentual.AsString;
end;

procedure TfrmAdesaoLaboral.lbAlterarClick(Sender: TObject);
begin
  Laboral.Alterar;
end;

procedure TfrmAdesaoLaboral.lbCancelarClick(Sender: TObject);
begin
  Laboral.Cancelar;
end;

procedure TfrmAdesaoLaboral.lbExcluirClick(Sender: TObject);
begin
  Laboral.Excluir;
  Laboral.Open;
end;

procedure TfrmAdesaoLaboral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmAdesaoLaboral := Nil;
  F_MSCOMEX.AdesaoLaboral.Enabled := true;
  Action := caFree;
end;

procedure TfrmAdesaoLaboral.qryMainMesGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  if( qryMainMes.AsInteger > 0 )then
    Text := Meses[qryMainMes.AsInteger];
end;

end.
