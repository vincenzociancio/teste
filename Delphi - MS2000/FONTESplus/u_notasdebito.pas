unit u_notasdebito;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, Db, DBTables;

type
  Tf_notasdebito = class(TForm)
    t_faturamento_notas_debito: TTable;
    t_faturamento_notas_debitoData: TDateTimeField;
    t_faturamento_notas_debitoProcesso: TStringField;
    t_faturamento_notas_debitoCliente: TStringField;
    DataSource1: TDataSource;
    Panel2: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label3: TLabel;
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
    edVencimento: TDBEdit;
    edValorExtenso: TDBEdit;
    Label5: TLabel;
    edRequisicao: TDBEdit;
    t_faturamento_notas_debitoNota: TStringField;
    t_faturamento_notas_debitoRequisicao: TStringField;
    t_faturamento_notas_debitoValor: TFloatField;
    t_faturamento_notas_debitoValor_Extenso: TStringField;
    t_faturamento_notas_debitoVencimento: TStringField;
    t_faturamento_notas_debitoDescricao: TStringField;
    Label7: TLabel;
    edDescricao: TDBEdit;
    Label8: TLabel;
    edCodigo_Planilha: TDBEdit;
    t_faturamento_notas_debitoCodigo_Planilha: TStringField;
    Label11: TLabel;
    edEmissao: TDBEdit;
    Label12: TLabel;
    edFiltroNota: TEdit;
    t_faturamento_notas_debitoEmissao: TDateTimeField;
    procedure b_incluirClick(Sender: TObject);
    procedure b_alterarClick(Sender: TObject);
    procedure b_excluirClick(Sender: TObject);
    procedure b_salvarClick(Sender: TObject);
    procedure b_cancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edProcessoChange(Sender: TObject);
    procedure edFiltroProcessoChange(Sender: TObject);
    procedure b_impnotaClick(Sender: TObject);
    procedure edValorKeyPress(Sender: TObject; var Key: Char);
    procedure t_faturamento_notas_debitoAfterScroll(DataSet: TDataSet);
    procedure edFiltroNotaChange(Sender: TObject);
  private
    { Private declarations }
    Inclusao  : Boolean;
    Alteracao : Boolean;
    Codigo_Cliente : String;

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
  f_notasdebito: Tf_notasdebito;
  CNPJ, Endereco, Numero, Complemento, Bairro, Cidade, UF, Inscricao_Estadual, Inscricao_Municipal : String;

implementation

uses U_MSCOMEX, u_relnotasdebito, u_relnotascredito;

{$R *.DFM}

procedure Tf_notasdebito.AtivaCampos(Ativa: Boolean);
begin
  edNNota.Enabled           := Ativa;
  edProcesso.Enabled        := Ativa;
  edRequisicao.Enabled      := Ativa;
  edVencimento.Enabled      := Ativa;
  edEmissao.Enabled         := Ativa;
  edValor.Enabled           := Ativa;
  edValorExtenso.Enabled    := Ativa;
  edDescricao.Enabled       := Ativa;
  edCodigo_Planilha.Enabled := Ativa;
end;

procedure Tf_notasdebito.AtualizaGrade;
begin
  t_faturamento_notas_debito.Close;
  t_faturamento_notas_debito.Open;
end;

procedure Tf_notasdebito.LimpaCampos;
begin
  edNNota.Clear;
  edProcesso.Clear;
  edCliente.Clear;
  edRequisicao.Clear;
  edVencimento.Clear;
  edEmissao.Clear;
  edValor.Clear;
  edValorExtenso.Clear;
  edDescricao.Clear;
  edCodigo_Planilha.Clear;
end;

function Tf_notasdebito.ValidaCampos: Boolean;
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

  { Se o cliente for PAN MARINE ou MARÉ ALTA verifica esse campo} 
  if (Trim(edCodigo_Planilha.Text) = '') and ((Codigo_Cliente = '88') or (Codigo_Cliente = '100')) 
   then begin
     Application.MessageBox('Favor informar O código da Planilha.','Alerta',MB_ICONWARNING);
     edCodigo_Planilha.SetFocus;
     Result := False;
   end;   
end;

procedure Tf_notasdebito.ZerarVariaveis;
begin
  Inclusao  := False;
  Alteracao := False;
end;

procedure Tf_notasdebito.b_incluirClick(Sender: TObject);
begin
  Inclusao := True;

  b_Incluir.Enabled  := False;
  b_Alterar.Enabled  := False;
  b_Excluir.Enabled  := False;
  b_Salvar.Enabled   := True;
  b_Cancelar.Enabled := True;

  AtivaCampos(True);

  t_faturamento_notas_debito.Append;

  edNNota.SetFocus;
end;

procedure Tf_notasdebito.b_alterarClick(Sender: TObject);
begin
  Alteracao := True;

  b_Incluir.Enabled  := False;
  b_Alterar.Enabled  := False;
  b_Excluir.Enabled  := False;
  b_Salvar.Enabled   := True;
  b_Cancelar.Enabled := True;

  AtivaCampos(True);

  t_faturamento_notas_debito.Edit;

  edNNota.SetFocus;
end;

