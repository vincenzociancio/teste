unit uControle_ADE_Deferido;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, ComCtrls, Db, DBTables,
  DBCtrls, Mask, FileCtrl, Shellapi, MailMS2000, ToolWin, ImgList;

Type
  TOperacao = (tInsert, tUpdate);

type
  TfrmControle_ADE_Deferido = class(TForm)
    StatusBar1: TStatusBar;
    sbControle: TScrollBox;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnFechar: TBitBtn;
    pnlMain: TPanel;
    gridMain: TDBGrid;
    pnlText: TPanel;
    qryExcluir: TQuery;
    qryADE_Deferido: TQuery;
    edtCliente: TDBLookupComboBox;
    Label1: TLabel;
    dtsImportador: TDataSource;
    edtCNPJ: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dtsADE_Deferido: TDataSource;
    qryLocais: TQuery;
    qryInsert: TQuery;
    qryUpdate: TQuery;
    qryImportador: TQuery;
    edtDT_VECTO_ADE: TMaskEdit;
    dtsLocais: TDataSource;
    edtEmbarcacao: TEdit;
    btnBuscarLocal: TBitBtn;
    pnlLocalizar: TPanel;
    Label12: TLabel;
    edtLocalizar: TEdit;
    edtOp: TComboBox;
    edtNumExecutivo: TEdit;
    Label5: TLabel;
    edtDTPublic: TMaskEdit;
    Label6: TLabel;
    OP: TOpenDialog;
    btnAbrir: TBitBtn;
    qryADE_DeferidoPK_ADED: TAutoIncField;
    qryADE_DeferidoFK_Importador: TStringField;
    qryADE_DeferidoEmbarcacao: TStringField;
    qryADE_DeferidoDT_VECTO_ADE: TDateTimeField;
    qryADE_DeferidoRazao_Social: TStringField;
    qryADE_DeferidoDT_Publicacao: TDateTimeField;
    qryADE_DeferidoNum_ADE_Executivo: TStringField;
    qryADE_DeferidoPath_PDF: TStringField;
    btnEmail: TBitBtn;
    qryEmailAuto: TQuery;
    pnlAnexo: TPanel;
    StaticText1: TStaticText;
    gridAnexo: TDBGrid;
    qryAnexos: TQuery;
    qryAnexosDescricao: TStringField;
    qryAnexosCaminho: TStringField;
    dtsAnexos: TDataSource;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    img: TImageList;
    qryAnexosPK_Anexo: TAutoIncField;
    qryAnexosFK_ADED: TIntegerField;
    pnlEmbarcacao: TPanel;
    Panel1: TPanel;
    btnCancelarEmb: TBitBtn;
    btnConfirmar: TBitBtn;
    DBGrid1: TDBGrid;
    pnlNovoAnexo: TPanel;
    edtDescricao: TEdit;
    edtCaminho: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    StaticText2: TStaticText;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    qryInsertAnexo: TQuery;
    ToolButton3: TToolButton;
    qryUpdateAnexo: TQuery;
    btnFinalizar: TBitBtn;
    qryADE_DeferidoFinalizado: TBooleanField;
    pnlStatus: TPanel;
    chkVencido: TCheckBox;
    qryADE_DeferidoVencido: TBooleanField;
    edtContrato: TEdit;
    edtProcessoMS2000: TMaskEdit;
    Label7: TLabel;
    Label10: TLabel;
    qryADE_DeferidoNum_Contrato: TStringField;
    qryADE_DeferidoNum_Processo: TStringField;
    btnRelatorio: TBitBtn;
    btnOpen: TBitBtn;
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edtClienteCloseUp(Sender: TObject);
    procedure qryADE_DeferidoAfterScroll(DataSet: TDataSet);
    procedure btnCancelarEmbClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnBuscarLocalClick(Sender: TObject);
    procedure edtOpChange(Sender: TObject);
    procedure edtLocalizarChange(Sender: TObject);
    procedure gridMainTitleClick(Column: TColumn);
    procedure btnAbrirClick(Sender: TObject);
    procedure btnEmailClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure qryAnexosAfterScroll(DataSet: TDataSet);
    procedure btnFinalizarClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
  private
    { Private declarations }
    Operacao : TOperacao;
    FiltroOpcao : String;
    Ordem : String;
    PathAnterior : String;
    procedure HDBotao( status : Boolean );
  public
    { Public declarations }
  end;

