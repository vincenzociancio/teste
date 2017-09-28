unit u_declorigem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, Db, DBTables;

type
  Tf_declorigem = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    b_incluir: TBitBtn;
    b_alterar: TBitBtn;
    b_salvar: TBitBtn;
    b_excluir: TBitBtn;
    b_cancelar: TBitBtn;
    edFiltroProcesso: TEdit;
    b_impdecl: TBitBtn;
    edNDeclaracao: TDBEdit;
    edProcesso: TDBEdit;
    edCliente: TDBEdit;
    edValor: TDBEdit;
    edEmissao: TDBEdit;
    Label5: TLabel;
    edNfe: TDBEdit;
    DataSource1: TDataSource;
    t_faturamento_declaracao_origem: TTable;
    t_faturamento_declaracao_origemDeclaracao: TStringField;
    t_faturamento_declaracao_origemProcesso: TStringField;
    t_faturamento_declaracao_origemCliente: TStringField;
    t_faturamento_declaracao_origemData: TDateTimeField;
    t_faturamento_declaracao_origemNfe: TStringField;
    t_faturamento_declaracao_origemEmissao: TDateTimeField;
    t_faturamento_declaracao_origemValor: TFloatField;
    procedure FormActivate(Sender: TObject);
    procedure b_incluirClick(Sender: TObject);
    procedure b_alterarClick(Sender: TObject);
    procedure b_excluirClick(Sender: TObject);
    procedure b_salvarClick(Sender: TObject);
    procedure b_cancelarClick(Sender: TObject);
    procedure b_impdeclClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edProcessoChange(Sender: TObject);
    procedure edNfeChange(Sender: TObject);
    procedure edFiltroProcessoChange(Sender: TObject);
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

    function RetornaMes: String;

    procedure MontaInfoPessoais;    
  public
    { Public declarations }
  end;

var
  f_declorigem: Tf_declorigem;
    CNPJ, Endereco, Numero, Complemento, Bairro, Cidade, UF, Inscricao_Estadual, Inscricao_Municipal : String;

implementation

uses U_MSCOMEX, u_relnotascredito, u_reldeclorigem;

{$R *.DFM}

procedure Tf_declorigem.AtivaCampos(Ativa: Boolean);
begin
  edNDeclaracao.Enabled  := Ativa;
  edProcesso.Enabled     := Ativa;
  edNfe.Enabled          := Ativa;
  edEmissao.Enabled      := Ativa;
  edValor.Enabled        := Ativa;
end;

procedure Tf_declorigem.AtualizaGrade;
begin
  t_faturamento_declaracao_origem.Close;
  t_faturamento_declaracao_origem.Open;

  b_impdecl.Enabled := (t_faturamento_declaracao_origem.RecordCount > 0);
end;

procedure Tf_declorigem.BuscaDadosCliente;
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

procedure Tf_declorigem.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_declorigem.LimpaCampos;
begin
  edNDeclaracao.Clear;
  edProcesso.Clear;
  edCliente.Clear;
  edNfe.Clear;
  edEmissao.Clear;
  edValor.Clear;
end;

function Tf_declorigem.ValidaCampos: Boolean;
begin
  Result := True;

  if (Trim(edNDeclaracao.Text) = '')
   then begin
     Application.MessageBox('Favor informar o Número da Declaração.','Alerta',MB_ICONWARNING);
     edNDeclaracao.SetFocus;
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

  if (Trim(edNfe.Text) = '')
   then begin
     Application.MessageBox('Favor informar a Nfe.','Alerta',MB_ICONWARNING);
     edNfe.SetFocus;
     Result := False;
     Exit;
   end;

  if (Trim(edEmissao.Text) = '')
   then begin
     Application.MessageBox('Favor informar a Data de Emissão.','Alerta',MB_ICONWARNING);
     edEmissao.SetFocus;
     Result := False;
     Exit;     
   end;

  if (Trim(edValor.Text) = '')
   then begin
     Application.MessageBox('Favor informar o Valor.','Alerta',MB_ICONWARNING);
     edValor.SetFocus;
     Result := False;
     Exit;
   end;
end;

procedure Tf_declorigem.ZerarVariaveis;
begin
  Inclusao  := False;
  Alteracao := False;
