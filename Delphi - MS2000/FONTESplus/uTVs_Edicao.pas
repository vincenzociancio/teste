unit uTVs_Edicao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, Db, DBTables,
  DBCtrls, Mask;

Type
  TOperacao = (tInsert, tUpdate);

type
  TfrmTVs_Edicao = class(TForm)
    sbControle: TScrollBox;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnFechar: TBitBtn;
    StatusBar1: TStatusBar;
    pnlMain: TPanel;
    gridMain: TDBGrid;
    pnlText: TPanel;
    qryTVs: TQuery;
    dtsTVs: TDataSource;
    qryTVsPK_TV: TAutoIncField;
    qryTVsDescricao: TStringField;
    qryTVsComputador: TStringField;
    qryTVsExibir_Todos_Importadores: TBooleanField;
    qryTVsInativo: TBooleanField;
    Label1: TLabel;
    Label2: TLabel;
    qryOperacao: TQuery;
    edtDescricao: TEdit;
    edtComputador: TEdit;
    edtExibir: TCheckBox;
    edtInativo: TCheckBox;
    edtPrograma: TDBLookupComboBox;
    Label3: TLabel;
    qryPrograma: TQuery;
    dtsPrograma: TDataSource;
    qryProgramaPK_Programa: TAutoIncField;
    qryProgramaPrograma: TStringField;
    qryTVsFK_Programa: TIntegerField;
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure qryTVsExibir_Todos_ImportadoresGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure qryTVsInativoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
    procedure qryTVsAfterScroll(DataSet: TDataSet);
    procedure gridMainCellClick(Column: TColumn);
    procedure gridMainDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    Operacao : TOperacao;
  public
    { Public declarations }
  end;

var
  frmTVs_Edicao: TfrmTVs_Edicao;

implementation

{$R *.DFM}

procedure TfrmTVs_Edicao.btnNovoClick(Sender: TObject);
begin
  // Define tipo de Operaçao
  Operacao := tInsert;
  //--
  // Controles
  btnNovo.Enabled := False;
  btnAlterar.Enabled := False;
  btnExcluir.Enabled := False;
  btnFechar.Enabled := False;
  btnCancelar.Enabled := True;
  btnGravar.Enabled := True;
  pnlText.Enabled := True;
  gridMain.Enabled := True;
  edtExibir.Checked := True;
  //--
  edtDescricao.Clear;
  edtComputador.Clear;
  edtExibir.Checked := True;
  edtInativo.Checked := False;
  edtPrograma.KeyValue := -1;
end;

procedure TfrmTVs_Edicao.btnAlterarClick(Sender: TObject);
begin
   // Define tipo de Operaçao
   Operacao := tUpdate;
   //--
   // Controles
   btnNovo.Enabled := False;
   btnAlterar.Enabled := False;
   btnExcluir.Enabled := False;
   btnFechar.Enabled := False;
   btnCancelar.Enabled := True;
   btnGravar.Enabled := True;
   pnlText.Enabled := True;
   gridMain.Enabled := False;
   //--
end;

procedure TfrmTVs_Edicao.btnExcluirClick(Sender: TObject);
begin
  If ( Not qryTVs.IsEmpty ) Then Begin
    If ( MessageDlg('Confirma exclusão?', mtConfirmation, [mbYes, mbNo], 0) = mrYes ) Then Begin
      qryOperacao.Close;
      qryOperacao.SQL.Clear;
      qryOperacao.SQL.Text := format('delete from Controle_TVs where PK_TV =%d',
                                     [ qryTVsPK_TV.AsInteger ]);
      qryOperacao.ExecSQL;
      qryTVs.Close;
      qryTVs.Open;
      If ( qryTVs.Eof ) Then Begin
        edtDescricao.Clear;
        edtComputador.Clear;
        edtExibir.Checked := True;
        edtInativo.Checked := False;
        edtPrograma.KeyValue := -1;
      end;
    end;
  end
  else
  Application.MessageBox('Não existe registro para excluir!','Informação', MB_OK + MB_ICONINFORMATION );
end;

procedure TfrmTVs_Edicao.qryTVsExibir_Todos_ImportadoresGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  If ( qryTVsExibir_Todos_Importadores.AsBoolean ) Then
    Text := 'Sim'
  else
    Text := 'Não';
end;

procedure TfrmTVs_Edicao.btnGravarClick(Sender: TObject);
  var
    GoOn,
    Vazio : Boolean;
