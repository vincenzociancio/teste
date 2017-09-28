unit u_contasapagar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, Grids, DBGrids, Db, DBTables;

type
  Tf_contasapagar = class(TForm)
    Panel1: TPanel;
    btnInsereConta: TBitBtn;
    btnAlteraConta: TBitBtn;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Bevel1: TBevel;
    btnEfetuaPagamento: TBitBtn;
    btnDescontabilizar: TBitBtn;
    btnFechar: TBitBtn;
    btnContabilizar: TBitBtn;
    b_imprime: TBitBtn;
    t_fornecedor: TTable;
    dsFornecedor: TDataSource;
    t_fornecedorCodigo: TStringField;
    t_fornecedorRazao_Social: TStringField;
    dsContas: TDataSource;
    t_contas_a_pagar: TTable;
    t_contas_a_pagarFk_Fornecedor: TStringField;
    t_contas_a_pagarDescricao: TStringField;
    t_contas_a_pagarValor: TFloatField;
    t_contas_a_pagarNf: TStringField;
    t_contas_a_pagarValor_Previsao: TFloatField;
    t_contas_a_pagarVencimento_Previsao: TDateTimeField;
    t_contas_a_pagarData_Pagamento: TDateTimeField;
    t_contas_a_pagarSolicitante: TStringField;
    pnlInclusaoAlteracao: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    dbedDescricao: TDBEdit;
    l_titulo: TLabel;
    dblcbFornecedor1: TDBLookupComboBox;
    Label24: TLabel;
    dbedNf: TDBEdit;
    Label25: TLabel;
    dbedVlrPrevisto: TDBEdit;
    Label1: TLabel;
    dbedPrevVenc: TDBEdit;
    Label27: TLabel;
    b_gravainclui: TBitBtn;
    b_fechainclui: TBitBtn;
    t_contas_a_pagarCodigo: TIntegerField;
    t_fornecedorescontas: TTable;
    t_fornecedorescontasCodigo: TStringField;
    t_fornecedorescontasRazao_Social: TStringField;
    dblcbSolicitante: TDBLookupComboBox;
    dsSolicitante: TDataSource;
    pnlEfetuarPagamentos: TPanel;
    Label21: TLabel;
    DBGrid3: TDBGrid;
    btnPagar: TBitBtn;
    t_contas_a_pagar2: TTable;
    DateTimeField1: TDateTimeField;
    IntegerField1: TIntegerField;
    StringField2: TStringField;
    FloatField1: TFloatField;
    StringField3: TStringField;
    FloatField2: TFloatField;
    DateTimeField2: TDateTimeField;
    DateTimeField3: TDateTimeField;
    StringField4: TStringField;
    StringField5: TStringField;
    dsContas_a_pagar2: TDataSource;
    pnlPeriodicidade: TPanel;
    Panel14: TPanel;
    Panel16: TPanel;
    btnGerar: TBitBtn;
    edParcela: TMaskEdit;
    Label4: TLabel;
    Label7: TLabel;
    btnCancelaPeriodicidade: TBitBtn;
    cbPeriodicidade: TComboBox;
    t_contas_a_pagarParcela: TStringField;
    btnExcluir: TBitBtn;
    t_contas_a_pagar2Efetuar_Pagamento: TIntegerField;
    btnSairPnlPagamento: TBitBtn;
    dsCC: TDataSource;
    qrCC: TQuery;
    qrCCCodigo: TAutoIncField;
    qrCCDescricao: TStringField;
    qrCCBanco: TStringField;
    qrCCAgencia: TStringField;
    qrCCConta_Corrente: TStringField;
    pnlPagamento: TPanel;
    Label22: TLabel;
    Label23: TLabel;
    Label26: TLabel;
    Panel13: TPanel;
    Panel15: TPanel;
    BitBtn5: TBitBtn;
    btnOkPagamento: TBitBtn;
    dblcContaCorrente: TDBLookupComboBox;
    edChequeTpPagto: TMaskEdit;
    edDtEmissao: TMaskEdit;
    t_contas_a_pagar2Usuario: TStringField;
    dsContasPagamentos: TDataSource;
    qrContasPagamentos: TQuery;
    qrContasPagamentosValor_Total: TFloatField;
    qrContasPagamentosData_Emissao: TDateTimeField;
    qrContasPagamentosData_Pagamento: TDateTimeField;
    qrContasPagamentosQtd_Contas: TIntegerField;
    qrContasPagamentosStatus: TStringField;
    qrContasPagamentosCheque: TStringField;
    qrContasPagamentosDescricao: TStringField;
    pnlContas: TPanel;
    Label8: TLabel;
    DBGrid4: TDBGrid;
    lblTotal: TLabel;
    t_contas_a_pagarUsuario: TStringField;
    dsContas_a_pagar3: TDataSource;
    qrContasPagamentosBanco: TStringField;
    t_contas_a_pagarBanco: TStringField;
    t_contas_a_pagarCheque: TStringField;
    t_contas_a_pagar2Banco: TStringField;
    t_contas_a_pagar2Cheque: TStringField;
    btnSairContas: TBitBtn;
    t_ContasPagamentos: TTable;
    t_ContasPagamentosCodigo: TIntegerField;
    t_ContasPagamentosValor_Total: TFloatField;
    t_ContasPagamentosQtd_Contas: TIntegerField;
    t_contas_a_pagarFk_Contas_a_Pagar_Pagamentos: TIntegerField;
    t_contas_a_pagar2Fk_Contas_a_Pagar_Pagamentos: TIntegerField;
    qrContasPagamentosCodigo: TIntegerField;
    t_contas_a_pagar3: TTable;
    t_contas_a_pagar3Codigo: TIntegerField;
    t_contas_a_pagar3Vencimento: TDateTimeField;
    t_contas_a_pagar3Fk_Fornecedor: TStringField;
    t_contas_a_pagar3Descricao: TStringField;
    t_contas_a_pagar3Valor: TFloatField;
    t_contas_a_pagar3Nf: TStringField;
    t_contas_a_pagar3Status: TStringField;
    t_contas_a_pagar3Valor_Previsao: TFloatField;
    t_contas_a_pagar3Vencimento_Previsao: TDateTimeField;
    t_contas_a_pagar3Data_Pagamento: TDateTimeField;
    t_contas_a_pagar3Solicitante: TStringField;
    t_contas_a_pagar3Parcela: TStringField;
    t_contas_a_pagar3Efetuar_Pagamento: TIntegerField;
    t_contas_a_pagar3Usuario: TStringField;
    t_contas_a_pagar3Fk_Contas_a_Pagar_Pagamentos: TIntegerField;
    t_contas_a_pagar3Banco: TStringField;
    t_contas_a_pagar3Cheque: TStringField;
    t_contas_a_pagar2Fk_Fornecedor: TStringField;
    t_ContasPagamentosBanco: TStringField;
    t_ContasPagamentosCheque: TStringField;
    Panel5: TPanel;
    Label3: TLabel;
    Label6: TLabel;
    dbedValor: TDBEdit;
    dbedVencimento: TDBEdit;
    t_movcc: TTable;
    t_movccEmpresa: TStringField;
    t_movccFilial: TStringField;
    t_movccCodigo: TIntegerField;
    t_movccData: TDateTimeField;
    t_movccTipo: TIntegerField;
    t_movccDoc: TStringField;
    t_movccHistorico: TStringField;
    t_movccValor: TFloatField;
    t_movccCliente: TStringField;
    t_movccCodigo_Mov: TAutoIncField;
    t_movccPlano_Contas: TStringField;
    t_movccUsuario: TStringField;
    t_movccData_apuracao_cpmf_inicial: TDateTimeField;
    t_movccData_apuracao_cpmf_final: TDateTimeField;
    t_movccDesmembra: TIntegerField;
    t_movccCodigo_SOLREG: TStringField;
    Label9: TLabel;
    dblcbNumerario: TDBLookupComboBox;
    ds_tiposnumerarios: TDataSource;
    q_tiposnumerarios: TQuery;
    q_tiposnumerariosEmpresa: TStringField;
    q_tiposnumerariosFilial: TStringField;
    q_tiposnumerariosCodigo: TStringField;
    q_tiposnumerariosDescricao: TStringField;
    q_tiposnumerariosPlano_contas: TStringField;
    t_contas_a_pagarVencimento: TDateTimeField;
    t_contas_a_pagarTp_Numerario: TStringField;
    t_contas_a_pagar2Tp_Numerario: TStringField;
    t_contas_a_pagar3Tp_Numerario: TStringField;
    qrContasPagamentosContabilizada: TIntegerField;
    t_ContasPagamentosContabilizada: TIntegerField;
    t_ContasPagamentosCodigo_Movimentacao: TIntegerField;
    qrContasPagamentosCodigo_Movimentacao: TIntegerField;
    t_contas_correntes: TTable;
    t_contas_correntesCodigo: TIntegerField;
    t_contas_correntesDescricao: TStringField;
    gbStatus: TGroupBox;
    rbVencer: TRadioButton;
    rbPago: TRadioButton;
    rbVencido: TRadioButton;
    rbTodos: TRadioButton;
    t_contas_a_pagarStatus: TStringField;
    b_filtrar: TBitBtn;
    btnExcluirConta2: TBitBtn;
    btnInsereContaNoCheque: TBitBtn;
    t_bancos: TTable;
    t_bancosCodigo: TIntegerField;
    t_bancosDescricao: TStringField;
    t_tipos_numerarios: TTable;
    StringField1: TStringField;
    t_tipos_numerariosDescricao: TStringField;
    t_movccCodigo_ContasAPagar: TStringField;
    btnExcluiCheque: TBitBtn;
    t_contas_a_pagar2Parcela: TStringField;
    dsFornecedoresfiltro: TDataSource;
    t_fornecedoresfiltro: TTable;
    StringField6: TStringField;
    StringField7: TStringField;
    dsSolicitantesfiltro: TDataSource;
    q_solicitantesfiltro: TQuery;
    q_solicitante: TQuery;
    q_solicitanteUsuario: TStringField;
    q_solicitantesfiltroUsuario: TStringField;
    q_solicitantesfiltroNome_Completo: TStringField;
    q_solicitanteNome_Completo: TStringField;
    dblcbEmpresa: TDBLookupComboBox;
    q_empresas: TQuery;
    dsEmpresas: TDataSource;
    q_empresasCodigo: TStringField;
    q_empresasRazao_Social: TStringField;
    t_fornecedorescontasEmpresa: TStringField;
    t_tipos_numerariosEmpresa: TStringField;
    t_contas_correntesEmpresa: TStringField;
    t_fornecedorEmpresa: TStringField;
    t_bancosEmpresa: TStringField;
    t_fornecedoresfiltroEmpresa: TStringField;
    t_contas_a_pagarCodigo_Empresa: TStringField;
    qrContasPagamentosCodigo_Empresa: TStringField;
    qrContasPagamentosRazao_Social: TStringField;
    t_contas_a_pagar2Codigo_Empresa: TStringField;
    dblcbEmpresa1: TDBLookupComboBox;
    Label10: TLabel;
    t_ContasPagamentosContabilizada_Automaticamente: TIntegerField;
    qrContasPagamentosContabilizada_Automaticamente: TIntegerField;
    q_incdeb: TQuery;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnInsereContaClick(Sender: TObject);
    procedure b_fechaincluiClick(Sender: TObject);
    procedure btnAlteraContaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFiltrarClick(Sender: TObject);
    procedure b_gravaincluiClick(Sender: TObject);
    procedure t_contas_a_pagarAfterScroll(DataSet: TDataSet);
    procedure t_contas_a_pagarFk_FornecedorGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btnGerarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairPnlPagamentoClick(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure btnPagarClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure btnOkPagamentoClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure btnSairContasClick(Sender: TObject);
    procedure StringField1GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btnContabilizarClick(Sender: TObject);
    procedure btnDescontabilizarClick(Sender: TObject);
    procedure t_contasStatusGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure t_contas_a_pagar3Fk_FornecedorGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure t_contas_a_pagar2Fk_FornecedorGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure t_contas_a_pagar3BancoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure t_contas_a_pagar2BancoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btnEfetuaPagamentoClick(Sender: TObject);
    procedure btnInsereContaNoChequeClick(Sender: TObject);
    procedure qrContasPagamentosBancoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure t_contas_a_pagarBancoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure t_contas_a_pagar3Tp_NumerarioGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure t_contas_a_pagarTp_NumerarioGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure t_contas_a_pagarValor_PrevisaoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure t_contas_a_pagarValorGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qrContasPagamentosValor_TotalGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure FloatField2GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure t_contas_a_pagar3Valor_PrevisaoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure t_contas_a_pagar3ValorGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FloatField1GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btnExcluiChequeClick(Sender: TObject);
    procedure qrContasPagamentosAfterScroll(DataSet: TDataSet);
    procedure b_imprimeClick(Sender: TObject);
    procedure rbTodosClick(Sender: TObject);
    procedure dblcbEmpresaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelaPeriodicidadeClick(Sender: TObject);
  private
    { Private declarations }
    contador : integer;
    Valor_Total : Double;
    Inclusao, Alteracao, IncluiNoCheque : Boolean;
    Cheque :  String;

    procedure HabilitaBotoesGrid1(Ativa : Boolean);

    function ChequeExistente : Boolean;

    function ValidaCampos : Boolean;

    procedure DesmarcaTodas;

    procedure AtualizarGrid;

    procedure AtualizarGridContas;

    procedure AtualizarGridContabilizacao;

    procedure EfetuarPagamento;

    procedure IncluiPagamentoNoCheque;

    procedure LimpaPanelPagamento;

    procedure LimpaPanelPeriodicidade;

    procedure SetaBotoes;

    procedure LimpaFiltros;

    procedure FiltraEmpresa;

    procedure LancaMovimentacao;

    procedure VerificaESetaStatus;

    procedure AbrePanelInclusaoAlteracao;

    procedure AbrePanelPeriodicidade;

    procedure AbrePanelContas;

    procedure AbrePanelEfetuarPagamentos;
  public
    { Public declarations }

    procedure CancelaFiltros;

    procedure AplicaFiltros;
  end;

var
  f_contasapagar: Tf_contasapagar;

implementation

uses U_MSCOMEX, u_relcontas_a_pagar, u_localizarcontasapagar;

{$R *.DFM}

procedure Tf_contasapagar.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1; 
end;

procedure Tf_contasapagar.FormShow(Sender: TObject);
begin
  q_empresas.Open;

  dblcbEmpresa.KeyValue := '1';

  t_fornecedorescontas.Open;
  t_tipos_numerarios.Open;
  t_fornecedor.Open;
  q_solicitante.Open;
  q_tiposnumerarios.Open;
  t_fornecedoresfiltro.Open;
  q_solicitantesfiltro.Open;
  t_contas_a_pagar.Open;
  t_contas_a_pagar2.Open;

  FiltraEmpresa;

  AplicaFiltros;

  b_imprime.Enabled := qrContasPagamentos.RecordCount > 0;  

  AtualizarGrid;
end;

procedure Tf_contasapagar.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure Tf_contasapagar.HabilitaBotoesGrid1(Ativa: Boolean);
begin
  btnInsereConta.Enabled := Ativa;
  btnAlteraConta.Enabled := Ativa;
end;

procedure Tf_contasapagar.btnInsereContaClick(Sender: TObject);
begin
  Inclusao  := True;
  Alteracao := False;

  t_contas_a_pagar.Insert;

  l_titulo.Caption := 'Inclusão de Contas';
  
  AbrePanelInclusaoAlteracao;

  t_contas_a_pagarCodigo_Empresa.AsString := dblcbEmpresa.KeyValue;

  dblcbEmpresa1.Enabled := False;

  dblcbFornecedor1.Setfocus;
end;

procedure Tf_contasapagar.b_fechaincluiClick(Sender: TObject);
begin
  Inclusao  := False;
  Alteracao := False;

  t_contas_a_pagar.Cancel;

  pnlPeriodicidade.Visible     := False;
  pnlInclusaoAlteracao.Visible := False;
end;

procedure Tf_contasapagar.btnAlteraContaClick(Sender: TObject);
begin
  if t_contas_a_pagar.RecordCount > 0
   then begin
     Inclusao  := False;
     Alteracao := True;

     t_contas_a_pagar.Edit;

     l_titulo.Caption := 'Alteração de Contas';

     AbrePanelInclusaoAlteracao;

     dblcbEmpresa1.Enabled := True;

     dblcbEmpresa1.Setfocus;
   end;
end;

procedure Tf_contasapagar.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  I : Integer;
begin
  if Assigned(f_localizarcontasapagar)
   then f_localizarcontasapagar.Close;

  for I := 0 to pred(ComponentCount) do
   begin
     if Components[I] is TQuery
      then TQuery(Components[I]).Close
      else if Components[I] is TTable
            then TTable(Components[I]).Close;
   end;

  Action := caFree;
  f_contasapagar := nil;
  F_MSCOMEX.ContasaPagar1.Enabled := True;
end;

procedure Tf_contasapagar.btnFiltrarClick(Sender: TObject);
begin
  try
    if not Assigned(f_localizarcontasapagar)
     then begin
       f_localizarcontasapagar := Tf_localizarcontasapagar.Create(Self);
       f_localizarcontasapagar.Show;
     end
     else f_localizarcontasapagar.Show;
  finally
    f_localizarcontasapagar.Show;
  end;
end;

procedure Tf_contasapagar.b_gravaincluiClick(Sender: TObject);
begin
  if ValidaCampos
   then begin
     if Inclusao
      then begin
        AbrePanelPeriodicidade;

        edParcela.SetFocus;
      end;

     if Alteracao
      then begin
        Inclusao  := False;
        Alteracao := False;

        pnlInclusaoAlteracao.Visible := False;

        if t_contas_a_pagar.State in [dsInsert, dsEdit]
         then begin
           t_contas_a_pagar.Post;
           t_contas_a_pagar.ApplyUpdates;
         end;

        VerificaESetaStatus; 

        AtualizarGrid;
      end;
   end;
end;

procedure Tf_contasapagar.t_contas_a_pagarAfterScroll(DataSet: TDataSet);
begin
  if not (t_contas_a_pagar.State in [dsInsert])
   then begin
     if t_contas_a_pagarFk_Fornecedor.AsString <> ''
      then dblcbFornecedor1.KeyValue := t_contas_a_pagarFk_Fornecedor.AsString;

     btnAlteraConta.Enabled := (t_contas_a_pagarStatus.AsString <> 'PAGO') and (t_contas_a_pagarFk_Fornecedor.AsString <> '');
   end;
end;

procedure Tf_contasapagar.t_contas_a_pagarFk_FornecedorGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if t_contas_a_pagarFk_Fornecedor.AsString <> ''
   then begin
     if t_fornecedorescontas.Locate('CODIGO',t_contas_a_pagarFk_Fornecedor.AsString,[])
      then Text := t_fornecedorescontasRazao_Social.Value
      else Text := '';
   end;
end;

procedure Tf_contasapagar.btnGerarClick(Sender: TObject);
var
  i : integer;
  Codigo_Empresa, Fk_Fornecedor, Descricao, Tipo_Numerario, Nf, Valor_Previsao, Vencimento_Previsao, Valor, Vencimento, Solicitante : String;
begin
  try
    if (Trim(edParcela.Text) <> '')
     then StrToInt(edParcela.Text);
  except
    Application.MessageBox('Número de Parcelas inválido, favor verificar.','Atenção', MB_ICONEXCLAMATION);
    Exit;
  end;

  Codigo_Empresa      := t_contas_a_pagarCodigo_Empresa.AsString;
  Fk_Fornecedor       := t_contas_a_pagarFk_Fornecedor.AsString;
  Descricao           := t_contas_a_pagarDescricao.AsString;
  Tipo_Numerario      := t_contas_a_pagarTp_Numerario.AsString;
  Nf                  := t_contas_a_pagarNf.AsString;
  Valor_Previsao      := t_contas_a_pagarValor_Previsao.AsString;
  Vencimento_Previsao := t_contas_a_pagarVencimento_Previsao.AsString;
  Valor               := t_contas_a_pagarValor.AsString;
  Vencimento          := t_contas_a_pagarVencimento.AsString;
  Solicitante         := t_contas_a_pagarSolicitante.AsString;

  try
    if t_contas_a_pagar.State in [dsInsert, dsEdit]
     then begin
       if (Trim(edParcela.Text) = '')
        then t_contas_a_pagarParcela.Value := '1/1'
        else t_contas_a_pagarParcela.Value := '1/'+edParcela.Text;

       t_contas_a_pagar.Post;
       t_contas_a_pagar.ApplyUpdates;
     end;

    if (Trim(edParcela.Text) <> '')
     then begin
       if (StrToInt(edParcela.Text) > 1)
        then begin
          for i := 2 to StrToInt(edParcela.Text) do
           begin
             t_contas_a_pagar.Insert;
             t_contas_a_pagarCodigo_Empresa.Value      := Codigo_Empresa;
             t_contas_a_pagarFk_Fornecedor.Value       := Fk_Fornecedor;
             t_contas_a_pagarDescricao.Value           := Descricao;
             t_contas_a_pagarTp_Numerario.Value        := Tipo_Numerario;
             t_contas_a_pagarNf.Value                  := Nf;

             if (Trim(Valor) <> '')
              then t_contas_a_pagarValor.Value          := StrToFloat(Valor)
              else t_contas_a_pagarValor_Previsao.Value := StrToFloat(Valor_Previsao);

             case cbPeriodicidade.ItemIndex of
               0 : begin
                     if (Trim(Vencimento) <> '')
                      then t_contas_a_pagarVencimento.Value := (StrToDate(Vencimento) + 15);

                     if (Trim(Vencimento_Previsao) <> '')
                      then t_contas_a_pagarVencimento_Previsao.Value := (StrToDate(Vencimento_Previsao) + 15);
                   end;

               1 : begin
                     if (Trim(Vencimento) <> '')
                      then t_contas_a_pagarVencimento.Value := (StrToDate(Vencimento) + 30);

                     if (Trim(Vencimento_Previsao) <> '')
                      then t_contas_a_pagarVencimento_Previsao.Value := (StrToDate(Vencimento_Previsao) + 30);
                   end;
             end;

             Vencimento_Previsao := t_contas_a_pagarVencimento_Previsao.AsString;
             Vencimento          := t_contas_a_pagarVencimento.AsString;

             if Valor <> ''
              then t_contas_a_pagarValor.Value := StrToFloat(Valor);

             t_contas_a_pagarSolicitante.Value := Solicitante;
             t_contas_a_pagarParcela.Value     := IntToStr(i)+'/'+edParcela.Text;
             t_contas_a_pagar.Post;
             t_contas_a_pagar.ApplyUpdates;
           end;
        end;
     end;
  finally
    Inclusao  := False;
    Alteracao := False;

    pnlInclusaoAlteracao.Visible := False;
    pnlPeriodicidade.Visible     := False;

    LimpaPanelPeriodicidade;

    AtualizarGrid;
  end;
end;

procedure Tf_contasapagar.btnExcluirClick(Sender: TObject);
var
  QrAux : TQuery;
  ValTotal : Double;
  QtdContas : Integer;
begin
  if Application.MessageBox('Deseja realmente excluir essa Conta desse cheque ?','Confirmação',MB_YESNO+MB_ICONQUESTION) = IDYES
   then begin
     try
       QrAux := TQuery.Create(nil);
       QrAux.DatabaseName := 'DBNMSCOMEX';

       QrAux.Close;
       QrAux.SQL.Clear;
       QrAux.Params.Clear;
       QrAux.SQL.Add('SELECT COUNT(*) FROM CONTAS_A_PAGAR WHERE FK_CONTAS_A_PAGAR_PAGAMENTOS = :p0 ');
       QrAux.Params[0].Value := qrContasPagamentosCodigo.Value;
       QrAux.Open;

       ValTotal  := qrContasPagamentosValor_Total.Value;
       QtdContas := QrAux.Fields[0].AsInteger;

       QrAux.Close;

       ValTotal := ValTotal - t_contas_a_pagar3Valor.Value;
       QtdContas := QtdContas - 1;

       lblTotal.Caption := 'Total ' + FormatFloat('R$ 0.00',ValTotal);

       if qrContasPagamentosCodigo.AsFloat <> 0
        then begin
          QrAux.Close;
          QrAux.SQL.Clear;
          QrAux.Params.Clear;
          QrAux.SQL.Add(' UPDATE CONTAS_A_PAGAR_PAGAMENTOS SET VALOR_TOTAL = :p0, QTD_CONTAS = :p1 WHERE CODIGO = :p2 ');
          QrAux.Params[0].Value := ValTotal;
          QrAux.Params[1].Value := QtdContas;
          QrAux.Params[2].Value := qrContasPagamentosCodigo.Value;
          QrAux.ExecSQL;
        end;

       QrAux.Close;
       QrAux.SQL.Clear;
       QrAux.Params.Clear;
       QrAux.SQL.Add(' UPDATE CONTAS_A_PAGAR SET BANCO = NULL, CHEQUE = NULL, STATUS = ''A VENCER'', FK_CONTAS_A_PAGAR_PAGAMENTOS = NULL, DATA_PAGAMENTO = NULL WHERE CODIGO = :p0 ');
       QrAux.Params[0].Value := t_contas_a_pagar3Codigo.Value;
       QrAux.ExecSQL;
     finally
       QrAux.Free;

       btnExcluirConta2.Enabled := (QtdContas > 1);

       IncluiNoCheque := False;

       AtualizarGridContabilizacao;
       AtualizarGridContas;
       AtualizarGrid;
     end;
   end;
end;

procedure Tf_contasapagar.btnSairPnlPagamentoClick(Sender: TObject);
begin
  pnlEfetuarPagamentos.Visible := False;
  t_contas_a_pagar2.Close;
end;

procedure Tf_contasapagar.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Check : Integer;
  R     : TRect;  
begin
  {Desenha um checkbox no dbgrid}
  if (Column.FieldName = 'Efetuar_Pagamento')
   then begin
     DBGrid3.Canvas.FillRect(Rect);
     Check := 0;

     if (t_contas_a_pagar2Efetuar_Pagamento.AsInteger = 1)
      then Check := DFCS_CHECKED
      else Check := 0;

     R := Rect;
     InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
     DrawFrameControl(DBGrid3.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
   end;
end;

procedure Tf_contasapagar.DBGrid3CellClick(Column: TColumn);
begin
  if Column.FieldName = 'Efetuar_Pagamento'
   then begin
     t_contas_a_pagar2.Edit;

     if t_contas_a_pagar2Efetuar_Pagamento.AsInteger = 1
      then t_contas_a_pagar2Efetuar_Pagamento.AsInteger := 0
      else begin
        t_contas_a_pagar2Efetuar_Pagamento.AsInteger := 1;
        t_contas_a_pagar2Usuario.AsString            := v_usuario;
      end;

     t_contas_a_pagar2.Post;

     t_contas_a_pagar2.ApplyUpdates;
   end;
end;

procedure Tf_contasapagar.btnPagarClick(Sender: TObject);
begin
  if IncluiNoCheque
   then begin
     IncluiPagamentoNoCheque;
     Exit;
   end;

  LimpaPanelPagamento;

  pnlPagamento.Visible := True;

  //t_ContasPagamentos.Open;
end;

procedure Tf_contasapagar.BitBtn5Click(Sender: TObject);
begin
  pnlPagamento.Visible := False;
end;

function Tf_contasapagar.ChequeExistente: Boolean;
var
  QrAux : TQuery;
begin
  try
    Result := False;

    QrAux := TQuery.Create(nil);
    QrAux.DatabaseName := 'DBNMSCOMEX';

    QrAux.Close;
    QrAux.SQL.Clear;
    QrAux.SQL.Add(' SELECT DOC FROM MOVIMENTACAO_CONTAS_CORRENTES WHERE CODIGO = :p0 AND DOC = :p1 ');
    QrAux.Params[0].Value := qrCCCodigo.AsString;
    QrAux.Params[1].Value := edChequeTpPagto.Text;
    QrAux.Open;

    if QrAux.RecordCount > 0
     then begin
       Application.MessageBox('Cheque existente, favor verificar.','Atenção', MB_ICONEXCLAMATION);
       edChequeTpPagto.SetFocus;
       Result := True;
     end;
  finally
    QrAux.Free;
  end;
end;

procedure Tf_contasapagar.btnOkPagamentoClick(Sender: TObject);
var
  QrAux, QrAux1 : TQuery;
  ValorTotal : Double;
  QtdContas : Integer;
  Fk_pagamento : Integer;
begin
  if (Trim(edChequeTpPagto.Text) <> '')
   then begin
     if ChequeExistente
      then Exit;
   end
   else Exit;

  try
    QrAux := TQuery.Create(nil);
    QrAux.DatabaseName := 'DBNMSCOMEX';

    QrAux1 := TQuery.Create(nil);
    QrAux1.DatabaseName := 'DBNMSCOMEX';

    QrAux.Close;
    QrAux.SQL.Clear;
    QrAux.SQL.Add(' SELECT SUM(VALOR), COUNT(VALOR) FROM CONTAS_A_PAGAR WHERE USUARIO = :p0 AND EFETUAR_PAGAMENTO = 1 ');
    QrAux.Params[0].Value := v_usuario;
    QrAux.Open;

    ValorTotal := QrAux.Fields[0].Value;
    QtdContas  := QrAux.Fields[1].Value;;

    try
      QrAux1.Close;
      QrAux1.SQL.Clear;
      QrAux1.SQL.Add(' INSERT INTO CONTAS_A_PAGAR_PAGAMENTOS     ');
      QrAux1.SQL.Add('        (Valor_Total,                      ');
      QrAux1.SQL.Add('         Data_Emissao,                     ');
      QrAux1.SQL.Add('         Data_Pagamento,                   ');
      QrAux1.SQL.Add('         Qtd_Contas,                       ');
      QrAux1.SQL.Add('         Status,                           ');
      QrAux1.SQL.Add('         Banco,                            ');
      QrAux1.SQL.Add('         Cheque,                           ');
      QrAux1.SQL.Add('         Codigo_Empresa)                   ');
      QrAux1.SQL.Add(' VALUES                                    ');
      QrAux1.SQL.Add('        (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)  ');

      QrAux1.Params[0].Value := ValorTotal;
      QrAux1.Params[1].Value := StrToDate(edDtEmissao.Text);
      QrAux1.Params[2].Value := StrToDate(edDtEmissao.Text);
      QrAux1.Params[3].Value := QtdContas;
      QrAux1.Params[4].Value := 'Emitido';
      QrAux1.Params[5].Value := qrCCCodigo.AsString;
      QrAux1.Params[6].Value := edChequeTpPagto.Text;
      QrAux1.Params[7].Value := dblcbEmpresa1.KeyValue;      
      QrAux1.ExecSQL;

      QrAux1.Close;
      QrAux1.SQL.Clear;
      QrAux1.Params.Clear;
      QrAux1.SQL.Add(' SELECT MAX(CODIGO) FROM CONTAS_A_PAGAR_PAGAMENTOS WHERE CONTABILIZADA = 0 AND BANCO = :p0 AND CHEQUE = :p1 ');
      QrAux1.Params[0].Value := qrCCCodigo.AsString;
      QrAux1.Params[1].Value := edChequeTpPagto.Text;
      QrAux1.Open;

      Fk_pagamento := QrAux1.Fields[0].Value;

      {Inclui Referência}
      QrAux.Close;
      QrAux.SQL.Clear;
      QrAux.SQL.Add(' UPDATE CONTAS_A_PAGAR SET FK_CONTAS_A_PAGAR_PAGAMENTOS = :p0, BANCO = :p1, CHEQUE = :p2, STATUS = :p3, DATA_PAGAMENTO = :p4 WHERE EFETUAR_PAGAMENTO = 1 AND USUARIO = :p5 ');
      QrAux.Params[0].Value := Fk_pagamento;
      QrAux.Params[1].Value := qrCCCodigo.AsString;
      QrAux.Params[2].Value := edChequeTpPagto.Text;
      QrAux.Params[3].Value := 'PAGO';
      QrAux.Params[4].Value := StrToDate(edDtEmissao.Text);
      QrAux.Params[5].Value := v_usuario;
      QrAux.ExecSQL;
    except
      Application.MessageBox('Erro na emissão do Pagamento, favor verificar.','Erro', MB_ICONERROR);
      Abort;
    end;
  finally
    DesmarcaTodas;

    pnlPagamento.Visible         := False;
    pnlEfetuarPagamentos.Visible := False;

    QrAux.Free;
    QrAux1.Free;

    AtualizarGrid;
    AtualizarGridContabilizacao;
  end;
end;

procedure Tf_contasapagar.DesmarcaTodas;
var
  QrAux3 : TQuery;
begin
  try
    QrAux3 := TQuery.Create(nil);
    QrAux3.DatabaseName := 'DBNMSCOMEX';

    QrAux3.Close;
    QrAux3.SQL.Clear;
    QrAux3.SQL.Add(' UPDATE CONTAS_A_PAGAR SET USUARIO = NULL, EFETUAR_PAGAMENTO = 0 WHERE USUARIO = :p0 ');
    QrAux3.Params[0].Value := v_usuario;
    QrAux3.ExecSQL;
  finally
    QrAux3.Free;
  end;
end;

procedure Tf_contasapagar.DBGrid2DblClick(Sender: TObject);
begin
  Valor_Total := 0;

  AtualizarGridContas;

  t_contas_a_pagar3.Filter   := '';
  t_contas_a_pagar3.Filtered := False;

  t_contas_a_pagar3.Filter   := 'FK_CONTAS_A_PAGAR_PAGAMENTOS = ''' + qrContasPagamentosCodigo.AsString + '''';
  t_contas_a_pagar3.Filtered := True;

  t_contas_a_pagar3.First;

  while not t_contas_a_pagar3.Eof do
   begin
     Valor_Total := Valor_Total + t_contas_a_pagar3Valor.AsFloat;

     t_contas_a_pagar3.Next;
   end;

  lblTotal.Caption := 'Total ' + FormatFloat('R$ 0.00',Valor_Total); 

  t_contas_a_pagar3.First;

  AbrePanelContas;
end;

procedure Tf_contasapagar.AtualizarGridContas;
begin
  t_contas_a_pagar3.Close;
  t_contas_a_pagar3.Open;
end;

procedure Tf_contasapagar.btnSairContasClick(Sender: TObject);
begin
  btnSairPnlPagamentoClick(btnSairPnlPagamento);

  pnlContas.Visible := False;
  t_contas_a_pagar3.Close;
end;

procedure Tf_contasapagar.StringField1GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if t_contas_a_pagar2Fk_Fornecedor.AsString <> ''
   then begin
     if t_fornecedorescontas.Locate('CODIGO',t_contas_a_pagar2Fk_Fornecedor.AsString,[])
      then Text := t_fornecedorescontasRazao_Social.Value
      else Text := '';
   end;
end;

procedure Tf_contasapagar.btnContabilizarClick(Sender: TObject);
var
  QrAux, QrAux1 : TQuery;
begin
  try
    if MessageDlg(V_usuario+', ATENÇÃO!, confirma a CONTABILIZAÇÃO MANUAL ?', mtConfirmation,[mbYes, mbNo], 0) = mrNo
     then begin
       LancaMovimentacao;

       QrAux := TQuery.Create(nil);
       QrAux.DatabaseName := 'DBNMSCOMEX';

       QrAux.Close;
       QrAux.SQL.Clear;
       QrAux.SQL.Add(' SELECT DESCRICAO, TP_NUMERARIO, VALOR FROM CONTAS_A_PAGAR WHERE FK_CONTAS_A_PAGAR_PAGAMENTOS = :p0 ');
       QrAux.Params[0].Value := qrContasPagamentosCodigo.AsString;
       QrAux.Open;
       QrAux.First;

       while not QrAux.eof do
        begin
          try
            q_incdeb.ParamByName('Empresa').AsString               := v_empresa;
            q_incdeb.ParamByName('Filial').AsString                := v_filial;
            q_incdeb.ParamByName('Processo').AsString              := 'FINANC';
            q_incdeb.ParamByName('Numerario').AsString             := QrAux.FieldByName('TP_NUMERARIO').AsString;
            q_incdeb.ParamByName('Usuario_Financeiro').AsString    := v_usuario;
            q_incdeb.ParamByName('Data_Registro').AsString         := DateToStr(Date());
            q_incdeb.ParamByName('Valor_Registrado').AsFloat       := QrAux.FieldByName('VALOR').AsFloat;
            q_incdeb.ParamByName('Valor_Contabilizado').AsFloat    := QrAux.FieldByName('VALOR').AsFloat;
            q_incdeb.ParamByName('Contabilizado').AsString         := 'Sim';
            q_incdeb.ParamByName('Usuario_Contablizado').AsString  := v_usuario;
            q_incdeb.ParamByName('Conta_Corrente').AsInteger       := t_movccCodigo.AsInteger;
            q_incdeb.ParamByName('Codigo_Mov').AsInteger           := t_movccCodigo_Mov.AsInteger;
            q_incdeb.ParamByName('Detalhe').AsString               := QrAux.FieldByName('DESCRICAO').AsString;
            q_incdeb.ExecSQL;
          except
            ShowMessage('Erro na inclusão do desmembramento.');
          end;

          QrAux.Next;
        end;

       QrAux.Close;
       QrAux.Free;

       QrAux1 := TQuery.Create(nil);
       QrAux1.DatabaseName := 'DBNMSCOMEX';

       QrAux1.Close;
       QrAux1.SQL.Clear;
       QrAux1.SQL.Add(' UPDATE CONTAS_A_PAGAR_PAGAMENTOS SET CONTABILIZADA = 1, CONTABILIZADA_AUTOMATICAMENTE = 1, STATUS = ''Contabilizada'', CODIGO_MOVIMENTACAO =:p0 WHERE CODIGO =:p1 ');
       QrAux1.Params[0].Value := t_movccCodigo_Mov.asstring;
       QrAux1.Params[1].Value := qrContasPagamentosCodigo.AsInteger;
       QrAux1.ExecSQL;

       Application.MessageBox('Pagamento Contabilizado AUTOMATICAMENTE.','Informação', MB_ICONINFORMATION);
     end
     else begin
       QrAux1 := TQuery.Create(nil);
       QrAux1.DatabaseName := 'DBNMSCOMEX';

       QrAux1.Close;
       QrAux1.SQL.Clear;
       QrAux1.SQL.Add(' UPDATE CONTAS_A_PAGAR_PAGAMENTOS SET CONTABILIZADA = 1, CONTABILIZADA_AUTOMATICAMENTE = 0, STATUS = ''Contabilizada'', CODIGO_MOVIMENTACAO =:p0 WHERE CODIGO =:p1 ');
       QrAux1.Params[0].Value := t_movccCodigo_Mov.asstring;
       QrAux1.Params[1].Value := qrContasPagamentosCodigo.AsInteger;
       QrAux1.ExecSQL;

       Application.MessageBox('Pagamento Contabilizado MANUALMENTE.','Informação', MB_ICONINFORMATION);
     end;
  finally
    QrAux1.Free;

    AtualizarGridContabilizacao;

    SetaBotoes;
  end;
end;

procedure Tf_contasapagar.btnDescontabilizarClick(Sender: TObject);
var
  QrAux : TQuery;
begin
  try
    QrAux := TQuery.Create(nil);
    QrAux.DatabaseName := 'DBNMSCOMEX';

    if (qrContasPagamentosContabilizada_Automaticamente.AsInteger = 1)
     then begin
       if (not qrContasPagamentosCodigo_Movimentacao.IsNull) and (qrContasPagamentosCodigo_Movimentacao.AsInteger <> 0)
        then begin
          QrAux.Close;
          QrAux.SQL.Clear;
          QrAux.SQL.Add('DELETE FROM NUMERARIOS_PROCESSOS WHERE CODIGO_MOV = :p0 ');
          QrAux.Params[0].Value := qrContasPagamentosCodigo_Movimentacao.AsInteger;
          QrAux.ExecSQL;

          QrAux.Close;
          QrAux.SQL.Clear;
          QrAux.SQL.Add('DELETE FROM MOVIMENTACAO_CONTAS_CORRENTES WHERE CODIGO_MOV = :p0 ');
          QrAux.Params[0].Value := qrContasPagamentosCodigo_Movimentacao.AsInteger;
          QrAux.ExecSQL;

          QrAux.Close;
          QrAux.SQL.Clear;
          QrAux.SQL.Add('UPDATE CONTAS_A_PAGAR_PAGAMENTOS SET CONTABILIZADA = 0, CONTABILIZADA_AUTOMATICAMENTE = 0, STATUS = ''Emitido'', CODIGO_MOVIMENTACAO = NULL WHERE CODIGO =:p1');
          QrAux.Params[0].Value := qrContasPagamentosCodigo.AsInteger;
          QrAux.ExecSQL;

          Application.MessageBox('Pagamento Descontabilizado AUTOMATICAMENTE.','Informação', MB_ICONINFORMATION);
        end;
     end
     else begin
       QrAux.Close;
       QrAux.SQL.Clear;
       QrAux.SQL.Add('UPDATE CONTAS_A_PAGAR_PAGAMENTOS SET CONTABILIZADA = 0, CONTABILIZADA_AUTOMATICAMENTE = 0, STATUS = ''Emitido'', CODIGO_MOVIMENTACAO = NULL WHERE CODIGO =:p1');
       QrAux.Params[0].Value := qrContasPagamentosCodigo.AsInteger;
       QrAux.ExecSQL;

       Application.MessageBox('Pagamento Descontabilizado, porém, deverá ser excluído da conta corrente MANUALMENTE.','Informação', MB_ICONINFORMATION);       
     end;
  finally
    QrAux.Free;

    AtualizarGridContabilizacao;

    SetaBotoes;
  end;
end;

function Tf_contasapagar.ValidaCampos: Boolean;
begin
  Result := True;

  if (dblcbFornecedor1.KeyValue = NULL)
   then begin
     Application.MessageBox('Fornecedor obrigatório, favor verificar.','Atenção', MB_ICONEXCLAMATION);
     dblcbFornecedor1.SetFocus;
     Result := False;
     Exit;
   end;

  if (dblcbNumerario.KeyValue = NULL)
   then begin
     Application.MessageBox('Numerário obrigatório, favor verificar.','Atenção', MB_ICONEXCLAMATION);
     dblcbNumerario.SetFocus;
     Result := False;
     Exit;
   end;

  if (Trim(dbedDescricao.Text) = '')
   then begin
     Application.MessageBox('Descrição obrigatória, favor verificar.','Atenção', MB_ICONEXCLAMATION);
     dbedDescricao.SetFocus;
     Result := False;
     Exit;
   end;

  if not ((Trim(dbedValor.Text) <> '') and (Trim(dbedVencimento.Text) <> ''))
   then begin
     if (Trim(dbedVlrPrevisto.Text) = '')
      then begin
        Application.MessageBox('Valor Previsto obrigatório, favor verificar.','Atenção', MB_ICONEXCLAMATION);
        dbedVlrPrevisto.SetFocus;
        Result := False;
        Exit;
      end;

     if (Trim(dbedPrevVenc.Text) = '')
      then begin
        Application.MessageBox('Vencimento Previsto obrigatório, favor verificar.','Atenção', MB_ICONEXCLAMATION);
        dbedPrevVenc.SetFocus;
        Result := False;
        Exit;
      end;
   end;

  if (dblcbSolicitante.keyValue = NULL)
   then begin
     Application.MessageBox('Solicitante obrigatório, favor verificar.','Atenção', MB_ICONEXCLAMATION);
     dblcbSolicitante.SetFocus;
     Result := False;
     Exit;
   end;
end;

procedure Tf_contasapagar.t_contasStatusGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text := t_contas_a_pagarStatus.Value;

  if not t_contas_a_pagarVencimento.IsNull
   then begin
     if (t_contas_a_pagarVencimento.AsDateTime < Date())
      then Text := 'VENCIDO'
   end;
end;

procedure Tf_contasapagar.AtualizarGridContabilizacao;
begin
  qrContasPagamentos.Close;
  qrContasPagamentos.Open;
end;

procedure Tf_contasapagar.t_contas_a_pagar2Fk_FornecedorGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if t_contas_a_pagar2Fk_Fornecedor.AsString <> ''
   then begin
     if t_fornecedorescontas.Locate('CODIGO',t_contas_a_pagar2Fk_Fornecedor.AsString,[])
      then Text := t_fornecedorescontasRazao_Social.Value
      else Text := '';
   end;
end;

procedure Tf_contasapagar.t_contas_a_pagar3Fk_FornecedorGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if t_contas_a_pagar3Fk_Fornecedor.AsString <> ''
   then begin
     if t_fornecedorescontas.Locate('CODIGO',t_contas_a_pagar3Fk_Fornecedor.AsString,[])
      then Text := t_fornecedorescontasRazao_Social.Value
      else Text := '';
   end;
end;

procedure Tf_contasapagar.t_contas_a_pagar3BancoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if t_contas_a_pagar3Banco.AsString <> ''
   then begin
     if t_contas_correntes.Locate('CODIGO',t_contas_a_pagar3Banco.AsString,[])
      then Text := t_contas_correntesDescricao.Value
      else Text := '';
   end;
end;

procedure Tf_contasapagar.t_contas_a_pagar2BancoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if t_contas_a_pagar2Banco.AsString <> ''
   then begin
     if t_contas_correntes.Locate('CODIGO',t_contas_a_pagar2Banco.AsString,[])
      then Text := t_contas_correntesDescricao.Value
      else Text := '';
   end;
end;

procedure Tf_contasapagar.EfetuarPagamento;
begin
  AbrePanelEfetuarPagamentos;

  DesmarcaTodas;

  t_contas_a_pagar2.Close;
  t_contas_a_pagar2.Open;

  t_contas_a_pagar2.First;
end;

procedure Tf_contasapagar.btnEfetuaPagamentoClick(Sender: TObject);
begin
  IncluiNoCheque := False;
  Cheque := '';

  EfetuarPagamento;
end;

procedure Tf_contasapagar.btnInsereContaNoChequeClick(Sender: TObject);
begin
  IncluiNoCheque := True;
  Cheque := qrContasPagamentosCheque.AsString;  

  EfetuarPagamento;
end;

procedure Tf_contasapagar.IncluiPagamentoNoCheque;
var
  QrAux : TQuery;
  ValTotal : Double;
  QtdContas : Integer;
begin
  try
    QrAux := TQuery.Create(nil);
    QrAux.DatabaseName := 'DBNMSCOMEX';

    QrAux.Close;
    QrAux.SQL.Clear;
    QrAux.Params.Clear;
    QrAux.SQL.Add(' SELECT SUM(VALOR), COUNT(VALOR) FROM CONTAS_A_PAGAR WHERE USUARIO = :p0 AND EFETUAR_PAGAMENTO = 1 ');
    QrAux.Params[0].Value := v_usuario;
    QrAux.Open;

    ValTotal  := qrContasPagamentosValor_Total.Value + qrAux.Fields[0].Value;
    QtdContas := qrContasPagamentosQtd_Contas.Value + qrAux.Fields[1].Value;

    lblTotal.Caption := 'Total ' + FormatFloat('R$ 0.00',ValTotal); 

    QrAux.Close;
    QrAux.SQL.Clear;
    QrAux.Params.Clear;
    QrAux.SQL.Add(' UPDATE CONTAS_A_PAGAR SET BANCO = :p0, CHEQUE = :p1, STATUS = :p2, FK_CONTAS_A_PAGAR_PAGAMENTOS = :p3, DATA_PAGAMENTO = :p4 WHERE EFETUAR_PAGAMENTO = 1 AND USUARIO = :p5 ');
    QrAux.Params[0].Value := qrContasPagamentosBanco.Value;
    QrAux.Params[1].Value := qrContasPagamentosCheque.Value;
    QrAux.Params[2].Value := 'PAGO';
    QrAux.Params[3].Value := qrContasPagamentosCodigo.Value;
    QrAux.Params[4].Value := qrContasPagamentosData_Pagamento.Value;
    QrAux.Params[5].Value := v_usuario;
    QrAux.ExecSQL;

    if qrContasPagamentosCodigo.AsFloat <> 0
     then begin
       QrAux.Close;
       QrAux.SQL.Clear;
       QrAux.Params.Clear;
       QrAux.SQL.Add(' UPDATE CONTAS_A_PAGAR_PAGAMENTOS SET VALOR_TOTAL = :p0, QTD_CONTAS = :p1, DATA_PAGAMENTO = :p2 WHERE CODIGO = :p3 ');
       QrAux.Params[0].Value := ValTotal;
       QrAux.Params[1].Value := QtdContas;
       QrAux.Params[2].Value := qrContasPagamentosData_Pagamento.Value;       
       QrAux.Params[3].Value := qrContasPagamentosCodigo.Value;
       QrAux.ExecSQL;
     end;
  finally
    DesmarcaTodas;

    pnlPagamento.Visible         := False;
    pnlEfetuarPagamentos.Visible := False;

    QrAux.Free;

    IncluiNoCheque := False;

    AtualizarGridContabilizacao;
    AtualizarGridContas;
    AtualizarGrid;
  end;
end;

procedure Tf_contasapagar.AtualizarGrid;
begin
  t_contas_a_pagar.Close;
  t_contas_a_pagar.Open;
end;

procedure Tf_contasapagar.LimpaPanelPagamento;
begin
  dblcContaCorrente.KeyValue := 0;
  edChequeTpPagto.Clear;
  edDtEmissao.Clear; 
end;

procedure Tf_contasapagar.qrContasPagamentosBancoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if qrContasPagamentos.RecordCount > 0
   then if t_bancos.Locate('Codigo',qrContasPagamentosBanco.AsInteger,[loPartialKey])
         then Text := t_bancosDescricao.Value;
end;

procedure Tf_contasapagar.LimpaPanelPeriodicidade;
begin
  edParcela.Clear;
  cbPeriodicidade.ItemIndex := -1;
end;

procedure Tf_contasapagar.t_contas_a_pagarBancoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if (Trim(t_contas_a_pagarBanco.AsString) <> '')
   then begin
     if t_bancos.Locate('Codigo',t_contas_a_pagarBanco.AsInteger,[loPartialKey])
      then Text := t_bancosDescricao.Value;
   end   
   else Text := '';
end;

procedure Tf_contasapagar.t_contas_a_pagar3Tp_NumerarioGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if (Trim(t_contas_a_pagar3Tp_Numerario.AsString) <> '')
   then if t_tipos_numerarios.Locate('Codigo',t_contas_a_pagar3Tp_Numerario.AsString,[loPartialKey])
         then Text := t_tipos_numerariosDescricao.Value;
end;

procedure Tf_contasapagar.t_contas_a_pagarTp_NumerarioGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if (Trim(t_contas_a_pagarTp_Numerario.AsString) <> '')
   then if t_tipos_numerarios.Locate('Codigo',t_contas_a_pagarTp_Numerario.AsString,[loPartialKey])
         then Text := t_tipos_numerariosDescricao.Value;
end;

procedure Tf_contasapagar.t_contas_a_pagarValor_PrevisaoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if t_contas_a_pagarValor_Previsao.AsFloat > 0
   then Text := FormatFloat('0.00',t_contas_a_pagarValor_Previsao.AsFloat);
end;

procedure Tf_contasapagar.t_contas_a_pagarValorGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if t_contas_a_pagarValor.AsFloat > 0
   then Text := FormatFloat('0.00',t_contas_a_pagarValor.AsFloat);
end;

procedure Tf_contasapagar.qrContasPagamentosValor_TotalGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if qrContasPagamentosValor_Total.AsFloat > 0
   then Text := FormatFloat('0.00',qrContasPagamentosValor_Total.AsFloat);
end;

procedure Tf_contasapagar.FloatField2GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if FloatField2.AsFloat > 0
   then Text := FormatFloat('0.00',FloatField2.AsFloat);
end;

procedure Tf_contasapagar.t_contas_a_pagar3Valor_PrevisaoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if t_contas_a_pagar3Valor_Previsao.AsFloat > 0
   then Text := FormatFloat('0.00',t_contas_a_pagar3Valor_Previsao.AsFloat);
end;

procedure Tf_contasapagar.t_contas_a_pagar3ValorGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if t_contas_a_pagar3Valor.AsFloat > 0
   then Text := FormatFloat('0.00',t_contas_a_pagar3Valor.AsFloat);
end;

procedure Tf_contasapagar.FloatField1GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if FloatField1.AsFloat > 0
   then Text := FormatFloat('0.00',FloatField1.AsFloat);
end;

procedure Tf_contasapagar.btnExcluiChequeClick(Sender: TObject);
var
  QrAux : TQuery;
begin
  if (not qrContasPagamentosCodigo.IsNull)
   then begin
     if Application.MessageBox('A exclusão desse Cheque irá desvincular todas as contas relacionadas a ele. Deseja realmente excluir ? ','Confirmação',MB_YESNO+MB_ICONQUESTION) = IDYES
      then begin
        try
          QrAux := TQuery.Create(nil);
          QrAux.DatabaseName := 'DBNMSCOMEX';

          try
            QrAux.Close;
            QrAux.SQL.Clear;
            QrAux.Params.Clear;
            QrAux.SQL.Add(' UPDATE CONTAS_A_PAGAR SET BANCO = NULL, CHEQUE = NULL, STATUS = ''A VENCER'', FK_CONTAS_A_PAGAR_PAGAMENTOS = NULL, DATA_PAGAMENTO = NULL WHERE FK_CONTAS_A_PAGAR_PAGAMENTOS = :p0 ');
            QrAux.Params[0].Value := qrContasPagamentosCodigo.Value;
            QrAux.ExecSQL;

            QrAux.Close;
            QrAux.SQL.Clear;
            QrAux.Params.Clear;
            QrAux.SQL.Add(' DELETE FROM CONTAS_A_PAGAR_PAGAMENTOS WHERE CODIGO = :p0 ');
            QrAux.Params[0].Value := qrContasPagamentosCodigo.Value;
            QrAux.ExecSQL;
          except
            Application.MessageBox('Erro ao excluir cheque.','Atenção', MB_ICONEXCLAMATION);
            Abort;
          end;
        finally
          QrAux.Free;

          AtualizarGridContabilizacao;
          AtualizarGridContas;
          AtualizarGrid;

          SetaBotoes;
        end;
      end;
   end;
end;

procedure Tf_contasapagar.SetaBotoes;
begin
  btnContabilizar.Enabled    := ((qrContasPagamentosContabilizada.AsInteger = 0) and (qrContasPagamentos.RecordCount > 0));
  btnDescontabilizar.Enabled := ((qrContasPagamentosContabilizada.AsInteger = 1) and (qrContasPagamentos.RecordCount > 0));
  btnExcluiCheque.Enabled    := ((qrContasPagamentosStatus.AsString = 'Emitido') or (qrContasPagamentosStatus.AsString = 'Descontabilizado'));

  btnInsereContaNoCheque.Enabled := ((qrContasPagamentosContabilizada.AsInteger = 0) and (qrContasPagamentos.RecordCount > 0));
  btnExcluirConta2.Enabled       := ((qrContasPagamentosContabilizada.AsInteger = 0) and (qrContasPagamentos.RecordCount > 0));
end;

procedure Tf_contasapagar.qrContasPagamentosAfterScroll(DataSet: TDataSet);
begin
  SetaBotoes;
end;

procedure Tf_contasapagar.LimpaFiltros;
begin
  f_localizarcontasapagar.dblcFornecedor.KeyValue := '0';
  f_localizarcontasapagar.edVlrInicial.Clear;
  f_localizarcontasapagar.edVlrFinal.Clear;
  f_localizarcontasapagar.edVencInicial.Clear;
  f_localizarcontasapagar.edVencFinal.Clear;
  f_localizarcontasapagar.edVlrPrevInicial.Clear;
  f_localizarcontasapagar.edVlrPrevFinal.Clear;
  f_localizarcontasapagar.edVencPrevInicial.Clear;
  f_localizarcontasapagar.edVencPrevFinal.Clear;
  f_localizarcontasapagar.dblcSolicitante.KeyValue := '0';
end;

procedure Tf_contasapagar.b_imprimeClick(Sender: TObject);
begin
  if not Assigned(f_relcontas_a_pagar)
   then Application.CreateForm(Tf_relcontas_a_pagar, f_relcontas_a_pagar);

  f_relcontas_a_pagar.Preview;
end;

procedure Tf_contasapagar.CancelaFiltros;
begin
  LimpaFiltros;

  AplicaFiltros;
end;

procedure Tf_contasapagar.rbTodosClick(Sender: TObject);
begin
  AplicaFiltros;
end;

procedure Tf_contasapagar.AplicaFiltros;
begin
  t_contas_a_pagar.Filter   := '';
  t_contas_a_pagar.Filtered := False;

  t_contas_a_pagar2.Filter   := '';
  t_contas_a_pagar2.Filtered := False;

  t_contas_a_pagar.Filter  := 'STATUS IS NOT NULL ';
  t_contas_a_pagar2.Filter := 'BANCO = NULL AND CHEQUE = NULL AND VENCIMENTO IS NOT NULL AND VALOR IS NOT NULL ';

  if (rbPago.Checked)
   then t_contas_a_pagar.Filter  := t_contas_a_pagar.Filter  + ' AND STATUS = ' + QuotedStr('PAGO') + ''
   else if (rbVencido.Checked)
         then t_contas_a_pagar.Filter  := t_contas_a_pagar.Filter  + ' AND STATUS = ' + QuotedStr('VENCIDO') + ''
         else if (rbVencer.Checked)
               then t_contas_a_pagar.Filter := t_contas_a_pagar.Filter  + ' AND STATUS = ' + QuotedStr('A VENCER') + '';

  t_contas_a_pagar.Filter           := t_contas_a_pagar.Filter  + ' AND CODIGO_EMPRESA = ''' + IntToStr(dblcbEmpresa.KeyValue) + '''';
  t_contas_a_pagar2.Filter          := t_contas_a_pagar2.Filter + ' AND CODIGO_EMPRESA = ''' + IntToStr(dblcbEmpresa.KeyValue) + '''';

  if Assigned(f_localizarcontasapagar)
   then begin
     if (f_localizarcontasapagar.dblcFornecedor.KeyValue <> NULL) and (f_localizarcontasapagar.dblcFornecedor.KeyValue <> '0')
      then begin
        t_contas_a_pagar.Filter  := t_contas_a_pagar.Filter  + ' AND FK_FORNECEDOR = ''' + IntToStr(f_localizarcontasapagar.dblcFornecedor.KeyValue) + '''';
        t_contas_a_pagar2.Filter := t_contas_a_pagar2.Filter + ' AND FK_FORNECEDOR = ''' + IntToStr(f_localizarcontasapagar.dblcFornecedor.KeyValue) + '''';
      end;

     if (Trim(f_localizarcontasapagar.edVlrInicial.Text) <> '')
      then begin
        t_contas_a_pagar.Filter  := t_contas_a_pagar.Filter  + ' AND VALOR >= ''' + f_localizarcontasapagar.edVlrInicial.Text + '''';
        t_contas_a_pagar2.Filter := t_contas_a_pagar2.Filter + ' AND VALOR >= ''' + f_localizarcontasapagar.edVlrInicial.Text + '''';
      end;

     if (Trim(f_localizarcontasapagar.edVlrFinal.Text) <> '')
      then begin
        t_contas_a_pagar.Filter  := t_contas_a_pagar.Filter  + ' AND VALOR <= ''' + f_localizarcontasapagar.edVlrFinal.Text + '''';
        t_contas_a_pagar2.Filter := t_contas_a_pagar2.Filter + ' AND VALOR <= ''' + f_localizarcontasapagar.edVlrFinal.Text + '''';
      end;

     if (f_localizarcontasapagar.edVencInicial.Text <> '  /  /    ')
      then begin
        t_contas_a_pagar.Filter  := t_contas_a_pagar.Filter  + ' AND VENCIMENTO >= ''' + f_localizarcontasapagar.edVencInicial.Text + '''';
        t_contas_a_pagar2.Filter := t_contas_a_pagar2.Filter + ' AND VENCIMENTO >= ''' + f_localizarcontasapagar.edVencInicial.Text + '''';
      end;

     if (f_localizarcontasapagar.edVencFinal.Text <> '  /  /    ')
      then begin
        t_contas_a_pagar.Filter  := t_contas_a_pagar.Filter  + ' AND VENCIMENTO <= ''' + f_localizarcontasapagar.edVencFinal.Text + '''';
        t_contas_a_pagar2.Filter := t_contas_a_pagar2.Filter + ' AND VENCIMENTO <= ''' + f_localizarcontasapagar.edVencFinal.Text + '''';
      end;

     if (Trim(f_localizarcontasapagar.edVlrPrevInicial.Text) <> '')
      then begin
        t_contas_a_pagar.Filter  := t_contas_a_pagar.Filter  + ' AND VALOR_PREVISAO >= ''' + f_localizarcontasapagar.edVlrPrevInicial.Text + '''';
        t_contas_a_pagar2.Filter := t_contas_a_pagar2.Filter + ' AND VALOR_PREVISAO >= ''' + f_localizarcontasapagar.edVlrPrevInicial.Text + '''';
      end;

     if (Trim(f_localizarcontasapagar.edVlrPrevFinal.Text) <> '')
      then begin
        t_contas_a_pagar.Filter  := t_contas_a_pagar.Filter  + ' AND VALOR_PREVISAO <= ''' + f_localizarcontasapagar.edVlrPrevFinal.Text + '''';
        t_contas_a_pagar2.Filter := t_contas_a_pagar2.Filter + ' AND VALOR_PREVISAO <= ''' + f_localizarcontasapagar.edVlrPrevFinal.Text + '''';
      end;

     if (f_localizarcontasapagar.edVencPrevInicial.Text <> '  /  /    ')
      then begin
        t_contas_a_pagar.Filter  := t_contas_a_pagar.Filter  + ' AND VENCIMENTO_PREVISAO >= ''' + f_localizarcontasapagar.edVencPrevInicial.Text + '''';
        t_contas_a_pagar2.Filter := t_contas_a_pagar2.Filter + ' AND VENCIMENTO_PREVISAO >= ''' + f_localizarcontasapagar.edVencPrevInicial.Text + '''';
      end;

     if (f_localizarcontasapagar.edVencPrevFinal.Text <> '  /  /    ')
      then begin
        t_contas_a_pagar.Filter  := t_contas_a_pagar.Filter  + ' AND VENCIMENTO_PREVISAO <= ''' + f_localizarcontasapagar.edVencPrevFinal.Text + '''';
        t_contas_a_pagar2.Filter := t_contas_a_pagar2.Filter + ' AND VENCIMENTO_PREVISAO <= ''' + f_localizarcontasapagar.edVencPrevFinal.Text + '''';
      end;

     if (f_localizarcontasapagar.dblcSolicitante.KeyValue <> NULL) and (f_localizarcontasapagar.dblcSolicitante.KeyValue <> '0')
      then begin
        t_contas_a_pagar.Filter  := t_contas_a_pagar.Filter  + ' AND SOLICITANTE = ''' + f_localizarcontasapagar.dblcSolicitante.KeyValue + '''';
        t_contas_a_pagar2.Filter := t_contas_a_pagar2.Filter + ' AND SOLICITANTE = ''' + f_localizarcontasapagar.dblcSolicitante.KeyValue + '''';
      end;
   end;

  t_contas_a_pagar.Filtered   := True;
  t_contas_a_pagar2.Filtered  := True;
end;

procedure Tf_contasapagar.FiltraEmpresa;
begin
  t_contas_correntes.Open;
  t_contas_correntes.Filter   := 'EMPRESA = ''' + q_empresasCodigo.AsString + '''';
  t_contas_correntes.Filtered := True;

  qrContasPagamentos.Close;
  qrContasPagamentos.Params[0].Value := IntToStr(dblcbEmpresa.KeyValue);
  qrContasPagamentos.Open;

  t_bancos.Open;
  t_bancos.Filter   := 'EMPRESA = ''' + q_empresasCodigo.AsString + '''';
  t_bancos.Filtered := True;

  qrCC.Close;
  qrCC.Params[0].Value := IntToStr(dblcbEmpresa.KeyValue);
  qrCC.Open;
end;

procedure Tf_contasapagar.dblcbEmpresaClick(Sender: TObject);
begin
  FiltraEmpresa;

  AplicaFiltros;

  SetaBotoes;
end;

procedure Tf_contasapagar.LancaMovimentacao;
begin
  t_movcc.Open;
  t_movcc.Append;
  t_movccEmpresa.asstring             := v_empresa;
  t_movccFilial.asstring              := v_filial;
  t_movccCodigo.asstring              := qrContasPagamentosBanco.AsString;
  t_movccDoc.asstring                 := qrContasPagamentosCheque.AsString;
  t_movccData.asstring                := qrContasPagamentosData_Emissao.AsString;;
  t_movccTipo.asstring                := '7';
  t_movccHistorico.asstring           := 'CONTAS';
  t_movccValor.asfloat                := ((qrContasPagamentosValor_Total.AsFloat)*-1);
  t_movccCliente.asstring             := '0000';
  t_movccUsuario.asstring             := v_usuario;
  t_movccDesmembra.asinteger          := 1;
  t_movccCodigo_ContasAPagar.asstring := qrContasPagamentosCodigo.AsString;
  t_movcc.Post;
  t_movcc.Refresh;
  t_movcc.Last;
end;

procedure Tf_contasapagar.VerificaESetaStatus;
var
  QrAux : TQuery;
begin
  QrAux := TQuery.Create(nil);
  QrAux.DatabaseName := 'DBNMSCOMEX';

  try
    QrAux.Close;
    QrAux.SQL.Clear;
    QrAux.SQL.Add(' UPDATE Contas_a_Pagar                                                                                            ');
    QrAux.SQL.Add('    SET Status = ''VENCIDO''                                                                                      ');
    QrAux.SQL.Add('  WHERE ((Banco IS NULL) OR (Fk_Contas_a_Pagar_Pagamentos IS NULL) OR (Cheque IS NULL)) AND STATUS = ''A VENCER'' ');
    QrAux.SQL.Add('    AND Vencimento < :p0                                                                                          ');
    QrAux.Params[0].Value := DateToStr(Date());
    QrAux.ExecSQL;

    QrAux.Close;
    QrAux.SQL.Clear;
    QrAux.SQL.Add(' UPDATE Contas_a_Pagar                                                                                           ');
    QrAux.SQL.Add('    SET Status = ''A VENCER''                                                                                    ');
    QrAux.SQL.Add('  WHERE ((Banco IS NULL) OR (Fk_Contas_a_Pagar_Pagamentos IS NULL) OR (Cheque IS NULL)) AND STATUS = ''VENCIDO'' ');
    QrAux.SQL.Add('    AND Vencimento > :p0                                                                                         ');
    QrAux.Params[0].Value := DateToStr(Date());
    QrAux.ExecSQL;
  finally
    QrAux.Free;
  end;
end;

procedure Tf_contasapagar.FormCreate(Sender: TObject);
begin
  VerificaESetaStatus;
end;

procedure Tf_contasapagar.btnCancelaPeriodicidadeClick(Sender: TObject);
begin
  pnlPeriodicidade.Visible := False;

  LimpaPanelPeriodicidade;  
end;

procedure Tf_contasapagar.AbrePanelInclusaoAlteracao;
begin
  pnlInclusaoAlteracao.Visible := True;
  
  pnlInclusaoAlteracao.Top    := 43;
  pnlInclusaoAlteracao.Left   := 197;
  pnlInclusaoAlteracao.Width  := 457;
  pnlInclusaoAlteracao.Height := 334;
end;

procedure Tf_contasapagar.AbrePanelPeriodicidade;
begin
  pnlPeriodicidade.Visible := True;

  pnlPeriodicidade.Left   := 75;
  pnlPeriodicidade.Top    := 41;
  pnlPeriodicidade.Width  := 309;
  pnlPeriodicidade.Height := 112;
end;

procedure Tf_contasapagar.AbrePanelContas;
begin
  pnlContas.Visible := True;

  pnlContas.Left   := 60;
  pnlContas.Width  := 745;
  pnlContas.Height := 270;
  pnlContas.Top    := 88;
end;

procedure Tf_contasapagar.AbrePanelEfetuarPagamentos;
begin
  pnlEfetuarPagamentos.Visible := True;
  
  pnlEfetuarPagamentos.Left   := 60;
  pnlEfetuarPagamentos.Width  := 745;
  pnlEfetuarPagamentos.Top    := 126;
  pnlEfetuarPagamentos.Height := 259;
end;

end.