var
  frmControle_ADE_Deferido: TfrmControle_ADE_Deferido;

implementation

uses uControle_ADE_Deferido_Email, U_MSCOMEX, uFiltro_ADE_Relatorio;

{$R *.DFM}

procedure TfrmControle_ADE_Deferido.btnNovoClick(Sender: TObject);
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
  edtCliente.KeyValue := -1;
  edtCNPJ.Clear;
  edtEmbarcacao.Clear;
  edtDT_VECTO_ADE.Clear;
  edtDTPublic.Clear;
  edtNumExecutivo.Clear;
  edtContrato.Clear;
  edtProcessoMS2000.Clear;
  //--
  ActiveControl := edtCliente;
  qryAnexos.Close;
  // botoes anexo
  ToolButton1.Enabled := False;
  ToolButton2.Enabled := False;
  ToolButton3.Enabled := False;
  //--
end;

procedure TfrmControle_ADE_Deferido.btnAlterarClick(Sender: TObject);
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
   // buscado embarcações
    qryLocais.Params[0].Value := qryImportador.FieldByName( 'Codigo' ).AsString;
    qryLocais.Close;
    qryLocais.Open;
   //--

end;

procedure TfrmControle_ADE_Deferido.btnExcluirClick(Sender: TObject);
begin
  If ( Not qryADE_Deferido.IsEmpty ) Then Begin
    If ( MessageDlg('Confirma exclusão?', mtConfirmation, [mbYes, mbNo], 0) = mrYes ) Then Begin
      try
        qryExcluir.Close;
        qryExcluir.SQL.Clear;
        qryExcluir.SQL.Text := Format('update Controle_ADE_Deferido set Excluido = 1 where PK_ADED = %d',
                                      [ qryADE_Deferido.FieldByName( 'PK_ADED' ).asInteger ]);
        qryExcluir.ExecSQL;
        qryADE_Deferido.Close;
        qryADE_Deferido.Open;
        If ( qryADE_Deferido.Eof ) Then Begin
          edtCliente.KeyValue := -1;
          edtCNPJ.Clear;
          edtEmbarcacao.Clear;
          edtDT_VECTO_ADE.Clear;
          edtDTPublic.Clear;
          edtNumExecutivo.Clear;
          edtContrato.Clear;
          edtProcessoMS2000.Clear;
        end;
      except
        Application.MessageBox('Ocorreu um erro na exclusão. Tente excluir novamente','Erro', MB_OK + MB_ICONERROR );
      end;
    end;
  end
  else
  Application.MessageBox('Não existe registro para excluir!','Informação', MB_OK + MB_ICONINFORMATION );
end;

procedure TfrmControle_ADE_Deferido.FormShow(Sender: TObject);
begin
  qryImportador.Close;
  qryImportador.Open;
  //
  qryADE_Deferido.Close;
  qryADE_Deferido.Open;
  //
  qryAnexos.Close;
  qryAnexos.Open;
  //
  edtOp.ItemIndex := 0;
  //
  FiltroOpcao := 'Razao_Social';
  //
  Ordem := ' ASC';
  //
  btnFinalizar.Enabled := ( v_usuario = 'FlLAVIA' ) Or ( v_usuario = 'ESOUZA' );
end;

procedure TfrmControle_ADE_Deferido.btnCancelarClick(Sender: TObject);
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
   qryADE_Deferido.Close;
   qryADE_Deferido.Open;
   qryAnexos.Open;
   // botoes anexo
   ToolButton1.Enabled := True;
   ToolButton2.Enabled := True;
   ToolButton3.Enabled := True;
   //--
end;