end;

procedure Tf_declorigem.b_incluirClick(Sender: TObject);
begin
  Inclusao := True;

  b_Incluir.Enabled  := False;
  b_Alterar.Enabled  := False;
  b_Excluir.Enabled  := False;
  b_Salvar.Enabled   := True;
  b_Cancelar.Enabled := True;

  AtivaCampos(True);

  t_faturamento_declaracao_origem.Append;

  edNDeclaracao.SetFocus;
end;

procedure Tf_declorigem.b_alterarClick(Sender: TObject);
begin
  Alteracao := True;

  b_Incluir.Enabled  := False;
  b_Alterar.Enabled  := False;
  b_Excluir.Enabled  := False;
  b_Salvar.Enabled   := True;
  b_Cancelar.Enabled := True;

  AtivaCampos(True);

  t_faturamento_declaracao_origem.Edit;

  edNDeclaracao.SetFocus;  
end;

procedure Tf_declorigem.b_excluirClick(Sender: TObject);
begin
  if MessageDlg('Confirma exclusão desta Declaração de Origem?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
   then begin
     t_faturamento_declaracao_origem.Delete;
     AtualizaGrade;
   end;
end;

procedure Tf_declorigem.b_salvarClick(Sender: TObject);
begin
  if ValidaCampos
   then begin
     try
       t_faturamento_declaracao_origemData.AsDateTime := Now();
       t_faturamento_declaracao_origem.Post;

       if Inclusao
        then Application.MessageBox('Declaração de Origem incluída com sucesso!','Informação',MB_ICONINFORMATION);

       if Alteracao
        then Application.MessageBox('Declaração de Origem alterada com sucesso!','Informação',MB_ICONINFORMATION);
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

procedure Tf_declorigem.b_cancelarClick(Sender: TObject);
begin
  ZerarVariaveis;

  b_Incluir.Enabled  := True;
  b_Alterar.Enabled  := True;
  b_Excluir.Enabled  := True;
  b_Salvar.Enabled   := False;
  b_Cancelar.Enabled := False;

  AtivaCampos(False);

  t_faturamento_declaracao_origem.Cancel;
end;

procedure Tf_declorigem.b_impdeclClick(Sender: TObject);
begin
  if not assigned (qr_declorigem)
   then Application.CreateForm(Tqr_declorigem, qr_declorigem);

  MontaInfoPessoais;   

  qr_declorigem.qrlCodigo.Caption      := t_faturamento_declaracao_origemDeclaracao.AsString;
  qr_declorigem.qrlCliente.Caption     := t_faturamento_declaracao_origemCliente.AsString;
  qr_declorigem.qrlProcesso.Caption    := t_faturamento_declaracao_origemProcesso.AsString;
  qr_declorigem.qrlNotaFiscal.Caption  := t_faturamento_declaracao_origemNfe.AsString;
  qr_declorigem.qrlDataEmissao.Caption := DateToStr(t_faturamento_declaracao_origemData.AsDateTime);
  qr_declorigem.qrlValor.Caption       := FormatCurr('#,##0.00',t_faturamento_declaracao_origemValor.AsFloat);
  qr_declorigem.qrlValorTotal.Caption  := FormatCurr('#,##0.00',t_faturamento_declaracao_origemValor.AsFloat);

  qr_declorigem.qrlData.Caption := 'Rio de Janeiro, ' + Copy(DateToStr(Date()),1,2) + ' de ' + RetornaMes + ' de ' + Copy(DateToStr(Date()),7,4) + '.'; 

  qr_declorigem.Preview;
end;

procedure Tf_declorigem.FormShow(Sender: TObject);
begin
  ZerarVariaveis;

  AtualizaGrade;

  AtivaCampos(False);
end;

procedure Tf_declorigem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action                               := cafree;
  f_declorigem                         := nil;
  f_mscomex.DeclaraesdeOrigem1.enabled := true;
end;

procedure Tf_declorigem.edProcessoChange(Sender: TObject);
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
          t_faturamento_declaracao_origemCliente.AsString := QryAux.Fields[0].AsString;
          edNfe.SetFocus;

          edNfeChange(edNfe);
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

procedure Tf_declorigem.edNfeChange(Sender: TObject);
var
  QryAux1 : TQuery;
begin
  if Length(F_MSCOMEX.LRTrim(edProcesso.Text)) <> 8
   then Exit;

  QryAux1 := TQuery.Create(nil);
  QryAux1.DatabaseName := 'DBNMSCOMEX';

  if (Inclusao or Alteracao)
   then begin
     try
       QryAux1.Close;
       QryAux1.SQL.Clear;
       QryAux1.SQL.Add(' SELECT NFS.NFiscal_e, NFS.Data_emissao,                                           ');
       QryAux1.SQL.Add('        ((SELECT ISNULL(SUM(Valor_Registrado),0) FROM Numerarios_Processos WHERE (Numerario = ''HONO'' OR Numerario = ''ISS'') AND Processo = NFS.Processo) - ');
       QryAux1.SQL.Add('         (SELECT ISNULL(SUM(Valor),0) FROM Creditos_Processos WHERE (Credito = ''CCP'' OR Credito = ''IRRF'') AND Processo = NFS.Processo)) AS Valor ');
       QryAux1.SQL.Add('   FROM Notas_Fiscais_Servicos NFS LEFT JOIN Notas_Fiscais_Servicos_Processos NFSP ');
       QryAux1.SQL.Add('     ON NFS.NFiscal = NFSP.NFISCAL                                                 ');
       QryAux1.SQL.Add('  WHERE (NFS.Processo = :q0 OR NFSP.PROCESSO = :q0)                                ');
       QryAux1.Params[0].Value := edProcesso.Text;
       QryAux1.Open;

       if QryAux1.RecordCount > 0
        then begin
          t_faturamento_declaracao_origemNfe.AsString     := QryAux1.Fields[0].AsString;
          t_faturamento_declaracao_origemEmissao.AsString := QryAux1.Fields[1].AsString;
          t_faturamento_declaracao_origemValor.AsString   := QryAux1.Fields[2].AsString;
          edValor.setfocus;
        end;
     finally
       QryAux1.Free;
     end;
   end;
end;

function Tf_declorigem.RetornaMes: String;
begin
  case StrToInt(Copy(DateToStr(Date()),4,2)) of
    1  : Result := 'Janeiro';
    2  : Result := 'Fevereiro';
    3  : Result := 'Março';
    4  : Result := 'Abril';
    5  : Result := 'Maio';
    6  : Result := 'Junho';
    7  : Result := 'Julho';
    8  : Result := 'Agosto';
    9  : Result := 'Setembro';
    10 : Result := 'Outubro';
    11 : Result := 'Novembro';
    12 : Result := 'Dezembro';
  end;
end;

procedure Tf_declorigem.MontaInfoPessoais;
var
  QryAux : TQuery;
begin
  if Length(F_MSCOMEX.LRTrim(edProcesso.Text)) <> 8
   then Exit;

  QryAux := TQuery.Create(nil);
  QryAux.DatabaseName := 'DBNMSCOMEX';

  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add(' SELECT Nome_Completo, Ramal, Email FROM Usuarios where Usuario = :p0 ');
    QryAux.Params[0].Value := v_usuario;
    QryAux.Open;

    if QryAux.RecordCount > 0
     then begin
       qr_declorigem.qrlUsuario.Caption := QryAux.Fields[0].AsString + ' - Financial Dept.';
       qr_declorigem.qrlDirect.Caption  := 'Direct: + 5521 3095 ' + QryAux.Fields[1].AsString;
       qr_declorigem.qrlEmail.Caption   := QryAux.Fields[2].AsString;
     end
     else begin
       qr_declorigem.qrlUsuario.Caption := QryAux.Fields[0].AsString + ' - Financial Dept.';
       qr_declorigem.qrlDirect.Caption  := 'Direct: + 5521 3095 ' + QryAux.Fields[1].AsString;
       qr_declorigem.qrlEmail.Caption   := QryAux.Fields[2].AsString;
     end;
  finally
    QryAux.Free;
  end;
end;

procedure Tf_declorigem.edFiltroProcessoChange(Sender: TObject);
begin
  t_faturamento_declaracao_origem.Locate('Processo',edFiltroProcesso.Text,[loPartialKey]);
end;

end.
