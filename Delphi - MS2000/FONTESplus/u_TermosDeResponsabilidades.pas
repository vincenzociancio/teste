unit u_TermosDeResponsabilidades;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db, DBTables, DBCtrls, Grids, DBGrids;

type
  TfrmTermosDeResponsabilidade = class(TForm)
    pnlPrincipal: TPanel;
    btnNovo: TBitBtn;
    btnExcluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnFechar: TBitBtn;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    txtLocalizaImp: TEdit;
    btnLocalizar: TBitBtn;
    Label3: TLabel;
    DBGrid2: TDBGrid;
    Label4: TLabel;
    DBGrid3: TDBGrid;
    Label5: TLabel;
    qImportadores: TQuery;
    dsImportadores: TDataSource;
    qContrato: TQuery;
    dsContrato: TDataSource;
    qLocalInventario: TQuery;
    dsLocalInventario: TDataSource;
    qTermoDeResponsabilidade11111: TQuery;
    dsTermoDeResponsabilidade: TDataSource;
    qImportadoresCodigo: TStringField;
    qImportadoresRazao_Social: TStringField;
    qImportadoresCNPJ_CPF_COMPLETO: TStringField;
    qContratoContrato: TStringField;
    qContratoDescricao: TStringField;
    qContratoAtivo: TIntegerField;
    qLocalInventarioLocal: TStringField;
    qLocalInventarioDescricao: TStringField;
    qLocalInventarioAtivo: TIntegerField;
    qTermoDeResponsabilidade11111Termo: TMemoField;
    qEditaTermo: TQuery;
    qInsereTermo: TQuery;
    qExcluirTermo: TQuery;
    DBMemo1: TDBMemo;
    tbTermoDeResponsabilidade: TTable;
    tbTermoDeResponsabilidadeImportador: TStringField;
    tbTermoDeResponsabilidadeContrato: TStringField;
    tbTermoDeResponsabilidadeLocal: TStringField;
    tbTermoDeResponsabilidadeTermo: TMemoField;
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnLocalizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qImportadoresAfterScroll(DataSet: TDataSet);
    procedure qContratoAfterScroll(DataSet: TDataSet);
    procedure qLocalInventarioAfterScroll(DataSet: TDataSet);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTermosDeResponsabilidade: TfrmTermosDeResponsabilidade;
  vOper : Integer;

implementation

{$R *.DFM}

procedure TfrmTermosDeResponsabilidade.btnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TfrmTermosDeResponsabilidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := caFree;
     frmTermosDeResponsabilidade := nil;
//     f_mscomex.TermosDeResponsabilidade.Enabled := True;
//     logusu('A','Finalizou acesso ao Cadastro de Termo de Responsabilidade.');
end;

procedure TfrmTermosDeResponsabilidade.btnLocalizarClick(Sender: TObject);
begin
 if txtLocalizaImp.text <> '' then
 begin
     with qImportadores do
     begin
       Close;
       SQL.Clear;
       SQL.Add('SELECT Codigo, Razao_Social, CNPJ_CPF_COMPLETO ');
       SQL.Add('FROM Importadores WHERE Ativo = "1"');
       SQL.Add(' AND RAZAO_SOCIAL LIKE ''%'+txtLocalizaImp.text+'%'' ');
       Open;
     end;
 end;
 DBMemo1.Enabled:=False;
end;

procedure TfrmTermosDeResponsabilidade.FormShow(Sender: TObject);
begin
   txtLocalizaImp.SetFocus;
end;

procedure TfrmTermosDeResponsabilidade.qImportadoresAfterScroll(
  DataSet: TDataSet);
begin
     with qContrato do
     begin
         Close;
         ParamByName('pImportadores').AsString := qImportadoresCodigo.Value;
         Open;
     end;
     if qContrato.RecordCount < 1 then
     begin
             qLocalInventario.Close;
             tbTermoDeResponsabilidade.Close;
             btnNovo.Enabled:=False;
             btnAlterar.Enabled:=False;
             btnExcluir.Enabled:=False;
             btnGravar.Enabled:=False;
             btnCancelar.Enabled:=False;
     end;
     qContratoAfterScroll(qContrato);
 //    qLocalInventarioAfterScroll(qLocalInventario);
end;

procedure TfrmTermosDeResponsabilidade.qContratoAfterScroll(
  DataSet: TDataSet);
begin
    if qContrato.RecordCount > 0 then
    begin
      with qLocalInventario do
      begin
          Close;
          ParamByName('pImportador').AsString := qImportadoresCodigo.Value;
          ParamByName('pContrato').AsString := qContratoContrato.Value;
          Open;
         qLocalInventarioAfterScroll(qLocalInventario);          
      end;
    end  
    else
    begin
         qLocalInventario.Close;
         tbTermoDeResponsabilidade.Close;
         btnNovo.Enabled:=False;
         btnAlterar.Enabled:=False;
         btnExcluir.Enabled:=False;
         btnGravar.Enabled:=False;
         btnCancelar.Enabled:=False;