procedure TfrmControle_ADE_Deferido.btnGravarClick(Sender: TObject);
  var
    GoOn,
    Vazio : Boolean;
    Origem,
    Destino: string;
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

   If ( Trim( edtCliente.Text ) = '' ) Then Begin
     GoOn := False;
     Vazio := True;
     Application.MessageBox('Campo cliente não pode ser vazio','Aviso', MB_OK + MB_ICONWARNING );
     //edtProcessoReceita.SetFocus;
   end
   else
   If ( edtEmbarcacao.Text = '' ) Then Begin
     GoOn := False;
     Vazio := True;
     Application.MessageBox('Campo Embarcação não pode ser vazio','Aviso', MB_OK + MB_ICONWARNING );
     //edtDataAbertura.SetFocus;
   end
   else
   If ( edtDT_VECTO_ADE.Text = '' ) Or
     ( edtDT_VECTO_ADE.Text ='  /  /    ' ) Then Begin
     GoOn := False;
     Vazio := True;
     Application.MessageBox('Campo data não pode ser vazio','Aviso', MB_OK + MB_ICONWARNING );
     //edtStatus.SetFocus;
   end;
   {
   If ( Trim( edtPath.Text )<>'' ) Then Begin
     Origem := OP.FileName;
     Destino := edtPath.Text;
     If ( Not DirectoryExists( ExtractFilePath( Destino ) ) ) Then
       ForceDirectories( ExtractFilePath( Destino ) );
     If ( FileExists( Destino ) ) Then
       DeleteFile( Destino );
     If Not CopyFile(PChar(Origem), PChar(Destino), true) then Begin
       ShowMessage('Erro ao copiar ' + Origem + ' para ' + Destino);
       GoOn := False;
     end
     else
       GoOn := True;
   end;
   }
   try
     If ( GoOn ) Then Begin
       case Operacao of
         tInsert: Begin
           try
             qryInsert.ParamByName( 'FK_Importador' ).Value := qryImportador.FieldValues[ 'Codigo' ];
             qryInsert.ParamByName( 'Embarcacao' ).Value := edtEmbarcacao.Text;
             If ( edtDT_VECTO_ADE.Text <> '  /  /    ' ) Then
               qryInsert.ParamByName( 'DT_VECTO_ADE' ).AsDateTime := StrToDateTime( edtDT_VECTO_ADE.Text )
             else
               qryInsert.ParamByName( 'DT_VECTO_ADE' ).Value := NULL;
             If ( edtDTPublic.Text <> '  /  /    ' ) Then
               qryInsert.ParamByName( 'DT_Publicacao' ).AsDateTime := StrToDateTime( edtDTPublic.Text )
             else
               qryInsert.ParamByName( 'DT_Publicacao' ).Value := NULL;
             qryInsert.ParamByName( 'Num_ADE_Executivo' ).Value := edtNumExecutivo.Text;
             if ( chkVencido.Checked ) then
               qryInsert.ParamByName( 'Vencido' ).Value := 1
             else
               qryInsert.ParamByName( 'Vencido' ).Value := 0;

             {*** eduardo.souza 27/02/2012 - Solicitado por Flávia ***}
             If ( edtProcessoMS2000.Text <> '     /  ' ) Then
               qryInsert.ParamByName( 'Num_Processo' ).AsString := edtProcessoMS2000.Text
             else
               qryInsert.ParamByName( 'Num_Processo' ).AsString := StringReplace(trim(edtProcessoMS2000.Text),'/','',[]);
             qryInsert.ParamByName( 'Num_Contrato' ).AsString := edtContrato.Text;
             {*** ---- ***}

             qryInsert.ExecSQL;
             GoOn := True;
           except
             GoOn := False;
           end;
         end;
         tUpdate: Begin
           try
             qryUpdate.ParamByName( 'FK_Importador' ).Value := qryImportador.FieldValues[ 'Codigo' ];
             qryUpdate.ParamByName( 'Embarcacao' ).value := edtEmbarcacao.Text;
             If ( edtDT_VECTO_ADE.Text <> '  /  /    ' ) Then
               qryUpdate.ParamByName( 'DT_VECTO_ADE' ).AsDateTime := StrToDateTime( edtDT_VECTO_ADE.Text )
             else
               qryUpdate.ParamByName( 'DT_VECTO_ADE' ).Value := NULL;
             If ( edtDTPublic.Text <> '  /  /    ' ) Then
               qryUpdate.ParamByName( 'DT_Publicacao' ).AsDateTime := StrToDateTime( edtDTPublic.Text )
             else
               qryUpdate.ParamByName( 'DT_Publicacao' ).Value := NULL;
             qryUpdate.ParamByName( 'Num_ADE_Executivo' ).Value := edtNumExecutivo.Text;
             qryUpdate.ParamByName( 'PK_ADED' ).value := qryADE_Deferido.FieldValues[ 'PK_ADED' ];
             if ( chkVencido.Checked ) then
               qryUpdate.ParamByName( 'Vencido' ).Value := 1
             else
               qryUpdate.ParamByName( 'Vencido' ).Value := 0;

             {*** eduardo.souza 27/02/2012 - Solicitado por Flávia ***}
             If ( edtProcessoMS2000.Text <> '     /  ' ) Then
               qryUpdate.ParamByName( 'Num_Processo' ).AsString := edtProcessoMS2000.Text
             else
               qryUpdate.ParamByName( 'Num_Processo' ).AsString := StringReplace(trim(edtProcessoMS2000.Text),'/','',[]);
             qryUpdate.ParamByName( 'Num_Contrato' ).AsString := edtContrato.Text;
             {*** ---- ***}
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
       qryADE_Deferido.Close;
       qryADE_Deferido.Open;
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
        ActiveControl := edtCliente;
     end;
     qryAnexos.Open;
     // botoes anexo
     ToolButton1.Enabled := True;
     ToolButton2.Enabled := True;
     ToolButton3.Enabled := True;
     //--
   end;
