unit uNumerarioObrigatorio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, StdCtrls, ExtCtrls, CheckLst, Buttons, DBTables,
  DBCtrls, DBClient, ImgList, ComCtrls;

type
  TfrmNumerarioObrigatorio = class(TForm)
    dtsTiposNumerarios: TDataSource;
    pnlTipos: TPanel;
    qryTiposNumerarios: TQuery;
    qryTiposNumerariosCodigo: TStringField;
    qryTiposNumerariosDescricao: TStringField;
    qryTiposNumerariosPlano_contas: TStringField;
    dtsTiposProcessos: TDataSource;
    qryTiposProcessos: TQuery;
    qryTiposDeclaracao: TQuery;
    dtsTiposDeclaracao: TDataSource;
    edtTipoProcesso: TDBLookupComboBox;
    clist: TCheckListBox;
    qryTiposProcessosCodigo: TStringField;
    qryTiposProcessosDescricao: TStringField;
    qryTiposDeclaracaoCodigo: TStringField;
    qryTiposDeclaracaoDescricao: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    edtTipoDeclaracao: TDBLookupComboBox;
    Panel1: TPanel;
    btnFechar: TBitBtn;
    StaticText2: TStaticText;
    Panel2: TPanel;
    Label3: TLabel;
    btnAtualizar: TBitBtn;
    qryDelete: TQuery;
    qryInsert: TQuery;
    qrySelect: TQuery;
    qrySelectFK_Tipo_Declaracao: TStringField;
    qrySelectFK_Tipo_Numerario: TStringField;
    btnArvore: TBitBtn;
    qryArvore01: TQuery;
    pnlAviso: TPanel;
    Timer: TTimer;
    btnSalvar: TBitBtn;
    btnLimpar: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure edtTipoProcessoCloseUp(Sender: TObject);
    procedure edtTipoDeclaracaoCloseUp(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure clistClickCheck(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
    function FormatVar(AValue: String; ALength: Integer; AJustify: String = 'LEFT'): String;
    function CopyLeft(AString: String; ALength: Integer): String;
    procedure carregarLista();
    procedure desabilitaAviso();
  public
    { Public declarations }
  end;

var
  frmNumerarioObrigatorio: TfrmNumerarioObrigatorio;

implementation

uses U_MSCOMEX;

{$R *.DFM}

function TfrmNumerarioObrigatorio.FormatVar(AValue: String; ALength: Integer; AJustify: String = 'LEFT'): String;
Var
  iLength: Integer;
Begin
  {essa função preenche com espaços a direita ou a esquerda
  passando o parametro AJustify como Left o texto será alinhado a esquerda com espaços a direita}
  iLength := Length(Trim(AValue));
  Result := Trim(AValue);
  If AJustify = 'LEFT' Then
    Result := Result + StringOfChar(#32, ALength - iLength);
  If AJustify = 'RIGHT' Then
    Result := StringOfChar(#32, ALength - iLength) + Result;
  Result := CopyLeft(Result, Alength);
End;

function TfrmNumerarioObrigatorio.CopyLeft(AString: String; ALength: Integer): String;
Var
  i: Integer;
Begin
  {Retorna uma SubString da direita para esquerda no tamamnho desejado} // substitui pq. no delhpi 5 não tem StrUtils
  For i := 1 To Length(AString) Do
    If i > ALength Then
      Break
    Else
      Result := Result + AString[i];
End;

procedure TfrmNumerarioObrigatorio.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  I : Integer;
begin
  for I := 0 to pred(ComponentCount) do
   begin
     if Components[I] is TQuery
      then TQuery(Components[I]).Close
      else if Components[I] is TTable
            then TTable(Components[I]).Close;
   end;

  Action := caFree;
  F_MSCOMEX.GernciadeNumerriosObrigatrios1.Enabled := true;
  frmNumerarioObrigatorio := Nil;
end;

procedure TfrmNumerarioObrigatorio.carregarLista;
  var
    i:Integer;
begin
  // deixar sempre false
  clist.Sorted := false;
  qrySelect.Close;
  qrySelect.ParamByName( 'Tipo_Processo' ).Value := qryTiposProcessosCodigo.AsString;
  if ( Trim( edtTipoDeclaracao.Text ) = '' ) then
    qrySelect.ParamByName( 'Tipo_Declaracao' ).Value := ' '
  else
    qrySelect.ParamByName( 'Tipo_Declaracao' ).Value := qryTiposDeclaracaoCodigo.AsString;
  qrySelect.Open;

  clist.Clear;
  qryTiposNumerarios.Open;
  //while not qryTiposNumerarios.Eof do begin
  for i:= 0 to qryTiposNumerarios.RecordCount-1 do begin
    clist.Items.Add( FormatVar(qryTiposNumerariosCodigo.AsString, 4 ) +' - '+
                     qryTiposNumerariosDescricao.AsString );
    // checking
    if ( qrySelect.Locate('FK_Tipo_Numerario', qryTiposNumerariosCodigo.AsString, []) ) then
      clist.Checked[i] := true;
    //---
    qryTiposNumerarios.Next;
  end;
  qryTiposNumerarios.close;
  qrySelect.Close;
end;

procedure TfrmNumerarioObrigatorio.FormShow(Sender: TObject);
begin
  qryTiposProcessos.Open;
  qryTiposDeclaracao.Open;
end;

procedure TfrmNumerarioObrigatorio.btnAtualizarClick(Sender: TObject);
begin
  if ( Trim( edtTipoProcesso.Text ) = '' ) then begin
    Application.MessageBox('Entre com Tipo de Processo!','Aviso', MB_OK+MB_ICONWARNING);
    Abort;
  end;
  { Esouza - 27/03/2012
  if ( Trim( edtTipoDeclaracao.Text ) = '' ) then begin
    Application.MessageBox('Entre com Tipo de Declaração!','Aviso', MB_OK+MB_ICONWARNING);
    Abort;
  end;
  }
  carregarLista();
  desabilitaAviso();
end;

procedure TfrmNumerarioObrigatorio.edtTipoProcessoCloseUp(Sender: TObject);
begin
  desabilitaAviso();
  clist.Clear;
end;

procedure TfrmNumerarioObrigatorio.edtTipoDeclaracaoCloseUp(
  Sender: TObject);
begin
  desabilitaAviso();
  clist.Clear;
end;

procedure TfrmNumerarioObrigatorio.btnSalvarClick(Sender: TObject);
  var
    i : integer;
begin
  desabilitaAviso();
  // execute delete
  qryDelete.ParamByName( 'Tipo_Processo' ).Value := qryTiposProcessosCodigo.AsString;
  if (Trim( edtTipoDeclaracao.Text ) = '' ) then
    qryDelete.ParamByName( 'Tipo_Declaracao' ).Value := ' ' // sempre colocar espaço qunado for vazio
  else
    qryDelete.ParamByName( 'Tipo_Declaracao' ).Value := qryTiposDeclaracaoCodigo.AsString;
  qryDelete.ExecSQL;
  // execute insert     
  for i:= 0 to clist.Items.Count-1 do begin
    if ( clist.Checked[i] )then begin
      qryInsert.ParamByName( 'Tipo_Processo' ).Value := edtTipoProcesso.KeyValue;
      if (Trim( edtTipoDeclaracao.Text ) = '' ) then
        qryInsert.ParamByName( 'Tipo_Declaracao' ).Value := ' ' // sempre colocar espaço qunado for vazio
      else
        qryInsert.ParamByName( 'Tipo_Declaracao' ).Value := edtTipoDeclaracao.KeyValue;
      qryInsert.ParamByName( 'Tipo_Numerario' ).Value := Copy(clist.Items.Strings[i], 1, 4);
      qryInsert.ExecSQL;
    end;
  end;
  Application.MessageBox('Salvo com sucesso!','Informação', MB_OK+MB_ICONINFORMATION);
end;

procedure TfrmNumerarioObrigatorio.clistClickCheck(Sender: TObject);
begin
  btnSalvar.Enabled := true;
  Timer.Enabled := true;
end;

procedure TfrmNumerarioObrigatorio.TimerTimer(Sender: TObject);
begin
  if pnlAviso.Visible = false then
    pnlAviso.Visible := true
  else
    pnlAviso.Visible := false;
end;

procedure TfrmNumerarioObrigatorio.desabilitaAviso;
begin
  btnSalvar.Enabled := false;
  Timer.Enabled := false;
  pnlAviso.Visible := false;
end;

procedure TfrmNumerarioObrigatorio.btnLimparClick(Sender: TObject);
begin
  edtTipoDeclaracao.KeyValue := -1;
end;

end.
