unit uControle_TR;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Mask, Grids, DBGrids, ExtCtrls, ComCtrls, Buttons;

Type
  TOperacao = (tInsert, tUpdate);

type
  TfrmControleTR = class(TForm)
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
    Label8: TLabel;
    pnlNum_Processo_Pasta: TPanel;
    Label7: TLabel;
    btnBuscar: TBitBtn;
    edtCliente: TEdit;
    edtNumMS: TEdit;
    edtDI: TEdit;
    edtTR: TEdit;
    qryBuscaProcesso: TQuery;
    qryExcluir: TQuery;
    qryInsert: TQuery;
    qryUpdate: TQuery;
    qryMain: TQuery;
    dtsStatus: TDataSource;
    Label4: TLabel;
    edtNumReceita: TEdit;
    Label5: TLabel;
    edtEmbarcacao: TEdit;
    edtDTVecto: TMaskEdit;
    Label6: TLabel;
    edtIN: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    edtDespacho: TEdit;
    qryBuscaProcessoImportador: TStringField;
    qryBuscaProcessoProcesso: TStringField;
    qryBuscaProcessoSub_Tipo_Doc: TStringField;
    qryBuscaProcessoNum_TR: TStringField;
    qryBuscaProcessoDT_TR_Inicial: TDateTimeField;
    qryBuscaProcessoDT_TR_Vecto: TDateTimeField;
    qryBuscaProcessoCodigo_Local: TStringField;
    qryBuscaProcessoNome_Local: TStringField;
    qryBuscaProcessoNome_Importador: TStringField;
    qryBuscaProcessoDI: TStringField;
    qryBuscaProcessoProcesso_Receita: TStringField;
    qryBuscaProcessoURF_Despacho: TStringField;
    qryBuscaProcessoIntr_Normativa: TStringField;
    qryBuscaProcessoStatus: TStringField;
    Panel1: TPanel;
    Label11: TLabel;
    edtStatus: TEdit;
    qryBuscaProcessoDesc_Status: TStringField;
    qryBuscaProcessoArquivo: TStringField;
    qryMainProcesso: TStringField;
    qryMainNum_TR: TStringField;
    qryMainDT_TR_Vecto: TDateTimeField;
    qryMainNome_Importador: TStringField;
    qryMainProcesso_Receita: TStringField;
    qryMainIntr_Normativa: TStringField;
    qryMainDesc_Status: TStringField;
    qryMainIN: TStringField;
    qryMainDI: TStringField;
    qryMainEmbarcacao: TStringField;
    qryMainDespacho: TStringField;
    qryMainPK_TR: TAutoIncField;
    Label12: TLabel;
    edtDTProrrogacao: TMaskEdit;
    qryBuscaProcessoData_renovacao: TDateTimeField;
    qryMainData_renovacao: TDateTimeField;
    qryVerificaMS: TQuery;
    pnlLocalizar: TPanel;
    Label13: TLabel;
    edtBusca: TMaskEdit;
    edtProcessoMS2000: TMaskEdit;
    procedure btnBuscarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryMainAfterScroll(DataSet: TDataSet);
    procedure edtBuscaChange(Sender: TObject);
  private
    { Private declarations }
    Operacao : TOperacao;
  public
    { Public declarations }
  end;

var
  frmControleTR: TfrmControleTR;

implementation

{$R *.DFM}