end;


procedure TfrmControle_ADE_Deferido.edtClienteCloseUp(Sender: TObject);
begin
  edtEmbarcacao.Clear;
  If ( Not qryImportador.IsEmpty ) Then Begin
    edtCNPJ.Text := qryImportador.fieldByName( 'CNPJ_CPF_COMPLETO' ).asString;
    qryLocais.Params[0].Value := qryImportador.FieldByName( 'Codigo' ).AsString;
    qryLocais.Close;
    qryLocais.Open;
    pnlEmbarcacao.Show;
  end;
end;

procedure TfrmControle_ADE_Deferido.qryADE_DeferidoAfterScroll(
  DataSet: TDataSet);
begin
  //btnAbrir.Enabled := Not( Trim( qryADE_DeferidoPath_PDF.AsString ) = '' );
  edtCliente.KeyValue := qryADE_Deferido.FieldValues[ 'FK_Importador' ];
  edtDT_VECTO_ADE.Text := FormatDateTime('dd/mm/yyyy', qryADE_Deferido.fieldByName( 'DT_VECTO_ADE' ).asDateTime );
  edtCNPJ.Text := qryImportador.fieldByName( 'CNPJ_CPF_COMPLETO' ).AsString;
  edtEmbarcacao.Text := qryADE_Deferido.FieldValues[ 'Embarcacao' ];
  edtNumExecutivo.Text := qryADE_Deferido.fieldByName( 'Num_ADE_Executivo' ).AsString;
  edtContrato.Text := qryADE_Deferido.fieldByName( 'Num_Contrato' ).AsString;
  edtProcessoMS2000.Text := qryADE_Deferido.fieldByName( 'Num_Processo' ).AsString; 
  If ( qryADE_Deferido.fieldByName( 'DT_Publicacao' ).asDateTime = 0 ) Then
    edtDTPublic.Clear
  else
    edtDTPublic.Text := FormatDateTime('dd/mm/yyyy', qryADE_Deferido.fieldByName( 'DT_Publicacao' ).asDateTime );

  if ( qryADE_DeferidoVencido.AsBoolean = False ) then
    chkVencido.Checked := false
  else
    chkVencido.Checked := true;
  // Finalizado?
  HDBotao( qryADE_DeferidoFinalizado.AsBoolean );
  btnOpen.Enabled := (v_usuario = 'FLAVIA') And (qryADE_DeferidoFinalizado.AsBoolean);
end;

procedure TfrmControle_ADE_Deferido.btnCancelarEmbClick(Sender: TObject);
begin
  pnlEmbarcacao.Hide;