//         qLocalInventarioAfterScroll(qLocalInventario);
    end;

end;

procedure TfrmTermosDeResponsabilidade.qLocalInventarioAfterScroll(
  DataSet: TDataSet);
begin
        if qLocalInventario.RecordCount = 0 then
        begin
             tbTermoDeResponsabilidade.Close;
             btnNovo.Enabled:=False;
             btnAlterar.Enabled:=False;
             btnExcluir.Enabled:=False;
             btnGravar.Enabled:=False;
             btnCancelar.Enabled:=False;
             Exit;
        end;

        tbTermoDeResponsabilidade.Close;
        tbTermoDeResponsabilidade.Open;
        tbTermoDeResponsabilidade.Filter :=' Importador= '''+qImportadoresCodigo.Value+''' and Contrato = '''+qContratoContrato.Value+''' and Local = '''+qLocalInventarioLocal.Value+'''';
        tbTermoDeResponsabilidade.Filtered := True;

        if tbTermoDeResponsabilidade.RecordCount > 0 then btnNovo.Enabled:=False else btnNovo.Enabled:=True;
        btnAlterar.Enabled:=True;
        btnExcluir.Enabled:=True;

end;

procedure TfrmTermosDeResponsabilidade.btnNovoClick(Sender: TObject);
begin
    vOper := 1;
    tbTermoDeResponsabilidade.Append;
    btnAlterar.enabled := False;
    btnExcluir.enabled := False;
    btnGravar.enabled := True;
    btnCancelar.enabled := True;
    DBMemo1.Enabled := True;
    DBMemo1.setFocus;
end;

procedure TfrmTermosDeResponsabilidade.btnAlterarClick(Sender: TObject);
begin
    vOper :=2;
    DBMemo1.Enabled := True;    
    DBMemo1.SetFocus;
    btnNovo.enabled := False;
    btnExcluir.enabled := False;
    btnGravar.enabled := True;
    btnCancelar.enabled := True;
    tbTermoDeResponsabilidade.Edit;
end;

procedure TfrmTermosDeResponsabilidade.btnExcluirClick(Sender: TObject);
begin
    If MessageDlg('Confirma a exclusão deste Termo de Responsabilidade?', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
    begin
        btnCancelarClick(Sender);
        Exit;
    end
    else
    begin
       with qExcluirTermo do
       begin
          ParamByName('pImportador').asString :=qImportadoresCodigo.Value;
          ParamByName('pContrato').asString :=qContratoContrato.Value;
          ParamByName('pLocal').asString :=qLocalInventarioLocal.Value;
          ExecSQL;
       end;
    end;
    qLocalInventarioAfterScroll(qLocalInventario);
    btnCancelarClick(Sender);
    DBMemo1.Enabled := False;
end;

procedure TfrmTermosDeResponsabilidade.btnGravarClick(Sender: TObject);
begin
   Case vOper of
      1 : begin
           try
               tbTermoDeResponsabilidadeImportador.Value := qImportadoresCodigo.Value;
               tbTermoDeResponsabilidadeContrato.Value := qContratoContrato.Value;
               tbTermoDeResponsabilidadeLocal.Value := qLocalInventarioLocal.Value;
               tbTermoDeResponsabilidadeTermo.Value := DBMemo1.Text;
               tbTermoDeResponsabilidade.Post;
               ShowMessage('Termo gravado com sucesso.');
               btnNovo.Enabled:=False;
           Except
              On E: Exception Do
              begin
                 MessageDlg('Erro ao gravar o registro!'+#13#10+'MSG: '+E.message, mtError, [mbOk], 0);
                 btnCancelarClick(btnCancelar);
              end;
           End;
          end;

      2 : begin
            try
               tbTermoDeResponsabilidade.Post;
               MessageDlg('Alteração do termo feita com sucesso!', mtInformation,[mbOk], 0);
            Except
              on E: Exception do
              begin
                 MessageDlg('Erro ao editar o registro!'+#13#10+'MSG: '+E.message, mtError, [mbOk], 0);
                 btnCancelarClick(btnCancelar);
              end;
            end;
          end;
   end;
    btnNovo.enabled := False;
    btnAlterar.enabled := True;
    btnExcluir.enabled := True;
    btnGravar.enabled := False;
    btnCancelar.enabled := False;
    DBMemo1.Enabled := False;
end;

procedure TfrmTermosDeResponsabilidade.btnCancelarClick(Sender: TObject);
begin
    tbTermoDeResponsabilidade.Cancel;
{    btnNovo.enabled := True;
    btnAlterar.enabled := True;
    btnExcluir.enabled := True;
    btnGravar.enabled := False;
 }
   qLocalInventarioAfterScroll(qLocalInventario);
   btnGravar.enabled := False;
   btnCancelar.Enabled := False;
   DBMemo1.Enabled:=False;
end;

end.
