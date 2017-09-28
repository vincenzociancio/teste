unit u_contasr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, DBCtrls, Db, DBTables, Buttons;

type
  Tf_contasr = class(TForm)
    pnlTop: TPanel;
    Label26: TLabel;
    l_cliente: TLabel;
    ME_nossaref: TMaskEdit;
    p_venc: TPanel;
    Label4: TLabel;
    Label1: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label2: TLabel;
    p_info: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    Label6: TLabel;
    Panel3: TPanel;
    Label7: TLabel;
    Label15: TLabel;
    dbEdtValServico: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    me_vlrliq: TMaskEdit;
    Label36: TLabel;
    Label19: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    DBText4: TDBText;
    qryContasProc: TQuery;
    qryContasProcNFiscal_e: TStringField;
    qryContasProcImportador: TStringField;
    DataSource1: TDataSource;
    qryContasProcRazao_Social: TStringField;
    qryContasProcAdiantamento: TFloatField;
    qryContasProcDespesas: TFloatField;
    Label5: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    p_botoes: TPanel;
    btnAlterar: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    lblVencimento: TLabel;
    T_processos: TTable;
    T_processosEmpresa: TStringField;
    T_processosFilial: TStringField;
    T_processosCodigo: TStringField;
    qryContasProcEmpresa: TStringField;
    qryContasProcFilial: TStringField;
    qryContasProcCodigo: TStringField;
    DataSource2: TDataSource;
    T_processosVencimento_Faturamento: TDateTimeField;
    T_processosEmissao_Faturamento: TDateTimeField;
    DataSource3: TDataSource;
    T_processosForma_Pag_Faturamento: TIntegerField;
    qryFormaPag: TQuery;
    qryFormaPagCodigo: TIntegerField;
    qryFormaPagDescricao: TStringField;
    DBText3: TDBText;
    Label23: TLabel;
    qryContasProcNFiscal: TStringField;
    Label21: TLabel;
    med_emissao: TDBEdit;
    Label20: TLabel;
    med_vencimento: TDBEdit;
    dblcFormaPagamento: TDBLookupComboBox;
    sb_limpaformapagamento: TSpeedButton;
    Label22: TLabel;
    qryContasProcISS: TFloatField;
    qryContasProcIR: TFloatField;
    qryContasProcPCC: TFloatField;
    qryContasProcTotal_Servico: TFloatField;
    dbEdtISS: TDBEdit;
    dbEdtPCC: TDBEdit;
    dbEdtIR: TDBEdit;
    me_subtotal: TMaskEdit;
    Label24: TLabel;
    Label25: TLabel;
    GroupBox4: TGroupBox;
    qryContasProcSaldo_Balanceado: TFloatField;
    Label27: TLabel;
    med_emissao2: TDBEdit;
    Label28: TLabel;
    med_vencimento2: TDBEdit;
    Label29: TLabel;
    dblcFormaPagamento2: TDBLookupComboBox;
    sb_limpaformapagamento2: TSpeedButton;
    Label30: TLabel;
    med_emissao3: TDBEdit;
    Label31: TLabel;
    med_vencimento3: TDBEdit;
    Label32: TLabel;
    dblcFormaPagamento3: TDBLookupComboBox;
    sb_limpaformapagamento3: TSpeedButton;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    T_processosEmissao_Faturamento2: TDateTimeField;
    T_processosVencimento_Faturamento2: TDateTimeField;
    T_processosForma_Pag_Faturamento2: TIntegerField;
    T_processosEmissao_Faturamento3: TDateTimeField;
    T_processosVencimento_Faturamento3: TDateTimeField;
    T_processosForma_Pag_Faturamento3: TIntegerField;
    med_Valor: TDBEdit;
    med_Valor2: TDBEdit;
    med_Valor3: TDBEdit;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    T_processosValor_Faturamento: TFloatField;
    T_processosValor_Faturamento2: TFloatField;
    T_processosValor_Faturamento3: TFloatField;
    procedure ME_nossarefChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryContasProcAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure med_vencimentoKeyPress(Sender: TObject; var Key: Char);
    procedure T_processosAfterScroll(DataSet: TDataSet);
    procedure sb_limpaformapagamentoClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure sb_limpaformapagamento2Click(Sender: TObject);
    procedure sb_limpaformapagamento3Click(Sender: TObject);
    procedure med_ValorKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }

    procedure LimpaCampos;
    procedure AtivaPanels(Ativa : Boolean);
    procedure AtivaBotoes(Ativa : Boolean);

    procedure AtualizaTela;

    function ValidaCampos : Boolean;
  public
    { Public declarations }
  end;

