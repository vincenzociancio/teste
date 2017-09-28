unit uClientes_Check;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, Db, DBTables, DBClient;

type
  TfrmClientes_Check = class(TForm)
    gridAll: TDBGrid;
    pnl1: TPanel;
    gridCheck: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    btnGravar: TBitBtn;
    btnFechar: TBitBtn;
    dtsAll: TDataSource;
    dtsTmp: TDataSource;
    qryAll: TQuery;
    qryCheck: TQuery;
    Panel2: TPanel;
    btnRight: TBitBtn;
    btnLeft: TBitBtn;
    Tmp: TClientDataSet;
    qryAllCodigo: TStringField;
    qryAllNome: TStringField;
    cdsAll: TClientDataSet;
    cdsAllCodigo: TStringField;
    cdsAllNome: TStringField;
    TmpCodigo: TStringField;
    TmpNome: TStringField;
    qryGravar: TQuery;
    qryDelete: TQuery;
    btnTipoProcesso: TBitBtn;
    Panel3: TPanel;
    StaticText1: TStaticText;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    qryTp1: TQuery;
    qryTp1Codigo: TStringField;
    qryTp1Nome: TStringField;
    dtsTp1: TDataSource;
    cdsTp1: TClientDataSet;
    cdsTp1Codigo: TStringField;
    cdsTp1Nome: TStringField;
    dtsTp2: TDataSource;
    cdsTp2: TClientDataSet;
    cdsTp2Codigo: TStringField;
    cdsTp2Nome: TStringField;
    qryTp2: TQuery;
    qryDel2: TQuery;
    qryGrava2: TQuery;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRightClick(Sender: TObject);
    procedure btnLeftClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnTipoProcessoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
    Usuario : string;
  public
    { Public declarations }
  end;

var
  frmClientes_Check: TfrmClientes_Check;

implementation

uses U_usuarios;

{$R *.DFM}

procedure TfrmClientes_Check.FormShow(Sender: TObject);
begin
  Usuario := F_usuarios.tbUsuariosUsuario.AsString;
  qryAll.ParamByName('Usuario').Value := Usuario;
  qryAll.Close;
  qryAll.Open;
  while Not qryAll.Eof do begin
    cdsAll.Append;
    cdsAllCodigo.Value := qryAllCodigo.AsString;
    cdsAllNome.Value := qryAllNome.AsString;
    cdsAll.Post;
    qryAll.Next;
  end;

  qryCheck.ParamByName('Usuario').Value := Usuario;
  qryCheck.Close;
  qryCheck.Open;
  while Not qryCheck.Eof do begin
    Tmp.Append;
    TmpCodigo.Value := qryCheck.FieldByName('Codigo').AsString;
    TmpNome.Value := qryCheck.FieldByName('Nome').AsString;
    Tmp.Post;
    qryCheck.Next;
  end;
end;

procedure TfrmClientes_Check.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmClientes_Check := Nil;
end;

procedure TfrmClientes_Check.btnRightClick(Sender: TObject);
  var
    cont : integer;
begin
  With gridAll do Begin
    if SelectedRows.Count = 0 then begin
     MessageDlg('SELECIONE OS REGISTROS.' , mtInformation, [mbOK], 0);
     gridAll.SetFocus;
     Exit;
    end;

    for Cont:= 0 to Pred(SelectedRows.Count) do Begin
      Datasource.Dataset.Bookmark := SelectedRows[cont];
      Tmp.Insert;
      TmpCodigo.Value := gridAll.DataSource.DataSet.FieldByName('Codigo').AsString;
      TmpNome.Value := gridAll.DataSource.DataSet.FieldByName('Nome').AsString;
      Tmp.Post;
    end;

    for Cont:= 0 to Pred(SelectedRows.Count) do Begin
      Datasource.Dataset.Bookmark := SelectedRows[cont];
      gridAll.DataSource.DataSet.Delete;
    end;
    gridAll.SelectedRows.Clear;
  end;
end;
procedure TfrmClientes_Check.btnLeftClick(Sender: TObject);
  var
    Cont : Integer;
begin
  for Cont:= 0 to Pred(gridCheck.SelectedRows.Count) do Begin
    gridCheck.Datasource.Dataset.Bookmark := gridCheck.SelectedRows[cont];
    cdsAll.Append;
    cdsAllCodigo.Value := gridCheck.DataSource.DataSet.FieldByName('Codigo').AsString;
    cdsAllNome.Value := gridCheck.DataSource.DataSet.FieldByName('Nome').AsString;
    cdsAll.Post;
  end;
  gridCheck.SelectedRows.Delete;