end;

procedure TfrmControle_ADE_Deferido.btnConfirmarClick(Sender: TObject);
begin
  edtEmbarcacao.Text := qryLocais.fieldByName( 'Descricao' ).asString;
  pnlEmbarcacao.Hide;
end;

procedure TfrmControle_ADE_Deferido.btnBuscarLocalClick(Sender: TObject);
begin
  pnlEmbarcacao.Show;
end;

procedure TfrmControle_ADE_Deferido.edtOpChange(Sender: TObject);
begin
  If ( edtOp.ItemIndex = 0 ) Then Begin
    FiltroOpcao := 'Razao_Social';
  end
  else
    FiltroOpcao := 'Embarcacao';
end;

procedure TfrmControle_ADE_Deferido.edtLocalizarChange(Sender: TObject);
begin
  qryADE_Deferido.Locate(FiltroOpcao, edtLocalizar.Text, [loPartialKey, loCaseInsensitive]);
end;

procedure TfrmControle_ADE_Deferido.gridMainTitleClick(Column: TColumn);
  var
    Campo : string;
begin
  If ( Ordem = ' Desc' ) Then
    Ordem := ' ASC'
  else
    Ordem := ' Desc';
  Campo := Column.FieldName;
  Application.ProcessMessages;
  qryADE_Deferido.SQL.clear;
  qryADE_Deferido.SQL.Text := 'select Finalizado, PK_ADED, FK_Importador, Embarcacao, Cast( DT_VECTO_ADE as DateTime ) as "DT_VECTO_ADE", Razao_Social, '+
                              'Cast( DT_Publicacao as DateTime ) as "DT_Publicacao" ,Num_ADE_Executivo ,Path_PDF, Vencido, Num_Contrato, Num_Processo '+
                              'from Controle_ADE_Deferido left join Importadores on ( FK_Importador = Codigo) where Excluido <> 1 Order by '+ Campo + Ordem;
  If ( Not qryADE_Deferido.Prepared ) Then
    qryADE_Deferido.Prepare;
    qryADE_Deferido.Open;
end;

procedure TfrmControle_ADE_Deferido.btnAbrirClick(Sender: TObject);
  var
    Path :  String;
begin
  //Path := Trim( edtPath.Text );
  Path := Trim( qryAnexosCaminho.AsString );
  ShellExecute(Application.Handle, 'open', PChar( Path ), nil, nil, SW_SHOWMAXIMIZED);
end;

procedure TfrmControle_ADE_Deferido.btnEmailClick(Sender: TObject);
begin
  try
    frmControle_ADE_Deferido_Email := TfrmControle_ADE_Deferido_Email.Create( Self );
    frmControle_ADE_Deferido_Email.Importador := edtCliente.Text;
    frmControle_ADE_Deferido_Email.Cnpj := edtCNPJ.Text;
    frmControle_ADE_Deferido_Email.Embarcacao := edtEmbarcacao.Text;
    frmControle_ADE_Deferido_Email.DTPublicacao := edtDTPublic.Text;
    frmControle_ADE_Deferido_Email.Num_ADE_Exe := edtNumExecutivo.Text;
    frmControle_ADE_Deferido_Email.Anexo := qryAnexosCaminho.AsString;
    If ( frmControle_ADE_Deferido_Email.ShowModal = mrOk ) Then Begin
      qryEmailAuto.ParamByName( 'Programa' ).Value := 'MS';
      qryEmailAuto.ParamByName( 'Assunto' ).Value := frmControle_ADE_Deferido_Email.edtAssunto.Text;
      qryEmailAuto.ParamByName( 'Titulo' ).Value := 'MS';
      qryEmailAuto.ParamByName( 'De' ).Value := frmControle_ADE_Deferido_Email.edtDe.Text;
      qryEmailAuto.ParamByName( 'Para' ).Value := frmControle_ADE_Deferido_Email.edtPara.Text;
      qryEmailAuto.ParamByName( 'CC' ).Value := frmControle_ADE_Deferido_Email.edtCC.Text;
      qryEmailAuto.ParamByName( 'Body' ).Value := frmControle_ADE_Deferido_Email.mmText.Text;
      qryEmailAuto.ParamByName( 'Anexo' ).Value := frmControle_ADE_Deferido_Email.edtAnexo.Text;
      qryEmailAuto.ExecSQL;
    End
    Else
      Application.MessageBox( 'Não foi possível enviar o e-mail','Aviso', MB_OK + MB_ICONERROR );
  finally
    frmControle_ADE_Deferido_Email.Free;
  end;