procedure TfrmControleTR.btnBuscarClick(Sender: TObject);
begin
  If ( Length(Trim( edtProcessoMS2000.Text )) >= 8 ) Then Begin
    qryVerificaMS.Params[0].Value := edtProcessoMS2000.Text;
    qryVerificaMS.Close;
    qryVerificaMS.Open;
    if ( qryVerificaMS.IsEmpty ) then Begin
      qryBuscaProcesso.Params[0].value := edtProcessoMS2000.Text;
      qryBuscaProcesso.Close;
      qryBuscaProcesso.Open;
      edtCliente.Clear;
      edtNumMS.Clear;
      edtDI.Clear;
      edtTR.Clear;
      edtNumReceita.Clear;
      edtEmbarcacao.Clear;
      edtDTVecto.Clear;
      edtIN.Clear;
      edtDespacho.Clear;
      edtStatus.Clear;
      edtDTProrrogacao.Clear;
      If ( Not qryBuscaProcesso.IsEmpty ) Then Begin
        edtNumMS.Text := qryBuscaProcesso.FieldByName( 'Processo' ).asString;
        edtCliente.Text := qryBuscaProcesso.FieldByName( 'Nome_Importador' ).asString;
        edtNumReceita.Text := qryBuscaProcesso.FieldByName( 'Processo_Receita' ).asString;
        edtEmbarcacao.Text := qryBuscaProcesso.FieldByName( 'Nome_Local' ).asString;
        edtTR.Text := qryBuscaProcesso.FieldByName( 'Num_TR' ).asString;
        edtDTVecto.Text := qryBuscaProcesso.FieldByName( 'DT_TR_Vecto' ).asString;
        edtDI.Text := qryBuscaProcesso.FieldByName( 'DI' ).asString;
        edtIN.Text := qryBuscaProcesso.FieldByName( 'Intr_Normativa' ).asString;
        edtDespacho.Text := qryBuscaProcesso.FieldByName( 'URF_Despacho' ).asString;
        edtStatus.Text := qryBuscaProcesso.FieldByName( 'Desc_Status' ).asString;
        edtDTProrrogacao.Text := qryBuscaProcesso.FieldByName( 'Data_renovacao' ).asString;
      end
      else
        Application.MessageBox('Não foi possível localizar o registro!','Informação', MB_OK + MB_ICONINFORMATION );
    end
    Else Begin
      Application.MessageBox(Pchar('O número de MS: '+ edtProcessoMS2000.Text + ' já está cadastrado.') ,'Informação', MB_OK + MB_ICONWARNING );
      btnCancelar.Click;
    end;
  end;
end;

procedure TfrmControleTR.btnNovoClick(Sender: TObject);
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
  pnlNum_Processo_Pasta.Enabled := True;
  gridMain.Enabled := True;
  edtCliente.Clear;
  edtNumMS.Clear;
  edtDI.Clear;
  edtTR.Clear;
  edtNumReceita.Clear;
  edtEmbarcacao.Clear;
  edtDTVecto.Clear;
  edtIN.Clear;
  edtDespacho.Clear;
  edtStatus.Clear;
  edtDTProrrogacao.Clear;
  //--
  edtProcessoMS2000.SetFocus;
end;

procedure TfrmControleTR.btnAlterarClick(Sender: TObject);
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
  pnlNum_Processo_Pasta.Enabled := True;
  gridMain.Enabled := False;
  pnlNum_Processo_Pasta.Enabled := False;
  //--
end;

procedure TfrmControleTR.btnGravarClick(Sender: TObject);
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
   gridMain.Enabled := True;
   pnlNum_Processo_Pasta.Enabled := False;
   pnlText.Enabled := False;
   ActiveControl := btnNovo;
   //--

   If ( Trim( edtNumMS.Text ) = '' ) Then Begin
     GoOn := False;
     Vazio := True;
     Application.MessageBox('Campo Nº MS2000 não pode ser vazio','Aviso', MB_OK + MB_ICONWARNING );
   end
   else
   If ( edtCliente.Text = '' ) Then Begin
     GoOn := False;
     Vazio := True;
     Application.MessageBox('Campo Cliente não pode ser vazio','Aviso', MB_OK + MB_ICONWARNING );
   end;

   GoOn := True;
   Vazio := False;

   try
     If ( GoOn ) Then Begin
       case Operacao of
         tInsert: Begin
           try
             qryInsert.ParamByName( 'FK_Importador' ).Value := qryBuscaProcessoImportador.Value;
             qryInsert.ParamByName( 'Embarcacao' ).Value := qryBuscaProcessoNome_Local.Value;
             qryInsert.ParamByName( 'FK_Processo' ).Value := qryBuscaProcessoProcesso.Value;
             qryInsert.ParamByName( 'DI' ).Value := edtDI.Text;
             qryInsert.ParamByName( 'IN' ).Value := edtIN.Text;
             qryInsert.ParamByName( 'Despacho' ).Value := edtDespacho.Text;
             qryInsert.ParamByName( 'FK_Documento_Arquivo' ).Value := qryBuscaProcessoArquivo.Value;
             qryInsert.ExecSQL;
             GoOn := True;
           except
             GoOn := False;
           end;
         end;
         tUpdate: Begin
           try
             qryUpdate.ParamByName( 'Embarcacao' ).Value := edtEmbarcacao.Text;
             qryUpdate.ParamByName( 'DI' ).Value := edtDI.Text;
             qryUpdate.ParamByName( 'IN' ).Value := edtIN.Text;
             qryUpdate.ParamByName( 'Despacho' ).Value := edtDespacho.Text;
             qryUpdate.ParamByName( 'PK_TR' ).Value := qryMainPK_TR.Value;
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
        gridMain.Enabled := True;
        pnlNum_Processo_Pasta.Enabled := True;
        pnlText.Enabled := True;
        //--
        edtProcessoMS2000.SetFocus;
     end;
   end;