procedure Tf_notasdebito.b_excluirClick(Sender: TObject);
begin
  if MessageDlg('Confirma exclusão desta Nota de Débito?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
   then begin
     t_faturamento_notas_debito.Delete;
     AtualizaGrade;
   end;
end;

procedure Tf_notasdebito.b_salvarClick(Sender: TObject);
begin
  if ValidaCampos
   then begin
     try
       t_faturamento_notas_debitoData.AsDateTime := Now();
       t_faturamento_notas_debito.Post;

       if Inclusao
        then Application.MessageBox('Nota de Débito incluída com sucesso!','Informação',MB_ICONINFORMATION);

       if Alteracao
        then Application.MessageBox('Nota de Débito alterada com sucesso!','Informação',MB_ICONINFORMATION);
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

procedure Tf_notasdebito.b_cancelarClick(Sender: TObject);
begin
  ZerarVariaveis;

  b_Incluir.Enabled  := True;
  b_Alterar.Enabled  := True;
  b_Excluir.Enabled  := True;
  b_Salvar.Enabled   := False;
  b_Cancelar.Enabled := False;

  AtivaCampos(False);

  t_faturamento_notas_debito.Cancel;
end;

procedure Tf_notasdebito.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_notasdebito.FormClose(Sender: TObject;
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
   
  action                          := cafree;
  f_notasdebito                   := nil;
  f_mscomex.NotasdeDbito1.enabled := true;
end;

procedure Tf_notasdebito.FormShow(Sender: TObject);
begin
  ZerarVariaveis;

  AtualizaGrade;

  AtivaCampos(False);
end;

procedure Tf_notasdebito.edProcessoChange(Sender: TObject);
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
       QryAux.SQL.Add(' SELECT I.Razao_Social, I.Codigo              ');
       QryAux.SQL.Add('   FROM Processos P INNER JOIN Importadores I ');
       QryAux.SQL.Add('     ON P.Importador = I.Codigo               ');
       QryAux.SQL.Add('  WHERE P.Codigo = :p0                        ');
       QryAux.Params[0].Value := edProcesso.Text;
       QryAux.Open;

       if QryAux.RecordCount > 0
        then begin
          t_faturamento_notas_debitoCliente.AsString := QryAux.Fields[0].AsString;
          Codigo_Cliente := QryAux.Fields[1].AsString;
          edRequisicao.setfocus;
        end
        else begin
          Application.MessageBox('Processo não encontrado!','Atenção',MB_ICONWARNING);
          Codigo_Cliente := '';
          edProcesso.setfocus;
        end;
     finally
       QryAux.Free;
     end;
   end;
end;

procedure Tf_notasdebito.edFiltroProcessoChange(Sender: TObject);
begin
  t_faturamento_notas_debito.Locate('Processo',edFiltroProcesso.Text,[loPartialKey]);
end;

procedure Tf_notasdebito.b_impnotaClick(Sender: TObject);
begin
  if not assigned (qr_notasdebito)
   then Application.CreateForm(Tqr_notasdebito, qr_notasdebito);

  BuscaDadosCliente;

  if t_faturamento_notas_debitoCodigo_Planilha.AsString <> ''
   then qr_notasdebito.qrlCodigo.Caption := t_faturamento_notas_debitoCodigo_Planilha.AsString
   else qr_notasdebito.qrlCodigo.Caption := t_faturamento_notas_debitoNota.AsString;

  if t_faturamento_notas_debitoCodigo_Planilha.AsString <> ''
   then qr_notasdebito.qrlNotaDebito.Caption := t_faturamento_notas_debitoCodigo_Planilha.AsString
   else qr_notasdebito.qrlNotaDebito.Caption := t_faturamento_notas_debitoNota.AsString;

  qr_notasdebito.qrlAC.Caption                   := t_faturamento_notas_debitoCliente.AsString;

  if t_faturamento_notas_debitoEmissao.AsString <> ''
   then qr_notasdebito.qrlDataEmissao.Caption := t_faturamento_notas_debitoEmissao.AsString
   else qr_notasdebito.qrlDataEmissao.Caption := DateToStr(Date());

  qr_notasdebito.qrlVencimento.Caption           := t_faturamento_notas_debitoVencimento.AsString;
  qr_notasdebito.qrlValor.Caption                := 'R$ ' + FormatCurr('#,##0.00',t_faturamento_notas_debitoValor.AsFloat);
  qr_notasdebito.qrlRequisicao.Caption           := t_faturamento_notas_debitoRequisicao.AsString;
  qr_notasdebito.qrlNomeSacado.Caption           := t_faturamento_notas_debitoCliente.AsString;
  qr_notasdebito.qrlEndereco.Caption             := Endereco + ', ' + Numero + ', ' + Complemento + ' - ' + Bairro + ' - ' + Cidade + ' - ' + UF;
  qr_notasdebito.qrlCNPJ.Caption                 := CNPJ;

  if (Trim(Inscricao_Estadual) <> '')
   then qr_notasdebito.qrlInsEstadualMunicipal.Caption := Inscricao_Estadual
   else qr_notasdebito.qrlInsEstadualMunicipal.Caption := Inscricao_Municipal;

  qr_notasdebito.qrlValorExtenso.Caption           := t_faturamento_notas_debitoValor_Extenso.AsString;   
  qr_notasdebito.qrlDescricaoServicos.Caption      := t_faturamento_notas_debitoDescricao.AsString;

  qr_notasdebito.Preview;
end;

procedure Tf_notasdebito.BuscaDadosCliente;
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

procedure Tf_notasdebito.edValorKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9','.',',',#8])
   then Key := #0;
end;

procedure Tf_notasdebito.t_faturamento_notas_debitoAfterScroll(
  DataSet: TDataSet);
begin
  b_impnota.Enabled := b_incluir.Enabled;
end;

procedure Tf_notasdebito.edFiltroNotaChange(Sender: TObject);
begin
  t_faturamento_notas_debito.Locate('Nota',edFiltroNota.Text,[loPartialKey]);
end;

end.
