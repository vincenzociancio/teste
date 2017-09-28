unit u_controlenumerarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Grids, DBGrids, ExtCtrls, Buttons, Mask;

type
  Tf_controlenumerarios = class(TForm)
    p_itens: TPanel;
    DBGrid: TDBGrid;
    DataSource1: TDataSource;
    q_Numerarios: TQuery;
    GroupBox2: TGroupBox;
    edFiltroCliente: TEdit;
    Label3: TLabel;
    Label25: TLabel;
    edFiltroProcesso: TEdit;
    GroupBox1: TGroupBox;
    rbTodos: TRadioButton;
    rbRecebidos: TRadioButton;
    rbAguardandoRecebimento: TRadioButton;
    GroupBox3: TGroupBox;
    edFiltroValorDe: TMaskEdit;
    edFiltroValorAte: TMaskEdit;
    Label5: TLabel;
    Label6: TLabel;
    GroupBox4: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    GroupBox5: TGroupBox;
    Label2: TLabel;
    Label9: TLabel;
    b_imprimir: TBitBtn;
    edDataSolicitacaoDe: TMaskEdit;
    edDataSolicitacaoAte: TMaskEdit;
    edDataRecebimentoDe: TMaskEdit;
    edDataRecebimentoAte: TMaskEdit;
    Label1: TLabel;
    edFiltroValor: TMaskEdit;
    btnAlterar: TBitBtn;
    btnFechar: TBitBtn;
    btnExcluir: TBitBtn;
    q_NumerariosProcesso: TStringField;
    q_NumerariosCliente: TStringField;
    q_NumerariosTotal: TFloatField;
    q_NumerariosSolicitante: TStringField;
    q_NumerariosAutorizador: TStringField;
    q_NumerariosData_Recebimento: TDateTimeField;
    q_NumerariosAtivo: TIntegerField;
    q_NumerariosCodigo: TIntegerField;
    q_NumerariosStatus: TStringField;
    q_NumerariosData_Solicitacao: TDateTimeField;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edFiltroProcessoChange(Sender: TObject);
    procedure edFiltroClienteChange(Sender: TObject);
    procedure cbAguardandoRecebimentoClick(Sender: TObject);
    procedure edFiltroValorKeyPress(Sender: TObject; var Key: Char);
    procedure q_NumerariosData_SolicitacaoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure rbTodosClick(Sender: TObject);
    procedure edDataRecebimentoDeChange(Sender: TObject);
    procedure edDataRecebimentoAteChange(Sender: TObject);
    procedure edDataSolicitacaoDeChange(Sender: TObject);
    procedure edDataSolicitacaoAteChange(Sender: TObject);
    procedure edDataSolicitacaoDeKeyPress(Sender: TObject; var Key: Char);
    procedure edFiltroValorDeChange(Sender: TObject);
    procedure b_imprimirClick(Sender: TObject);
    procedure q_NumerariosTotalGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure edFiltroValorChange(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizaStatus;
    
    procedure AtualizaGrid;
  public
    { Public declarations }
  end;

var
  f_controlenumerarios: Tf_controlenumerarios;

implementation

uses U_MSCOMEX, u_relcontrolenumerarios;

{$R *.DFM}

procedure Tf_controlenumerarios.AtualizaGrid;
begin
  q_Numerarios.Close;
  q_Numerarios.SQL.Clear;
  q_Numerarios.SQL.Add('   SELECT Codigo, Processo, Cliente, Data_Solicitacao, Total, Solicitante, Autorizador, Data_recebimento, Ativo, ');
  q_Numerarios.SQL.Add('          CASE STATUS WHEN 0                                                                                     ');
  q_Numerarios.SQL.Add('            THEN ''Aguardando recebimento''                                                                      ');
  q_Numerarios.SQL.Add('            ELSE ''Recebido''                                                                                    ');
  q_Numerarios.SQL.Add('          END AS STATUS                                                                                          ');
  q_Numerarios.SQL.Add('     FROM Controle_numerarios                                                                                    ');
  q_Numerarios.SQL.Add('    WHERE ATIVO = 1 AND Solicitante IS NOT NULL                                                                  ');

  if (Trim(edFiltroValor.Text) <> '')
   then q_Numerarios.SQL.Add(' AND CAST(Total AS MONEY) LIKE '''+edFiltroValor.Text+'%'' ');

  if (Trim(edFiltroProcesso.Text) <> '')
   then q_Numerarios.SQL.Add(' AND Processo LIKE '''+edFiltroProcesso.Text+'%'' ');

  if (Trim(edFiltroCliente.Text) <> '')
   then q_Numerarios.SQL.Add(' AND Cliente LIKE '''+edFiltroCliente.Text+'%'' ');

  if ((edFiltroValorDe.Text) <> '')
   then q_Numerarios.SQL.Add(' AND CAST(Total AS MONEY) >= '''+edFiltroValorDe.Text+''' ');

  if ((edFiltroValorAte.Text) <> '')
   then q_Numerarios.SQL.Add(' AND CAST(Total AS MONEY) <= '''+edFiltroValorAte.Text+''' ');

  if (rbRecebidos.Checked)
   then q_Numerarios.SQL.Add(' AND STATUS = 1 ');

  if (rbAguardandoRecebimento.Checked)
   then q_Numerarios.SQL.Add(' AND STATUS = 0 ');

  if (edDataSolicitacaoDe.Text <> '  /  /    ')
   then q_Numerarios.SQL.Add(' AND CAST(Data_Solicitacao AS DATE) >= '''+edDataSolicitacaoDe.Text+''' ');

  if (edDataSolicitacaoAte.Text <> '  /  /    ')
   then q_Numerarios.SQL.Add(' AND CAST(Data_Solicitacao AS DATE) <= '''+edDataSolicitacaoAte.Text+''' ');

  if (edDataRecebimentoDe.Text <> '  /  /    ')
   then q_Numerarios.SQL.Add(' AND Data_Recebimento >= '''+edDataRecebimentoDe.Text+''' ');

  if (edDataRecebimentoAte.Text <> '  /  /    ')
   then q_Numerarios.SQL.Add(' AND Data_Recebimento <= '''+edDataRecebimentoAte.Text+''' ');

  q_Numerarios.SQL.Add('   ORDER BY Data_recebimento DESC, Data_Solicitacao   ');
  q_Numerarios.Open;
end;

procedure Tf_controlenumerarios.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_controlenumerarios.FormCreate(Sender: TObject);
begin
  AtualizaStatus;

  AtualizaGrid;
end;

procedure Tf_controlenumerarios.FormClose(Sender: TObject;
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
  f_controlenumerarios := nil;
  F_MSCOMEX.ControledeNumerrios1.Enabled := True;
end;

procedure Tf_controlenumerarios.edFiltroProcessoChange(Sender: TObject);
begin
  AtualizaGrid;
end;

procedure Tf_controlenumerarios.edFiltroClienteChange(Sender: TObject);
begin
  AtualizaGrid;
end;

procedure Tf_controlenumerarios.cbAguardandoRecebimentoClick(
  Sender: TObject);
begin
  AtualizaGrid;
end;

procedure Tf_controlenumerarios.edFiltroValorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9',#8])
   then Key := #0;
end;

procedure Tf_controlenumerarios.q_NumerariosData_SolicitacaoGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  Text := FormatDateTime('dd"/"mm"/"yyyy',q_NumerariosData_Solicitacao.AsDateTime);
end;

procedure Tf_controlenumerarios.rbTodosClick(Sender: TObject);
begin
  AtualizaGrid;
end;

procedure Tf_controlenumerarios.edDataRecebimentoDeChange(Sender: TObject);
begin
  if (edDataRecebimentoDe.Text = '  /  /    ')
   then AtualizaGrid
   else begin
     if (Length(F_MSCOMEX.LRDataTrim(edDataRecebimentoDe.Text)) = 8)
      then begin
        try
          StrToDate(edDataRecebimentoDe.Text);
          AtualizaGrid;
        except
          Application.MessageBox('Data de Recebimento incorreta','Aviso', MB_ICONWARNING);
          edDataRecebimentoDe.SetFocus;
        end;
      end;
   end;
end;

procedure Tf_controlenumerarios.edDataRecebimentoAteChange(
  Sender: TObject);
begin
  if (edDataRecebimentoAte.Text = '  /  /    ')
   then AtualizaGrid
   else begin
     if (Length(F_MSCOMEX.LRDataTrim(edDataRecebimentoAte.Text)) = 8)
      then begin
        try
          StrToDate(edDataRecebimentoAte.Text);
          AtualizaGrid;
        except
          Application.MessageBox('Data de Recebimento incorreta','Aviso', MB_ICONWARNING);
          edDataRecebimentoAte.SetFocus;
        end;
      end;
   end;
end;

procedure Tf_controlenumerarios.edDataSolicitacaoDeChange(Sender: TObject);
begin
  if (edDataSolicitacaoDe.Text = '  /  /    ')
   then AtualizaGrid
   else begin
     if (Length(F_MSCOMEX.LRDataTrim(edDataSolicitacaoDe.Text)) = 8)
      then begin
        try
          StrToDate(edDataSolicitacaoDe.Text);
          AtualizaGrid;
        except
          Application.MessageBox('Data da Solicitação incorreta','Aviso', MB_ICONWARNING);
          edDataSolicitacaoDe.SetFocus;
        end;
      end;
   end;
end;

procedure Tf_controlenumerarios.edDataSolicitacaoAteChange(
  Sender: TObject);
begin
  if (edDataSolicitacaoAte.Text = '  /  /    ')
   then AtualizaGrid
   else begin
     if (Length(F_MSCOMEX.LRDataTrim(edDataSolicitacaoAte.Text)) = 8)
      then begin
        try
          StrToDate(edDataSolicitacaoAte.Text);
          AtualizaGrid;
        except
          Application.MessageBox('Data da Solicitação incorreta','Aviso', MB_ICONWARNING);
          edDataSolicitacaoAte.SetFocus;
        end;
      end;
   end;
end;

procedure Tf_controlenumerarios.edDataSolicitacaoDeKeyPress(
  Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9',#8])
   then Key := #0;
end;

procedure Tf_controlenumerarios.edFiltroValorDeChange(Sender: TObject);
begin
  AtualizaGrid;
end;

procedure Tf_controlenumerarios.b_imprimirClick(Sender: TObject);
begin
  if not Assigned(f_relcontrolenumerarios)
   then Application.CreateForm(Tf_relcontrolenumerarios, f_relcontrolenumerarios);

  f_relcontrolenumerarios.Preview;
end;

procedure Tf_controlenumerarios.q_NumerariosTotalGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text := FormatFloat('0.00',q_NumerariosTotal.AsFloat);
end;

procedure Tf_controlenumerarios.edFiltroValorChange(Sender: TObject);
begin
  AtualizaGrid;
end;

procedure Tf_controlenumerarios.btnAlterarClick(Sender: TObject);
var
  QryAux : TQuery;
  Status : Integer;
begin
  if Application.MessageBox('Deseja realmente alterar o status dessa Solicitação ?','Confirmação',MB_YESNO+MB_ICONQUESTION) = IDYES
   then begin
     QryAux := TQuery.Create(nil);
     QryAux.DatabaseName := 'DBNMSCOMEX';

     try
       QryAux.Close;
       QryAux.SQL.Clear;
       QryAux.SQL.Add(' SELECT STATUS FROM CONTROLE_NUMERARIOS WHERE CODIGO = :p0 ');
       QryAux.Params[0].Value := q_NumerariosCodigo.AsInteger;
       QryAux.Open;

       Status := QryAux.Fields[0].AsInteger;

       if (Status = 0)
        then begin
          QryAux.Close;
          QryAux.SQL.Clear;
          QryAux.SQL.Add(' UPDATE CONTROLE_NUMERARIOS SET STATUS = 1 WHERE CODIGO = :p0 ');
          QryAux.Params[0].Value := q_NumerariosCodigo.AsInteger;
          QryAux.ExecSQL;
        end
        else begin
          QryAux.Close;
          QryAux.SQL.Clear;
          QryAux.SQL.Add(' UPDATE CONTROLE_NUMERARIOS SET STATUS = 0 WHERE CODIGO = :p0 ');
          QryAux.Params[0].Value := q_NumerariosCodigo.AsInteger;
          QryAux.ExecSQL;
        end;

       AtualizaGrid;
     finally
       QryAux.Free;
     end;
   end;
end;

procedure Tf_controlenumerarios.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure Tf_controlenumerarios.btnExcluirClick(Sender: TObject);
var
  QryAux : TQuery;
begin
  if Application.MessageBox('Deseja realmente excluir a Solicitação ?','Confirmação',MB_YESNO+MB_ICONQUESTION) = IDYES
   then begin
     QryAux := TQuery.Create(nil);
     QryAux.DatabaseName := 'DBNMSCOMEX';

     try
       QryAux.Close;
       QryAux.SQL.Clear;
       QryAux.SQL.Add(' UPDATE CONTROLE_NUMERARIOS SET ATIVO = 0 WHERE CODIGO = :p0 ');
       QryAux.Params[0].Value := q_NumerariosCodigo.AsInteger;
       QryAux.ExecSQL;

       AtualizaGrid;
     finally
       QryAux.Free;
     end;
   end;
end;

procedure Tf_controlenumerarios.AtualizaStatus;
var
  QryAux : TQuery;
begin
  QryAux := TQuery.Create(nil);
  QryAux.DatabaseName := 'DBNMSCOMEX';

  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add(' UPDATE Controle_Numerarios SET Status = 1, Data_Recebimento = CP.Data_Credito ');
    QryAux.SQL.Add('   FROM Controle_Numerarios CN INNER JOIN Creditos_Processos CP                ');
    QryAux.SQL.Add('     ON CN.Processo = CP.Processo                                              ');
    QryAux.SQL.Add('  WHERE CP.Credito = ''ADIA'' AND CN.Total = CP.Valor AND Status = 0           ');
    QryAux.ExecSQL;

    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('     UPDATE Controle_Numerarios SET Ativo = 0             ');
    QryAux.SQL.Add('       FROM Controle_Numerarios CN INNER JOIN Processos P ');
    QryAux.SQL.Add('         ON CN.Processo = P.Codigo                        ');
    QryAux.SQL.Add('      WHERE P.Status = 4 AND CN.Status = 0                ');
    QryAux.ExecSQL;
  finally
    QryAux.Free;
  end;
end;

end.