end;

procedure TfrmControleTR.btnCancelarClick(Sender: TObject);
begin
   // Controles
   btnNovo.Enabled := True;
   btnAlterar.Enabled := True;
   btnExcluir.Enabled := True;
   btnFechar.Enabled := True;
   btnCancelar.Enabled := False;
   btnGravar.Enabled := False;
   gridMain.Enabled := True;
   pnlNum_Processo_Pasta.Enabled := False;
   pnlText.Enabled := False;
   ActiveControl := btnNovo;
   edtProcessoMS2000.Clear;
   pnlNum_Processo_Pasta.Enabled := False;
   //--
end;

procedure TfrmControleTR.btnExcluirClick(Sender: TObject);
begin
  If ( Not qryMain.IsEmpty ) Then Begin
    If ( MessageDlg('Confirma exclusão?', mtConfirmation, [mbYes, mbNo], 0) = mrYes ) Then Begin
      try
        qryExcluir.Close;
        qryExcluir.SQL.Clear;
        qryExcluir.SQL.Text := Format('update Controle_TR set Excluido = 1 where PK_TR = %d',
                                      [ qryMainPK_TR.AsInteger ]);
        qryExcluir.ExecSQL;
        qryMain.Close;
        qryMain.Open;
        If ( qryMain.Eof ) Then Begin
          edtCliente.Clear;
          edtNumMS.Clear;
          edtDI.Clear;
          edtTR.Clear;
          edtNumReceita.Clear;
          edtEmbarcacao.Clear;
          edtDTVecto.Clear;
          edtIN.Clear;
          edtDespacho.Clear;
          edtStatus.Clear;
          edtDTProrrogacao.Clear;
        end;
      except
        Application.MessageBox('Ocorreu um erro na exclusão. Tente excluir novamente','Erro', MB_OK + MB_ICONERROR );
      end;
    end;
  end
  else
  Application.MessageBox('Não existe registro para excluir!','Informação', MB_OK + MB_ICONINFORMATION );

end;

procedure TfrmControleTR.FormShow(Sender: TObject);
begin
  qryMain.Close;
  qryMain.Open;
end;

procedure TfrmControleTR.qryMainAfterScroll(DataSet: TDataSet);
begin
  edtCliente.Text := qryMainNome_Importador.Value;
  edtNumMS.Text := qryMainProcesso.Value;
  edtDI.Text := qryMainDI.Value;
  edtTR.Text := qryMainNum_TR.Value;
  edtNumReceita.Text := qryMainProcesso_Receita.Value;
  edtEmbarcacao.Text := qryMainEmbarcacao.Value;
  If ( qryMainDT_TR_Vecto.AsDateTime = 0 ) Then
    edtDTVecto.Clear
  else
    edtDTVecto.Text := FormatDateTime('dd/mm/yyyy', qryMainDT_TR_Vecto.AsDateTime );
  If ( qryMainData_renovacao.AsDateTime = 0 ) Then
    edtDTProrrogacao.Clear
  else
    edtDTProrrogacao.Text := FormatDateTime('dd/mm/yyyy', qryMainData_renovacao.AsDateTime );
  edtIN.Text := qryMainIN.Value;
  edtDespacho.Text := qryMainDespacho.Value;
  edtStatus.Text := qryMainDesc_Status.Value;
end;

procedure TfrmControleTR.edtBuscaChange(Sender: TObject);
begin
  qryMain.Locate('Processo', edtBusca.Text, [loPartialKey, loCaseInsensitive]);
end;

end.