begin
   // Controles
   btnNovo.Enabled := True;
   btnAlterar.Enabled := True;
   btnExcluir.Enabled := True;
   btnFechar.Enabled := True;
   btnCancelar.Enabled := False;
   btnGravar.Enabled := False;
   pnlText.Enabled := False;
   gridMain.Enabled := True;
   ActiveControl := btnNovo;
   //--
   GoOn := True;
   Vazio := False;

   If ( Trim( edtDescricao.Text ) = '' ) Then Begin
     GoOn := False;
     Vazio := True;
     Application.MessageBox('Campo Descrição não pode ser vazio','Aviso', MB_OK + MB_ICONWARNING );
   end
   else
   If ( Trim( edtComputador.Text ) = '' ) Then Begin
     GoOn := False;
     Vazio := True;
     Application.MessageBox('Campo Computador não pode ser vazio','Aviso', MB_OK + MB_ICONWARNING );
   end
   else
   If ( Trim( edtPrograma.Text ) = '' ) Then Begin
     GoOn := False;
     Vazio := True;
     Application.MessageBox('Campo programa não pode ser vazio','Aviso', MB_OK + MB_ICONWARNING );
   end;

   try
     If ( GoOn ) Then Begin
       case Operacao of
         tInsert: Begin
           try
             qryOperacao.Close;
             qryOperacao.SQL.Clear;
             qryOperacao.SQL.Text := Format('insert into Controle_TVs ( Descricao, Computador, Exibir_Todos_Importadores, Inativo, FK_Programa ) '+
                                            'values( %s, %s, %d, %d, %d )',
                                            [ QuotedStr( edtDescricao.Text ),
                                              QuotedStr( edtComputador.Text ),
                                              Ord( edtExibir.Checked ),
                                              Ord( edtInativo.Checked ),
                                              qryProgramaPK_Programa.AsInteger ]);
             qryOperacao.ExecSQL;
             GoOn := True;
           except
             GoOn := False;
           end;
         end;
         tUpdate: Begin
           try
             qryOperacao.Close;
             qryOperacao.SQL.Clear;
             qryOperacao.SQL.Text := Format('update Controle_TVs set Descricao=%s, Computador=%s, Exibir_Todos_Importadores=%d, Inativo=%d, FK_Programa=%d where PK_TV =%d',
                                            [ QuotedStr( edtDescricao.Text ),
                                              QuotedStr( edtComputador.Text ),
                                              Ord( edtExibir.Checked ),
                                              Ord( edtInativo.Checked ),
                                              qryProgramaPK_Programa.AsInteger,
                                              qryTVsPK_TV.AsInteger]);
             qryOperacao.ExecSQL;
             Application.ProcessMessages;
             qryOperacao.Close;
             qryOperacao.SQL.Clear;
             qryOperacao.SQL.Text := format('delete from Controle_TVs_Importadores where FK_TV =%d',
                                            [ qryTVsPK_TV.AsInteger ]);
             qryOperacao.ExecSQL;
             GoOn := True;
           except
             GoOn := False;
           end;
         end;
       end;
     end;
   finally
     If ( GoOn ) Then Begin
       Application.MessageBox('Gravado com sucesso!','Informação', MB_OK + MB_ICONINFORMATION );
       qryTVs.Close;
       qryTVs.Open;
     end
     else
     If ( Not Vazio ) Then
       Application.MessageBox('Erro na gravação. Tente gravar novamente','Erro', MB_OK + MB_ICONERROR );
     If ( Vazio ) Then begin
        // Define tipo de Operaçao
        Operacao := tInsert;
        //--
        // Controles
        btnNovo.Enabled := False;
        btnAlterar.Enabled := False;
        btnExcluir.Enabled := False;
        btnFechar.Enabled := False;
        btnCancelar.Enabled := True;
        btnGravar.Enabled := True;
        pnlText.Enabled := True;
        gridMain.Enabled := True;
        //--
        ActiveControl := edtDescricao;
     end;
   end;
   
end;

procedure TfrmTVs_Edicao.btnCancelarClick(Sender: TObject);
begin
   // Controles
   btnNovo.Enabled := True;
   btnAlterar.Enabled := True;
   btnExcluir.Enabled := True;
   btnFechar.Enabled := True;
   btnCancelar.Enabled := False;
   btnGravar.Enabled := False;
   gridMain.Enabled := True;
   pnlText.Enabled := False;
   ActiveControl := btnNovo;
   //--
   qryTVs.Close;
   qryTVs.Open;
end;

procedure TfrmTVs_Edicao.qryTVsInativoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  If ( qryTVsInativo.AsBoolean ) Then
    Text := 'Sim'
  else
    Text := 'Não';
end;

procedure TfrmTVs_Edicao.FormShow(Sender: TObject);
begin
  qryTVs.Close;
  qryTVs.Open;

  qryPrograma.Close;
  qryPrograma.Open;
end;

procedure TfrmTVs_Edicao.qryTVsAfterScroll(DataSet: TDataSet);
begin
  edtDescricao.Clear;
  edtComputador.Clear;
  edtExibir.Checked := True;
  edtInativo.Checked := False;
  edtDescricao.Text := qryTVsDescricao.AsString;
  edtComputador.Text := qryTVsComputador.AsString;
  edtExibir.Checked := qryTVsExibir_Todos_Importadores.AsBoolean;
  edtInativo.Checked := qryTVsInativo.AsBoolean;
  edtPrograma.KeyValue := qryTVsFK_Programa.AsInteger; 
end;

procedure TfrmTVs_Edicao.gridMainCellClick(Column: TColumn);
begin     {
 if Column.Field.DataType = ftBoolean then
  begin
    if not (Column.Field.DataSet.State in dsEditModes) then
      Column.Field.DataSet.Edit;
    Column.Field.AsBoolean := not Column.Field.AsBoolean;
  end;   }
end;

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


procedure TfrmTVs_Edicao.gridMainDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ( Column.Field.FieldName = 'Inativo' )Or
    ( Column.Field.FieldName = 'Exibir_Todos_Importadores' ) then
   DrawCheckBoxes(Sender,Rect,Column);
end;

end.
