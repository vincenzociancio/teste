unit uControle_BL;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, ComCtrls, StdCtrls, Buttons, Mask, Db, DBTables;


Type
  TOperacao = (tInsert, tUpdate);

type
  TfrmControle_BL = class(TForm)
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
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    pnlNum_Processo_Pasta: TPanel;
    Label7: TLabel;
    edtProcessoMS2000: TMaskEdit;
    btnBuscar: TBitBtn;
    edtCliente: TEdit;
    edtNumMS: TEdit;
    Label8: TLabel;
    edtDDE: TEdit;
    edtRE: TEdit;
    qryBuscaProcesso: TQuery;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    edtNum_BL: TEdit;
    Label4: TLabel;
    edtUnidReceita: TEdit;
    Label5: TLabel;
    edtNavio: TEdit;
    Label6: TLabel;
    cbStatus: TComboBox;
    Label9: TLabel;
    edtDTVecto: TMaskEdit;
    qryExcluir: TQuery;
    qryInsert: TQuery;
    qryUpdate: TQuery;
    qryMain: TQuery;
    qryMainCodigo: TStringField;
    qryMainImportador: TStringField;
    qryMainDDE: TStringField;
    qryMainRE: TStringField;
    qryMainRazao_Social: TStringField;
    qryMainNome_Navio: TStringField;
    qryMainNum_BL: TStringField;
    qryMainStatus: TIntegerField;
    qryMainUnidade_Receita: TStringField;
    qryMainPK_Controle_BL: TAutoIncField;
    dtsStatus: TDataSource;
    qryMainDT_Vecto: TDateTimeField;
    procedure btnBuscarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure qryMainAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
    Operacao : TOperacao;
  public
    { Public declarations }
  end;

var
  frmControle_BL: TfrmControle_BL;

implementation

{$R *.DFM}

procedure TfrmControle_BL.btnBuscarClick(Sender: TObject);
begin
  If ( Length(Trim( edtProcessoMS2000.Text )) >= 8 ) Then Begin
    qryBuscaProcesso.Params[0].value := edtProcessoMS2000.Text;
    qryBuscaProcesso.Close;
    qryBuscaProcesso.Open;
    edtCliente.Clear;
    edtNumMS.Clear;
    edtDDE.Clear;
    edtRE.Clear;
    If ( Not qryBuscaProcesso.IsEmpty ) Then Begin
      edtNumMS.Text := qryBuscaProcesso.FieldByName( 'Codigo' ).asString;
      edtCliente.Text := qryBuscaProcesso.FieldByName( 'Razao_Social' ).asString;
      edtDDE.Text := qryBuscaProcesso.FieldByName( 'DDE' ).asString;
      //edtRE.Text := qryBuscaProcesso.FieldByName( 'RE' ).asString;
    end
    else
      Application.MessageBox('Não foi possível localizar o registro!','Informação', MB_OK + MB_ICONINFORMATION );
  end;
end;

procedure TfrmControle_BL.btnNovoClick(Sender: TObject);
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
  edtNumMS.Clear;
  edtCliente.Clear;
  edtProcessoMS2000.Clear;
  edtDDE.Clear;
  edtRE.Clear;
  edtNum_BL.Clear;
  edtNavio.Clear;
  edtUnidReceita.Clear;
  edtDTVecto.Clear;
  cbStatus.ItemIndex := -1;
  //--
  edtProcessoMS2000.SetFocus;
end;

procedure TfrmControle_BL.btnAlterarClick(Sender: TObject);
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
  pnlNum_Processo_Pasta.Enabled := False;
  //--
end;

procedure TfrmControle_BL.btnExcluirClick(Sender: TObject);
begin
  If ( Not qryMain.IsEmpty ) Then Begin
    If ( MessageDlg('Confirma exclusão?', mtConfirmation, [mbYes, mbNo], 0) = mrYes ) Then Begin
      try
        qryExcluir.Close;
        qryExcluir.SQL.Clear;
        qryExcluir.SQL.Text := Format('update Controle_BL set Excluido = 1 where PK_Controle_BL = %d',
                                      [ qryMainPK_Controle_BL.AsInteger ]);
        qryExcluir.ExecSQL;
        qryMain.Close;
        qryMain.Open;
        If ( qryMain.Eof ) Then Begin
          edtNumMS.Clear;
          edtCliente.Clear;
          edtProcessoMS2000.Clear;
          edtDDE.Clear;
          edtRE.Clear;
          edtNum_BL.Clear;
          edtNavio.Clear;
          edtUnidReceita.Clear;
          edtDTVecto.Clear;
          cbStatus.ItemIndex := -1;
        end;
      except
        Application.MessageBox('Ocorreu um erro na exclusão. Tente excluir novamente','Erro', MB_OK + MB_ICONERROR );
      end;
    end;
  end
  else
  Application.MessageBox('Não existe registro para excluir!','Informação', MB_OK + MB_ICONINFORMATION );

end;

