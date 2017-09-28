unit u_recibos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Buttons, Grids, DBGrids, ExtCtrls, DBCtrls, Db, DBTables;

type
  Tf_recibos = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    b_incluir: TBitBtn;
    b_alterar: TBitBtn;
    b_salvar: TBitBtn;
    b_excluir: TBitBtn;
    b_cancelar: TBitBtn;
    Label4: TLabel;
    edFiltroProcesso: TEdit;
    Label7: TLabel;
    dblcdeb: TDBLookupComboBox;
    ds_tiponum: TDataSource;
    q_tiponum: TQuery;
    q_tiponumPlano_contas: TStringField;
    q_tiponumEmpresa: TStringField;
    q_tiponumFilial: TStringField;
    q_tiponumCodigo: TStringField;
    q_tiponumDescricao: TStringField;
    q_tiponumRateio: TStringField;
    q_tiponumContabilizaCC: TSmallintField;
    t_faturamento_recibos: TTable;
    Label2: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    b_imprec: TBitBtn;
    DataSource1: TDataSource;
    t_faturamento_recibosData: TDateTimeField;
    t_faturamento_recibosProcesso: TStringField;
    t_faturamento_recibosCliente: TStringField;
    t_faturamento_recibosDebito: TStringField;
    t_faturamento_recibosValor_Total: TFloatField;
    t_faturamento_recibosPercentual_11: TFloatField;
    t_faturamento_recibosPercentual_Extenso: TStringField;
    t_faturamento_recibosRecibo: TStringField;
    edProcesso: TDBEdit;
    edCliente: TDBEdit;
    edVlrTotal: TDBEdit;
    edPercentual: TDBEdit;
    edPercentualExtenso: TDBEdit;
    t_faturamento_recibosPk: TIntegerField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure b_incluirClick(Sender: TObject);
    procedure edProcessoExit(Sender: TObject);
    procedure b_salvarClick(Sender: TObject);
    procedure b_cancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edVlrTotalExit(Sender: TObject);
    procedure b_alterarClick(Sender: TObject);
    procedure b_excluirClick(Sender: TObject);
    procedure edFiltroProcessoChange(Sender: TObject);
    procedure edProcessoKeyPress(Sender: TObject; var Key: Char);
    procedure b_imprecClick(Sender: TObject);
    procedure edVlrTotalKeyPress(Sender: TObject; var Key: Char);
    procedure edPercentualKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Inclusao  : Boolean;
    Alteracao : Boolean;
    Ano, DataAtual : String;

    procedure AtualizaGrade;

    procedure AtivaCampos(Ativa : Boolean);

    procedure LimpaCampos;

    function ValidaCampos : Boolean;

    procedure ZerarVariaveis;

    function RetornaMes : String;

    function RetornaCodigoRecibo : String;
  public
    { Public declarations }
  end;

var
  f_recibos: Tf_recibos;

implementation

uses U_MSCOMEX, u_relrecibos;

{$R *.DFM}

procedure Tf_recibos.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_recibos.FormClose(Sender: TObject; var Action: TCloseAction);
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
   
  action    := cafree;
  f_recibos := nil;
  f_mscomex.recibos1.enabled := true;
end;

procedure Tf_recibos.b_incluirClick(Sender: TObject);
var
  Pk_recibo : integer;
begin
  Inclusao := True;

  b_Incluir.Enabled  := False;
  b_Alterar.Enabled  := False;
  b_Excluir.Enabled  := False;
  b_Salvar.Enabled   := True;
  b_Cancelar.Enabled := True;

  b_imprec.Enabled   := False;

  AtivaCampos(True);

  t_faturamento_recibos.Append;

  edProcesso.SetFocus;
end;

procedure Tf_recibos.AtivaCampos(Ativa: Boolean);
begin
  edProcesso.Enabled          := Ativa;
  dblcdeb.Enabled             := Ativa;
  edVlrTotal.Enabled          := Ativa;
  edPercentual.Enabled        := Ativa;
  edPercentualExtenso.Enabled := Ativa;