var
  f_contasr: Tf_contasr;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_contasr.ME_nossarefChange(Sender: TObject);
begin
  AtualizaTela;
end;

procedure Tf_contasr.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_contasr.FormClose(Sender: TObject; var Action: TCloseAction);
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

  f_mscomex.ContasaReceber1.Enabled := True;
  f_contasr := Nil;
  Action := caFree;
end;

procedure Tf_contasr.qryContasProcAfterScroll(DataSet: TDataSet);
var
  Sub_Total, Valor_Liquido : Double;
begin
  Sub_Total     := 0;
  Valor_Liquido := 0;

  Sub_Total := qryContasProcTotal_Servico.asfloat+qryContasProcISS.asfloat;

  me_subtotal.Text := FormatFloat('0.00#,##',Sub_Total);

  Label12.Caption := FormatFloat('0.00#,##',qryContasProcAdiantamento.AsFloat);
  Label13.Caption := FormatFloat('0.00#,##',qryContasProcDespesas.AsFloat*-1);

  Valor_Liquido := Sub_Total - (qryContasProcIR.AsFloat+qryContasProcPCC.AsFloat);

  me_vlrliq.Text := FormatFloat('0.00#,##',Valor_Liquido);

  {Saldo das Despesas}
  Label5.Caption := FormatFloat('0.00#,##',qryContasProcAdiantamento.AsFloat-qryContasProcDespesas.AsFloat);

  {Saldo Balanceado}
  Label25.Caption := FormatFloat('0.00#,##',qryContasProcSaldo_Balanceado.AsFloat);

  {Saldo Geral}
  Label14.Caption := FormatFloat('0.00#,##',((qryContasProcAdiantamento.AsFloat-qryContasProcDespesas.AsFloat)-Valor_Liquido)+qryContasProcSaldo_Balanceado.AsFloat);
end;

procedure Tf_contasr.LimpaCampos;
begin
  me_subtotal.Clear;
  me_vlrliq.Clear;

  Label12.Caption := '-';
  Label13.Caption := '-';
  Label5.Caption  := '-';
  Label14.Caption := '-';
end;

procedure Tf_contasr.FormShow(Sender: TObject);
begin
  AtivaPanels(False);
end;

procedure Tf_contasr.AtivaPanels(Ativa: Boolean);
begin
  p_venc.Visible   := Ativa;
  p_info.Visible   := Ativa;
  p_botoes.Visible := Ativa;
end;

procedure Tf_contasr.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure Tf_contasr.btnAlterarClick(Sender: TObject);
begin
  pnlTop.Enabled := False;

  p_info.Enabled := True;

  T_processos.Edit;

  AtivaBotoes(True);

  med_emissao.SetFocus;
end;

procedure Tf_contasr.btnCancelarClick(Sender: TObject);
begin
  pnlTop.Enabled := True;

  p_info.Enabled := False;

  T_processos.Cancel;

  AtivaBotoes(False);
end;

procedure Tf_contasr.AtivaBotoes(Ativa: Boolean);
begin
  btnAlterar.Enabled  := not Ativa;
  btnCancelar.Enabled := Ativa;
  btnSalvar.Enabled   := Ativa;
  btnSair.Enabled     := not Ativa;
end;

