unit u_notascredito;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, Db, DBTables;

type
  Tf_notascredito = class(TForm)
    t_faturamento_notas_credito: TTable;
    t_faturamento_notas_creditoNota: TStringField;
    t_faturamento_notas_creditoProcesso: TStringField;
    t_faturamento_notas_creditoCliente: TStringField;
    t_faturamento_notas_creditoData: TDateTimeField;
    t_faturamento_notas_creditoValor: TFloatField;
    t_faturamento_notas_creditoValor_Extenso: TStringField;
    t_faturamento_notas_creditoVencimento: TStringField;
    t_faturamento_notas_creditoDescricao: TStringField;
    DataSource1: TDataSource;
    Panel2: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label10: TLabel;
    Label3: TLabel;          
    Label7: TLabel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    b_incluir: TBitBtn;
    b_alterar: TBitBtn;
    b_salvar: TBitBtn;
    b_excluir: TBitBtn;
    b_cancelar: TBitBtn;
    edFiltroProcesso: TEdit;
    b_impnota: TBitBtn;
    edNNota: TDBEdit;
    edProcesso: TDBEdit;
    edCliente: TDBEdit;
    edValor: TDBEdit;
    edValorExtenso: TDBEdit;
    edDescricao: TDBEdit;
    Label9: TLabel;
    edVencimento: TDBEdit;
    procedure FormActivate(Sender: TObject);
    procedure b_incluirClick(Sender: TObject);
    procedure b_alterarClick(Sender: TObject);
    procedure b_excluirClick(Sender: TObject);
    procedure b_salvarClick(Sender: TObject);
    procedure b_cancelarClick(Sender: TObject);
    procedure b_impnotaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edProcessoChange(Sender: TObject);
    procedure edFiltroProcessoChange(Sender: TObject);
    procedure t_faturamento_notas_creditoAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    Inclusao  : Boolean;
    Alteracao : Boolean;

    procedure AtualizaGrade;

    procedure AtivaCampos(Ativa : Boolean);

    procedure LimpaCampos;

    function ValidaCampos : Boolean;

    procedure ZerarVariaveis;

    procedure BuscaDadosCliente;
  public
    { Public declarations }
  end;

var
  f_notascredito: Tf_notascredito;
  CNPJ, Endereco, Numero, Complemento, Bairro, Cidade, UF, Inscricao_Estadual, Inscricao_Municipal : String;  

implementation

uses U_MSCOMEX, u_relnotascredito;

{$R *.DFM}

procedure Tf_notascredito.AtivaCampos(Ativa: Boolean);
begin
  edNNota.Enabled        := Ativa;
  edProcesso.Enabled     := Ativa;
  edVencimento.Enabled   := Ativa;
  edValor.Enabled        := Ativa;
  edValorExtenso.Enabled := Ativa;
  edDescricao.Enabled    := Ativa;
end;

procedure Tf_notascredito.AtualizaGrade;
begin
  t_faturamento_notas_credito.Close;
  t_faturamento_notas_credito.Open;
end;

procedure Tf_notascredito.BuscaDadosCliente;
var
  QryAux : TQuery;
begin
  QryAux := TQuery.Create(nil);
  QryAux.DatabaseName := 'DBNMSCOMEX';

  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add(' SELECT I.CNPJ_CPF_COMPLETO, I.Endereco, I.Numero, I.Complemento, I.Bairro, I.Cidade, I.UF, I.Inscricao_EstaduaL, I.Inscricao_Municipal ');
    QryAux.SQL.Add('   FROM Processos P INNER JOIN Importadores I ');
    QryAux.SQL.Add('     ON P.Importador = I.Codigo               ');
    QryAux.SQL.Add('  WHERE P.Codigo = :p0                        ');
    QryAux.Params[0].Value := edProcesso.Text;
    QryAux.Open;

    if QryAux.RecordCount > 0
     then begin
       CNPJ                := QryAux.Fields[0].AsString;
       Endereco            := QryAux.Fields[1].AsString;
       Numero              := QryAux.Fields[2].AsString;
       Complemento         := QryAux.Fields[3].AsString;
       Bairro              := QryAux.Fields[4].AsString;
       Cidade              := QryAux.Fields[5].AsString;
       UF                  := QryAux.Fields[6].AsString;
       Inscricao_Estadual  := QryAux.Fields[7].AsString;
       Inscricao_Municipal := QryAux.Fields[8].AsString;
     end
     else begin
       CNPJ                := '';
       Endereco            := '';
       Numero              := '';
       Complemento         := '';
       Bairro              := '';
       Cidade              := '';
       UF                  := '';
       Inscricao_Estadual  := '';
       Inscricao_Municipal := '';
     end;
  finally
    QryAux.Free;
  end;