end;

procedure TfrmControle_ADE_Deferido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  F_MSCOMEX.ControleADEDeferido1.Enabled := True;
  frmControle_ADE_Deferido := Nil;
  Action := caFree;
end;

procedure TfrmControle_ADE_Deferido.ToolButton2Click(Sender: TObject);
begin
  If ( Not qryAnexos.IsEmpty ) Then Begin
    If ( MessageDlg('Excluir registro selecionao?', mtWarning, [mbYes, mbNo], 0) = idYes ) Then Begin
      qryExcluir.Close;
      qryExcluir.SQL.Clear;
      qryExcluir.SQL.Text := format( 'update Controle_ADE_Deferido_Anexo set Excluido = 1 where PK_Anexo = %d', [qryAnexos.FieldByName( 'PK_Anexo' ).AsInteger]);
      qryExcluir.ExecSQL;
      qryAnexos.Close;
      qryAnexos.Open;
    End;
  End;
end;

procedure TfrmControle_ADE_Deferido.SpeedButton1Click(Sender: TObject);
begin
  If ( OP.Execute )Then Begin
    edtCaminho.Text := '\\msserver01\Sistemas\MS2000\pdf\'+ FormatDateTime('dd-mm-yyyy', Date )+'\'+ExtractFileName(OP.filename);
  end;
end;

procedure TfrmControle_ADE_Deferido.ToolButton1Click(Sender: TObject);
begin
  Operacao := tInsert;
  StaticText2.Caption := 'Inclusão de novo anexo';
  pnlNovoAnexo.Show;
end;

procedure TfrmControle_ADE_Deferido.BitBtn2Click(Sender: TObject);
begin
 pnlNovoAnexo.Hide;
end;

procedure TfrmControle_ADE_Deferido.BitBtn1Click(Sender: TObject);
  var
    Origem,
    Destino: string;
begin
  If ( Trim( edtDescricao.Text ) = '' ) Then Begin
   Application.MessageBox('Campo Descrição não pode ser vazio','Aviso', MB_OK + MB_ICONWARNING );
   Abort;
  end
  else
  If ( edtCaminho.Text = '' ) Then Begin
   Application.MessageBox('Campo caminho não pode ser vazio','Aviso', MB_OK + MB_ICONWARNING );
   Abort;
  end;

  If ( Operacao = tInsert ) Then Begin
    qryInsertAnexo.ParamByName( 'Descricao' ).Value := Trim( edtDescricao.Text );
    qryInsertAnexo.ParamByName( 'Caminho' ).Value := Trim( edtCaminho.Text );
    qryInsertAnexo.ParamByName( 'FK_ADED' ).Value := qryADE_DeferidoPK_ADED.AsInteger;
    qryInsertAnexo.ExecSQL;
  End
  Else Begin
    qryUpdateAnexo.ParamByName( 'Descricao' ).Value := Trim( edtDescricao.Text );
    qryUpdateAnexo.ParamByName( 'Caminho' ).Value := Trim( edtCaminho.Text );
    qryUpdateAnexo.ParamByName( 'PK_Anexo' ).Value := qryAnexosPK_Anexo.AsInteger;
    qryUpdateAnexo.ExecSQL;
  End;

  // Diretorio
  If ( Trim( edtCaminho.Text )<>'' ) Then Begin
   Origem := OP.FileName;
   Destino := edtCaminho.Text;
   If ( Not DirectoryExists( ExtractFilePath( Destino ) ) ) Then
     ForceDirectories( ExtractFilePath( Destino ) );
   If ( FileExists( Destino ) ) Then
     DeleteFile( Destino );
   If Not CopyFile(PChar(Origem), PChar(Destino), true) then Begin
     ShowMessage('Erro ao copiar ' + Origem + ' para ' + Destino);
   End
  End;
  //
  qryAnexos.Close;
  qryAnexos.Open;
  edtDescricao.Clear;
  edtCaminho.Clear;
  pnlNovoAnexo.Hide;
  gridAnexo.Enabled := True;