procedure Tf_contasr.btnSalvarClick(Sender: TObject);
begin
  if ValidaCampos
   then begin
     if (Trim(med_emissao.Text) <> '')
      then T_processosEmissao_Faturamento.AsDateTime := StrToDate(med_emissao.Text)
      else T_processosEmissao_Faturamento.Clear;

     if (Trim(med_vencimento.Text) <> '')
      then T_processosVencimento_Faturamento.AsDateTime := StrToDate(med_vencimento.Text)
      else T_processosVencimento_Faturamento.Clear;

     if (Trim(dblcFormaPagamento.Text) <> '')
      then T_processosForma_Pag_Faturamento.AsInteger := dblcFormaPagamento.KeyValue
      else T_processosForma_Pag_Faturamento.Clear;

     if (Trim(med_Valor.Text) <> '')
      then T_processosValor_Faturamento.AsFloat := StrToFloat(med_Valor.text)
      else T_processosValor_Faturamento.Clear;

     if (Trim(med_emissao2.Text) <> '')
      then T_processosEmissao_Faturamento2.AsDateTime := StrToDate(med_emissao2.Text)
      else T_processosEmissao_Faturamento2.Clear;

     if (Trim(med_vencimento2.Text) <> '')
      then T_processosVencimento_Faturamento2.AsDateTime := StrToDate(med_vencimento2.Text)
      else T_processosVencimento_Faturamento2.Clear;

     if (Trim(dblcFormaPagamento2.Text) <> '')
      then T_processosForma_Pag_Faturamento2.AsInteger := dblcFormaPagamento2.KeyValue
      else T_processosForma_Pag_Faturamento2.Clear;

     if (Trim(med_Valor2.Text) <> '')
      then T_processosValor_Faturamento2.AsFloat := StrToFloat(med_Valor2.text)
      else T_processosValor_Faturamento2.Clear;

     if (Trim(med_emissao3.Text) <> '')
      then T_processosEmissao_Faturamento3.AsDateTime := StrToDate(med_emissao3.Text)
      else T_processosEmissao_Faturamento3.Clear;

     if (Trim(med_vencimento3.Text) <> '')
      then T_processosVencimento_Faturamento3.AsDateTime := StrToDate(med_vencimento3.Text)
      else T_processosVencimento_Faturamento3.Clear;

     if (Trim(dblcFormaPagamento3.Text) <> '')
      then T_processosForma_Pag_Faturamento3.AsInteger := dblcFormaPagamento3.KeyValue
      else T_processosForma_Pag_Faturamento3.Clear;

     if (Trim(med_Valor3.Text) <> '')
      then T_processosValor_Faturamento3.AsFloat := StrToFloat(med_Valor3.text)
      else T_processosValor_Faturamento3.Clear;

     T_processos.Post;
   end;

  pnlTop.Enabled := True;

  p_info.Enabled := False;

  AtivaBotoes(False);

  AtualizaTela;
end;

procedure Tf_contasr.med_vencimentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9','/',#8])
   then Key := #0;
end;

procedure Tf_contasr.AtualizaTela;
begin
  if Length(F_MSCOMEX.LRTrim(me_nossaref.Text)) <> 8
   then begin
     qryFormaPag.Close;
     T_processos.Close;
     qryContasProc.Close;
     LimpaCampos;
     Exit;
   end;

  qryContasProc.Close;
  qryContasProc.Params[0].Value := me_nossaref.Text;
  qryContasProc.Open;

  if qryContasProc.RecordCount > 0
   then begin
     AtivaPanels(True);

     T_processos.Close;
     T_processos.Open;

     qryFormaPag.Close;
     qryFormaPag.Open;
   end
   else begin
     Application.MessageBox('Processo não existente.','Aviso',MB_ICONWARNING);
     qryContasProc.Close;
   end;
end;

procedure Tf_contasr.T_processosAfterScroll(DataSet: TDataSet);
begin
  if (Trim(T_processosVencimento_Faturamento3.AsString) <> '')
   then begin
     if (StrToDate(T_processosVencimento_Faturamento3.AsString) < Date())
      then begin
        lblVencimento.Caption    := 'Vencido';
        lblVencimento.Font.Color := clRed;
        Exit;
      end
      else begin
        lblVencimento.Caption    := 'a Vencer';
        lblVencimento.Font.Color := clLime;
        Exit;
      end;
   end;

  if (Trim(T_processosVencimento_Faturamento2.AsString) <> '')
   then begin
     if (StrToDate(T_processosVencimento_Faturamento2.AsString) < Date())
      then begin
        lblVencimento.Caption    := 'Vencido';
        lblVencimento.Font.Color := clRed;
        Exit;
      end
      else begin
        lblVencimento.Caption    := 'a Vencer';
        lblVencimento.Font.Color := clLime;
        Exit;
      end;
   end;

  if (Trim(T_processosVencimento_Faturamento.AsString) <> '')
   then begin
     if (StrToDate(T_processosVencimento_Faturamento.AsString) < Date())
      then begin
        lblVencimento.Caption    := 'Vencido';
        lblVencimento.Font.Color := clRed;
      end
      else begin
        lblVencimento.Caption    := 'a Vencer';
        lblVencimento.Font.Color := clLime;
      end;
   end
   else begin
     lblVencimento.Caption    := '-';
     lblVencimento.Font.Color := clWhite;
   end;