end;

procedure Tf_notascredito.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_notascredito.LimpaCampos;
begin
  edNNota.Clear;
  edProcesso.Clear;
  edCliente.Clear;
  edVencimento.Clear;
  edValor.Clear;
  edValorExtenso.Clear;
  edDescricao.Clear;
end;

function Tf_notascredito.ValidaCampos: Boolean;
begin
  Result := True;

  if (Trim(edNNota.Text) = '')
   then begin
     Application.MessageBox('Favor informar o Número da Nota.','Alerta',MB_ICONWARNING);
     edNNota.SetFocus;
     Result := False;
     Exit;
   end;

  if (Length(F_MSCOMEX.LRTrim(edProcesso.Text)) <> 8)
   then begin
     Application.MessageBox('Favor informar o Processo corretamente.','Alerta',MB_ICONWARNING);
     edProcesso.SetFocus;
     Result := False;
     Exit;
   end;

  if (Trim(edCliente.Text) = '')
   then begin
     Application.MessageBox('Favor informar o Cliente.','Alerta',MB_ICONWARNING);
     edCliente.SetFocus;
     Result := False;
     Exit;
   end;

  if (Trim(edValor.Text) = '')
   then begin
     Application.MessageBox('Favor informar o Valor.','Alerta',MB_ICONWARNING);
     edValor.SetFocus;
     Result := False;
     Exit;
   end
   else begin
     if (Trim(edValorExtenso.Text) = '')
      then begin
        Application.MessageBox('Favor informar o Valor por Extenso.','Alerta',MB_ICONWARNING);
        edValorExtenso.SetFocus;
        Result := False;
        Exit;
      end;
   end;

  if (Trim(edDescricao.Text) = '')
   then begin
     Application.MessageBox('Favor informar a Descrição.','Alerta',MB_ICONWARNING);
     edDescricao.SetFocus;
     Result := False;
   end;
end;

procedure Tf_notascredito.ZerarVariaveis;
begin
  Inclusao  := False;
  Alteracao := False;
end;

procedure Tf_notascredito.b_incluirClick(Sender: TObject);
begin
  Inclusao := True;

  b_Incluir.Enabled  := False;
  b_Alterar.Enabled  := False;
  b_Excluir.Enabled  := False;
  b_Salvar.Enabled   := True;
  b_Cancelar.Enabled := True;

  AtivaCampos(True);

  t_faturamento_notas_credito.Append;

  edNNota.SetFocus;
end;

procedure Tf_notascredito.b_alterarClick(Sender: TObject);
begin
  Alteracao := True;

  b_Incluir.Enabled  := False;
  b_Alterar.Enabled  := False;
  b_Excluir.Enabled  := False;
  b_Salvar.Enabled   := True;
  b_Cancelar.Enabled := True;

  AtivaCampos(True);

  t_faturamento_notas_credito.Edit;

  edNNota.SetFocus;
end;

