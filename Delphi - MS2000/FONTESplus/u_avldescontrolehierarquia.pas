unit u_avldescontrolehierarquia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ImgList, StdCtrls, Buttons, ExtCtrls, DBCtrls, Db, DBTables;

type
  Tf_avldescontrolehierarquia = class(TForm)
    Panel1: TPanel;
    btn1: TSpeedButton;
    btn4: TSpeedButton;
    List1: TListBox;
    List3: TListBox;
    Panel2: TPanel;
    lb1: TLabel;
    lb2: TLabel;
    Panel3: TPanel;
    Bevel1: TBevel;
    btnGravar: TBitBtn;
    btnAlterar: TBitBtn;
    btnCancelar: TBitBtn;
    List2: TListBox;
    btn5: TSpeedButton;
    btn8: TSpeedButton;
    Label1: TLabel;
    btnHierarquiaAnalise: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    Label7: TLabel;
    tbPesquisas: TTable;
    tbPesquisasCodigo: TIntegerField;
    tbPesquisasDescricao: TStringField;
    DataSource2: TDataSource;
    DataSource1: TDataSource;
    qrControleHierarquia: TQuery;
    QryAux: TQuery;
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnHierarquiaAnaliseClick(Sender: TObject);
  private
    procedure BuscarGestores;
    procedure BuscarSupervisores;
    procedure BuscarColaboradores;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_avldescontrolehierarquia: Tf_avldescontrolehierarquia;

implementation

uses U_MSCOMEX, u_avldeshierarquiaanalise;

{$R *.DFM}

procedure Tf_avldescontrolehierarquia.BuscarColaboradores;
begin
  QryAux.Close;
  QryAux.SQL.Clear;
  QryAux.SQL.Text := 'SELECT USUARIO FROM ANL_DES_CONTROLE_HIERARQUIA WHERE NIVEL = 3 AND FK_ANALISE = :p0';
  QryAux.Params[0].Value := tbPesquisasCodigo.AsInteger;
  QryAux.Open;

  list1.Items.Clear;

  while (not QryAux.eof) do
   begin
     list1.Items.Add(QryAux.fieldByName('USUARIO').AsString);
     QryAux.Next;
     Application.ProcessMessages;
   end;

  QryAux.close;
end;

procedure Tf_avldescontrolehierarquia.BuscarGestores;
begin
  QryAux.Close;
  QryAux.SQL.Clear;
  QryAux.SQL.Text := 'SELECT USUARIO FROM ANL_DES_CONTROLE_HIERARQUIA WHERE NIVEL = 1 AND FK_ANALISE = :p0';
  QryAux.Params[0].Value := tbPesquisasCodigo.AsInteger;
  QryAux.Open;

  list3.Items.Clear;

  while (not QryAux.eof) do
   begin
     list3.Items.Add(QryAux.fieldByName('USUARIO').AsString);
     QryAux.Next;
     Application.ProcessMessages;
   end;

  QryAux.close;
end;

procedure Tf_avldescontrolehierarquia.BuscarSupervisores;
begin
  QryAux.Close;
  QryAux.SQL.Clear;
  QryAux.SQL.Text := 'SELECT USUARIO FROM ANL_DES_CONTROLE_HIERARQUIA WHERE NIVEL = 2 AND FK_ANALISE = :p0';
  QryAux.Params[0].Value := tbPesquisasCodigo.AsInteger;  
  QryAux.Open;

  list2.Items.Clear;

  while (not QryAux.eof) do
   begin
     list2.Items.Add(QryAux.fieldByName('USUARIO').AsString);
     QryAux.Next;
     Application.ProcessMessages;
   end;

  QryAux.close;
end;

procedure Tf_avldescontrolehierarquia.FormShow(Sender: TObject);
begin
  tbPesquisas.Open;
end;

procedure Tf_avldescontrolehierarquia.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_avldescontrolehierarquia.btnAlterarClick(Sender: TObject);
begin
  btnAlterar.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  
  btn1.Enabled := True;
  btn4.Enabled := True;

  btn5.Enabled := True;
  btn8.Enabled := True;

  list1.Enabled := True;
  list2.Enabled := True;
  List3.Enabled := True;
end;

procedure Tf_avldescontrolehierarquia.btn1Click(Sender: TObject);
begin
  if list1.Items.Count > 0
   then begin
     list2.Items.Add(list1.Items.Strings[list1.ItemIndex]);
     list1.Items.Delete(list1.ItemIndex);
   end;  
end;

procedure Tf_avldescontrolehierarquia.btn4Click(Sender: TObject);
begin
  if list2.Items.Count > 0
   then begin
     list1.Items.Add(list2.Items.Strings[list2.ItemIndex]);
     list2.Items.Delete(list2.ItemIndex);
   end;