end;

function Tf_contasr.ValidaCampos: Boolean;
begin
  try
    if (Trim(med_emissao.Text) <> '')
     then StrToDate(med_emissao.Text);

  except
    on EConvertError do
     begin
       Application.MessageBox('Data inválida!','Aviso',MB_ICONWARNING);
       med_emissao.SetFocus;
       Result := False;

       Exit;
     end;
  end;

  try
    if (Trim(med_vencimento.Text) <> '')
     then StrToDate(med_vencimento.Text);

  except
    on EConvertError do
     begin
       Application.MessageBox('Data inválida!','Aviso',MB_ICONWARNING);
       med_vencimento.SetFocus;
       Result := False;

       Exit;
     end;
  end;

  try
    if (Trim(med_Valor.Text) <> '')
     then StrToFloat(med_Valor.Text);

  except
    on EConvertError do
     begin
       Application.MessageBox('Valor inválido!','Aviso',MB_ICONWARNING);
       med_Valor.SetFocus;
       Result := False;

       Exit;
     end;
  end;

  try
    if (Trim(med_emissao2.Text) <> '')
     then StrToDate(med_emissao2.Text);

  except
    on EConvertError do
     begin
       Application.MessageBox('Data inválida!','Aviso',MB_ICONWARNING);
       med_emissao2.SetFocus;
       Result := False;

       Exit;
     end;
  end;

  try
    if (Trim(med_vencimento2.Text) <> '')
     then StrToDate(med_vencimento2.Text);

  except
    on EConvertError do
     begin
       Application.MessageBox('Data inválida!','Aviso',MB_ICONWARNING);
       med_vencimento2.SetFocus;
       Result := False;

       Exit;
     end;
  end;

  try
    if (Trim(med_Valor2.Text) <> '')
     then StrToFloat(med_Valor2.Text);

  except
    on EConvertError do
     begin
       Application.MessageBox('Valor inválido!','Aviso',MB_ICONWARNING);
       med_Valor2.SetFocus;
       Result := False;

       Exit;
     end;
  end;

  try
    if (Trim(med_emissao3.Text) <> '')
     then StrToDate(med_emissao3.Text);

  except
    on EConvertError do
     begin
       Application.MessageBox('Data inválida!','Aviso',MB_ICONWARNING);
       med_emissao3.SetFocus;
       Result := False;

       Exit;
     end;
  end;

  try
    if (Trim(med_vencimento3.Text) <> '')
     then StrToDate(med_vencimento3.Text);

  except
    on EConvertError do
     begin
       Application.MessageBox('Data inválida!','Aviso',MB_ICONWARNING);
       med_vencimento3.SetFocus;
       Result := False;

       Exit;
     end;
  end;

  try
    if (Trim(med_Valor3.Text) <> '')
     then StrToFloat(med_Valor3.Text);

  except
    on EConvertError do
     begin
       Application.MessageBox('Valor inválido!','Aviso',MB_ICONWARNING);
       med_Valor3.SetFocus;
       Result := False;

       Exit;
     end;
  end;

  Result := True;
end;

procedure Tf_contasr.sb_limpaformapagamentoClick(Sender: TObject);
begin
  T_processosForma_Pag_Faturamento.Clear;
end;

procedure Tf_contasr.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if T_processos.State In [dsEdit]
   then begin
     Application.MessageBox('O Processo está em edição!','Aviso',MB_ICONWARNING);
     CanClose := False;
   end
   else CanClose := True;
end;

procedure Tf_contasr.sb_limpaformapagamento2Click(Sender: TObject);
begin
  T_processosForma_Pag_Faturamento2.Clear;
end;

procedure Tf_contasr.sb_limpaformapagamento3Click(Sender: TObject);
begin
  T_processosForma_Pag_Faturamento3.Clear;
end;

procedure Tf_contasr.med_ValorKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9',',',#8])
   then Key := #0;
end;

end.
