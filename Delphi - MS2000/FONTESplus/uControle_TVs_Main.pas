unit uControle_TVs_Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ExtCtrls, StdCtrls, Grids, DBGrids, Db, DBTables, Buttons;

type
  TfrmControle_TVs_Main = class(TForm)
    StatusBar1: TStatusBar;
    ScrollBox1: TScrollBox;
    pnlClient: TPanel;
    pnlTop: TPanel;
    Splitter1: TSplitter;
    StaticText1: TStaticText;
    grdTVs: TDBGrid;
    StaticText2: TStaticText;
    gridImportadores: TDBGrid;
    qryTV: TQuery;
    dtsTV: TDataSource;
    qryTVDescricao: TStringField;
    qryTVComputador: TStringField;
    qryTVExibir_Todos_Importadores: TBooleanField;
    qryTVInativo: TBooleanField;
    qryTV_Importadores: TQuery;
    dtsTV_Importadores: TDataSource;
    qryTV_ImportadoresExibir: TBooleanField;
    qryTV_ImportadoresRazao_Social: TStringField;
    qryTV_ImportadoresCNPJ_CPF_COMPLETO: TStringField;
    qryTVPK_TV: TAutoIncField;
    btnFechar: TBitBtn;
    qryImportadores: TQuery;
    qryImportadoresRazao_Social: TStringField;
    qryImportadoresCNPJ_CPF_COMPLETO: TStringField;
    qryImportadoresCodigo: TStringField;
    qryInsertCliente: TQuery;
    btnAtualizar: TBitBtn;
    btnTV: TBitBtn;
    btnImportadores: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure qryTVInativoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryTVExibir_Todos_ImportadoresGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryTV_ImportadoresExibirGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnTVClick(Sender: TObject);
    procedure gridImportadoresDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure grdTVsDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnImportadoresClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure AtualizarClientes();
  public
    { Public declarations }
  end;

var
  frmControle_TVs_Main: TfrmControle_TVs_Main;

implementation

uses uTVs_Edicao, uControle_TVs_Importadores, U_MSCOMEX;

{$R *.DFM}


procedure DrawCheckBoxes(oGrid : TObject; Rect: TRect; Column: TColumn);
  var
    MyRect : TRect;
    iPos : Integer;
    iFactor : Integer;
    bValue : Boolean;
begin
  with (oGrid as TDBGrid) do begin
    if (Column.Field.Value = Null) or (Column.Field.Value = 0) then
      bValue := False
    else
      bValue := True;

    MyRect.Top := ((Rect.Bottom - Rect.Top - 11 ) div 2) + Rect.Top;
    MyRect.Left := ((Rect.Right - Rect.Left - 11) div 2) + Rect.Left;
    MyRect.Bottom := MyRect.Top + 10;
    MyRect.Right := MyRect.Left + 10;

    Canvas.FillRect(Rect);
    Canvas.Pen.Color := clWindow;
    Canvas.Polyline([

    Point(MyRect.Left, MyRect.Top), Point(MyRect.Right, MyRect.Top),
    Point(MyRect.Right, MyRect.Bottom), Point(MyRect.Left, MyRect.Bottom),
    Point(MyRect.Left, MyRect.Top)]);

    iPos := MyRect.Left;
    iFactor := 1;

    if ( bValue ) then begin
      Canvas.MoveTo(iPos + (iFactor*2), MyRect.Top + 4);
      Canvas.LineTo(iPos + (iFactor*2), MyRect.Top + 7);
      Canvas.MoveTo(iPos + (iFactor*3), MyRect.Top + 5);
      Canvas.LineTo(iPos + (iFactor*3), MyRect.Top + 8);
      Canvas.MoveTo(iPos + (iFactor*4), MyRect.Top + 6);
      Canvas.LineTo(iPos + (iFactor*4), MyRect.Top + 9);
      Canvas.MoveTo(iPos + (iFactor*5), MyRect.Top + 5);
      Canvas.LineTo(iPos + (iFactor*5), MyRect.Top + 8);
      Canvas.MoveTo(iPos + (iFactor*6), MyRect.Top + 4);
      Canvas.LineTo(iPos + (iFactor*6), MyRect.Top + 7);
      Canvas.MoveTo(iPos + (iFactor*7), MyRect.Top + 3);
      Canvas.LineTo(iPos + (iFactor*7), MyRect.Top + 6);
      Canvas.MoveTo(iPos + (iFactor*8), MyRect.Top + 2);
      Canvas.LineTo(iPos + (iFactor*8), MyRect.Top + 5);
    end;
  end;
