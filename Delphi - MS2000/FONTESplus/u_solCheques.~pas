unit u_solCheques;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, Db, DBTables, DBCtrls, Mask,
  IdComponent, IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP,
  IdAntiFreezeBase, IdAntiFreeze, IdBaseComponent, IdMessage, OleCtrls,
  SHDocVw, MSHTML;

type
  Tf_solCheques = class(TForm)
    pnlPrincipal: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    pnlBotoesSol: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    btnSolicita: TBitBtn;
    btnEmissao: TBitBtn;
    qrSolicitacoes: TQuery;
    dsSolicitacoes: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBMemo1: TDBMemo;
    DBGrid2: TDBGrid;
    Panel6: TPanel;
    btnItemNov: TBitBtn;
    btnItemAlt: TBitBtn;
    tbSolCheques: TTable;
    dsSolCheques: TDataSource;
    tbParametros: TTable;
    pnlInclusao: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Panel8: TPanel;
    DBEdit8: TDBEdit;
    DBMemo2: TDBMemo;
    Panel9: TPanel;
    cbVerTodos: TCheckBox;
    pnlAcessoRestrito: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit4: TDBEdit;
    btnItemExc: TBitBtn;
    btnCancelSol: TBitBtn;
    btnSalvaSol: TBitBtn;
    btnNovaSol: TBitBtn;
    btnSairSol: TBitBtn;
    btnItemBus: TBitBtn;
    pnlInclusaoItens: TPanel;
    Panel10: TPanel;
    Label26: TLabel;
    edtProc: TMaskEdit;
    dsProc: TDataSource;
    Panel11: TPanel;
    Label11: TLabel;
    DBGrid3: TDBGrid;
    qrProc: TQuery;
    btnItemSal: TBitBtn;
    btnItemCan: TBitBtn;
    btnCancSol: TBitBtn;
    Label1: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    pnlAguarde: TPanel;
    qrPagamento: TQuery;
    btnAltSol: TBitBtn;
    btnReativar: TBitBtn;
    Panel12: TPanel;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    qrFinanc: TQuery;
    pnlEmissao: TPanel;
    Panel13: TPanel;
    Panel15: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    qrCC: TQuery;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    dsCC: TDataSource;
    tbItens: TTable;
    dsItens: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    Label16: TLabel;
    qrListaStatus: TQuery;
    dsListaStatus: TDataSource;
    btnCanCheque: TBitBtn;
    pnlBrowser: TPanel;
    WebBrowser1: TWebBrowser;
    qrPermissaoAlterar: TQuery;
    pnlBroConEmi: TPanel;
    BitBtn5: TBitBtn;
    pnlImprimir: TPanel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    pnlBroConSol: TPanel;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    btnEmitir: TBitBtn;
    qrSolicitante: TQuery;
    qrStatusEmail: TQuery;
    q_ITENSPRO: TQuery;
    p_autoriza: TPanel;
    Panel14: TPanel;
    Panel16: TPanel;
    cancelsenha: TBitBtn;
    oksenha: TBitBtn;
    me_senha: TMaskEdit;
    q_autoriza: TQuery;
    qsoma: TQuery;
    q_autorizaEMISSAO_CHEQUE: TStringField;
    q_autorizaAUTORIZA_REGISTRO: TStringField;
    qrListaStatusCodigo: TIntegerField;
    qrListaStatusDescricao: TStringField;
    tbSolChequesEmpresa: TStringField;
    tbSolChequesFilial: TStringField;
    tbSolChequesCodigo: TStringField;
    tbSolChequesData_solicitacao: TDateTimeField;
    tbSolChequesSetor: TStringField;
    tbSolChequesRemetente: TStringField;
    tbSolChequesValor: TFloatField;
    tbSolChequesNominal: TStringField;
    tbSolChequesStatus: TIntegerField;
    tbSolChequesData_emissao: TDateTimeField;
    tbSolChequesCodigoCC: TIntegerField;
    tbSolChequesCheque: TStringField;
    tbSolChequesEmissor: TStringField;
    tbParametrosEmpresa: TStringField;
    tbParametrosFilial: TStringField;
    tbParametrosNumerador_Processos: TStringField;
    tbParametrosNumerador_Documentos: TStringField;
    tbParametrosEndereco_ftp: TStringField;
    tbParametrosUsuario_ftp: TStringField;
    tbParametrosSenha_ftp: TStringField;
    tbParametrosHost: TStringField;
    tbParametrosVersao: TStringField;
    tbParametroskeycrypt: TStringField;
    tbParametrosHost_smtp: TStringField;
    tbParametrosPorta_smtp: TSmallintField;
    tbParametrosUsuario_smtp: TStringField;
    tbParametrosSenha_smtp: TStringField;
    tbParametrosNumerador_Transmittal: TStringField;
    tbParametrosPATH_SERVER: TStringField;
    tbParametrosAliq_PIS_PASEP: TFloatField;
    tbParametrosAliq_COFINS: TFloatField;
    tbParametrosAliq_ICMS: TFloatField;
    tbParametrosAliq_ICMS_EXTRA: TFloatField;
    tbParametrosNumerador_Sol_Cheques: TStringField;
    tbParametrosNumerador_Sol_Reg: TStringField;
    tbParametrosNumerador_Sol_Tracla: TStringField;
    qrPermissaoAlterarEmail_aviso_oper: TSmallintField;
    qrPermissaoAlterarUsuario: TStringField;
    qrStatusEmailCodigo: TIntegerField;
    qrStatusEmailDescricao: TStringField;
    qrFinancUsuario: TStringField;
    qrFinancNome_Completo: TStringField;
    qrFinancEmail_aviso_finan: TSmallintField;
    qrFinancEmail: TStringField;
    qrFinancEmail_aviso_oper: TSmallintField;
    qrSolicitanteNome_Completo: TStringField;
    qrSolicitanteEmail: TStringField;
    qrSolicitanteUsuario: TStringField;
    qrProcProcesso: TStringField;
    qrProcValor_Previsao: TFloatField;
    qrProcDescricao: TStringField;
    qrProcREG: TAutoIncField;
    qrCCCodigo: TAutoIncField;
    qrCCDescricao: TStringField;
    q_ITENSPROCodigo: TStringField;
    q_ITENSPROProcesso: TStringField;
    q_ITENSPROqvalor: TFloatField;
    q_ITENSPROSALDO: TFloatField;
    tbItensEmpresa: TStringField;
    tbItensFilial: TStringField;
    tbItensCodigo: TStringField;
    tbItensSequencial: TIntegerField;
    tbItensProcesso: TStringField;
    tbItensREG_numerario: TIntegerField;
    tbItensDescricao: TStringField;
    tbItensValor: TFloatField;
    qsomaCodigo: TStringField;
    qsomaQVALOR: TFloatField;
    qrPagamentoCodigo: TStringField;
    qrPagamentoSequencial: TIntegerField;
    qrPagamentoProcesso: TStringField;
    qrPagamentoDescricao: TStringField;
    qrPagamentoValor: TFloatField;
    qrPagamentoImportador: TStringField;
    qrPagamentoRazao_Social: TStringField;
    tbSolChequesObservacoes: TMemoField;
    qrSolicitacoesCodigo: TStringField;
    qrSolicitacoesValor: TFloatField;
    qrSolicitacoesDescricao: TStringField;
    qrSolicitacoesData_solicitacao: TDateTimeField;
    qrSolicitacoesNome_Completo: TStringField;
    qrSolicitacoesNominal: TStringField;
    qrSolicitacoesObservacoes: TStringField;
    qrSolicitacoesData_emissao: TDateTimeField;
    qrSolicitacoesCodigoCC: TIntegerField;
    qrSolicitacoesCheque: TStringField;
    qrSolicitacoesEmissor: TStringField;
    qrSolicitacoesNome_Completo_1: TStringField;
    qrSolicitacoesRemetente: TStringField;
    qrSolicitacoesStatus: TIntegerField;
    qrSolicitacoesEmpresa: TStringField;
    qrSolicitacoesFilial: TStringField;
    tbItensNumerario: TStringField;
    btnContabilizar: TBitBtn;
    qrProcNumerario: TStringField;
    qrSolicitacoesDescricao_CC: TStringField;
    qrSolicitacoesContabilizacao_Automatica: TIntegerField;
    gbLocalizar: TGroupBox;
    btnAnterior: TButton;
    btnProximo: TButton;
    rbSolicitacao: TRadioButton;
    rbProcesso: TRadioButton;
    edtLoc: TMaskEdit;
    btnLocalizar: TBitBtn;
    rbValor: TRadioButton;
    qrItens: TQuery;
    qrItensEmpresa: TStringField;
    qrItensFilial: TStringField;
    qrItensCodigo: TStringField;
    qrItensSequencial: TIntegerField;
    qrItensProcesso: TStringField;
    qrItensREG_numerario: TIntegerField;
    qrItensDescricao: TStringField;
    qrItensValor: TFloatField;
    qrItensNumerario: TStringField;
    qrItensSaldo: TFloatField;
    lblSaldo: TLabel;
    dsItens2: TDataSource;
    edProcesso: TEdit;
    edDescItem: TEdit;
    edValor: TEdit;
    qryEmail_Auto: TQuery;
    Label17: TLabel;
    DBEdit1: TDBEdit;
    DBEdit7: TDBEdit;
    Label18: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label19: TLabel;
    DBEdit14: TDBEdit;
    qrCCBanco: TStringField;
    qrCCAgencia: TStringField;
    qrCCConta_Corrente: TStringField;
    qrSolicitacoesBanco: TStringField;
    qrSolicitacoesAgencia: TStringField;
    qrSolicitacoesConta_Corrente: TStringField;
    qrProcCGC_CPF: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnSalvaSolClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbVerTodosClick(Sender: TObject);
    procedure btnCancelSolClick(Sender: TObject);
    procedure qrSolicitacoesAfterScroll(DataSet: TDataSet);
    procedure btnNovaSolClick(Sender: TObject);
    procedure btnSairSolClick(Sender: TObject);
    procedure btnSolicitaClick(Sender: TObject);
    procedure btnCancSolClick(Sender: TObject);
    procedure edtProcChange(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure btnItemBusClick(Sender: TObject);
    procedure btnItemSalClick(Sender: TObject);
    procedure tbItensBeforePost(DataSet: TDataSet);
    procedure tbItensBeforeEdit(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnAltSolClick(Sender: TObject);
    procedure btnReativarClick(Sender: TObject);
{    procedure btnItemNovClick(Sender: TObject);}
    procedure btnItemAltClick(Sender: TObject);
    procedure btnItemCanClick(Sender: TObject);
    procedure btnItemExcClick(Sender: TObject);
    Procedure EmailConecta();
    Procedure CorpoEmail(var v_body, v_razao: String);
    Procedure EmailDePara();
    procedure btnEmissaoClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure tbSolChequesAfterPost(DataSet: TDataSet);
    procedure tbItensAfterPost(DataSet: TDataSet);
    procedure tbItensBeforeDelete(DataSet: TDataSet);
    procedure tbSolChequesBeforeDelete(DataSet: TDataSet);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure btnCanChequeClick(Sender: TObject);
    procedure btnEmitirClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure edtLocChange(Sender: TObject);
    procedure cancelsenhaClick(Sender: TObject);
    procedure oksenhaClick(Sender: TObject);
    procedure btnContabilizarClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure rbSolicitacaoClick(Sender: TObject);
    procedure rbProcessoClick(Sender: TObject);
    procedure rbValorClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure edtLocKeyPress(Sender: TObject; var Key: Char);
    procedure qrItensSaldoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qrItensAfterScroll(DataSet: TDataSet);
    procedure edValorKeyPress(Sender: TObject; var Key: Char);
  private
    cod_mov : String;
    QtdSolicitacoes : Integer;
    Solicitacao : array [1..3000] of string;
    Posicao : Integer;
    SaldoProcesso : Extended;
    vCodAPL, vTitulo, vAssunto, vAnexo, vDe, vPara, vCco, vCc, vBody : String;

    q_Aux : TQuery;

    { Private declarations }
    procedure LocalizarClique;
    procedure TrazCodigoMovimentacao;

    procedure CalculaSaldoProcesso(Proc : String);
    procedure CarregaGridItens(Solicitacao : String);

    procedure LancaMovimentacao;
    procedure LancaDesmembramentoNumerarios;

    procedure DesfazMovimentacao;
    procedure DesfazDesmembramentoNumerarios;

    procedure AlteraStatusParaContabilizado;
    procedure AlteraStatusRetornaParaEmitido;

    function  EnviaEmailContabilizacao : Boolean;
    function  EnviaEmailDescontabilizacao : Boolean;

    procedure SetaParametroContabilizacao_Automatica(Status : Boolean);

    procedure BuscaCodigoSolicitacao(Proc : String; ValorItem : String);

    function AlteraItem(Valor : String) : Boolean;
    procedure DeletaItem;

    procedure IncluiEmailAuto(CodAPL, Titulo, Assunto, Anexo, De, Para, Cco, Cc, Body: String);
  public
    { Public declarations }
  end;

var
  f_solCheques : Tf_solCheques;
  v_controlChange, v_html : String;
  v_valor_aux : Real;
  v_cod_aux : Integer;
  b_emissor : Boolean;
  v_status_email, v_STYLE : String;
  qprosemsaldo : string;
  semsaldo : boolean;

implementation

Uses U_MSCOMEX;

{$R *.DFM}

procedure AppendToWB(WB: TWebBrowser; const html: widestring) ;
var
  Range: IHTMLTxtRange;
begin
  Range := ((WB.Document AS IHTMLDocument2).body AS IHTMLBodyElement).createTextRange;
  Range.Set_text('');
  Range.Collapse(False);
  Range.PasteHTML(html);
end;

Procedure Tf_solCheques.EmailConecta();
begin
  qrPagamento.Close;
  qrPagamento.Params[0].AsString := qrSolicitacoesCodigo.AsString;
  qrPagamento.Open;

  pnlAguarde.Height := 105;

  pnlAguarde.Left := round(pnlPrincipal.Width/2) - round(pnlAguarde.Width/2);
  pnlAguarde.Top  := round(pnlPrincipal.Height/2) - round(pnlAguarde.Height/2);
  pnlAguarde.Refresh;
end;

Procedure Tf_solCheques.EmailDePara();
var
  i : Integer;
begin
  qrFinanc.Close;
  qrFinanc.Params[0].AsString := v_usuario;
  qrFinanc.open;

  vCc := '';

  while not qrFinanc.Eof do
   begin
    if qrFinancEmail.AsString <> ''
     then begin
       if (qrFinancUsuario.AsString <> 'DUDA')
        then begin
          if vCc = ''
           then vCc := qrFinancNome_Completo.AsString + '<' + qrFinancEmail.AsString + '>'
           else vCc := vCc + '; ' + qrFinancNome_Completo.AsString + '<' + qrFinancEmail.AsString + '>';
        end;

       if v_usuario = qrFinancUsuario.AsString
        then begin
          vDe := qrFinancNome_Completo.AsString + '<' + qrFinancEmail.AsString + '>';
        end;

       Inc(i);
       qrFinanc.Next;
    end;
   end;
end;

Procedure Tf_solCheques.CorpoEmail(var v_body, v_razao: String);
var
  i: Integer;
begin
  v_body := v_body + '<table width="100%" border="1" cellspacing="0" cellpadding="1">'
                   +     '<tr>'
                   +        '<td width="76%"><B>Nominal:</B> '+ qrSolicitacoesNominal.AsString +'</td>'
                   +        '<td width="24%"><B>Valor:</B> '+ formatfloat('0.00',qrSolicitacoesValor.AsFloat) +'</td>'
                   +     '</tr>'
                   +     '<tr>'
                   +        '<td colspan="2"><B>Status:</B> '+ Trim(v_status_email) +'</td>'
                   +     '</tr>'
                   +     '<tr>'
                   +        '<td colspan="2"><B>Observações:</B><br> ';

  for i:= 0 to dbmemo1.Lines.Count - 1 do
   begin
     v_body := v_body  + Trim((DBmemo1).Lines.Strings[i])+ '<br>';
   end;

  v_body := v_body +  '</td>'+'</tr>'
                   +  '</table>'
                   +  '<table width="100%" border="0" cellspacing="0" cellpadding="0">'
                   +      '<tr>'
                   +         '<td colspan="3"><B><BR>Para Pagamento:</B><br><br></td>'
                   +      '</tr>';

  v_razao := 'Inicio';

  while not qrPagamento.Eof do
   begin
     if qrPagamentoRazao_Social.AsString <> v_razao
      then begin
       if v_razao <> 'Inicio'
        then v_body := v_body + '</Table>';

       v_razao := qrPagamentoRazao_Social.AsString;
       v_body := v_body +      '<tr>';

       if qrPagamentoProcesso.AsString <> ''
        then v_body := v_body + '<td colspan="3"><br><B>Cliente:</B> ' + qrPagamentoRazao_Social.AsString+ '</td>'
                              +      '</tr>';

       v_body := v_body + '<table width="100%" border="1" cellspacing="0" cellpadding="1" align ="center">' + '<tr>';

       if qrPagamentoProcesso.AsString <> ''
        then begin
         v_body := v_body + '<td align="center" width="9%" bgcolor="#EEEEEE"><B><font color="#000000">Processo</font></B></td>';
         v_body := v_body + '<td align="center" width="77%" bgcolor="#EEEEEE"><B><font color="#000000">Descrição</font></B></td>';
        end
        else v_body := v_body + '<td align="center" width="86%" bgcolor="#EEEEEE"><B><font color="#000000">Descrição</font></B></td>';

       v_body := v_body + '<td align="center" width="14%"  bgcolor="#EEEEEE"><B><font color="#000000">Valor&nbsp;</font></B></td>'
                        +      '</tr>';

      end;

     v_body := v_body +'<tr>';

     if qrPagamentoProcesso.AsString <> ''
      then v_body := v_body+        '<td align="center">'+ qrPagamentoProcesso.AsString + '</td>';

     v_body := v_body +        '<td>'+ qrPagamentoDescricao.AsString +'</td>'
                      +        '<td align="right">'+ FormatFloat('0.00',qrPagamentoValor.AsFloat) +'</td>'
                      +      '</tr>';

     qrPagamento.Next;
   end;

   v_body := v_body + '</Table>';
   v_body := v_body +'<tr>'
                    +        '<td colspan="3"><br><B>Solicitante:</B> ' + qrSolicitacoesNome_Completo.AsString + '</td>'
                    +      '</tr>';

   if b_emissor
    then begin
      v_body := v_body + '<tr>'
                       +        '<td colspan="3"><br><B>Emissor:</B> ' + v_nomecompleto + '</td>'
                       +      '</tr>';
    end;

  v_body := v_body +    '</table>';
end;


procedure Tf_solCheques.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;


procedure Tf_solCheques.BitBtn1Click(Sender: TObject);
begin
  pnlPrincipal.Enabled := False;
  pnlInclusao.Height := 249;
  pnlInclusao.Left := round(pnlPrincipal.Width/2) - round(pnlInclusao.Width/2);
  pnlInclusao.Top  := round(pnlPrincipal.Height/2) - round(pnlInclusao.Height/2);
  pnlInclusao.Visible := True;
  btnNovaSol.Click;
end;

procedure Tf_solCheques.btnSalvaSolClick(Sender: TObject);
var
  v_solCheques, v_tbParametros, v_ano : String;
begin
  if btnNovaSol.Tag = 1
   then begin
     tbSolChequesRemetente.AsString := v_usuario;
     tbSolChequesStatus.AsInteger   := 0;
     tbSolChequesEmpresa.AsString   := v_empresa;
     tbSolChequesFilial.AsString    := v_filial;

     tbParametros.Open;
     v_tbParametros := tbParametrosNUMERADOR_SOL_CHEQUES.AsString;
     v_ano := (Copy(v_tbParametros,7,2));
     v_solCheques := formatfloat('0000#',StrToInt(Copy(v_tbParametros,1,5)) + 1) + '/' + v_ano;
     tbparametros.First;
     tbparametros.edit;
     tbParametrosNUMERADOR_SOL_CHEQUES.AsString := v_solCheques;
     tbParametros.Post;
     tbParametros.Close;
     tbSolChequesCodigo.AsString := v_solCheques;
     Panel10.Caption := 'Inclusão de Itens de Solicitações';
     btnNovaSol.Tag := 0;
  end
  else begin
    tbSolCheques.Edit;
    v_solCheques := tbSolChequesCodigo.AsString;
    Panel10.Caption := 'Alteração de Itens de Solicitações';
  end;

  tbSolCheques.Post;

  btnNovaSol.Enabled   := True;
  btnSalvaSol.Enabled  := False;
  btnCancelSol.Enabled := False;
  btnSairSol.Enabled   := True;
  btnAltSol.Enabled    := True;

  qrSolicitacoes.Close;
  qrSolicitacoes.Open;
  qrSolicitacoes.Locate('Codigo',v_solCheques,[loCaseInsensitive]);
  pnlInclusao.Visible  := False;
  pnlPrincipal.Enabled := True;
end;

procedure Tf_solCheques.FormCreate(Sender: TObject);
begin
  b_emissor := False;
  WebBrowser1.Navigate('about:blank') ;

  vCodApl  := 'MS2000';
  vAnexo   := '';
  vCco     := '';

  Top  := 0;
  Left := 0;

  if strtoint(v_nivel) < 8
   then begin
     if tipoBanco = 1 then begin
       qrSolicitacoes.Params[0].AsString := '%';
       qrSolicitacoes.Params[1].AsString := '%';
     end
     else begin
       qrSolicitacoes.Params[0].AsString := '*';
       qrSolicitacoes.Params[1].AsString := '*';
     end;

     label16.Visible           := True;
     DBLookupComboBox2.Visible := True;
     cbVerTodos.Visible        := True;
     
     Dbgrid1.Top    := 117;
     Dbgrid1.Height := 180;
   end
   else begin
     cbVerTodos.Visible := True;

     Dbgrid1.Top    := 117;
     Dbgrid1.Height := 180;
     label16.Visible           := True;
     DBLookupComboBox2.Visible := True;

     qrSolicitacoes.Params[0].AsString := v_usuario;

     if tipoBanco = 1 then
       qrSolicitacoes.Params[1].AsString := '%'
     else
       qrSolicitacoes.Params[1].AsString := '*';
   end;

   if strtoint(v_nivel) <= 5
    then begin
      pnlAcessoRestrito.Visible := True;
      btnEmissao.Visible        := True;
      btnContabilizar.Visible   := True;
    end
    else DBMemo1.Height := 177;

  qrPermissaoAlterar.Open;
  qrSolicitacoes.Open;
  tbSolCheques.Open;
  qrListaStatus.Open;
  DBLookupComboBox2.KeyValue := '0';
  qrStatusEmail.Open;
  q_autoriza.open;

  v_STYLE := '<style> ';
  v_STYLE := v_STYLE +'.titulo{                                      ';
  v_STYLE := v_STYLE +' FONT: 14px Arial;COLOR:#ffffff; text-align: center; BACKGROUND: #002255; width:100.0%;  } ';

  v_STYLE := v_STYLE +'.detalhe{                                      ';
  v_STYLE := v_STYLE +' FONT: 12px Arial; COLOR: #002255; BACKGROUND: #FFFFFF; } ';

  v_STYLE := v_STYLE +'.detalhe2{                                      ';
  v_STYLE := v_STYLE +' FONT: 12px Arial; COLOR: #002255; font-weight: bold;  } ';

  v_STYLE := v_STYLE +'.TABLE1{                                      ';
  v_STYLE := v_STYLE +' width:100.0%;mso-cellspacing:0cm;background:#002255;border:solid #002255 1.0pt; padding:.75pt .75pt .75pt .75pt ';
  v_STYLE := v_STYLE +' } ';

  v_STYLE := v_STYLE +'.TABLE2{                           ';
  v_STYLE := v_STYLE +' width:100.0%;mso-cellspacing:0cm;border:solid #002255 1.0pt; ';
  v_STYLE := v_STYLE +' } ';

  v_STYLE := v_STYLE +'.TABLE3{                                      ';
  v_STYLE := v_STYLE +' width:100.0%;mso-cellspacing:0cm;border:solid #002255 0.0pt; ';
  v_STYLE := v_STYLE +' } ';

  v_STYLE := v_STYLE +'</style> ';
end;

procedure Tf_solCheques.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  f_mscomex.ControledeSolicitaesdeCheques1.Enabled := True;
  f_solCheques := nil;
  Action := caFree;
end;

Procedure Tf_solCheques.cbVerTodosClick(Sender: TObject);
begin
  if cbVerTodos.Checked
   then begin
     qrSolicitacoes.Close;

     if StrToInt(v_nivel) < 8
      then begin
       if tipoBanco = 1 then
         qrSolicitacoes.Params[0].AsString := '%'
       else
         qrSolicitacoes.Params[0].AsString := '*';
      end
      else qrSolicitacoes.Params[0].AsString := v_usuario;

     if tipoBanco = 1 then
       qrSolicitacoes.Params[1].AsString := '%'
     else
       qrSolicitacoes.Params[1].AsString := '*';

     qrSolicitacoes.Open;
     DBLookupComboBox2.Enabled := False;
   end
   else begin
     DBLookupComboBox2.Enabled := True;
     qrSolicitacoes.Close;

     if StrToInt(v_nivel) < 8
      then begin
        if tipoBanco = 1 then
          qrSolicitacoes.Params[0].AsString := '%'
        else
          qrSolicitacoes.Params[0].AsString := '*';
      end
      else qrSolicitacoes.Params[0].AsString := v_usuario;

     qrSolicitacoes.Params[1].AsString := qrListaStatusCodigo.AsString;
     qrSolicitacoes.Open;
   end;
end;

procedure Tf_solCheques.btnCancelSolClick(Sender: TObject);
begin
  tbSolCheques.Cancel;
  btnNovaSol.Enabled       := True;
  btnSalvaSol.Enabled      := False;
  btnCancelSol.Enabled     := False;
  btnSairSol.Enabled       := True;
  btnAltSol.Enabled        := True;
  pnlInclusaoItens.Visible := False;
  pnlPrincipal.Enabled     := True;
  qrProc.Close;
  
  panel11.visible      := True;
  pnlInclusao.Visible  := False;
  pnlPrincipal.Enabled := True;
end;

procedure Tf_solCheques.qrSolicitacoesAfterScroll(DataSet: TDataSet);
begin
  Application.ProcessMessages;

  if (qrSolicitacoesStatus.AsInteger = 0)
   then begin
     if StrToInt(v_nivel) < 6
      then begin
        btnEmissao.Enabled      := False;
        btnEmissao.Visible      := True;
        btnCanCheque.Visible    := False;
        btnContabilizar.Visible := True;
        btnContabilizar.Enabled := False;
      end;

     btnCancSol.Visible  := True;
     btnCancSol.Enabled  := True;
     btnReativar.Visible := False;
     btnSolicita.Enabled := false;

     if qrSolicitacoesvalor.Asfloat > 0
      then btnSolicita.Enabled := True;

     if ((qrSolicitacoesRemetente.AsString = v_usuario) Or (qrPermissaoalterar.Locate('usuario', v_usuario, [loCaseInsensitive])))
      then begin
        panel6.Enabled  := True;
        bitbtn2.Enabled := True;
      end
      else begin
        panel6.Enabled  := False;
        bitbtn2.Enabled := False;
      end;
   end;

  if (qrSolicitacoesStatus.AsInteger = 1)
   then begin
     if StrToInt(v_nivel) < 6
      then begin
        btnEmissao.Enabled      := True;
        btnEmissao.Visible      := True;
        btnCanCheque.Visible    := False;
        btnContabilizar.Visible := True;
        btnContabilizar.Enabled := False;
      end;

     btnCancSol.Visible  := True;
     btnCancSol.Enabled  := True;
     btnReativar.Visible := False;
     btnSolicita.Enabled := false;
     panel6.Enabled      := False;
     bitbtn2.Enabled     := False;
   end;

  if (qrSolicitacoesStatus.AsInteger = 2)
   then begin
     if StrToInt(v_nivel) < 6
      then begin
        btnEmissao.Visible      := False;
        btnCanCheque.Visible    := True;
        btnCanCheque.Enabled    := True;
        btnContabilizar.Visible := True;
        btnContabilizar.Caption := '&Contabilizar';        
        btnContabilizar.Enabled := True;
      end;

     btnSolicita.Enabled := False;
     btnReativar.Visible := False;
     btnCancSol.Visible  := True;
     btnCancSol.Enabled  := False;
     panel6.Enabled      := False;
     bitbtn2.Enabled     := False;
   end;

  if (qrSolicitacoesStatus.AsInteger = 3)
   then begin
     if StrToInt(v_nivel) < 6
      then begin
        btnEmissao.Visible      := True;
        btnEmissao.Enabled      := False;
        btnCanCheque.Visible    := False;
        btnContabilizar.Visible := True;
        btnContabilizar.Enabled := False;
      end;

     btnSolicita.Enabled := False;
     btnCancSol.Visible  := True;
     btnCancSol.Enabled  := False;
     btnReativar.Visible := True;
     btnReativar.Enabled := True;
     panel6.Enabled      := False;
     bitbtn2.Enabled     := False;
   end;

  if (qrSolicitacoesStatus.AsInteger = 4)
   then begin
     if StrToInt(v_nivel) < 6
      then begin
        btnEmissao.Visible      := True;
        btnEmissao.Enabled      := False;
        btnCanCheque.Visible    := False;
        btnContabilizar.Visible := True;
        btnContabilizar.Caption := '&Descontabilizar';
        btnContabilizar.Enabled := True;
      end;

     btnSolicita.Enabled := False;
     btnCancSol.Visible  := True;
     btnCancSol.Enabled  := False;
     btnReativar.Visible := True;
     btnReativar.Enabled := True;
     panel6.Enabled      := False;
     bitbtn2.Enabled     := False;
   end;

  CarregaGridItens(qrSolicitacoesCodigo.AsString);

  with tbItens do
   begin
     Filter   := 'Codigo= '''+ qrSolicitacoesCodigo.AsString +''' ';
     Filtered := True;
     Open;
   end;
end;

procedure Tf_solCheques.btnNovaSolClick(Sender: TObject);
begin
  if tbSolCheques.RecordCount = 0 then
    tbSolCheques.Insert
  else
    tbSolCheques.Append;

  btnNovaSol.Enabled   := False;
  btnSalvaSol.Enabled  := True;
  btnCancelSol.Enabled := True;
  btnSairSol.Enabled   := False;
  btnAltSol.Enabled    := False;
  dbEdit8.SetFocus;
  btnNovaSol.Tag := 1;
end;

procedure Tf_solCheques.btnSairSolClick(Sender: TObject);
begin
  if tbSolCheques.State = dsEdit
   then begin
     MessageDlg('O campo está em edição!', mtInformation,[mbOk], 0);
     Exit;
   end;

  pnlInclusao.Visible  := False;
  pnlPrincipal.Enabled := True;
end;

procedure Tf_solCheques.btnSolicitaClick(Sender: TObject);
var
  v_razao : String;
  v_body : String;
begin
  if MessageDlg('Tem certeza que deseja solicitar este Cheque?', mtConfirmation,[mbYes, mbNo], 0) = mrNo
   then Exit;
   
  screen.cursor := crHourGlass;
  EmailConecta();

  v_body := '<table width="100%" border="1" cellspacing="0" cellpadding="1">'
            +     '<tr>'
            +        '<td colspan="2" align="center" bgcolor="#EEEEEE"><B>MS2000 - SISTEMA GERENCIAL ADUANEIRO</B>'
            +          '<br><B>Solicitação de Cheque Nº:</B> '+ qrSolicitacoesCodigo.AsString + '  -  <B>Data da Solicitação:</B> ' + DateTimeToStr(Date)
            +        '<br>' + FormatDateTime('dddd, d " de " mmmm " de " yyyy " às " hh:mm:ss', Now()) + '</td>'
            +     '</tr>'
            + '</table>'+ '<br><br>';

  if qrStatusEmail.Locate('Codigo','1',[])
   then v_status_email := qrStatusEmailDescricao.AsString;

  CorpoEmail(v_body, v_razao);
  EmailDePara();

  vBody    := v_body;
  vAssunto := 'MS2000Plus - Solicitação de Cheque Nº ' + qrSolicitacoesCodigo.AsString;

  AppendToWB(WebBrowser1,v_body);

  pnlbrowser.Align   := alClient;
  pnlbrowser.visible := true;
  pnlbrowser.top     := 0;
  pnlbrowser.left    := 0;
  
  screen.cursor := crDefault;

  pnlBroConSol.Visible := True;
  pnlBroConEmi.Visible := False;
  pnlImprimir.Visible  := False;
end;

Procedure Tf_solCheques.btnCancSolClick(Sender: TObject);
var
  cod, v_body, v_razao : String;
  v_aux : Integer;
begin
  if MessageDlg('Tem certeza que cancelar esta solicitação?', mtConfirmation,[mbYes, mbNo], 0) = mrNo
   then Exit;

  screen.cursor := crHourGlass;
  qrPagamento.Close;
  qrPagamento.Params[0].AsString := qrSolicitacoesCodigo.AsString;
  qrPagamento.Open;
  v_aux := tbSolChequesStatus.AsInteger;

  if v_aux <> 0
   then begin
     pnlAguarde.Visible := True;
     EmailConecta();

     v_body := '<table width="100%" border="1" cellspacing="0" cellpadding="1">'
               +     '<tr>'
               +        '<td colspan="2" align="center" bgcolor="#EEEEEE"><B>MS2000 - SISTEMA GERENCIAL ADUANEIRO</B>'
               +        '<br><B>Cancelamento da Solicitação de Cheque Nº: </B>'+ qrSolicitacoesCodigo.AsString + '  -  <B>Data do Cancelamento:</B> ' + DateTimeToStr(Date)
               +        '<br>' + FormatDateTime('dddd, d " de " mmmm " de " yyyy " às " hh:mm:ss', Now()) + '</td>'
               +     '</tr>'
               + '</table>'+ '<br><br>';

     if qrStatusEmail.Locate('Codigo','3',[])
      then v_status_email := qrStatusEmailDescricao.AsString;

     CorpoEmail(v_body, v_razao);
     EmailDePara();

     vBody    := v_body;
     vAssunto := 'MS2000Plus - Cancelamento da Solicitação de Cheque Nº ' + qrSolicitacoesCodigo.AsString;
     vTitulo  := 'Solicitação de Cheque Nº ' + qrSolicitacoesCodigo.AsString;
   end;

  dbGrid1.SetFocus;

  try
    try
      if v_aux <> 0
       then begin
         IncluiEmailAuto(vCodApl, vTitulo, vAssunto, vAnexo, vDe, vPara, vCco, vCc, vBody);
       end;

       pnlAguarde.Visible := False;
       tbSolCheques.Edit;
       tbSolChequesStatus.AsInteger := 3;
       tbSolCheques.Post;
       cod := qrSolicitacoesCodigo.AsString;
       qrSolicitacoes.Close;
       qrSolicitacoes.Open;
       qrSolicitacoes.Locate('Codigo',cod,[loCaseInsensitive]);
       btnReativar.Visible := True;
       btnCancSol.Visible := False;
       logusu('P','Cancelou Solicitação de Cheque: [Cod]= '+tbSolChequesCodigo.AsString + ' [remetente]= '+tbSolChequesRemetente.AsString+' [Status]= '+tbSolChequesStatus.AsString+' [Valor]= ' + tbSolChequesValor.AsString + ' [Nominal]= '+tbSolChequesNominal.AsString+ ' [obs]= '+ tbSolChequesObservacoes.AsString);

       if v_aux <> 0
        then MessageDlg('Email enviado com sucesso!', mtInformation,[mbOk], 0);

    except on E:Exception do
      if v_aux <> 0
       then showmessage('Erro ao tentar enviar e-mail');
    end;
   finally
     screen.cursor := crDefault;
   end;

  pnlAguarde.Visible := False;
end;

procedure Tf_solCheques.edtProcChange(Sender: TObject);
begin
  if Length(edtProc.Text) <> 8
   then begin
     lblSaldo.Caption := '';
     Exit;
   end; 

  qrProc.Close;
  Screen.Cursor := crHourGlass;
  qrProc.Params[0].AsString := edtProc.text;
  qrProc.Open;
  Screen.Cursor := crDefault;

  if qrProc.RecordCount < 1
   then begin
     MessageDlg('Não há numerários para o Processo!', mtInformation,[mbOk], 0);
     Exit;
   end
   else begin
     CalculaSaldoProcesso(edtProc.text);

     if SaldoProcesso = 0
      then begin
        if Application.MessageBox(pChar('O saldo do Processo informado está zerado, deseja continuar ?'),'Confirmação',MB_YESNO+MB_ICONQUESTION) = IDNO
         then begin
           btnCancelSolClick(btnCancelSol);
           Exit;
         end;
      end;

     if SaldoProcesso < 0
      then begin
        if Application.MessageBox(pChar('O saldo do Processo informardo está negativo em ' + 'R$ ' + FormatCurr('#,##0.00',SaldoProcesso*(-1)) + ', deseja continuar ?'),'Confirmação',MB_YESNO+MB_ICONQUESTION) = IDNO
         then begin
           btnCancelSolClick(btnCancelSol);
           Exit;
         end;
      end;

     if SaldoProcesso > 0
      then begin
        if Application.MessageBox(pChar('O saldo do Processo informado está positivo em ' + 'R$ ' + FormatCurr('#,##0.00',SaldoProcesso) + ', deseja continuar ?'),'Confirmação',MB_YESNO+MB_ICONQUESTION) = IDNO
         then begin
           btnCancelSolClick(btnCancelSol);
           Exit;
         end;
      end;

     if SaldoProcesso = 0
      then lblSaldo.Caption := 'Saldo Zerado'
      else begin
       if SaldoProcesso < 0
        then lblSaldo.Caption := 'R$ ' + FormatCurr('#,##0.00',SaldoProcesso*(-1)) + ' a Pagar'
        else lblSaldo.Caption := 'R$ ' + FormatCurr('#,##0.00',SaldoProcesso)      + ' a Receber';
      end;
   end;

  panel11.visible := True;
  bitbtn9.Enabled := True;
end;

procedure Tf_solCheques.BitBtn9Click(Sender: TObject);
var
  contador, v_codItens: Integer;
  cod : string;
begin
  {Restrição para processos da Brasdril}
  if (qrProcCGC_CPF.AsString = '4210131100')
   then begin
     if ((qrProcNumerario.AsString <> 'MART') and
         (qrProcNumerario.AsString <> 'MCOF') and
         (qrProcNumerario.AsString <> 'MII')  and
         (qrProcNumerario.AsString <> 'MIPI') and
         (qrProcNumerario.AsString <> 'ML')   and
         (qrProcNumerario.AsString <> 'MMO')  and
         (qrProcNumerario.AsString <> 'MMOI') and
         (qrProcNumerario.AsString <> 'MOI')  and
         (qrProcNumerario.AsString <> 'MULI') and
         (qrProcNumerario.AsString <> 'MOIP') and
         (qrProcNumerario.AsString <> 'MPIS') and
         (qrProcNumerario.AsString <> 'MT')   and
         (qrProcNumerario.AsString <> 'MUCO') and
         (qrProcNumerario.AsString <> 'MUL')  and
         (qrProcNumerario.AsString <> 'MULF') and
         (qrProcNumerario.AsString <> 'MULP') and
         (qrProcNumerario.AsString <> 'MULT') and
         (qrProcNumerario.AsString <> 'II')   and
         (qrProcNumerario.AsString <> 'IPI')  and
         (qrProcNumerario.AsString <> 'CF')   and
         (qrProcNumerario.AsString <> 'PP')   and
         (qrProcNumerario.AsString <> 'ICMS') and
         (qrProcNumerario.AsString <> 'FECP') and
         (qrProcNumerario.AsString <> 'TAXA') and
         (qrProcNumerario.AsString <> 'ARM')  and
         (qrProcNumerario.AsString <> 'MAR')  and
         (qrProcNumerario.AsString <> 'ICMC') and
         (qrProcNumerario.AsString <> 'ICMP'))
      then begin
        logusu('P','Tentou incluir numerário não permitido para o cliente Brasdril');
        Application.MessageBox(Pchar(v_usuario + ', numerário não permitido para esse CNPJ.'),'Aviso',MB_ICONWARNING);
        Abort;
      end;
   end;

  with tbItens do
   begin
     Filter   := 'Codigo= '''+ qrSolicitacoesCodigo.AsString +''' ';
     Filtered := True;
     Open;
     Last;
     v_codItens := tbItensSequencial.AsInteger;
     filtered := False;
   end;

  with Dbgrid3 do
   begin
     for contador:= 0 to Pred(SelectedRows.Count)
      do begin
        Datasource.Dataset.Bookmark:= SelectedRows[contador];

        if v_codItens = Null
         then v_codItens := 1
         else v_codItens := v_codItens+1;

        tbItens.Append;
        tbItensEmpresa.AsString       := v_empresa;
        tbItensFilial.AsString        := v_filial;
        tbItensCodigo.AsString        := qrSolicitacoesCodigo.AsString;
        tbItensSequencial.AsInteger   := v_codItens;
        tbItensREG_numerario.AsString := qrProcREG.AsString;
        tbItensProcesso.AsString      := qrProcProcesso.AsString;
        tbItensNumerario.AsString     := qrProcNumerario.AsString;
        tbItensDescricao.AsString     := qrProcDescricao.AsString;
        tbItensValor.AsString         := qrProcValor_Previsao.AsString;
        tbItens.Post;
      end;
   end;

  pnlPrincipal.Enabled := True;
  cod := qrSolicitacoesCodigo.AsString;
  qrSolicitacoes.Close;
  qrSolicitacoes.Open;
  qrSolicitacoes.Locate('Codigo',cod,[loCaseInsensitive]);
  panel11.visible := True;
end;

procedure Tf_solCheques.btnItemBusClick(Sender: TObject);
begin
  panel11.Visible      := False;
  pnlPrincipal.Enabled := False;

  pnlInclusaoItens.Height  := 273;
  pnlInclusaoItens.Left    := round(pnlPrincipal.Width/2) - round(pnlInclusao.Width/2);
  pnlInclusaoItens.Top     := round(pnlPrincipal.Height/2) - round(pnlInclusao.Height/2);
  pnlInclusaoItens.Visible := True;

  edtProc.SetFocus;
  edtProc.Clear;
end;

procedure Tf_solCheques.btnItemSalClick(Sender: TObject);
var
  qvalor : real;
  cod : String;
begin
  {Ocorre qdo o botao novo for clicado}
  {if tbItensCodigo.AsString = ''
   then begin
     if (v_cod_aux = Null) Or (IntToStr(v_cod_aux) = '')
      then v_cod_aux := 1
      else v_cod_aux := Succ(v_cod_aux);

     tbItensEmpresa.AsString := v_empresa;
     tbItensFilial.AsString  := v_filial;
     tbItensCodigo.AsString  := qrSolicitacoesCodigo.AsString;
     tbItensSequencial.AsInteger := v_cod_aux;
   end;}
  cod := qrSolicitacoesCodigo.AsString;

  if AlteraItem(edValor.Text)
   then begin
     qsoma.close;
     qsoma.params[0].asstring := qrSolicitacoesCodigo.AsString;
     qsoma.open;
     qvalor := 0;
     
     if qsoma.recordcount > 0
      then qvalor := qsomaqvalor.asfloat;

     tbSolCheques.Edit;
     tbSolChequesValor.Asfloat := qvalor;
     tbSolCheques.Post;

     qrSolicitacoes.Close;
     qrSolicitacoes.Open;
     qrSolicitacoes.Locate('Codigo',cod,[loCaseInsensitive]);

     edValor.Enabled    := False;

     btnItemBus.Enabled := True;
     btnItemAlt.Enabled := True;
     btnItemSal.Enabled := False;
     btnItemCan.Enabled := False;
     btnItemExc.Enabled := True;

     dbGrid2.Enabled := True;
     Panel1.Enabled  := True;
     Panel2.Enabled  := True;
     panel11.Visible := False;
     bitbtn9.Enabled := False;
   end;
end;

procedure Tf_solCheques.tbItensBeforePost(DataSet: TDataSet);
begin
  Exit;
end;

procedure Tf_solCheques.tbItensBeforeEdit(DataSet: TDataSet);
begin
  Exit;
end;

procedure Tf_solCheques.BitBtn2Click(Sender: TObject);
begin
  pnlPrincipal.Enabled := False;

  pnlInclusao.Height  := 249;
  pnlInclusao.Left    := round(pnlPrincipal.Width/2) - round(pnlInclusao.Width/2);
  pnlInclusao.Top     := round(pnlPrincipal.Height/2) - round(pnlInclusao.Height/2);
  pnlInclusao.Visible := True;
  
  btnAltSol.Click;
end;

Procedure Tf_solCheques.btnAltSolClick(Sender: TObject);
begin
  tbSolCheques.Edit;

  btnNovaSol.Enabled   := False;
  btnSalvaSol.Enabled  := True;
  btnCancelSol.Enabled := True;
  btnSairSol.Enabled   := False;
  btnAltSol.Enabled    := False;
  
  dbEdit8.SetFocus;
  btnAltSol.Tag := 1;
End;

procedure Tf_solCheques.btnReativarClick(Sender: TObject);
var
  cod : String;
begin
  if MessageDlg('Tem certeza que Reativar a solicitação deste Cheque?', mtConfirmation,[mbYes, mbNo], 0) = mrNo
   then Exit;
       
  tbSolCheques.Edit;
  tbSolChequesStatus.AsInteger := 0;
  tbSolCheques.Post;
  logusu('P','Reativou Solicitação de Cheque: [Cod]= '+tbSolChequesCodigo.AsString + ' [remetente]= '+tbSolChequesRemetente.AsString+' [Status]= '+tbSolChequesStatus.AsString+' [Valor]= ' + tbSolChequesValor.AsString + ' [Nominal]= '+tbSolChequesNominal.AsString+ ' [obs]= '+ tbSolChequesObservacoes.AsString);
  cod := qrSolicitacoesCodigo.AsString;
  qrSolicitacoes.Close;
  qrSolicitacoes.Open;
  qrSolicitacoes.Locate('Codigo',cod,[loCaseInsensitive]);
  btnReativar.Visible := False;
  btnCancSol.Visible := True;
  dbGrid1.SetFocus;
end;

{Procedure Tf_solCheques.btnItemNovClick(Sender: TObject);
begin
  TbItens.Open;
  btnItemNov.Enabled := False;
  btnItemBus.Enabled := False;
  btnItemAlt.Enabled := False;
  btnItemSal.Enabled := True;
  btnItemCan.Enabled := True;
  btnItemExc.Enabled := False;

  dbGrid2.Enabled    := False;
  Panel1.Enabled     := False;
  Panel2.Enabled     := False;
  edProcesso.Enabled := True;
  edValor.Enabled    := True;
  edValor.SetFocus;
  tbItens.Last;

  v_cod_aux := tbItensSequencial.AsInteger;
  tbItens.Append;
  tbItensValor.AsString := '0,00';
  v_valor_aux := 0.00;
end;}

procedure Tf_solCheques.btnItemAltClick(Sender: TObject);
begin
  if tbItens.RecordCount = 0
   then begin
     MessageDlg('Insira um item primeiro!', mtInformation,[mbOk], 0);
     Exit;
   end;

  v_valor_aux := tbItensValor.AsFloat;
  edValor.Enabled := True;
  edValor.SetFocus;
  tbItens.Edit;

  btnItemBus.Enabled := False;
  btnItemAlt.Enabled := False;
  btnItemSal.Enabled := True;
  btnItemCan.Enabled := True;
  btnItemExc.Enabled := False;

  dbGrid2.Enabled := False;
  Panel1.Enabled  := False;
  Panel2.Enabled  := False;
end;

Procedure Tf_solCheques.btnItemCanClick(Sender: TObject);
Begin
  edValor.Enabled := False;

  btnItemBus.Enabled := True;
  btnItemAlt.Enabled := True;
  btnItemSal.Enabled := False;
  btnItemCan.Enabled := False;
  btnItemExc.Enabled := True;

  dbGrid2.Enabled    := True;
  Panel1.Enabled     := True;
  Panel2.Enabled     := True;
end;

procedure Tf_solCheques.btnItemExcClick(Sender: TObject);
var
  cod : String;
  qvalor : real;
begin
  if tbItens.RecordCount = 0
   then begin
     MessageDlg('Insira um item primeiro!', mtInformation,[mbOk], 0);
     Exit;
   end;

  if MessageDlg('Tem certeza que deseja excluir este item de solicitação?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
   then begin
     cod := qrSolicitacoesCodigo.AsString;

     DeletaItem; 

     qsoma.close;
     qsoma.params[0].asstring := qrSolicitacoesCodigo.AsString;
     qsoma.open;
     qvalor := 0;
     
     if qsoma.recordcount > 0
      then qvalor := qsomaqvalor.asfloat;

     tbSolCheques.Edit;
     tbSolChequesValor.Asfloat := qvalor;
     tbSolCheques.Post;

     qrSolicitacoes.Close;
     qrSolicitacoes.Open;
     qrSolicitacoes.Locate('Codigo',cod,[loCaseInsensitive]);
   end;
end;

procedure Tf_solCheques.btnEmissaoClick(Sender: TObject);
begin
  {verificar saldos dos processos}
  qprosemsaldo  :='';
  semsaldo      := false;
  me_senha.Clear;

  q_itenspro.close;

  if tipoBanco = 1
   then begin
     q_itenspro.sql.Clear;
     q_itenspro.sql.add('SELECT Solicitacao_Cheques_Itens.Codigo, Solicitacao_Cheques_Itens.Processo, Sum(Solicitacao_Cheques_Itens.Valor) AS qvalor, ');
     q_itenspro.sql.add('       (((SELECT ISNULL(SUM(Valor_Registrado),0) FROM Numerarios_Processos WHERE Processo = Solicitacao_Cheques_Itens.Processo) - (SELECT ISNULL(SUM(Valor),0) FROM Creditos_Processos WHERE Processo = Solicitacao_Cheques_Itens.Processo))*-1) AS SALDO ');
     q_itenspro.sql.add('FROM Solicitacao_Cheques_Itens                                                ');
     q_itenspro.sql.add('GROUP BY Solicitacao_Cheques_Itens.Codigo, Solicitacao_Cheques_Itens.Processo ');
     q_itenspro.sql.add('HAVING (((Solicitacao_Cheques_Itens.Codigo)=:QSOL))                           ');
     q_itenspro.sql.add('ORDER BY Solicitacao_Cheques_Itens.Processo;                                  ');
   end;

  q_itenspro.Params[0].AsString := qrSolicitacoescodigo.AsString;
  q_itenspro.open;

  while not q_itenspro.eof do
   begin
     if q_itensproqvalor.asfloat > q_itensprosaldo.asfloat
      then begin
        semsaldo := true;
        
        if qprosemsaldo = ''
         then qprosemsaldo := 'Processo: '+q_itensproprocesso.asstring+' está sem saldo'
         else qprosemsaldo := qprosemsaldo+#13#10'Processo: '+q_itensproprocesso.asstring+' está sem saldo';
      end;

     q_itenspro.next;
   end;

  if semsaldo
   then begin
     showmessage(v_usuario+', Atenção!:'+#13#10+qprosemsaldo+#13#10+'será necessário senha de autorização para emissão de cheques referentes a processos sem saldo.');

     p_autoriza.Height  := 112;
     p_autoriza.Left    := round(pnlPrincipal.Width/2) - round(p_autoriza.Width/2);
     p_autoriza.Top     := round(pnlPrincipal.Height/2) - round(p_autoriza.Height/2);
     p_autoriza.Visible := true;

     me_senha.SetFocus;
   end
   else oksenhaClick(f_solcheques);
end;

procedure Tf_solCheques.BitBtn3Click(Sender: TObject);
begin
  pnlEmissao.Visible := False;
end;

procedure Tf_solCheques.BitBtn4Click(Sender: TObject);
var
  v_body, v_razao, qtexto : String;
begin
  dbGrid1.SetFocus;
  EmailConecta();
  pnlEmissao.Visible := False;
  qtexto := '';

  if semsaldo
   then qtexto := ' - AUTORIZADO - PROCESSO(S) SEM SALDO';

  v_body :=
                     '<table width="100%" border="1" cellspacing="0" cellpadding="1">'
                   +     '<tr>'
                   +        '<td colspan="2" align="center" bgcolor="#EEEEEE"><B>MS2000 - SISTEMA GERENCIAL ADUANEIRO</B>'
                   +        '<br><B>Emissão do Cheque Nº: </B>'+ qrSolicitacoesCodigo.AsString + '  -  <B>Data da Emissão:</B> ' + DateTimeToStr(Date)
                   +        '<br>' + FormatDateTime('dddd, d " de " mmmm " de " yyyy " às " hh:mm:ss', Now()) + '</td>'
                   +     '</tr>'
                   + '</table>'+ '<br><br>';

  b_emissor := True;

  if qrStatusEmail.Locate('Codigo','2',[])
   then v_status_email := qrStatusEmailDescricao.AsString+' - Nº/Tipo: '+dbedit10.text  +' - C/C: '+qrccdescricao.asstring;

  CorpoEmail(v_body, v_razao);
  b_emissor := False;
  EmailDePara();

  qrSolicitante.Close;
  qrSolicitante.Params[0].AsString := qrSolicitacoesRemetente.AsString;
  qrSolicitante.Open;

  if vCc = ''
   then vCc := qrSolicitanteNome_Completo.AsString + '<' + qrSolicitanteEmail.AsString + '>'
   else vCc := vCc + '; ' + qrSolicitanteNome_Completo.AsString + '<' + qrSolicitanteEmail.AsString + '>';

  vBody    := v_body;
  vAssunto := 'MS2000Plus - Emissão do Cheque Nº ' + qrSolicitacoesCodigo.AsString + qtexto;

  AppendToWB(WebBrowser1,v_body);

  pnlbrowser.Align := alClient;
  pnlbrowser.visible := true;
  pnlbrowser.top  := 0;
  pnlbrowser.left := 0;
  pnlBroConSol.Visible := False;
  pnlBroConEmi.Visible := True;
  pnlImprimir.Visible  := False;
end;

procedure Tf_solCheques.tbSolChequesAfterPost(DataSet: TDataSet);
begin
  with f_mscomex Do
   begin
     logusu('P','Alterou Solicitação de Cheque: [Cod]= '+tbSolChequesCodigo.AsString + ' [remetente]= '+tbSolChequesRemetente.AsString+' [Status]= '+tbSolChequesStatus.AsString+' [Valor]= ' + tbSolChequesValor.AsString + ' [Nominal]= '+tbSolChequesNominal.AsString+ ' [obs]= '+ tbSolChequesObservacoes.AsString);
   end;
end;

procedure Tf_solCheques.tbItensAfterPost(DataSet: TDataSet);
var
  v_valor_total : Real;
  cod : string;
begin
  with f_mscomex do
   begin
     logusu('P','Alterou Item de Solicitação de Cheque: [Cod]= '+tbItensCodigo.AsString + ' [Sequencial]= '+tbItensSequencial.AsString+' [Processo]= '+tbItensProcesso.AsString+' [Valor]= ' + tbItensValor.AsString + ' [Descrição]= '+tbItensDescricao.AsString);
   end;

  qsoma.close;
  qsoma.params[0].asstring := qrSolicitacoesCodigo.AsString;
  qsoma.open;
  v_valor_Total  := 0;

  if qsoma.recordcount > 0
   then v_valor_Total  := qsomaqvalor.asfloat;

  tbSolCheques.Edit;
  tbSolChequesValor.AsString := FloatToStr(v_valor_total);
  tbSolCheques.Post;

  cod := qrSolicitacoesCodigo.AsString;
  tbSolCheques.close;
  tbSolCheques.open;

  {qrSolicitacoes.Close;
  qrSolicitacoes.Open;
  qrSolicitacoes.Locate('Codigo',cod,[loCaseInsensitive]);}
end;

procedure Tf_solCheques.tbItensBeforeDelete(DataSet: TDataSet);
begin
  with f_mscomex do
   begin
     logusu('E','Excluiu Item de Solicitação de Cheque: [Cod]= '+tbItensCodigo.AsString + ' [Sequencial]= '+tbItensSequencial.AsString+' [Processo]= '+tbItensProcesso.AsString+' [Valor]= ' + tbItensValor.AsString + ' [Descrição]= '+tbItensDescricao.AsString);
   end;
end;

procedure Tf_solCheques.tbSolChequesBeforeDelete(DataSet: TDataSet);
begin
  with f_mscomex do
   begin
     logusu('E','Excluiu Solicitação de Cheque: [Cod]= '+tbSolChequesCodigo.AsString + ' [remetente]= '+tbSolChequesRemetente.AsString+' [Status]= '+tbSolChequesStatus.AsString+' [Valor]= ' + tbSolChequesValor.AsString);
   end;
end;

procedure Tf_solCheques.DBLookupComboBox2Click(Sender: TObject);
begin
  if not cbVerTodos.Checked
   then begin
     qrSolicitacoes.Close;

     if StrToInt(v_nivel) < 8
      then qrSolicitacoes.Params[0].AsString := '%'
      else qrSolicitacoes.Params[0].AsString := v_usuario;

     qrSolicitacoes.Params[1].AsString := qrListaStatusCodigo.AsString;
     qrSolicitacoes.Open;

     if qrSolicitacoes.RecordCount = 0
      then tbItens.Close
      else tbItens.Open;
   end;
end;

procedure Tf_solCheques.btnCanChequeClick(Sender: TObject);
var
  cod, v_body, v_razao : String;
begin
  if MessageDlg('Tem certeza que cancelar a emissão deste Cheque?', mtConfirmation,[mbYes, mbNo], 0) = mrNo
   then Exit;

  screen.cursor := crHourGlass;
  dbGrid1.SetFocus;
  pnlAguarde.Visible := True;
  EmailConecta();

  v_body :=
                     '<table width="100%" border="1" cellspacing="0" cellpadding="1">'
                   +     '<tr>'
                   +        '<td colspan="2" align="center" bgcolor="#EEEEEE"><B>MS2000 - SISTEMA GERENCIAL ADUANEIRO</B>'
                   +        '<br><B>Cancelamento da Emissão do Cheque Nº: </B>'+ qrSolicitacoesCodigo.AsString + '  -  <B>Data da Emissão:</B> ' + DateTimeToStr(Date)
                   +        '<br>' + FormatDateTime('dddd, d " de " mmmm " de " yyyy " às " hh:mm:ss', Now()) + '</td>'
                   +     '</tr>'
                   + '</table>'+ '<br><br>';

  b_emissor := True;

  if qrStatusEmail.Locate('Codigo','1',[])
   then v_status_email := qrStatusEmailDescricao.AsString;
   
  CorpoEmail(v_body, v_razao);
  b_emissor := False;
  EmailDePara();
  qrSolicitante.Close;
  qrSolicitante.Params[0].AsString := qrSolicitacoesRemetente.AsString;
  qrSolicitante.Open;

  if vCc = ''
   then vCc := qrSolicitanteNome_Completo.AsString + '<' + qrSolicitanteEmail.AsString + '>'
   else vCc := vCc + '; ' + qrSolicitanteNome_Completo.AsString + '<' + qrSolicitanteEmail.AsString + '>';

  vBody    := v_body;
  vAssunto := 'MS2000Plus - Cancelamento da Emissão do Cheque Nº ' + qrSolicitacoesCodigo.AsString;
  vTitulo  := 'Solicitação de Cheque Nº ' + qrSolicitacoesCodigo.AsString;

  try
    try
      IncluiEmailAuto(vCodApl, vTitulo, vAssunto, vAnexo, vDe, vPara, vCco, vCc, vBody);

      pnlAguarde.Visible := False;
      tbSolCheques.Edit;
      tbSolChequesStatus.AsInteger      := 1;
      tbSolChequesCodigoCC.AsString     := '';
      tbSolChequesData_emissao.AsString := '';
      tbSolChequesCheque.AsString       := '';

      tbSolCheques.Post;
      cod := qrSolicitacoesCodigo.AsString;
      qrSolicitacoes.Close;
      qrSolicitacoes.Open;
      qrSolicitacoes.Locate('Codigo',cod,[loCaseInsensitive]);
      pnlEmissao.Visible := False;
      logusu('P','Cancelou Emissão de Cheque: [Cod]= '+tbSolChequesCodigo.AsString + ' [remetente]= '+tbSolChequesRemetente.AsString+' [Status]= '+tbSolChequesStatus.AsString+' [Valor]= ' + tbSolChequesValor.AsString + ' [Nominal]= '+tbSolChequesNominal.AsString+ ' [obs]= '+ tbSolChequesObservacoes.AsString);
      MessageDlg('Email enviado com sucesso!', mtInformation,[mbOk], 0);
    except on E:Exception do
      showmessage('Erro ao tentar enviar e-mail');
    end;
  finally
    screen.cursor := crDefault;
  end;

  pnlAguarde.Visible := False;
end;

procedure Tf_solCheques.btnEmitirClick(Sender: TObject);
var
  cod: string;
begin
  pnlBrowser.visible := False;
  pnlAguarde.Visible := True;
  pnlAguarde.Refresh;
  screen.cursor := crHourGlass;

  try
    try
      vTitulo  := 'Solicitação de Cheque Nº ' + qrSolicitacoesCodigo.AsString;

      IncluiEmailAuto(vCodApl, vTitulo, vAssunto, vAnexo, vDe, vPara, vCco, vCc, vBody);

      pnlAguarde.Visible := False;
      tbSolChequesStatus.AsInteger := 2;
      tbSolCheques.Post;
      cod := qrSolicitacoesCodigo.AsString;
      qrSolicitacoes.Close;
      qrSolicitacoes.Open;
      qrSolicitacoes.Locate('Codigo',cod,[loCaseInsensitive]);
      btnCancSol.Enabled := False;
      pnlEmissao.Visible := False;
      logusu('P','Emitiu Solicitação de Cheque: [Cod]= '+tbSolChequesCodigo.AsString + ' [remetente]= '+tbSolChequesRemetente.AsString+' [Status]= '+tbSolChequesStatus.AsString+' [Valor]= ' + tbSolChequesValor.AsString + ' [Nominal]= '+tbSolChequesNominal.AsString+ ' [obs]= '+ tbSolChequesObservacoes.AsString);
      MessageDlg('Email enviado com sucesso!', mtInformation,[mbOk], 0);
    except on E:Exception do
      showmessage('Erro ao tentar enviar e-mail');
    end;
  finally
    screen.cursor := crDefault;
  end;

  pnlAguarde.Visible := False;
end;

procedure Tf_solCheques.BitBtn5Click(Sender: TObject);
begin
  tbSolCheques.Cancel;
  pnlBrowser.Visible := False;
end;

procedure Tf_solCheques.btnimprimirClick(Sender: TObject);
begin
  WebBrowser1.ExecWB(OLECMDID_PRINT, OLECMDEXECOPT_PROMPTUSER);
end;

procedure Tf_solCheques.DBGrid1DblClick(Sender: TObject);
var
  v_body, v_razao : String;
begin
  screen.cursor := crHourGlass;
  qrPagamento.Close;
  qrPagamento.Params[0].AsString := qrSolicitacoesCodigo.AsString;
  qrPagamento.Open;

  v_body := '<table width="100%" border="1" cellspacing="0" cellpadding="1">'
            +     '<tr>'
            +        '<td colspan="2" align="center" bgcolor="#EEEEEE"><B>MS2000 - SISTEMA GERENCIAL ADUANEIRO</B>'
            +          '<br><B>Solicitação de Cheque Nº:</B> '+ qrSolicitacoesCodigo.AsString + '  -  <B>Data da Solicitação:</B> ' + DateTimeToStr(Date)
            +        '<br>' + FormatDateTime('dddd, d " de " mmmm " de " yyyy " às " hh:mm:ss', Now()) + '</td>'
            +     '</tr>'
            + '</table>' + '<br><br>';

  v_status_email := qrSolicitacoesDescricao.AsString;
  CorpoEmail(v_body, v_razao);

  pnlEmissao.Visible := False;
  AppendToWB(WebBrowser1,v_body);
  
  pnlAguarde.Visible := False;
  pnlbrowser.Align   := alClient;
  pnlbrowser.visible := true;
  
  pnlbrowser.top  := 0;
  pnlbrowser.left := 0;
  
  screen.cursor := crDefault;
  pnlBroConSol.Visible := False;
  pnlBroConEmi.Visible := False;
  pnlImprimir.Visible  := True;
end;

procedure Tf_solCheques.BitBtn7Click(Sender: TObject);
begin
  pnlBrowser.Visible := False;
end;

procedure Tf_solCheques.BitBtn11Click(Sender: TObject);
begin
  pnlBrowser.Visible := False;
end;

procedure Tf_solCheques.BitBtn10Click(Sender: TObject);
var
  cod: string;
begin
  pnlBrowser.visible := False;
  pnlAguarde.Visible := True;
  pnlAguarde.Refresh;
  screen.cursor := crHourGlass;

  try
    try
      vTitulo  := 'Solicitação de Cheque Nº ' + qrSolicitacoesCodigo.AsString;

      IncluiEmailAuto(vCodApl, vTitulo, vAssunto, vAnexo, vDe, vPara, vCco, vCc, vBody);

      pnlAguarde.Visible := False;

      tbSolCheques.Edit;
      tbSolChequesStatus.AsInteger := 1;
      tbSolChequesData_solicitacao.AsDateTime := Date();
      tbSolCheques.Post;
      cod := qrSolicitacoesCodigo.AsString;
      qrSolicitacoes.Close;
      qrSolicitacoes.Open;
      qrSolicitacoes.Locate('Codigo',cod,[loCaseInsensitive]);
      logusu('P','Solicitou Cheque: [Cod]= '+tbSolChequesCodigo.AsString + ' [remetente]= '+tbSolChequesRemetente.AsString+' [Status]= '+tbSolChequesStatus.AsString+' [Valor]= ' + tbSolChequesValor.AsString + ' [Nominal]= '+tbSolChequesNominal.AsString+ ' [obs]= '+ tbSolChequesObservacoes.AsString);
      MessageDlg('Solicitação enviada com sucesso!', mtInformation,[mbOk], 0);

    except on E:Exception do
      showmessage('Erro ao tentar enviar e-mail');
    end;
  finally
    screen.cursor := crDefault;
  end;

  pnlAguarde.Visible := False;
end;

procedure Tf_solCheques.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
  if key = '.'
   then key := ',';
end;

procedure Tf_solCheques.edtLocChange(Sender: TObject);
begin
  btnAnterior.Enabled := False;
  btnProximo.Enabled  := False;

  if rbSolicitacao.Checked
   then begin
     if Length(edtLoc.Text) <> 8
      then Exit;

     if not qrSolicitacoes.Locate('codigo',edtLoc.Text,[])
      then begin
        MessageDlg('Não há Solicitação com este código!', mtInformation,[mbOk], 0);
        edtLoc.Clear;
      end;
   end;

  if rbProcesso.Checked
   then begin
     if Length(edtLoc.Text) <> 8
      then begin
        btnAnterior.Enabled := False;
        btnProximo.Enabled  := False;
        Exit;
      end;

     BuscaCodigoSolicitacao(edtLoc.Text,'');

     Posicao := 1;

     if Solicitacao[Posicao] <> ''
      then begin
        btnProximo.Enabled := QtdSolicitacoes > 1;

        qrSolicitacoes.locate('codigo',Solicitacao[Posicao],[]);
      end
      else begin
        MessageDlg('Não há Solicitação com este código de Processo!', mtInformation,[mbOk], 0);
        edtLoc.Clear;
      end;
   end;
end;

procedure Tf_solCheques.cancelsenhaClick(Sender: TObject);
begin
  p_autoriza.Visible := False;
end;

procedure Tf_solCheques.oksenhaClick(Sender: TObject);
begin
  if sender <> f_solcheques
   then begin
     if me_senha.text<>q_autorizaemissao_cheque.asstring
      then begin
        showmessage(v_usuario+', senha inválida!');
        exit;
      end;
   end;

  p_autoriza.Visible := false;

  if MessageDlg('Tem certeza que deseja emitir este Cheque?', mtConfirmation,[mbYes, mbNo], 0) = mrNo
   then Exit;

  qrCC.Open;
  pnlEmissao.Height  := 129;
  pnlEmissao.Left    := round(pnlPrincipal.Width/2) - round(pnlEmissao.Width/2);
  pnlEmissao.Top     := round(pnlPrincipal.Height/2) - round(pnlEmissao.Height/2);
  pnlEmissao.Visible := True;
  
  tbSolCheques.Edit;
  dbedit10.Clear;
  dbedit11.Text := DateTimeToStr(Date());
end;

procedure Tf_solCheques.btnContabilizarClick(Sender: TObject);
begin
  if (qrSolicitacoesStatus.AsInteger = 2)
   then begin
     {Contabilização}
     try
       q_Aux := TQuery.Create(nil);
       q_Aux.DatabaseName := 'DBNMSCOMEX';

       if MessageDlg(V_usuario + ', confirma a CONTABILIZAÇÃO dos valores desta autorização?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
        then begin
          screen.cursor := crHourGlass;

          if MessageDlg(V_usuario+', ATENÇÃO!, confirme a CONTABILIZAÇÃO MANUAL dos valores desta autorização?', mtConfirmation,[mbYes, mbNo], 0) = mrNo
           then begin
             try
               LancaMovimentacao;

               LancaDesmembramentoNumerarios;

               SetaParametroContabilizacao_Automatica(True);
             except
               Application.MessageBox('Erro na contabilização, o processo foi desfeito.','Atenção',MB_ICONWARNING);
               Abort;
             end;

             if EnviaEmailContabilizacao
              then AlteraStatusParaContabilizado;
           end
           else AlteraStatusParaContabilizado;
        end;
     finally
       FreeAndNil(q_Aux);
     end;
   end;

  if (qrSolicitacoesStatus.AsInteger = 4)
   then begin
     {Descontabilização}
     try
       q_Aux := TQuery.Create(nil);
       q_Aux.DatabaseName := 'DBNMSCOMEX';

       if MessageDlg(V_usuario+', confirma a DESCONTABILIZAÇÃO dos valores desta autorização?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
        then begin
          screen.cursor := crHourGlass;

          if qrSolicitacoesContabilizacao_Automatica.AsInteger = 0
           then Application.MessageBox('A solicitação foi contabilizada de forma manual, o status será alterado porém a movimentação terá de ser excluída manualmente','Informação',MB_ICONINFORMATION)           
           else begin
             try
               DesfazMovimentacao;

               DesfazDesmembramentoNumerarios;

               SetaParametroContabilizacao_Automatica(False);
             except
               Application.MessageBox('Erro na descontabilização, o processo foi desfeito.','Atenção',MB_ICONWARNING);
               Abort;
             end;
           end;

          if EnviaEmailDescontabilizacao
           then AlteraStatusRetornaParaEmitido;
        end;
     finally
       FreeAndNil(q_Aux);
     end;
   end;

  qrSolicitacoes.Close;
  qrSolicitacoes.Open;

  tbItens.Close;
  tbItens.Open;
end;

procedure Tf_solCheques.LancaMovimentacao;
var
  Valor : Double;
begin
  try
    q_Aux.SQL.Clear;
    q_Aux.SQL.Add('INSERT INTO MOVIMENTACAO_CONTAS_CORRENTES  ');
    q_Aux.SQL.Add('   (Empresa                                ');
    q_Aux.SQL.Add('   ,Filial                                 ');
    q_Aux.SQL.Add('   ,Codigo                                 ');
    q_Aux.SQL.Add('   ,Data                                   ');
    q_Aux.SQL.Add('   ,Tipo                                   ');
    q_Aux.SQL.Add('   ,Doc                                    ');
    q_Aux.SQL.Add('   ,Historico                              ');
    q_Aux.SQL.Add('   ,Valor                                  ');
    q_Aux.SQL.Add('   ,Cliente                                ');
    q_Aux.SQL.Add('   ,Usuario                                ');
    q_Aux.SQL.Add('   ,Desmembra                              ');
    q_Aux.SQL.Add('   ,Codigo_SOLCHEQUE)                      ');
    q_Aux.SQL.Add(' VALUES (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11) ');

    Valor := qrSolicitacoesValor.AsFloat;

    if Valor > 0
     then Valor := Valor*(-1);

    q_Aux.ParamByName('p0').Value  := qrSolicitacoesEmpresa.AsString;        //Empresa
    q_Aux.ParamByName('p1').Value  := qrSolicitacoesFilial.AsString;         //Filial
    q_Aux.ParamByName('p2').Value  := qrSolicitacoesCodigoCC.AsString;       //CodigoCC
    q_Aux.ParamByName('p3').Value  := qrSolicitacoesData_emissao.AsDateTime; //Data
    q_Aux.ParamByName('p4').Value  := '7';                                   //Tipo
    q_Aux.ParamByName('p5').Value  := qrSolicitacoesCheque.AsString;         //Doc
    q_Aux.ParamByName('p6').Value  := qrSolicitacoesNominal.AsString;        //Historico
    q_Aux.ParamByName('p7').Value  := Valor;                                 //Valor
    q_Aux.ParamByName('p8').Value  := '0000';                                //Cliente
    q_Aux.ParamByName('p9').Value  := v_usuario;                             //Usuario
    q_Aux.ParamByName('p10').Value := 1;                                     //Desmembra
    q_Aux.ParamByName('p11').Value := qrSolicitacoesCodigo.AsString;         //Codigo_SOLCHEQUE
    q_Aux.ExecSQL;

    TrazCodigoMovimentacao;
  finally
  end;
end;

procedure Tf_solCheques.LancaDesmembramentoNumerarios;
begin
  try
    tbItens.First;

    while not tbItens.Eof do
     begin
       q_Aux.Close;
       q_Aux.SQL.Clear;
       q_Aux.SQL.Add('INSERT INTO NUMERARIOS_PROCESSOS ');
       q_Aux.SQL.Add('   (Empresa                      ');
       q_Aux.SQL.Add('   ,Filial                       ');
       q_Aux.SQL.Add('   ,Processo                     ');
       q_Aux.SQL.Add('   ,Numerario                    ');
       q_Aux.SQL.Add('   ,Usuario_Financeiro           ');
       q_Aux.SQL.Add('   ,Data_Registro                ');
       q_Aux.SQL.Add('   ,Valor_Registrado             ');
       q_Aux.SQL.Add('   ,Valor_Contabilizado          ');
       q_Aux.SQL.Add('   ,Contabilizado                ');
       q_Aux.SQL.Add('   ,Usuario_Contablizado         ');
       q_Aux.SQL.Add('   ,Conta_Corrente               ');
       q_Aux.SQL.Add('   ,Codigo_MOV                   ');
       q_Aux.SQL.Add('   ,Detalhe)                     ');
       q_Aux.SQL.Add(' VALUES (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12) ');

       q_Aux.ParamByName('p0').Value  := qrSolicitacoesEmpresa.AsString;        //Empresa
       q_Aux.ParamByName('p1').Value  := qrSolicitacoesFilial.AsString;         //Filial
       q_Aux.ParamByName('p2').Value  := tbItensProcesso.AsString;              //Processo
       q_Aux.ParamByName('p3').Value  := tbItensNumerario.AsString;             //Numerario
       q_Aux.ParamByName('p4').Value  := v_usuario;                             //Usuario_Financeiro
       q_Aux.ParamByName('p5').Value  := qrSolicitacoesData_emissao.AsDateTime; //Data_Registro
       q_Aux.ParamByName('p6').Value  := tbItensValor.AsFloat;                  //Valor_Registrado
       q_Aux.ParamByName('p7').Value  := tbItensValor.AsFloat;                  //Valor_Contabilizado
       q_Aux.ParamByName('p8').Value  := 'SIM';                                 //Contabilizado
       q_Aux.ParamByName('p9').Value  := v_usuario;                             //Usuario_Contabilizado
       q_Aux.ParamByName('p10').Value := qrSolicitacoesCodigoCC.AsString;       //Conta_Corrente
       q_Aux.ParamByName('p11').Value := cod_mov;                               //Codigo_MOV
       q_Aux.ParamByName('p12').Value := 'Contabilizado pela Sol. de Cheque Nº ' + qrSolicitacoesCodigo.AsString; //Detalhe
       q_Aux.ExecSQL;

       tbItens.Next;
     end;
  finally
  end;
end;

function Tf_solCheques.EnviaEmailContabilizacao : Boolean;
var
  cod, v_body, v_razao : String;
begin
  Result := False;

  pnlAguarde.Visible := True;
  EmailConecta();

  v_body :=  '<table width="100%" border="1" cellspacing="0" cellpadding="1">'
                   +     '<tr>'
                   +        '<td colspan="2" align="center" bgcolor="#EEEEEE"><B>MS2000 - SISTEMA GERENCIAL ADUANEIRO</B>'
                   +        '<br><B>Contabilização automática da Solicitação de Cheque Nº: </B>'+ qrSolicitacoesCodigo.AsString + '  -  <B>Data da Contabilização:</B> ' + DateTimeToStr(Date)
                   +        '<br>' + FormatDateTime('dddd, d " de " mmmm " de " yyyy " às " hh:mm:ss', Now()) + '</td>'
                   +     '</tr>'
                   + '</table>'+ '<br><br>';

  CorpoEmail(v_body, v_razao);
  EmailDePara();

  vBody    := v_body;
  vAssunto := 'MS2000Plus - Contabilização Automática da Sol. de Cheque Nº ' + qrSolicitacoesCodigo.AsString;
  vTitulo  := 'Solicitação de Cheque Nº ' + qrSolicitacoesCodigo.AsString;

  try
   try
     IncluiEmailAuto(vCodApl, vTitulo, vAssunto, vAnexo, vDe, vPara, vCco, vCc, vBody);

     cod := qrSolicitacoesCodigo.AsString;
     qrSolicitacoes.Close;
     qrSolicitacoes.Open;
     qrSolicitacoes.Locate('Codigo',cod,[loCaseInsensitive]);

     logusu('P','CONTABILIZADA - Solicitação de Cheque: [Doc]= ' + qrSolicitacoesCheque.AsString + ' [Valor]= ' + qrSolicitacoesValor.AsString);
     Result := True;
   except on E:Exception do
     showmessage('Erro ao tentar enviar e-mail');
   end;
  finally
   screen.cursor := crDefault;
  end;

  pnlAguarde.Visible := False;
  dbGrid1.SetFocus;
end;

procedure Tf_solCheques.AlteraStatusParaContabilizado;
begin
  try
    q_Aux.SQL.Clear;
    q_Aux.SQL.Add('UPDATE Solicitacao_Cheques SET Status = 4 WHERE Codigo = :p0 ');
    q_Aux.ParamByName('p0').Value := qrSolicitacoesCodigo.AsString;
    q_Aux.ExecSQL;

    showmessage(v_usuario+', status do cheque alterado para CONTABILIZADO.');
  finally
  end;
end;

procedure Tf_solCheques.DesfazDesmembramentoNumerarios;
begin
  try
    q_Aux.SQL.Clear;
    q_Aux.SQL.Add('DELETE FROM NUMERARIOS_PROCESSOS           ');
    q_Aux.SQL.Add('      WHERE CONTABILIZADO    = ''SIM'' AND ');
    q_Aux.SQL.Add('            CODIGO_MOV       <> 0      AND ');
    q_Aux.SQL.Add('            DETALHE          = :p0         ');
    q_Aux.ParamByName('p0').Value := 'Contabilizado pela Sol. de Cheque Nº ' + qrSolicitacoesCodigo.AsString;

    q_Aux.ExecSQL;
  finally                          
  end;
end;

procedure Tf_solCheques.DesfazMovimentacao;
begin
  try
    if Length(qrSolicitacoesCodigo.AsString) = 8
     then begin
       q_Aux.SQL.Clear;
       q_Aux.SQL.Add('DELETE FROM MOVIMENTACAO_CONTAS_CORRENTES WHERE TIPO = 7 AND Codigo_SOLCHEQUE = :p0 ');
       q_Aux.ParamByName('p0').Value := qrSolicitacoesCodigo.AsString;
       q_Aux.ExecSQL;
     end;
  finally
  end;
end;

function Tf_solCheques.EnviaEmailDescontabilizacao: Boolean;
var
  cod, v_body, v_razao : String;
begin
  Result := False;

  dbGrid1.SetFocus;
  pnlAguarde.Visible := True;
  EmailConecta();

  v_body := '<table width="100%" border="1" cellspacing="0" cellpadding="1">'
                   +     '<tr>'
                   +        '<td colspan="2" align="center" bgcolor="#EEEEEE"><B>MS2000 - SISTEMA GERENCIAL ADUANEIRO</B>'
                   +        '<br><B>Descontabilização automática da Solicitação de Cheque Nº: </B>'+ qrSolicitacoesCodigo.AsString + '  -  <B>Data da Descontabilização:</B> ' + DateTimeToStr(Date)
                   +        '<br>' + FormatDateTime('dddd, d " de " mmmm " de " yyyy " às " hh:mm:ss', Now()) + '</td>'
                   +     '</tr>'
                   + '</table>'+ '<br><br>';

  if qrStatusEmail.Locate('Codigo','5',[])
   then v_status_email := qrStatusEmailDescricao.AsString;

  CorpoEmail(v_body, v_razao);
  EmailDePara();

  vBody    := v_body;
  vAssunto := 'MS2000Plus - Descontabilização Automática da Sol. de Cheque Nº ' + qrSolicitacoesCodigo.AsString;
  vTitulo  := 'Solicitação de Cheque Nº ' + qrSolicitacoesCodigo.AsString;

  try
   try
     IncluiEmailAuto(vCodApl, vTitulo, vAssunto, vAnexo, vDe, vPara, vCco, vCc, vBody);

     pnlAguarde.Visible := False;

     cod := qrSolicitacoesCodigo.AsString;
     qrSolicitacoes.Close;
     qrSolicitacoes.Open;
     qrSolicitacoes.Locate('Codigo',cod,[loCaseInsensitive]);

     logusu('P','DESCONTABILIZADA - Solicitação de Cheque: [Doc]= ' + qrSolicitacoesCheque.AsString + ' [Valor]= ' + qrSolicitacoesValor.AsString);
     Result := True;
   except on E:Exception do
     showmessage('Erro ao tentar enviar e-mail');
   end;
  finally
    screen.cursor := crDefault;
  end;

  pnlAguarde.Visible := False;
end;

procedure Tf_solCheques.AlteraStatusRetornaParaEmitido;
begin
  try
    q_Aux.SQL.Clear;
    q_Aux.SQL.Add('UPDATE Solicitacao_Cheques SET Status = 2 WHERE Codigo = :p0 ');
    q_Aux.ParamByName('p0').Value := qrSolicitacoesCodigo.AsString;
    q_Aux.ExecSQL;

    showmessage(v_usuario+', status do cheque alterado para EMITIDO.');
  finally
  end;
end;

procedure Tf_solCheques.TrazCodigoMovimentacao;
begin
  try
    cod_mov := '';

    q_Aux.SQL.Clear;
    q_Aux.SQL.Add(' SELECT CODIGO_MOV FROM MOVIMENTACAO_CONTAS_CORRENTES WHERE EMPRESA =:p0 AND FILIAL =:p1 AND CODIGO =:p2 AND TIPO =:p3 AND VALOR = :p4 AND USUARIO = :p5 AND CODIGO_SOLCHEQUE = :p6 ');
    q_Aux.ParamByName('p0').Value := qrSolicitacoesEmpresa.AsString;
    q_Aux.ParamByName('p1').Value := qrSolicitacoesFilial.AsString;
    q_Aux.ParamByName('p2').Value := qrSolicitacoesCodigoCC.AsString;
    q_Aux.ParamByName('p3').Value := '7';
    q_Aux.ParamByName('p4').Value := (qrSolicitacoesValor.AsFloat*-1);
    q_Aux.ParamByName('p5').Value := v_usuario;
    q_Aux.ParamByName('p6').Value := qrSolicitacoesCodigo.AsString;
    q_Aux.Open;

    cod_mov := q_Aux.Fields[0].AsString;
  finally
    q_Aux.Close;
  end;
end;

procedure Tf_solCheques.SetaParametroContabilizacao_Automatica(
  Status: Boolean);
begin
  try
    q_Aux.SQL.Clear;
    q_Aux.SQL.Add('UPDATE SOLICITACAO_CHEQUES SET CONTABILIZACAO_AUTOMATICA = :p0 WHERE CODIGO = :p1 ');

    if Status = True
     then q_Aux.ParamByName('p0').Value := 1
     else q_Aux.ParamByName('p0').Value := 0;

    q_Aux.ParamByName('p1').Value := qrSolicitacoesCodigo.AsString;
    q_Aux.ExecSQL;
  finally
  end;
end;

procedure Tf_solCheques.BuscaCodigoSolicitacao(Proc : String; ValorItem : String);

  procedure LimpaArray;
  var
    i : Integer;
  begin
    for i := 1 to QtdSolicitacoes do
     begin
       Solicitacao[i] := '';
     end;
  end;

var
  q_Aux2 : TQuery;
  Solicitacoes : String;
  a : Integer;
begin
  q_Aux2 := TQuery.Create(nil);
  q_Aux2.DatabaseName := 'DBNMSCOMEX';

  try
    Solicitacoes := '';

    q_Aux2.SQL.Clear;

    if Proc <> ''
     then begin
       q_Aux2.SQL.Add(' SELECT DISTINCT SOLICITACAO_CHEQUES_ITENS.CODIGO, SOLICITACAO_CHEQUES.Data_solicitacao ');
       q_Aux2.SQL.Add('   FROM SOLICITACAO_CHEQUES_ITENS INNER JOIN SOLICITACAO_CHEQUES                        ');
       q_Aux2.SQL.Add('     ON SOLICITACAO_CHEQUES.CODIGO = SOLICITACAO_CHEQUES_ITENS.CODIGO                   ');

       if cbVerTodos.Checked
        then q_Aux2.SQL.Add(' WHERE SOLICITACAO_CHEQUES_ITENS.PROCESSO = :p0 ')
        else q_Aux2.SQL.Add(' WHERE SOLICITACAO_CHEQUES_ITENS.PROCESSO = :p0 AND SOLICITACAO_CHEQUES.STATUS = :p1 ');

       q_Aux2.SQL.Add(' ORDER BY SOLICITACAO_CHEQUES.Data_solicitacao DESC ');

       q_Aux2.ParamByName('p0').Value := Proc;

       if not cbVerTodos.Checked
        then q_Aux2.ParamByName('p1').Value := qrListaStatusCodigo.AsInteger;
     end;

    if ValorItem <> ''
     then begin
       q_Aux2.SQL.Add(' SELECT DISTINCT SOLICITACAO_CHEQUES_ITENS.CODIGO, SOLICITACAO_CHEQUES.Data_solicitacao ');
       q_Aux2.SQL.Add('   FROM SOLICITACAO_CHEQUES_ITENS INNER JOIN SOLICITACAO_CHEQUES                        ');
       q_Aux2.SQL.Add('     ON SOLICITACAO_CHEQUES.CODIGO = SOLICITACAO_CHEQUES_ITENS.CODIGO                   ');

       if cbVerTodos.Checked
        then q_Aux2.SQL.Add(' WHERE SOLICITACAO_CHEQUES_ITENS.VALOR = :p0 ')
        else q_Aux2.SQL.Add(' WHERE SOLICITACAO_CHEQUES_ITENS.VALOR = :p0 AND SOLICITACAO_CHEQUES.STATUS = :p1 ');

       q_Aux2.SQL.Add(' ORDER BY SOLICITACAO_CHEQUES.Data_solicitacao DESC ');        

       q_Aux2.ParamByName('p0').Value := StrToFloat(ValorItem);

       if not cbVerTodos.Checked
        then q_Aux2.ParamByName('p1').Value := qrListaStatusCodigo.AsInteger;
     end;

    q_Aux2.Open;

    LimpaArray;

    QtdSolicitacoes := q_Aux2.RecordCount;

    a := 1;

    if q_Aux2.RecordCount > 0
     then begin
       while not q_Aux2.Eof do
        begin
          Solicitacao[a] := q_Aux2.Fields[0].AsString;

          q_Aux2.Next;

          a := a + 1;
        end;
     end;
  finally
    FreeAndNil(q_Aux2);
  end;
end;

procedure Tf_solCheques.btnLocalizarClick(Sender: TObject);
begin
  if (edtLoc.Text <> '')
   then begin
     BuscaCodigoSolicitacao('',edtLoc.Text);

     Posicao := 1;

     if Solicitacao[Posicao] <> ''
      then begin
        btnProximo.Enabled := QtdSolicitacoes > 1;

        qrSolicitacoes.locate('codigo',Solicitacao[Posicao],[]);
      end
      else begin
        MessageDlg('Não há Solicitação com este valor no Item!', mtInformation,[mbOk], 0);
        edtLoc.Clear;
      end;
   end;
end;

procedure Tf_solCheques.btnProximoClick(Sender: TObject);
begin
  if Posicao <= QtdSolicitacoes
   then begin
     Posicao := Posicao + 1;

     btnAnterior.Enabled := Posicao > 1;
     btnProximo.Enabled  := not(Posicao = QtdSolicitacoes);

     qrSolicitacoes.Locate('codigo',Solicitacao[Posicao],[]);
   end;
end;

procedure Tf_solCheques.btnAnteriorClick(Sender: TObject);
begin
  if Posicao <= QtdSolicitacoes
   then begin
     Posicao := Posicao - 1;

     btnAnterior.Enabled := Posicao > 1;
     btnProximo.Enabled  := not(Posicao = QtdSolicitacoes);

     qrSolicitacoes.Locate('codigo',Solicitacao[Posicao],[]);
   end;
end;

procedure Tf_solCheques.rbSolicitacaoClick(Sender: TObject);
begin
  LocalizarClique;
end;

procedure Tf_solCheques.rbProcessoClick(Sender: TObject);
begin
  LocalizarClique;
end;

procedure Tf_solCheques.rbValorClick(Sender: TObject);
begin
  LocalizarClique;
end;

procedure Tf_solCheques.LocalizarClique;
begin
  btnLocalizar.Enabled := rbValor.Checked;

  if rbSolicitacao.Checked or rbProcesso.Checked
   then edtLoc.MaxLength := 8
   else edtLoc.MaxLength := 15;

  btnAnterior.Enabled := False;
  btnProximo.Enabled  := False;

  edtLoc.Clear;
  edtLoc.SetFocus;
end;

procedure Tf_solCheques.edtLocKeyPress(Sender: TObject; var Key: Char);
begin
  if rbSolicitacao.Checked or rbProcesso.Checked
   then begin
    if not (Key in ['0'..'9','/', #8])
     then Key := #0;
   end
   else begin
    if not (Key in ['0'..'9',',', #8])
     then Key := #0;
   end;
end;

procedure Tf_solCheques.CarregaGridItens(Solicitacao : String);
begin
  try
    qrItens.Close;
    qrItens.SQL.Clear;
    qrItens.SQL.Add(' SELECT SOLICITACAO_CHEQUES_ITENS.*, ');
    qrItens.SQL.Add('        (((SELECT ISNULL(SUM(VALOR_REGISTRADO),0) FROM NUMERARIOS_PROCESSOS WHERE PROCESSO = SOLICITACAO_CHEQUES_ITENS.PROCESSO) - (SELECT ISNULL(SUM(Valor),0) FROM CREDITOS_PROCESSOS WHERE PROCESSO = SOLICITACAO_CHEQUES_ITENS.PROCESSO))*-1) AS SALDO ');
    qrItens.SQL.Add('   FROM SOLICITACAO_CHEQUES_ITENS    ');
    qrItens.SQL.Add('  WHERE CODIGO = :p0                 ');
    qrItens.Params[0].Value := Solicitacao;

    qrItens.Open;

    if qrItens.RecordCount > 0
     then begin
       edProcesso.Text := qrItensProcesso.Text;
       edDescItem.Text := qrItensDescricao.Text;
       edValor.Text    := qrItensValor.Text;
     end
     else begin
       edProcesso.Clear;
       edDescItem.Clear;
       edValor.Clear;
     end;
  finally
  end;
end;

procedure Tf_solCheques.CalculaSaldoProcesso(Proc : String);
var
  q_Aux3 : TQuery;
  Debitos, Creditos : Real;
begin
  try
    SaldoProcesso := 0;

    q_Aux3 := TQuery.Create(nil);
    q_Aux3.DatabaseName := 'DBNMSCOMEX';

    q_Aux3.SQL.Clear;
    q_Aux3.SQL.Add('SELECT (SELECT ISNULL(SUM(VALOR_REGISTRADO),0) FROM NUMERARIOS_PROCESSOS WHERE PROCESSO = PROCESSOS.CODIGO) AS DEBITOS, ');
    q_Aux3.SQL.Add('       (SELECT ISNULL(SUM(VALOR),0) FROM CREDITOS_PROCESSOS WHERE PROCESSO = PROCESSOS.CODIGO) AS CREDITOS              ');
    q_Aux3.SQL.Add('  FROM PROCESSOS                                                                                              ');
    q_Aux3.SQL.Add(' WHERE CODIGO = :p0                                                                                           ');
    q_Aux3.Params[0].AsString := Proc;

    try
      q_Aux3.Open;
    except
    end;

    Debitos  := q_Aux3.FieldByName('DEBITOS').AsFloat;
    Creditos := q_Aux3.FieldByName('CREDITOS').AsFloat;

    SaldoProcesso := Creditos - Debitos;
    SaldoProcesso := strtofloat(floattostrf(SaldoProcesso,fffixed	,10,2));
  finally
    q_Aux3.Free;
  end;
end;

procedure Tf_solCheques.qrItensSaldoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text := FormatFloat('0.00',qrItensSaldo.AsFloat);
end;

procedure Tf_solCheques.qrItensAfterScroll(DataSet: TDataSet);
begin
  if qrItens.RecordCount > 0
   then begin
     edProcesso.Text := qrItensProcesso.Text;
     edDescItem.Text := qrItensDescricao.Text;
     edValor.Text    := qrItensValor.Text;
   end
   else begin
     edProcesso.Clear;
     edDescItem.Clear;
     edValor.Clear;
   end;
end;

procedure Tf_solCheques.edValorKeyPress(Sender: TObject; var Key: Char);
begin
  if key = '.'
   then key := ',';

  if not (Key in ['0'..'9',',',#8])
   then Key := #0;
end;

function Tf_solCheques.AlteraItem(Valor: String) : Boolean;
var
  q_Aux4 : TQuery;
begin
  try
    try
      q_Aux4 := TQuery.Create(nil);
      q_Aux4.DatabaseName := 'DBNMSCOMEX';

      if Trim(qrSolicitacoesCodigo.AsString) <> ''
       then begin
         q_Aux4.SQL.Clear;
         q_Aux4.SQL.Add('UPDATE SOLICITACAO_CHEQUES_ITENS SET VALOR = :p0 WHERE CODIGO = :p1 AND SEQUENCIAL = :p2 ');
         q_Aux4.ParamByName('p0').Value := StrToFloat(Valor);
         q_Aux4.ParamByName('p1').Value := qrSolicitacoesCodigo.AsString;
         q_Aux4.ParamByName('p2').Value := qrItensSequencial.AsInteger;
         q_Aux4.ExecSQL;
       end;  

      Result := True;

      qrItens.Close;
      qrItens.Open;
    except
      Result := False;
    end;
  finally
    FreeAndNil(q_Aux4);
  end;
end;

procedure Tf_solCheques.DeletaItem;
var
  q_Aux4 : TQuery;
begin  
  try
    try
      q_Aux4 := TQuery.Create(nil);
      q_Aux4.DatabaseName := 'DBNMSCOMEX';

      if Trim(qrSolicitacoesCodigo.AsString) <> ''
       then begin
         q_Aux4.SQL.Clear;
         q_Aux4.SQL.Add('DELETE FROM SOLICITACAO_CHEQUES_ITENS WHERE CODIGO = :p0 AND SEQUENCIAL = :p1 ');
         q_Aux4.ParamByName('p0').Value := qrSolicitacoesCodigo.AsString;
         q_Aux4.ParamByName('p1').Value := qrItensSequencial.AsInteger;
         q_Aux4.ExecSQL;
       end;
    except
    end;
  finally
    FreeAndNil(q_Aux4);
  end;
end;

procedure Tf_solCheques.IncluiEmailAuto(CodAPL, Titulo, Assunto, Anexo, De, Para, Cco, Cc, Body : String);
begin
  try
    qryEmail_Auto.ParamByName('Programa').Value := CodAPL;
    qryEmail_Auto.ParamByName('Assunto').Value  := Assunto;
    qryEmail_Auto.ParamByName('Titulo').Value   := Titulo;
    qryEmail_Auto.ParamByName('De').Value       := De;
    qryEmail_Auto.ParamByName('Para').Value     := Para;
    qryEmail_Auto.ParamByName('Cco').Value      := Cco;
    qryEmail_Auto.ParamByName('Cc').Value       := Cc;
    qryEmail_Auto.ParamByName('Body').Value     := Body;
    qryEmail_Auto.ParamByName('Anexo').Value    := Anexo;
    qryEmail_Auto.ParamByName('HTML').Value     := '1';
    qryEmail_Auto.ParamByName('Data').Value     := Date();
    qryEmail_Auto.ParamByName('Hora').Value     := Now();
    qryEmail_Auto.ExecSQL;
  except
  end;
end;

end.

