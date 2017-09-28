unit uControle_ADE_Fiscais;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, ComCtrls, Db, DBTables;

Type
  TOperacao = (tInsert, tUpdate);

type
  TfrmCadastroFiscais = class(TForm)
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
    Label1: TLabel;
    edtNome: TEdit;
    qryFiscais: TQuery;
    dtsFiscais: TDataSource;
    qryExcluir: TQuery;
    qryInsert: TQuery;
    qryUpdate: TQuery;
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryFiscaisAfterScroll(DataSet: TDataSet);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
    Operacao : TOperacao;
  public
    { Public declarations }
  end;


var
  frmCadastroFiscais: TfrmCadastroFiscais;

implementation

uses uControle_ADE_Andamento;

{$R *.DFM}

procedure TfrmCadastroFiscais.btnNovoClick(Sender: TObject);
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
  //--           
  edtNome.Text := '';
  ActiveControl := edtNome;

end;

procedure TfrmCadastroFiscais.btnAlterarClick(Sender: TObject);
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

procedure TfrmCadastroFiscais.btnGravarClick(Sender: TObject);
  var
    GoOn : Boolean;
begin
   // Controles
   frmControle_ADE_Andamento.AtualizarFiscais := False;
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
   try
     If ( Trim( edtNome.Text ) = '' ) Then Begin
       GoOn := False;
       Application.MessageBox('Campo nome não pode ser vazio','Aviso', MB_OK + MB_ICONWARNING );
       ActiveControl := edtNome;
     end
     else
       GoOn := True;

     If ( GoOn ) Then Begin
       case Operacao of
         tInsert: Begin
           try
             qryInsert.Close;
             qryInsert.SQL.Clear;
             qryInsert.SQL.Text := Format('insert into Controle_ADE_Fiscais (Nome) values(%s)',
                                          [ Trim(QuotedStr( edtNome.Text )) ]);
             qryInsert.ExecSQL;
             GoOn := True;
           except
             GoOn := False;
           end;
         end;
         tUpdate: Begin
           try
             qryUpdate.Close;
             qryUpdate.SQL.Clear;
             qryUpdate.SQL.Text := Format('update Controle_ADE_Fiscais set Nome = %s where PK_Fiscais = %d',
                                          [ Trim(QuotedStr( edtNome.Text )),
                                            qryFiscais.FieldByName( 'PK_Fiscais' ).asInteger ]);
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
       qryFiscais.Close;
       qryFiscais.Open;
       frmControle_ADE_Andamento.AtualizarFiscais := True;
     end
     else
     If ( Trim( edtNome.Text ) <> '' ) Then
       Application.MessageBox('Erro na gravação. Tente gravar novamente','Erro', MB_OK + MB_ICONERROR );
   end; 
end;

procedure TfrmCadastroFiscais.btnCancelarClick(Sender: TObject);
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

   qryFiscais.Close;
   qryFiscais.Open;
end;

procedure TfrmCadastroFiscais.FormShow(Sender: TObject);
begin
  // Abrir tabela Controle_ADE_Fiscais
  qryFiscais.Close;
  qryFiscais.Open;
  //--
end;

procedure TfrmCadastroFiscais.qryFiscaisAfterScroll(DataSet: TDataSet);
begin
  edtNome.Text := qryFiscais.FieldByName('Nome').asString;
end;

procedure TfrmCadastroFiscais.btnExcluirClick(Sender: TObject);
begin      
  If ( Not qryFiscais.IsEmpty ) Then Begin
    If ( MessageDlg('Confirma exclusão?', mtConfirmation, [mbYes, mbNo], 0) = mrYes ) Then Begin
      try
        qryExcluir.Close;
        qryExcluir.SQL.Clear;
        qryExcluir.SQL.Text := Format('update Controle_ADE_Fiscais set Excluido = 1 where PK_Fiscais = %d',
                                      [ qryFiscais.FieldByName( 'PK_Fiscais' ).asInteger ]);
        qryExcluir.ExecSQL;
        edtNome.Text := '';
        qryFiscais.Close;
        qryFiscais.Open;
        If ( qryFiscais.Eof ) Then
          edtNome.Text := '';
      except
        Application.MessageBox('Ocorreu um erro na exclusão. Tente excluir novamente','Erro', MB_OK + MB_ICONERROR );
      end;
    end;
  end
  else
  Application.MessageBox('Não existe registro para excluir!','Informação', MB_OK + MB_ICONINFORMATION );
end;

end.