end;

procedure Tf_avldescontrolehierarquia.btn5Click(Sender: TObject);
begin
  if list2.Items.Count > 0
   then begin
     list3.Items.Add(list2.Items.Strings[list2.ItemIndex]);
     list2.Items.Delete(list2.ItemIndex);
   end;
end;

procedure Tf_avldescontrolehierarquia.btn8Click(Sender: TObject);
begin
  if list3.Items.Count > 0
   then begin
     list2.Items.Add(list3.Items.Strings[list3.ItemIndex]);
     list3.Items.Delete(list3.ItemIndex);
   end;
end;

procedure Tf_avldescontrolehierarquia.btnCancelarClick(Sender: TObject);
begin
  btnAlterar.Enabled  := True;
  btnGravar.Enabled   := False;
  btnCancelar.Enabled := False;
  
  btn1.Enabled := False;
  btn4.Enabled := False;

  btn5.Enabled := False;
  btn8.Enabled := False;

  list1.Enabled := False;
  list2.Enabled := False;
  list3.Enabled := False;

  BuscarColaboradores;
  BuscarSupervisores;
  BuscarGestores;
end;

procedure Tf_avldescontrolehierarquia.btnGravarClick(Sender: TObject);
var
  i, j : Integer;
begin
  btnAlterar.Enabled := true;
  btnGravar.Enabled  := False;
  
  btn1.Enabled  := False;
  btn4.Enabled  := False;

  btn5.Enabled  := False;
  btn8.Enabled  := False;

  list1.Enabled := False;
  list2.Enabled := False;
  List3.Enabled := False;

  btnCancelar.Enabled := false;

  for i := 0 to (list1.Items.Count - 1) do begin
    qryAux.SQL.Clear;
    qryAux.SQL.Text := 'UPDATE Anl_Des_Controle_Hierarquia SET Hierarquia = ''COLABORADOR'', Nivel = 3 WHERE Usuario = '+QuotedStr(list1.Items.Strings[list1.ItemIndex]);
    qryAux.ExecSQL;
    list1.Items.Delete(list1.ItemIndex);
  end;

  for i := 0 to (list2.Items.Count - 1) do begin
    qryAux.SQL.Clear;
    qryAux.SQL.Text := 'UPDATE Anl_Des_Controle_Hierarquia SET Hierarquia = ''SUPERVISOR'', Nivel = 2 WHERE Usuario = '+QuotedStr(list2.Items.Strings[list2.ItemIndex]);
    qryAux.ExecSQL;
    list2.Items.Delete(list2.ItemIndex);
  end;

  for i := 0 to (list3.Items.Count - 1) do begin
    qryAux.SQL.Clear;
    qryAux.SQL.Text := 'UPDATE Anl_Des_Controle_Hierarquia SET Hierarquia = ''GESTOR'', Nivel = 1 WHERE Usuario = '+QuotedStr(list3.Items.Strings[list3.ItemIndex]);
    qryAux.ExecSQL;
    list3.Items.Delete(list3.ItemIndex);
  end;

  qryAux.Close;

  if (Trim(DBLookupComboBox1.Text) <> '')
   then begin
     BuscarColaboradores;
     BuscarSupervisores;
     BuscarGestores;
   end;
end;

procedure Tf_avldescontrolehierarquia.DBLookupComboBox1Click(
  Sender: TObject);
begin
  if (Trim(DBLookupComboBox1.Text) <> '')
   then begin
     BuscarColaboradores;
     BuscarSupervisores;
     BuscarGestores;
   end;

  btnHierarquiaAnalise.Enabled := Trim(DBLookupComboBox1.Text) <> '';
  btnAlterar.Enabled           := Trim(DBLookupComboBox1.Text) <> '';
end;

procedure Tf_avldescontrolehierarquia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  f_avldescontrolehierarquia := Nil;
  F_MSCOMEX.ControledeHierarquia1.Enabled := True;
end;

procedure Tf_avldescontrolehierarquia.btnHierarquiaAnaliseClick(Sender: TObject);
begin
  try
    Application.CreateForm(Tf_avldeshierarquiaanalise, f_avldeshierarquiaanalise);

    f_avldeshierarquiaanalise.tbHierarquiaAnalise.Filter   := 'FK_ANALISE = ' + IntToStr(tbPesquisasCodigo.AsInteger);
    f_avldeshierarquiaanalise.tbHierarquiaAnalise.Filtered := True;
    f_avldeshierarquiaanalise.Show;
  finally
  end;
end;

end.