procedure TfrmControle_BL.btnGravarClick(Sender: TObject);
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

   If ( Trim( edtNum_BL.Text ) = '' ) Then Begin
     GoOn := False;
     Vazio := True;
     Application.MessageBox('Campo Nº BL não pode ser vazio','Aviso', MB_OK + MB_ICONWARNING );
   end
   else
   If ( Trim( edtNavio.Text ) = '' ) Then Begin
     GoOn := False;
     Vazio := True;
     Application.MessageBox('Campo Navio não pode ser vazio','Aviso', MB_OK + MB_ICONWARNING );
   end
   else
   If ( Trim( edtUnidReceita.Text ) = '' ) Then Begin
     GoOn := False;
     Vazio := True;
     Application.MessageBox('Campo Unidade Receita não pode ser vazio','Aviso', MB_OK + MB_ICONWARNING );
   end
   else
   If ( Trim( edtDTVecto.Text ) = '' ) Or
     ( edtDTVecto.Text ='  /  /    ' ) Then Begin
     GoOn := False;
     Vazio := True;
     Application.MessageBox('Campo data vencimento não pode ser vazio','Aviso', MB_OK + MB_ICONWARNING );
   end
   else
   If ( Trim( cbStatus.Text ) = '' ) Then Begin
     GoOn := False;
     Vazio := True;
     Application.MessageBox('Campo Status não pode ser vazio','Aviso', MB_OK + MB_ICONWARNING );
   end;

   try
     If ( GoOn ) Then Begin
       case Operacao of
         tInsert: Begin
           try
             qryInsert.ParamByName( 'FK_Processo' ).Value := edtNumMS.Text;
             qryInsert.ParamByName( 'Nome_Navio' ).Value := edtNavio.Text;
             qryInsert.ParamByName( 'Unidade_Receita' ).Value := edtUnidReceita.Text;
             If ( edtDTVecto.Text <> '  /  /    ' ) Then
               qryInsert.ParamByName( 'DT_Vecto' ).AsDateTime := StrToDateTime( edtDTVecto.Text )
             else
               qryInsert.ParamByName( 'DT_Vecto' ).Value := NULL;
             qryInsert.ParamByName( 'Num_BL' ).Value := edtNum_BL.Text;
             qryInsert.ParamByName( 'RE' ).Value := edtRE.Text;
             qryInsert.ParamByName( 'Status' ).Value := cbStatus.ItemIndex;
             qryInsert.ExecSQL;
             GoOn := True;
           except
             GoOn := False;
           end;
         end;
         tUpdate: Begin
           try
             qryUpdate.ParamByName( 'FK_Processo' ).Value := edtNumMS.Text;
             qryUpdate.ParamByName( 'Nome_Navio' ).Value := edtNavio.Text;
             qryUpdate.ParamByName( 'Unidade_Receita' ).Value := edtUnidReceita.Text;
             If ( edtDTVecto.Text <> '  /  /    ' ) Then
               qryUpdate.ParamByName( 'DT_Vecto' ).AsDateTime := StrToDateTime( edtDTVecto.Text )
             else
               qryUpdate.ParamByName( 'DT_Vecto' ).Value := NULL;
             qryUpdate.ParamByName( 'Num_BL' ).Value := edtNum_BL.Text;
             qryUpdate.ParamByName( 'RE' ).Value := edtRE.Text;
             qryUpdate.ParamByName( 'Status' ).Value := cbStatus.ItemIndex;
             qryUpdate.ParamByName( 'PK_Controle_BL' ).Value := qryMainPK_Controle_BL.AsInteger;
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
       qryMain.Close;
       qryMain.Open;
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
        edtProcessoMS2000.SetFocus;
     end;
   end;
end;


procedure TfrmControle_BL.qryMainAfterScroll(DataSet: TDataSet);
begin
  edtNumMS.Text := qryMainCodigo.AsString;
  edtCliente.Text := qryMainRazao_Social.AsString;
  edtDDE.Text := qryMainDDE.AsString;
  edtRE.Text := qryMainRE.AsString;
  edtNum_BL.Text := qryMainNum_BL.AsString;
  edtNavio.Text := qryMainNome_Navio.AsString;
  edtUnidReceita.Text := qryMainUnidade_Receita.AsString;
  // Datas
  If ( qryMainDT_Vecto.AsDateTime = 0 ) Then
    edtDTVecto.Clear
  else
    edtDTVecto.Text := FormatDateTime('dd/mm/yyyy', qryMainDT_Vecto.AsDateTime );
  //--
  cbStatus.ItemIndex := qryMainStatus.AsInteger;
end;

procedure TfrmControle_BL.FormShow(Sender: TObject);
begin
  qryMain.Close;
  qryMain.Open;
end;

procedure TfrmControle_BL.btnCancelarClick(Sender: TObject);
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
   pnlNum_Processo_Pasta.Enabled := False;
   //--
   qryMain.Close;
   qryMain.Open;
end;

end.