end;

procedure TfrmClientes_Check.btnGravarClick(Sender: TObject);
begin
  // Deletando...
  qryDelete.ParamByName('Usuario').Value := Usuario;
  qryDelete.ExecSQL;

  // Gravando...
  Tmp.First;
  while not tmp.Eof do begin
    qryGravar.ParamByName('fk_importador').Value := TmpCodigo.AsString;
    qryGravar.ParamByName('fk_Usuario').Value := Usuario;
    qryGravar.ExecSQL;
    tmp.Next;
  End;
  Application.MessageBox('Gravado com sucesso','Aviso', MB_OK+MB_ICONINFORMATION);
end;

procedure TfrmClientes_Check.BitBtn3Click(Sender: TObject);
begin
  Panel3.hide;
end;

procedure TfrmClientes_Check.btnTipoProcessoClick(Sender: TObject);
  var
    Usuario : String;
begin
  Panel3.Show;
  cdsTp1.EmptyDataSet;
  cdsTp2.EmptyDataSet;
  Usuario := F_usuarios.tbUsuariosUsuario.AsString;
  qryTp1.ParamByName('Usuario').Value := Usuario;
  qryTp1.Close;
  qryTp1.Open;
  while Not qryTp1.Eof do begin
    cdsTp1.Append;
    cdsTp1Codigo.Value := qryTp1Codigo.AsString;
    cdsTp1Nome.Value := qryTp1Nome.AsString;
    cdsTp1.Post;
    qryTp1.Next;
  end;        

  qryTp2.ParamByName('Usuario').Value := Usuario;
  qryTp2.Close;
  qryTp2.Open;
  while Not qryTp2.Eof do begin
    cdsTp2.Append;
    cdsTp2Codigo.Value := qryTp2.FieldByName('Codigo').AsString;
    cdsTp2Nome.Value := qryTp2.FieldByName('Nome').AsString;
    cdsTp2.Post;
    qryTp2.Next;
  end;
end;

procedure TfrmClientes_Check.BitBtn1Click(Sender: TObject);
  var
    cont : integer;
begin
  With DBGrid1 do Begin
    if SelectedRows.Count = 0 then begin
     MessageDlg('SELECIONE OS REGISTROS.' , mtInformation, [mbOK], 0);
     DBGrid1.SetFocus;
     Exit;
    end;

    for Cont:= 0 to Pred(SelectedRows.Count) do Begin
      Datasource.Dataset.Bookmark := SelectedRows[cont];
      cdsTp2.Insert;
      cdsTp2Codigo.Value := DBGrid1.DataSource.DataSet.FieldByName('Codigo').AsString;
      cdsTp2Nome.Value := DBGrid1.DataSource.DataSet.FieldByName('Nome').AsString;
      cdsTp2.Post;
    end;

    for Cont:= 0 to Pred(SelectedRows.Count) do Begin
      Datasource.Dataset.Bookmark := SelectedRows[cont];
      DBGrid1.DataSource.DataSet.Delete;
    end;
    DBGrid1.SelectedRows.Clear;
  end;

end;


procedure TfrmClientes_Check.BitBtn2Click(Sender: TObject);
  var
    Cont : Integer;
begin
  for Cont:= 0 to Pred(DBGrid2.SelectedRows.Count) do Begin
    DBGrid2.Datasource.Dataset.Bookmark := DBGrid2.SelectedRows[cont];
    cdsTp1.Append;
    cdsTp1Codigo.Value := DBGrid2.DataSource.DataSet.FieldByName('Codigo').AsString;
    cdsTp1Nome.Value := DBGrid2.DataSource.DataSet.FieldByName('Nome').AsString;
    cdsTp1.Post;
  end;
  DBGrid2.SelectedRows.Delete;
end;

procedure TfrmClientes_Check.BitBtn4Click(Sender: TObject);
begin
  // Deletando...
  qryDel2.ParamByName('Usuario').Value := Usuario;
  qryDel2.ExecSQL;

  // Gravando...
  cdsTp2.First;
  while not cdsTp2.Eof do begin
    qryGrava2.ParamByName('FK_Tipo_Processo').Value := cdsTp2Codigo.AsString;
    qryGrava2.ParamByName('fk_Usuario').Value := Usuario;
    qryGrava2.ExecSQL;
    cdsTp2.Next;
  End;
  Application.MessageBox('Gravado com sucesso','Aviso', MB_OK+MB_ICONINFORMATION);
end;

end.