end;

procedure TfrmControle_ADE_Deferido.ToolButton3Click(Sender: TObject);
begin
  If ( Not qryAnexos.IsEmpty ) Then Begin
    Operacao := tUpdate;
    pnlNovoAnexo.Show;
    gridAnexo.Enabled := false;
    StaticText2.Caption := 'Edição de anexo';
    edtDescricao.Text := qryAnexosDescricao.AsString;
    edtCaminho.Text := qryAnexosCaminho.AsString;
  End;
end;

procedure TfrmControle_ADE_Deferido.qryAnexosAfterScroll(
  DataSet: TDataSet);
begin
  btnAbrir.Enabled := Not( Trim( qryAnexosCaminho.AsString ) = '' );
end;

procedure TfrmControle_ADE_Deferido.btnFinalizarClick(Sender: TObject);
begin
  If ( Not qryADE_DeferidoFinalizado.AsBoolean ) Then Begin
    if MessageBox(handle, 'Deseja realmente finalizar este registro?','Confirmação', MB_ICONQUESTION + MB_YESNO) = ID_YES then Begin
      qryUpdate.close;
      qryUpdate.SQL.Clear;
      qryUpdate.SQL.Text := format( 'update Controle_ADE_Deferido set Finalizado = 1 where PK_ADED=%d', [qryADE_DeferidoPK_ADED.AsInteger]);
      qryUpdate.ExecSQL;
      qryADE_Deferido.Close;
      qryADE_Deferido.Open;
    End;
  End;
end;

procedure TfrmControle_ADE_Deferido.HDBotao(status: Boolean);
begin
  If ( status ) Then Begin
    btnAlterar.Enabled := False;
    btnExcluir.Enabled := False;
    btnGravar.Enabled := False;
    ToolButton1.Enabled := False;
    ToolButton2.Enabled := False;
    ToolButton3.Enabled := False;
    btnFinalizar.Enabled := False;
    pnlStatus.Color := clRed;
    pnlStatus.Caption := 'Status: Finalizado';
    btnOpen.Enabled := true;
  End
  Else Begin
    btnAlterar.Enabled := True;
    btnExcluir.Enabled := True;
    btnGravar.Enabled := True;
    ToolButton1.Enabled := True;
    ToolButton2.Enabled := True;
    ToolButton3.Enabled := True;
    btnFinalizar.Enabled := True;
    pnlStatus.Color := clGreen;
    pnlStatus.Caption := 'Status: Aberto';
    btnOpen.Enabled := false;
  End;
end;

procedure TfrmControle_ADE_Deferido.SpeedButton2Click(Sender: TObject);
begin
  edtDescricao.Clear;
  edtCaminho.Clear;
end;

procedure TfrmControle_ADE_Deferido.btnRelatorioClick(Sender: TObject);
begin
  Application.CreateForm(TfrmFiltro_ADE_Relatorio , frmFiltro_ADE_Relatorio );
  frmFiltro_ADE_Relatorio.Show;
end;

procedure TfrmControle_ADE_Deferido.btnOpenClick(Sender: TObject);
begin
  If ( qryADE_DeferidoFinalizado.AsBoolean ) Then Begin
    if MessageBox(handle, 'Deseja realmente abrir este registro?','Confirmação', MB_ICONQUESTION + MB_YESNO) = ID_YES then Begin
      qryUpdate.close;
      qryUpdate.SQL.Clear;
      qryUpdate.SQL.Text := format( 'update Controle_ADE_Deferido set Finalizado = 0 where PK_ADED=%d', [qryADE_DeferidoPK_ADED.AsInteger]);
      qryUpdate.ExecSQL;
      qryADE_Deferido.Close;
      qryADE_Deferido.Open;
    End;
  End;
end;

end.
