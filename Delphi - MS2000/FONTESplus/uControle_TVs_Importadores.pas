unit uControle_TVs_Importadores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, ComCtrls, StdCtrls, Buttons, Db, DBTables,
  Provider, DBClient, Midas, DBCtrls, DBCGrids, Mask;

type
  TfrmControle_TVs_Importador = class(TForm)
    sbControle: TScrollBox;
    btnGravar: TBitBtn;
    btnFechar: TBitBtn;
    StatusBar1: TStatusBar;
    pnlMain: TPanel;
    pnlText: TPanel;
    dtsTmp: TDataSource;
    cdsTmp: TClientDataSet;
    DataSetProvider: TDataSetProvider;
    cdsTmpImportador: TStringField;
    cdsTmpExibir: TBooleanField;
    cdsTmpPK: TIntegerField;
    qryImportadores: TQuery;
    cdsTmpCNPJ: TStringField;
    qryImportadoresPK_TVs_Importadores: TAutoIncField;
    qryImportadoresFK_Importador: TStringField;
    qryImportadoresFK_TV: TIntegerField;
    qryImportadoresExibir: TBooleanField;
    qryImportadoresRazao_Social: TStringField;
    qryImportadoresCNPJ_CPF_COMPLETO: TStringField;
    edtDescricao: TEdit;
    edtComputador: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBCtrlGrid1: TDBCtrlGrid;
    DBCheckBox1: TDBCheckBox;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    qryUpdate: TQuery;
    pnlLocalizar: TPanel;
    Label12: TLabel;
    edtLocalizar: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edtLocalizarChange(Sender: TObject);
  private
    fPK_TV: Integer;
    fComputador: String;
    fDescricao: String;
    { Private declarations }
  public
    { Public declarations }
    property PK_TV : Integer read fPK_TV write fPK_TV;
    property Descricao : String read fDescricao write fDescricao;
    property Computador : String read fComputador write fComputador;

  end;

var
  frmControle_TVs_Importador: TfrmControle_TVs_Importador;

implementation

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
    Canvas.Pen.Color := clBlack;
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


procedure TfrmControle_TVs_Importador.FormShow(Sender: TObject);
begin
  qryImportadores.Params[0].Value := PK_TV;
  qryImportadores.Close;
  qryImportadores.Open;
  //
  cdsTmp.CreateDataSet;
  cdsTmp.EmptyDataSet;
  qryImportadores.First;
  while ( Not qryImportadores.Eof ) do Begin
    cdsTmp.Append;
    cdsTmpPK.AsInteger := qryImportadoresPK_TVs_Importadores.AsInteger;
    cdsTmpImportador.AsString := qryImportadoresRazao_Social.AsString;
    cdsTmpCNPJ.AsString := qryImportadoresCNPJ_CPF_COMPLETO.AsString;
    cdsTmpExibir.AsBoolean := qryImportadoresExibir.AsBoolean;
    cdsTmp.Post;
    qryImportadores.Next;
    Application.ProcessMessages;
  end;
  cdsTmp.First;
  edtDescricao.Text := Descricao;
  edtComputador.Text := Computador;
end;

procedure TfrmControle_TVs_Importador.btnGravarClick(Sender: TObject);
begin
  If ( cdsTmp.State in [dsEdit] ) Then
  cdsTmp.Post;
  //
  cdsTmp.First;
  while ( Not cdsTmp.Eof ) do begin
    qryUpdate.Close;
    qryUpdate.SQL.Clear;
    qryUpdate.SQL.Text := format('update Controle_TVs_Importadores set Exibir=%d where FK_TV=%d and PK_TVs_Importadores=%d',
                                  [ Ord( cdsTmpExibir.AsBoolean ),
                                    PK_TV,
                                    cdsTmpPK.AsInteger ]);
    qryUpdate.ExecSQL;
    cdsTmp.Next;
    Application.ProcessMessages;
  end;
  Application.MessageBox('Gravado com sucesso!','Informação', MB_OK + MB_ICONINFORMATION );  
end;

procedure TfrmControle_TVs_Importador.edtLocalizarChange(Sender: TObject);
begin
  cdsTmp.Locate('Importador', edtLocalizar.Text,
                [loCaseInsensitive, loPartialKey]);
end;

end.