end;

procedure Tf_recibos.edProcessoExit(Sender: TObject);
var
  QryAux : TQuery;
begin
  if Length(F_MSCOMEX.LRTrim(edProcesso.Text)) <> 8
   then Exit;

  if (Inclusao or Alteracao)
   then begin
     QryAux := TQuery.Create(nil);
     QryAux.DatabaseName := 'DBNMSCOMEX';

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
          t_faturamento_recibosCliente.AsString := QryAux.Fields[0].AsString;
          dblcdeb.setfocus;
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

procedure Tf_recibos.b_salvarClick(Sender: TObject);
var
  Recibo : String;
begin
  if ValidaCampos
   then begin
     try
       t_faturamento_recibosData.AsDateTime := Now();

       if Inclusao
        then begin
          t_faturamento_recibosRecibo.Value := RetornaCodigoRecibo + '/' + Ano;
          Recibo := t_faturamento_recibosRecibo.AsString;
          t_faturamento_recibos.Post;
          Application.MessageBox(PChar('Recibo '+ Recibo +' incluído com sucesso!'),'Informação',MB_ICONINFORMATION);
        end;

       if Alteracao
        then begin
          Recibo := t_faturamento_recibosRecibo.AsString;
          t_faturamento_recibos.Post;
          Application.MessageBox(PChar('Recibo '+ Recibo +' alterado com sucesso!'),'Informação',MB_ICONINFORMATION);
        end;
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

     b_imprec.Enabled   := True;

     AtivaCampos(False);

     DBGrid1.SetFocus;
  end;
end;

procedure Tf_recibos.b_cancelarClick(Sender: TObject);
begin
  ZerarVariaveis;

  b_Incluir.Enabled  := True;
  b_Alterar.Enabled  := True;
  b_Excluir.Enabled  := True;
  b_Salvar.Enabled   := False;
  b_Cancelar.Enabled := False;

  b_imprec.Enabled   := True;  

  AtivaCampos(False);

  t_faturamento_recibos.Cancel;
end;

procedure Tf_recibos.FormShow(Sender: TObject);
begin
  ZerarVariaveis;

  q_tiponum.Close;
  q_tiponum.Open;  

  AtualizaGrade;

  AtivaCampos(False);

  DataAtual := DateToStr(Now);

  Ano := copy(DataAtual,9,2);
end;

procedure Tf_recibos.edVlrTotalExit(Sender: TObject);
begin
  if (edVlrTotal.Text <> '')
   then t_faturamento_recibosPercentual_11.Value := StrtoFloat(FormatFloat('#,##0.00',StrToFloat(edVlrTotal.Text)*(0.11/100)));
end;

procedure Tf_recibos.b_alterarClick(Sender: TObject);
begin
  Alteracao := True;

  b_Incluir.Enabled  := False;
  b_Alterar.Enabled  := False;
  b_Excluir.Enabled  := False;
  b_Salvar.Enabled   := True;
  b_Cancelar.Enabled := True;

  b_imprec.Enabled   := False;  

  AtivaCampos(True);

  t_faturamento_recibos.Edit;

  edProcesso.SetFocus;
end;

function Tf_recibos.ValidaCampos: Boolean;
begin
  Result := True;

  if (Length(F_MSCOMEX.LRTrim(edProcesso.Text)) <> 8)
   then begin
     Application.MessageBox('Favor informar o Processo corretamente.','Alerta',MB_ICONWARNING);
     edProcesso.SetFocus;
     Result := False;
     Exit;
   end;

  if (dblcdeb.KeyValue = '')
   then begin
     Application.MessageBox('Favor informar o débito.','Alerta',MB_ICONWARNING);
     dblcdeb.SetFocus;
     Result := False;
     Exit;
   end;

  if (Trim(edVlrTotal.Text) = '')
   then begin
     Application.MessageBox('Favor informar o Valor Total.','Alerta',MB_ICONWARNING);
     edVlrTotal.SetFocus;
     Result := False;
     Exit;
   end;

  if (Trim(edPercentual.Text) = '')
   then begin
     Application.MessageBox('Favor informar o Percentual.','Alerta',MB_ICONWARNING);
     edPercentual.SetFocus;
     Result := False;
     Exit;
   end
   else begin
     if (Trim(edPercentualExtenso.Text) = '')
      then begin
        Application.MessageBox('Favor informar o Percentual por Extenso.','Alerta',MB_ICONWARNING);
        edPercentualExtenso.SetFocus;
        Result := False;
        Exit;
      end;
   end;