end;


procedure TfrmControle_TVs_Main.FormShow(Sender: TObject);
begin
  qryTV.Close;
  qryTV.Open;
  //
  qryTV_Importadores.Close;
  qryTV_Importadores.Open;
  // Atualiza clientes
  AtualizarClientes();

end;

procedure TfrmControle_TVs_Main.qryTVInativoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  If ( qryTVInativo.AsBoolean ) Then
    Text := 'Sim'
  else
    Text := 'Não';
end;

procedure TfrmControle_TVs_Main.qryTVExibir_Todos_ImportadoresGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  If ( qryTVExibir_Todos_Importadores.AsBoolean ) Then
    Text := 'Sim'
  else
    Text := 'Não';
end;

procedure TfrmControle_TVs_Main.qryTV_ImportadoresExibirGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  If ( qryTV_ImportadoresExibir.AsBoolean ) Then
    Text := 'Sim'
  else
    Text := 'Não';
end;

procedure TfrmControle_TVs_Main.AtualizarClientes;
begin
  qryImportadores.Close;
  qryImportadores.Open;
  //
  If ( Not qryImportadores.IsEmpty ) Then Begin
    qryTV.First;
    while ( Not qryTV.Eof ) do begin
      qryImportadores.First;
      while ( Not qryImportadores.Eof ) do begin
        Try
          qryInsertCliente.ParamByName( 'FK_Importador' ).Value := qryImportadoresCodigo.AsString;
          qryInsertCliente.ParamByName( 'FK_TV' ).Value := qryTVPK_TV.AsInteger;
          qryInsertCliente.ParamByName( 'Exibir' ).Value := qryTVExibir_Todos_Importadores.AsBoolean;
          qryInsertCliente.ExecSQL;
        Except
          qryImportadores.Next;
        end;
        qryImportadores.Next;
        Application.ProcessMessages;
      end;
      qryTV.Next;
      Application.ProcessMessages;
    end;
  end;
  qryTV_Importadores.Close;
  qryTV_Importadores.Open;
end;

procedure TfrmControle_TVs_Main.btnAtualizarClick(Sender: TObject);
begin
  AtualizarClientes();
end;

procedure TfrmControle_TVs_Main.btnTVClick(Sender: TObject);
begin
  frmTVs_Edicao := TfrmTVs_Edicao.Create( self );
  frmTVs_Edicao.ShowModal;
  frmTVs_Edicao.Free;
  qryTV.Close;
  qryTV.Open;
  AtualizarClientes();
end;

procedure TfrmControle_TVs_Main.gridImportadoresDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ( Column.Field.FieldName = 'Exibir' ) then
   DrawCheckBoxes(Sender,Rect,Column);
end;

procedure TfrmControle_TVs_Main.grdTVsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ( Column.Field.FieldName = 'Inativo' ) then
   DrawCheckBoxes(Sender,Rect,Column);
  if ( Column.Field.FieldName = 'Exibir_Todos_Importadores' ) then
   DrawCheckBoxes(Sender,Rect,Column);
end;

procedure TfrmControle_TVs_Main.btnImportadoresClick(Sender: TObject);
begin
  frmControle_TVs_Importador := TfrmControle_TVs_Importador.Create( Self );
  frmControle_TVs_Importador.PK_TV := qryTVPK_TV.AsInteger;
  frmControle_TVs_Importador.Descricao := qryTVDescricao.AsString;
  frmControle_TVs_Importador.Computador := qryTVComputador.AsString;
  frmControle_TVs_Importador.ShowModal;
  frmControle_TVs_Importador.Free;
  qryTV_Importadores.Close;
  qryTV_Importadores.Open;
end;

procedure TfrmControle_TVs_Main.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  F_MSCOMEX.ControleTVs1.enabled := true;
  frmControle_TVs_Main := Nil;
  Action := caFree;
end;

end.