procedure Tf_notascredito.b_excluirClick(Sender: TObject);
begin
  if MessageDlg('Confirma exclusão desta Nota de Crédito?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
   then begin
     t_faturamento_notas_credito.Delete;
     AtualizaGrade;
   end;
end;

procedure Tf_notascredito.b_salvarClick(Sender: TObject);
begin
  if ValidaCampos
   then begin
     try
       t_faturamento_notas_creditoData.AsDateTime := Now();
       t_faturamento_notas_credito.Post;

       if Inclusao
        then Application.MessageBox('Nota de Crédito incluída com sucesso!','Informação',MB_ICONINFORMATION);

       if Alteracao
        then Application.MessageBox('Nota de Crédito alterada com sucesso!','Informação',MB_ICONINFORMATION);
     except
       Application.MessageBox('Erro na Inclusão/Alteração do Registro','Informação',MB_ICONINFORMATION);
       ZerarVariaveis;
       Abort;
     end;

     ZerarVariaveis;

     AtualizaGrade;

     b_Incluir.Enabled  := True;
     b_Alterar.Enabled  := True;
     b_Excluir.Enabled  := True;
     b_Salvar.Enabled   := False;
     b_Cancelar.Enabled := False;

     AtivaCampos(False);

     DBGrid1.SetFocus;
  end;
end;

procedure Tf_notascredito.b_cancelarClick(Sender: TObject);
begin
  ZerarVariaveis;

  b_Incluir.Enabled  := True;
  b_Alterar.Enabled  := True;
  b_Excluir.Enabled  := True;
  b_Salvar.Enabled   := False;
  b_Cancelar.Enabled := False;

  AtivaCampos(False);

  t_faturamento_notas_credito.Cancel;
end;

procedure Tf_notascredito.b_impnotaClick(Sender: TObject);
begin
  if not assigned (qr_notascredito)
   then Application.CreateForm(Tqr_notascredito, qr_notascredito);

  BuscaDadosCliente; 

  qr_notascredito.qrlCodigo.Caption                 := t_faturamento_notas_creditoNota.AsString;
  qr_notascredito.qrlNotaCredito.Caption             := t_faturamento_notas_creditoNota.AsString;
  qr_notascredito.qrlAC.Caption                     := t_faturamento_notas_creditoCliente.AsString;
  qr_notascredito.qrlDataEmissao.Caption            := DateToStr(Date());
  qr_notascredito.qrlVencimento.Caption             := t_faturamento_notas_creditoVencimento.AsString;
  qr_notascredito.qrlValor.Caption                  := 'R$ ' + FormatCurr('#,##0.00',t_faturamento_notas_creditoValor.AsFloat);
  qr_notascredito.qrlNomeSacado.Caption             := t_faturamento_notas_creditoCliente.AsString;
  qr_notascredito.qrlEndereco.Caption               := Endereco + ', ' + Numero + ', ' + Complemento + ' - ' + Bairro + ' - ' + Cidade + ' - ' + UF;
  qr_notascredito.qrlCNPJ.Caption                   := CNPJ;

  if (Trim(Inscricao_Estadual) <> '')
   then qr_notascredito.qrlInsEstadualMunicipal.Caption := Inscricao_Estadual
   else qr_notascredito.qrlInsEstadualMunicipal.Caption := Inscricao_Municipal;

  qr_notascredito.qrlValorExtenso.Caption           := t_faturamento_notas_creditoValor_Extenso.AsString;
  qr_notascredito.qrlDescricaoServicos.Caption      := t_faturamento_notas_creditoDescricao.AsString;

  qr_notascredito.Preview;
end;

procedure Tf_notascredito.FormShow(Sender: TObject);
begin
  ZerarVariaveis;

  AtualizaGrade;

  AtivaCampos(False);  
end;

procedure Tf_notascredito.FormClose(Sender: TObject;
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
   
  action                           := cafree;
  f_notascredito                   := nil;
  f_mscomex.NotasdeCrdito1.enabled := true;
end;

procedure Tf_notascredito.edProcessoChange(Sender: TObject);
var
  QryAux : TQuery;
begin
  if Length(F_MSCOMEX.LRTrim(edProcesso.Text)) <> 8
   then Exit;

  QryAux := TQuery.Create(nil);
  QryAux.DatabaseName := 'DBNMSCOMEX';

  if (Inclusao or Alteracao)
   then begin
     try
       QryAux.Close;
       QryAux.SQL.Clear;
       QryAux.SQL.Add(' SELECT I.Razao_Social                        ');
       QryAux.SQL.Add('   FROM Processos P INNER JOIN Importadores I ');
       QryAux.SQL.Add('     ON P.Importador = I.Codigo               ');
       QryAux.SQL.Add('  WHERE P.Codigo = :p0                        ');
       QryAux.Params[0].Value := edProcesso.Text;
       QryAux.Open;

       if QryAux.RecordCount > 0
        then begin
          t_faturamento_notas_creditoCliente.AsString := QryAux.Fields[0].AsString;
          edVencimento.setfocus;
        end
        else begin
          Application.MessageBox('Processo não encontrado!','Atenção',MB_ICONWARNING);
          edProcesso.setfocus;
        end;
     finally
       QryAux.Free;
     end;
   end;
end;

procedure Tf_notascredito.edFiltroProcessoChange(Sender: TObject);
begin
  t_faturamento_notas_credito.Locate('Processo',edFiltroProcesso.Text,[loPartialKey]);
end;

procedure Tf_notascredito.t_faturamento_notas_creditoAfterScroll(
  DataSet: TDataSet);
begin
  b_impnota.Enabled := b_incluir.Enabled;
end;

end.