end;

procedure Tf_recibos.ZerarVariaveis;
begin
  Inclusao  := False;
  Alteracao := False;
end;

procedure Tf_recibos.AtualizaGrade;
begin
  t_faturamento_recibos.Close;
  t_faturamento_recibos.Open;

  b_imprec.Enabled := (t_faturamento_recibos.RecordCount > 0);
end;

procedure Tf_recibos.LimpaCampos;
begin
  edProcesso.Clear;
  edCliente.Clear;
  edVlrTotal.Clear;
  edPercentual.Clear;
  edPercentualExtenso.Clear;
end;

procedure Tf_recibos.b_excluirClick(Sender: TObject);
begin
  if MessageDlg('Confirma exclusão deste Recibo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
   then begin
     t_faturamento_recibos.Delete;
     AtualizaGrade;
   end;  
end;

procedure Tf_recibos.edFiltroProcessoChange(Sender: TObject);
begin
  t_faturamento_recibos.Locate('Processo',edFiltroProcesso.Text,[loPartialKey]);
end;

procedure Tf_recibos.edProcessoKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9','/', #8])
   then Key := #0;
end;

procedure Tf_recibos.b_imprecClick(Sender: TObject);
begin
  if not assigned (qr_recibo)
   then Application.CreateForm(Tqr_recibo, qr_recibo);

  qr_recibo.qrlCodigo.Caption := t_faturamento_recibosRecibo.AsString;

  qr_recibo.qrlblCorpo.Caption := 'Recebemos da empresa ' + t_faturamento_recibosCliente.Value + ', o valor de R$ ' + FormatCurr('#,##0.00',t_faturamento_recibosPercentual_11.Value) + ' (' + t_faturamento_recibosPercentual_Extenso.Value + ') referente 0,11% s/ ' + t_faturamento_recibosDebito.Value + ', no valor de R$ '
                                 + FormatCurr('#,##0.00',t_faturamento_recibosValor_Total.Value) + ' processo MS n° ' + t_faturamento_recibosProcesso.Value + '.';

  qr_recibo.qrlblData.Caption := 'Rio de Janeiro, ' + Copy(DateToStr(t_faturamento_recibosData.Value),1,2) + ' de ' + RetornaMes + ' de ' + Copy(DateToStr(t_faturamento_recibosData.Value),7,4) + '.';

  qr_recibo.Preview;
end;

function Tf_recibos.RetornaMes: String;
begin
  case StrToInt(Copy(DateToStr(t_faturamento_recibosData.Value),4,2)) of
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

procedure Tf_recibos.edVlrTotalKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9','.',',',#8])
   then Key := #0;
end;

procedure Tf_recibos.edPercentualKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9','.',',',#8])
   then Key := #0;
end;

function Tf_recibos.RetornaCodigoRecibo: String;
var
  QryAux : TQuery;

  UltimoRecibo : Integer;
begin
  QryAux := TQuery.Create(nil);
  QryAux.DatabaseName := 'DBNMSCOMEX';

  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add(' SELECT Recibo              ');
    QryAux.SQL.Add('   FROM Faturamento_Recibos ');
    QryAux.SQL.Add(' ORDER BY Data DESC        ');
    QryAux.Open;

    UltimoRecibo := (StrToInt(Copy(QryAux.Fields[0].AsString,1,4)) + 1);

    Result := FormatMaskText('0000',IntToStr(UltimoRecibo));

    QryAux.Close;
  finally
    QryAux.Free;
  end;
end;

end.
