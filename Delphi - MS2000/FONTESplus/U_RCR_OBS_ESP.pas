unit U_RCR_OBS_ESP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Mask, Db, DBTables, Grids, DBGrids, ExtCtrls, Buttons,
  ComCtrls;

Type
  TOperacao = (tInsert, tUpdate);
Const
  CrLf = #13 + #10;

type
  TF_RCR_OBS_ESP = class(TForm)
    qryObsEsp: TQuery;
    qryObsEspPK_OBS: TSmallintField;
    dsOBSESP: TDataSource;
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
    qryExcluir: TQuery;
    qryInsert: TQuery;
    qryUpdate: TQuery;
    Label1: TLabel;
    mmObs: TMemo;
    qryObsEsp_OBS: TStringField;
    qryObsEspDESC_OBS: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure qryObsEspAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure qryObsEspCalcFields(DataSet: TDataSet);
  private
    Operacao : TOperacao;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_RCR_OBS_ESP: TF_RCR_OBS_ESP;

implementation

uses U_MSCOMEX;

{$R *.DFM}


procedure TF_RCR_OBS_ESP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  F_MSCOMEX.mnObservaesEspecficas1.Enabled := true;
end;

procedure TF_RCR_OBS_ESP.btnNovoClick(Sender: TObject);
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
  mmObs.Clear;
  //--
end;

procedure TF_RCR_OBS_ESP.btnAlterarClick(Sender: TObject);
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

procedure TF_RCR_OBS_ESP.btnCancelarClick(Sender: TObject);
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
   qryObsEsp.Close;
   qryObsEsp.Open;
end;

procedure TF_RCR_OBS_ESP.btnExcluirClick(Sender: TObject);
begin
  If ( Not qryObsEsp.IsEmpty ) Then Begin
    If ( MessageDlg('Confirma exclusão?', mtConfirmation, [mbYes, mbNo], 0) = mrYes ) Then Begin
      try
        qryExcluir.Close;
        qryExcluir.SQL.Clear;
        qryExcluir.SQL.Text := Format('update TB_RCR_OBS_ESPECIFICA set Excluido = 1 where PK_OBS = %d',
                                      [ qryObsEspPK_OBS.AsInteger ]);
        qryExcluir.ExecSQL;
        qryObsEsp.Close;
        qryObsEsp.Open;
        If ( qryObsEsp.Eof ) Then Begin
          mmObs.Clear;
        end;
      except
        Application.MessageBox('Ocorreu um erro na exclusão. Tente excluir novamente','Erro', MB_OK + MB_ICONERROR );
      end;
    end;
  end
  else
  Application.MessageBox('Não existe registro para excluir!','Informação', MB_OK + MB_ICONINFORMATION );
end;

procedure TF_RCR_OBS_ESP.btnGravarClick(Sender: TObject);
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

   If ( Trim( mmObs.Text ) = '' ) Then Begin
     GoOn := False;
     Vazio := True;
     Application.MessageBox('Campo observação não pode ser vazio','Aviso', MB_OK + MB_ICONWARNING );
   end; 

   try
     If ( GoOn ) Then Begin
       case Operacao of
         tInsert: Begin
           try
             qryInsert.ParamByName( 'DESC_OBS' ).Value := mmObs.Text;
             qryInsert.ExecSQL;
             GoOn := True;
           except
             GoOn := False;
           end;
         end;
         tUpdate: Begin
           try
             qryUpdate.ParamByName( 'DESC_OBS' ).Value := mmObs.Text;
             qryUpdate.ParamByName( 'PK_OBS' ).Value := qryObsEspPK_OBS.AsInteger;
             qryUpdate.ExecSQL;
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
       qryObsEsp.Close;
       qryObsEsp.Open;
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
     end;
   end;
end;

procedure TF_RCR_OBS_ESP.qryObsEspAfterScroll(DataSet: TDataSet);
begin
  mmObs.Text := qryObsEspDESC_OBS.AsString;
end;

procedure TF_RCR_OBS_ESP.FormShow(Sender: TObject);
begin
  qryObsEsp.Close;
  qryObsEsp.Open;
end;

procedure TF_RCR_OBS_ESP.qryObsEspCalcFields(DataSet: TDataSet);
begin
  qryObsEsp_OBS.Value := StringReplace( qryObsEspDESC_OBS.AsString, CrLf, ' ', [rfReplaceAll, rfIgnoreCase] );
end;

end.
