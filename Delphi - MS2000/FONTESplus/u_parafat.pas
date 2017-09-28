unit u_parafat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Mask, Buttons;

type
  Tf_parafat = class(TForm)
    dsParamFat: TDataSource;
    dsClientes: TDataSource;
    tbParamFat: TTable;                                                  
    dsParamFatEdit: TDataSource;
    dbGrdClientes: TDBGrid;
    pnlTop: TPanel;
    Panel2: TPanel;
    dbGrdParamFat: TDBGrid;
    dsTipos: TDataSource;
    qrClientes: TQuery;
    cbAtivos: TCheckBox;
    qrParam: TQuery;
    qrParamFat: TQuery;
    qrTipos: TQuery;
    pnlCampos: TPanel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label8: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label13: TLabel;
    dbEdtPercent: TDBEdit;
    dbEdtFaixaIni: TDBEdit;
    dbEdtFaixaFin: TDBEdit;
    dbEdtTetoMin: TDBEdit;
    dbEdtTetoMax: TDBEdit;
    dbCbFaixaMoeda: TDBComboBox;
    GroupBox4: TGroupBox;
    Label9: TLabel;
    dbEdtValLI: TDBEdit;
    Label10: TLabel;
    dbEdtValDTA1: TDBEdit;
    Label2: TLabel;
    dbCbBase: TDBComboBox;
    pnlBotoes: TPanel;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    Bevel1: TBevel;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    Bevel2: TBevel;
    btnFechar: TBitBtn;
    Label1: TLabel;
    dbLcbTipo: TDBLookupComboBox;
    qrVerifcaParaFat: TQuery;
    sbImport: TSpeedButton;
    pnlImport: TPanel;
    Panel1: TPanel;
    dbGrdImport: TDBGrid;
    Label17: TLabel;
    btnImportar: TBitBtn;
    btnIguinorar: TBitBtn;
    qrImport: TQuery;
    dsImport: TDataSource;
    qrDelParam: TQuery;
    qrImportParam: TQuery;
    Label19: TLabel;
    dbCbSalMinimoTx: TDBComboBox;
    Label22: TLabel;
    Label23: TLabel;
    dbEdtQtdLI: TDBEdit;
    dbEdtQtdDTA1: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    dbCbSalMinimo: TDBComboBox;
    dbCbRefSalMinimo: TDBComboBox;
    dbEdtQtdMin: TDBEdit;
    dbEdtQtdMax: TDBEdit;
    Bevel3: TBevel;
    Bevel4: TBevel;
    qrParamEmpresa: TStringField;
    qrParamFilial: TStringField;
    qrParamFatEmpresa: TStringField;
    qrParamFatFilial: TStringField;
    qrParamFatImportador: TStringField;
    qrParamFatTipo_Processo: TStringField;
    qrParamFatReg: TAutoIncField;
    qrParamFatBase_faturamento: TStringField;
    qrParamFatValor_fixo: TFloatField;
    qrParamFatPercentual: TFloatField;
    qrParamFatFaixa_Real_Dolar: TStringField;
    qrParamFatFaixa_inicial: TFloatField;
    qrParamFatFaixa_final: TFloatField;
    qrParamFatValor_minimo: TFloatField;
    qrParamFatValor_maximo: TFloatField;
    qrParamFatValor_fixoc: TFloatField;
    qrParamFatE_Salario_Minimo: TStringField;
    qrParamFatQuantidade_Salarios: TFloatField;
    qrParamFatData_Referencia_SM: TStringField;
    qrParamFatQuantidade_SalariosMAX: TFloatField;
    qrParamFatE_Salario_Minimo_TX: TStringField;
    qrParamFatValor_taxaexpediente: TFloatField;
    qrParamFatValor_LI: TFloatField;
    qrParamFatValor_DTA1: TFloatField;
    qrParamFatQTD_SM_TAXAEXP: TFloatField;
    qrParamFatQTD_SM_DTA1: TFloatField;
    qrParamFatQTD_SM_LI: TFloatField;
    qrParamFatData_Referencia_SM_TX: TStringField;
    qrParamFatDescricao: TStringField;
    tbParamFatEmpresa: TStringField;
    tbParamFatFilial: TStringField;
    tbParamFatImportador: TStringField;
    tbParamFatTipo_Processo: TStringField;
    tbParamFatReg: TAutoIncField;
    tbParamFatBase_faturamento: TStringField;
    tbParamFatValor_fixo: TFloatField;
    tbParamFatPercentual: TFloatField;
    tbParamFatFaixa_Real_Dolar: TStringField;
    tbParamFatFaixa_inicial: TFloatField;
    tbParamFatFaixa_final: TFloatField;
    tbParamFatValor_minimo: TFloatField;
    tbParamFatValor_maximo: TFloatField;
    tbParamFatValor_fixoc: TFloatField;
    tbParamFatE_Salario_Minimo: TStringField;
    tbParamFatQuantidade_Salarios: TFloatField;
    tbParamFatData_Referencia_SM: TStringField;
    tbParamFatQuantidade_SalariosMAX: TFloatField;
    tbParamFatE_Salario_Minimo_TX: TStringField;
    tbParamFatValor_taxaexpediente: TFloatField;
    tbParamFatValor_LI: TFloatField;
    tbParamFatValor_DTA1: TFloatField;
    tbParamFatQTD_SM_TAXAEXP: TFloatField;
    tbParamFatQTD_SM_DTA1: TFloatField;
    tbParamFatQTD_SM_LI: TFloatField;
    tbParamFatData_Referencia_SM_TX: TStringField;
    qrTiposCodigo: TStringField;
    qrTiposDescricao: TStringField;
    qrVerifcaParaFatEmpresa: TStringField;
    qrVerifcaParaFatFilial: TStringField;
    qrVerifcaParaFatImportador: TStringField;
    qrVerifcaParaFatTipo_Processo: TStringField;
    qrVerifcaParaFatReg: TAutoIncField;
    qrVerifcaParaFatBase_faturamento: TStringField;
    qrVerifcaParaFatValor_fixo: TFloatField;
    qrVerifcaParaFatPercentual: TFloatField;
    qrVerifcaParaFatFaixa_Real_Dolar: TStringField;
    qrVerifcaParaFatFaixa_inicial: TFloatField;
    qrVerifcaParaFatFaixa_final: TFloatField;
    qrVerifcaParaFatValor_minimo: TFloatField;
    qrVerifcaParaFatValor_maximo: TFloatField;
    qrVerifcaParaFatValor_fixoc: TFloatField;
    qrVerifcaParaFatE_Salario_Minimo: TStringField;
    qrVerifcaParaFatQuantidade_Salarios: TFloatField;
    qrVerifcaParaFatData_Referencia_SM: TStringField;
    qrVerifcaParaFatQuantidade_SalariosMAX: TFloatField;
    qrVerifcaParaFatE_Salario_Minimo_TX: TStringField;
    qrVerifcaParaFatValor_taxaexpediente: TFloatField;
    qrVerifcaParaFatValor_LI: TFloatField;
    qrVerifcaParaFatValor_DTA1: TFloatField;
    qrVerifcaParaFatQTD_SM_TAXAEXP: TFloatField;
    qrVerifcaParaFatQTD_SM_DTA1: TFloatField;
    qrVerifcaParaFatQTD_SM_LI: TFloatField;
    qrVerifcaParaFatData_Referencia_SM_TX: TStringField;
    qrImportEmpresa: TStringField;
    qrImportFilial: TStringField;
    qrImportCodigo: TStringField;
    qrImportRazao_Social: TStringField;
    qrImportCidade: TStringField;
    qrClientesEmpresa: TStringField;
    qrClientesFilial: TStringField;
    qrClientesCodigo: TStringField;
    qrClientesRazao_Social: TStringField;
    qrClientesCidade: TStringField;
    DBbase: TDBCheckBox;
    qrParamFatATIVO: TIntegerField;
    qrParamFatPATIVO: TStringField;
    tbParamFatATIVO: TIntegerField;
    dbcbAtivo: TDBCheckBox;
    qrClientesREPETRO: TStringField;
    t_Importadores: TTable;
    dsImportadores: TDataSource;
    t_ImportadoresEmpresa: TStringField;
    t_ImportadoresFilial: TStringField;
    t_ImportadoresCodigo: TStringField;
    t_ImportadoresRazao_Social: TStringField;
    t_ImportadoresPais: TStringField;
    t_ImportadoresCNPJ_CPF_COMPLETO: TStringField;
    t_ImportadoresCGC_CPF: TStringField;
    t_ImportadoresTipo_Importador: TStringField;
    t_ImportadoresEndereco: TStringField;
    t_ImportadoresNumero: TStringField;
    t_ImportadoresComplemento: TStringField;
    t_ImportadoresBairro: TStringField;
    t_ImportadoresCidade: TStringField;
    t_ImportadoresCEP: TStringField;
    t_ImportadoresUF: TStringField;
    t_ImportadoresEstado: TStringField;
    t_ImportadoresInscricao_Estadual: TStringField;
    t_ImportadoresBanco: TStringField;
    t_ImportadoresAgencia: TStringField;
    t_ImportadoresConta_Corrente: TStringField;
    t_ImportadoresConta_Corrente_Registro: TIntegerField;
    t_ImportadoresConta_Corrente_Deposito: TIntegerField;
    t_Importadoreslink: TStringField;
    t_ImportadoresCAE: TStringField;
    t_ImportadoresTelefone: TStringField;
    t_ImportadoresAtivo: TIntegerField;
    t_ImportadoresAcesso_WEB_MS: TIntegerField;
    t_ImportadoresAcesso_WEB_CLI: TIntegerField;
    t_ImportadoresAcesso_WEB_REC: TIntegerField;
    t_ImportadoresBASE_ICMS: TIntegerField;
    t_ImportadoresMOV_REPETRO: TIntegerField;
    qrtipos2: TQuery;
    qrtipos2Codigo: TStringField;
    qrtipos2Descricao: TStringField;
    qrclientes2: TQuery;
    qrclientes2Empresa: TStringField;
    qrclientes2Filial: TStringField;
    qrclientes2Codigo: TStringField;
    qrclientes2Razao_Social: TStringField;
    qrclientes2Cidade: TStringField;
    qrclientes2REPETRO: TStringField;
    tbParamFat2: TTable;
    tbParamFat2Empresa: TStringField;
    tbParamFat2Filial: TStringField;
    tbParamFat2Importador: TStringField;
    tbParamFat2Tipo_Processo: TStringField;
    tbParamFat2Reg: TAutoIncField;
    tbParamFat2Base_faturamento: TStringField;
    tbParamFat2Valor_fixo: TFloatField;
    tbParamFat2Percentual: TFloatField;
    tbParamFat2Faixa_Real_Dolar: TStringField;
    tbParamFat2Faixa_inicial: TFloatField;
    tbParamFat2Faixa_final: TFloatField;
    tbParamFat2Valor_minimo: TFloatField;
    tbParamFat2Valor_maximo: TFloatField;
    tbParamFat2Valor_fixoc: TFloatField;
    tbParamFat2E_Salario_Minimo: TStringField;
    tbParamFat2Quantidade_Salarios: TFloatField;
    tbParamFat2Data_Referencia_SM: TStringField;
    tbParamFat2Quantidade_SalariosMAX: TFloatField;
    tbParamFat2E_Salario_Minimo_TX: TStringField;
    tbParamFat2Valor_taxaexpediente: TFloatField;
    tbParamFat2Valor_LI: TFloatField;
    tbParamFat2Valor_DTA1: TFloatField;
    tbParamFat2QTD_SM_TAXAEXP: TFloatField;
    tbParamFat2QTD_SM_DTA1: TFloatField;
    tbParamFat2QTD_SM_LI: TFloatField;
    tbParamFat2Data_Referencia_SM_TX: TStringField;
    tbParamFat2ATIVO: TIntegerField;
    t_ImportadoresInscricao_Municipal: TStringField;
    t_ImportadoresEMAIL: TStringField;
    t_ImportadoresFATURA_ISS: TIntegerField;
    DBCheckBox1: TDBCheckBox;
    Label3: TLabel;
    edFiltroCliente: TEdit;
    dblcbTipo_Decl: TDBLookupComboBox;
    qrTipos_Decl: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    dsTipo_Decl: TDataSource;
    tbParamFatTipo_Declaracao: TStringField;
    Label11: TLabel;
    qrParamFatTipo_Declaracao: TStringField;
    qrParamFatDescricao_TipoDecl: TStringField;
    dscontrato_faturamento: TDataSource;
    qrContrato_faturamento: TQuery;
    qrContrato_faturamentoData_Inicio_Contrato: TStringField;
    qrContrato_faturamentoData_Termino_Contrato: TStringField;
    tbContrato_faturamento: TTable;
    tbContrato_faturamentoData_Termino_Contrato: TStringField;
    tbContrato_faturamentoData_Inicio_Contrato: TStringField;
    tbContrato_faturamentoEmpresa: TStringField;
    tbContrato_faturamentoFilial: TStringField;
    tbContrato_faturamentoImportador: TStringField;
    btnAlterarDataContrato: TBitBtn;
    pnlContrato: TPanel;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    Label20: TLabel;
    edDtInicio_Contrato: TDBEdit;
    edDtTermino_Contrato: TDBEdit;
    qrVerifcaParaFatTipo_Declaracao: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbAtivosClick(Sender: TObject);
    procedure qrClientesAfterScroll(DataSet: TDataSet);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure tbParamFatAfterCancel(DataSet: TDataSet);
    procedure tbParamFatAfterInsert(DataSet: TDataSet);
    procedure tbParamFatBeforeDelete(DataSet: TDataSet);
    procedure pnlCamposEnter(Sender: TObject);
    procedure pnlCamposExit(Sender: TObject);
    procedure qrParamFatAfterOpen(DataSet: TDataSet);
    procedure tbParamFatAfterScroll(DataSet: TDataSet);
    procedure tbParamFatBase_faturamentoChange(Sender: TField);
    procedure tbParamFatValor_fixoChange(Sender: TField);
    procedure tbParamFatE_Salario_MinimoChange(Sender: TField);
    procedure dbCbBaseChange(Sender: TObject);
    procedure dbCbSalMinimoChange(Sender: TObject);
    procedure sbImportClick(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
    procedure btnIguinorarClick(Sender: TObject);
    procedure tbParamFatE_Salario_Minimo_TXChange(Sender: TField);
    procedure dbCbSalMinimoTxChange(Sender: TObject);
    procedure dbEdtValFixoKeyPress(Sender: TObject; var Key: Char);
    procedure t_ImportadoresAfterPost(DataSet: TDataSet);
    procedure edFiltroClienteChange(Sender: TObject);
    procedure btnAlterarDataContratoClick(Sender: TObject);
    procedure pnlContratoEnter(Sender: TObject);
    procedure pnlContratoExit(Sender: TObject);
    procedure tbContrato_faturamentoAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    function ValidaDatas : Boolean;
  public
    { Public declarations }
  end;

var
  f_parafat: Tf_parafat;
  vReg: Integer;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_parafat.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_parafat.FormClose(Sender: TObject; var Action: TCloseAction);
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
  f_parafat := Nil;
  f_mscomex.Parmetros1.Enabled := True;
end;

procedure Tf_parafat.FormCreate(Sender: TObject);
begin
  if MessageDlg(v_usuario+', Deseja verificar e incluir parametros para todos clientes(que não possuirem parametros) ?  pode demorar alguns minutos!', mtConfirmation, [mbYes, mbNo], 0) = mrYes
   then begin
     tbParamFat2.Open;
     qrclientes2.open;
     qrtipos2.open;
     tbContrato_faturamento.open;

     while (not qrtipos2.eof) do
      begin
        qrclientes2.FIRST;

        while (not qrclientes2.eof) do
         begin
           if not tbparamfat2.FindKey([qrclientes2empresa.asstring,qrclientes2filial.asstring,qrclientes2codigo.asstring,qrtipos2codigo.asstring])
            then begin
              tbparamfat2.append;
              tbParamFat2Empresa.asstring               := qrclientes2empresa.asstring;
              tbParamFat2Filial.asstring                := qrclientes2filial.asstring;
              tbParamFat2Importador.asstring            := qrclientes2codigo.asstring;
              tbParamFat2Tipo_Processo.asstring         := qrtipos2codigo.asstring;
              tbParamFat2Base_faturamento.asstring      := 'CIF';
              tbParamFat2Valor_fixo.asfloat             := 0;
              tbParamFat2Percentual.asfloat             := 0;
              tbParamFat2Faixa_Real_Dolar.asstring      := 'Real';
              tbParamFat2Faixa_inicial.asfloat          := 0;
              tbParamFat2Faixa_final.asfloat            := 0;
              tbParamFat2Valor_minimo.asfloat           := 0;
              tbParamFat2Valor_maximo.asfloat           := 0;
              tbParamFat2Valor_fixoc.asfloat            := 0;
              tbParamFat2E_Salario_Minimo.asstring      := 'NÃO';
              tbParamFat2Quantidade_Salarios.asfloat    := 0;
              tbParamFat2Data_Referencia_SM.asstring    := '';
              tbParamFat2Quantidade_SalariosMAX.asfloat := 0;
              tbParamFat2E_Salario_Minimo_TX.asstring   := 'NÃO';
              tbParamFat2Valor_taxaexpediente.asfloat   := 0;
              tbParamFat2Valor_LI.asfloat               := 0;
              tbParamFat2Valor_DTA1.asfloat             := 0;
              tbParamFat2QTD_SM_TAXAEXP.asfloat         := 0;
              tbParamFat2QTD_SM_DTA1.asfloat            := 0;
              tbParamFat2QTD_SM_LI.asfloat              := 0;
              tbParamFat2Data_Referencia_SM_TX.asstring := 'MM';
              tbParamFat2ATIVO.asinteger                := 0;
              tbparamfat2.post;
              tbparamfat2.refresh;
            end;

           qrclientes2.next;
         end;

        qrtipos2.next;
      end;

     qrclientes2.close;
     qrtipos2.close;
   end;

  tbParamFat.Open;
  tbContrato_faturamento.Open;
  qrTipos.Open;
  qrTipos_Decl.Open;
  cbAtivos.Checked := True;
end;

procedure Tf_parafat.cbAtivosClick(Sender: TObject);
begin
  qrClientes.SQL.clear;
  qrClientes.SQL.add('SELECT Empresa, Filial, Codigo, Razao_Social, Cidade , case MOV_REPETRO when 1 then ''SIM'' when  0 then ''NÃO'' end as REPETRO ');
  qrClientes.SQL.add('  FROM Importadores ');
  qrClientes.SQL.add(' WHERE Empresa = "1" AND Filial = "RJO" ');

  if edFiltroCliente.Text <> ''
   then qrClientes.SQL.add(' AND Razao_Social LIKE '''+edFiltroCliente.Text+'%''');

  if cbAtivos.Checked = True
   then qrClientes.SQL.add('AND (Ativo = 1 OR Ativo = 1) ')
   else qrClientes.SQL.add('AND (Ativo = 1 OR Ativo = 0) ');

  qrClientes.SQL.add('ORDER BY Razao_Social ');
  qrClientes.Open;
  T_IMPORTADORES.OPEN;
end;

procedure Tf_parafat.qrClientesAfterScroll(DataSet: TDataSet);
begin
  with qrParamFat do
   begin
     Close;
     Params[0].AsString := qrClientesEmpresa.AsString;
     Params[1].AsString := qrClientesFilial.AsString;
     Params[2].AsString := qrClientesCodigo.AsString;
     Open;
   end;
end;

procedure Tf_parafat.btnNovoClick(Sender: TObject);
begin
  Tag := 1;
  tbParamFat.MasterSource := nil;

  if tbParamFat.RecordCount <> 0
   then tbParamFat.Append
   else tbParamFat.Insert;
end;

procedure Tf_parafat.btnAlterarClick(Sender: TObject);
begin
  Tag := 2;
  tbParamFat.Edit;
end;

procedure Tf_parafat.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Confirma exclusão deste Parâmetro de Faturamento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
   then begin
     tbParamFat.Delete;
   end;  
end;

procedure Tf_parafat.btnGravarClick(Sender: TObject);
var
  vFxIniATU, vFxFinATU, vFxIniREG, vFxFinREG : Real;
begin
  if Tag = 3
   then begin
     if ValidaDatas
      then begin
        tbContrato_faturamento.Post;
        Tag := 0;
      end;

     Exit; 
   end;

  tbParamFatValor_fixo.AsFloat := tbParamFatValor_fixo.AsFloat;

  If dbEdtPercent.Text  = '' Then dbEdtPercent.Text  := '0';
  If dbEdtFaixaIni.Text = '' Then dbEdtFaixaIni.Text := '0';
  If dbEdtFaixaFin.Text = '' Then dbEdtFaixaFin.Text := '0';
  If dbEdtTetoMin.Text  = '' Then dbEdtTetoMin.Text  := '0';
  If dbEdtTetoMax.Text  = '' Then dbEdtTetoMax.Text  := '0';
  If dbEdtQtdMin.Text   = '' Then dbEdtQtdMin.Text   := '0';
  If dbEdtQtdMax.Text   = '' Then dbEdtQtdMax.Text   := '0';
  If dbEdtValLI.Text    = '' Then dbEdtValLI.Text    := '0';
  If dbEdtValDTA1.Text  = '' Then dbEdtValDTA1.Text  := '0';
  If dbEdtQtdLI.Text    = '' Then dbEdtQtdLI.Text    := '0';
  If dbEdtQtdDTA1.Text  = '' Then dbEdtQtdDTA1.Text  := '0';

  If dbCbBase.ItemIndex > 0
   then begin
     if tbParamFatPercentual.AsFloat = 0
      then begin
        MessageDlg('Digite um valor para "Percentual"!', mtWarning, [mbOk], 0);
        dbEdtPercent.SetFocus;
        Exit;
      end;

     if dbCbFaixaMoeda.ItemIndex < 0
      then begin
        MessageDlg('Selecione a "Moeda" da faixa!', mtWarning, [mbOk], 0);
        dbCbFaixaMoeda.SetFocus;
        Exit;
      end;

     if tbParamFatFaixa_final.AsFloat = 0
      then begin
        MessageDlg('Digite um valor para "Faixa Final"!', mtWarning, [mbOk], 0);
        dbEdtFaixaFin.SetFocus;
        Exit;
      end;

     if tbParamFatFaixa_final.AsFloat < tbParamFatFaixa_inicial.AsFloat
      then begin
        MessageDlg('Valor da "Faixa Final" não pode ser menor que o valor da "Faixa Inicial"!', mtWarning, [mbOk], 0);
        dbEdtFaixaFin.SetFocus;
        Exit;
      end;

     if dbCbSalMinimo.ItemIndex = 0
      then begin
        if tbParamFatQuantidade_Salarios.AsFloat = 0
         then begin
           MessageDlg('Digite um valor para "Quantidade Mínima de Salários"!', mtWarning, [mbOk], 0);
           dbEdtQtdMin.SetFocus;
           Exit;
         end;

        if tbParamFatQuantidade_SalariosMax.AsFloat = 0
         then begin
           MessageDlg('Digite um valor para "Quantidade Máxima de Salários"!', mtWarning, [mbOk], 0);
           dbEdtQtdMax.SetFocus;
           Exit;
         end;

        if tbParamFatQuantidade_SalariosMax.AsFloat < tbParamFatQuantidade_Salarios.AsFloat
         then begin
           MessageDlg('Valor da "Quantidade Máxima de Salários" não pode ser menor que o valor da "Quantidade Mínima de Salários"!', mtWarning, [mbOk], 0);
           dbEdtQtdMax.SetFocus;
           Exit;
         end;

        if dbCbRefSalMinimo.ItemIndex < 0
         then begin
           MessageDlg('Selecione uma "Referência do Salário Mínimo"!', mtWarning, [mbOk], 0);
           dbCbRefSalMinimo.SetFocus;
           Exit;
         end;
      end
      else begin
        if tbParamFatValor_minimo.AsFloat = 0
         then MessageDlg(v_usuario+', ATENÇÃO !! valor "Teto Mínimo" igual a "0" permite que Faturamento seja zerado, apenas utilizar nos tipos de processos que utilizam "Outras Taxas"!', mtWarning, [mbOk], 0);

        if tbParamFatValor_maximo.AsFloat = 0
         then MessageDlg(v_usuario+', ATENÇÃO !! valor "Teto Máximo" igual a "0" permite que Faturamento seja zerado, apenas utilizar nos tipos de processos que utilizam "Outras Taxas"!', mtWarning, [mbOk], 0);

        if tbParamFatValor_minimo.AsFloat > tbParamFatValor_maximo.AsFloat
         then begin
           MessageDlg('Valor do "Teto Máximo" não pode ser menor que o valor do "Teto Mínimo"!', mtWarning, [mbOk], 0);
           dbEdtTetoMax.SetFocus;
           Exit;
         end;
      end;
   end;

  vFxIniATU := tbParamFatFaixa_inicial.AsFloat;
  vFxFinATU := tbParamFatFaixa_final.AsFloat;

  with qrVerifcaParaFat do
   begin
     Params[0].AsString  := qrClientesEmpresa.AsString;
     Params[1].AsString  := qrClientesFilial.AsString;
     Params[2].AsString  := qrClientesCodigo.AsString;
     Params[3].AsString  := tbParamFatTipo_Processo.AsString;
     Params[4].AsString  := tbParamFatTipo_Declaracao.AsString;
     Params[5].AsInteger := tbParamFatReg.AsInteger;
     Open;

     while not Eof do
      begin
        vFxIniREG := qrVerifcaParaFatFaixa_inicial.AsFloat;
        vFxFinREG := qrVerifcaParaFatFaixa_final.AsFloat;

        if qrVerifcaParaFatValor_fixo.AsFloat > 0
         then begin
           Close;
           MessageDlg('Este Tipo de Processo já possui um Parâmetro de Faturamento com Valor Fixo!', mtWarning, [mbOk], 0);
           dbLcbTipo.SetFocus;
           Exit;
         end;

        if (qrVerifcaParaFatBase_faturamento.AsString = tbParamFatBase_faturamento.AsString) and
           ( ((vFxIniATU >= vFxIniREG) and (vFxIniATU <= vFxFinREG)) or
             ((vFxFinATU >= vFxIniREG) and (vFxFinATU <= vFxFinREG)) )
         then begin
           Close;
           MessageDlg('Este Tipo de Processo já possui um Parâmetro de Faturamento dentro dessa Faixa!', mtWarning, [mbOk], 0);
           dbEdtFaixaIni.SetFocus;
           Exit;
         end;

        Next;
      end;

     Close;
   end;

  vReg                          := tbParamFatReg.AsInteger;
  tbParamFatEmpresa.AsString    := qrClientesEmpresa.AsString;
  tbParamFatFilial.AsString     := qrClientesFilial.AsString;
  tbParamFatImportador.AsString := qrClientesCodigo.AsString;
  tbParamFat.Post;

  if Tag = 1
   then begin
     vReg := tbParamFatReg.AsInteger;
     logusu('I','Incluiu Parâmetro de Faturamento para o Cliente: '+ qrClientesRazao_Social.AsString +'; Reg: '+ IntToStr(vReg));
   end
   else logusu('P','Alterou Parâmetro de Faturamento para o Cliente: '+ qrClientesRazao_Social.AsString +'; Reg: '+ IntToStr(vReg));

  Tag := 0;

  with qrParamFat do
   begin
     Close;
     Open;
     Locate('Reg', vReg, []);
   end;

  tbParamFat.MasterSource := dsParamFat;
end;

procedure Tf_parafat.btnCancelarClick(Sender: TObject);
begin
  if Tag = 3
   then tbContrato_faturamento.Cancel
   else begin
     tbParamFat.Cancel;
     tbParamFat.MasterSource := dsParamFat;
   end;

  Tag := 0;
end;

procedure Tf_parafat.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure Tf_parafat.tbParamFatAfterCancel(DataSet: TDataSet);
begin
  dbGrdClientes.Enabled := True;
  dbGrdParamFat.Enabled := True;
  cbAtivos.Enabled := True;
  sbImport.Enabled := True;
  pnlCampos.Enabled := False;

  btnNovo.Enabled := True;
  btnAlterarDataContrato.Enabled := True;

  if tbParamFat.RecordCount <> 0
   then begin
     btnAlterar.Enabled := True;
     btnExcluir.Enabled := True;
   end;

  btnGravar.Enabled := False;
  btnCancelar.Enabled := False;

  btnFechar.Enabled := True;
  dbGrdParamFat.SetFocus;
end;

procedure Tf_parafat.tbParamFatAfterInsert(DataSet: TDataSet);
begin
  dbGrdClientes.Enabled := False;
  dbGrdParamFat.Enabled := False;

  cbAtivos.Enabled  := False;
  sbImport.Enabled  := False;
  pnlCampos.Enabled := True;
  pnlContrato.Enabled := False;

  btnNovo.Enabled                := False;
  btnAlterar.Enabled             := False;
  btnAlterarDataContrato.Enabled := False;
  btnExcluir.Enabled             := False;

  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;

  btnFechar.Enabled := False;

  dbLcbTipo.SetFocus;
end;

procedure Tf_parafat.tbParamFatBeforeDelete(DataSet: TDataSet);
begin
  logusu('E','Excluiu Parâmetro de Faturamento. Cliente:'+ qrClientesRazao_Social.AsString +'; Tipo de Processo:'+ qrParamFatDescricao.AsString);
  dbGrdParamFat.SetFocus;
end;

procedure Tf_parafat.pnlCamposEnter(Sender: TObject);
begin
  pnlCampos.Color := clTeal;
end;

procedure Tf_parafat.pnlCamposExit(Sender: TObject);
begin
  pnlCampos.Color := clGray;
end;

procedure Tf_parafat.qrParamFatAfterOpen(DataSet: TDataSet);
begin
  btnAlterar.Enabled := (qrParamFat.RecordCount <> 0);
  btnExcluir.Enabled := (qrParamFat.RecordCount <> 0);
end;

procedure Tf_parafat.tbParamFatAfterScroll(DataSet: TDataSet);
begin
  if dbCbSalMinimo.ItemIndex = 0
   then begin
     dbEdtTetoMin.Enabled := False;
     dbEdtTetoMax.Enabled := False;

     dbEdtQtdMin.Enabled := True;
     dbEdtQtdMax.Enabled := True;
     dbCbRefSalMinimo.Enabled := True;
   end
   else begin
     dbEdtTetoMin.Enabled := True;
     dbEdtTetoMax.Enabled := True;

     dbEdtQtdMin.Enabled := False;
     dbEdtQtdMax.Enabled := False;
     dbCbRefSalMinimo.Enabled := False;
   end;

  if dbCbBase.ItemIndex >= 1
   then begin
     if dbCbSalMinimo.Enabled
      then Exit;

     dbEdtPercent.Enabled   := True;
     dbCbFaixaMoeda.Enabled := True;
     dbEdtFaixaIni.Enabled  := True;
     dbEdtFaixaFin.Enabled  := True;
     dbCbSalMinimo.Enabled  := True;
   end
   else begin
     dbEdtPercent.Enabled   := False;
     dbCbFaixaMoeda.Enabled := False;
     dbEdtFaixaIni.Enabled  := False;
     dbEdtFaixaFin.Enabled  := False;
     dbCbSalMinimo.Enabled  := False;
     dbEdtTetoMin.Enabled   := False;
     dbEdtTetoMax.Enabled   := False;
   end;
end;

procedure Tf_parafat.tbParamFatBase_faturamentoChange(Sender: TField);
begin
  if tbParamFatBase_faturamento.AsString <> ''
   then begin
     tbParamFatValor_fixo.AsFloat  := 0;
     tbParamFatValor_fixoC.AsFloat := 0;

     if dbCbSalMinimo.Enabled
      then Exit;

     tbParamFatE_Salario_Minimo.AsString := '';
   end;
end;

procedure Tf_parafat.tbParamFatValor_fixoChange(Sender: TField);
begin
  if tbParamFatValor_fixo.AsFloat > 0
   then begin
     tbParamFatBase_faturamento.AsString := '';
     
     dbEdtPercent.Enabled     := False;
     dbCbFaixaMoeda.Enabled   := False;
     dbEdtFaixaIni.Enabled    := False;
     dbEdtFaixaFin.Enabled    := False;
     dbEdtTetoMin.Enabled     := False;
     dbEdtTetoMax.Enabled     := False;
     dbCbSalMinimo.Enabled    := False;
     dbEdtQtdMin.Enabled      := False;
     dbEdtQtdMax.Enabled      := False;
     dbCbRefSalMinimo.Enabled := False;

     tbParamFatPercentual.AsFloat          := 0;
     tbParamFatFaixa_inicial.AsFloat       := 0;
     tbParamFatFaixa_final.AsFloat         := 0;
     tbParamFatValor_minimo.AsFloat        := 0;
     tbParamFatValor_maximo.AsFloat        := 0;
     tbParamFatQuantidade_Salarios.AsFloat := 0;
     tbParamFatFaixa_Real_Dolar.AsString   := '';
     tbParamFatE_Salario_Minimo.AsString   := '';
     tbParamFatData_Referencia_SM.AsString := '';
   end;

  if tbParamFatE_Salario_Minimo_TX.AsString = ''
   then tbParamFatE_Salario_Minimo_TX.AsString := 'NÃO';
end;

procedure Tf_parafat.tbParamFatE_Salario_MinimoChange(Sender: TField);
begin
  if dbCbSalMinimo.ItemIndex = 0
   then begin
     tbParamFatValor_minimo.AsFloat := 0;
     tbParamFatValor_maximo.AsFloat := 0;
   end
   else begin
     tbParamFatQuantidade_Salarios.AsFloat := 0;
     tbParamFatData_Referencia_SM.AsString := '';
   end;
end;

procedure Tf_parafat.dbCbBaseChange(Sender: TObject);
begin
  if dbCbBase.ItemIndex > 0
   then begin
     dbEdtPercent.Enabled   := True;
     dbCbFaixaMoeda.Enabled := True;
     dbEdtFaixaIni.Enabled  := True;
     dbEdtFaixaFin.Enabled  := True;
     dbEdtTetoMin.Enabled   := True;
     dbEdtTetoMax.Enabled   := True;
     dbCbSalMinimo.Enabled  := True;

     if dbCbSalMinimo.ItemIndex = 0
      then begin
        dbEdtQtdMin.Enabled      := True;
        dbEdtQtdMax.Enabled      := True;
        dbCbRefSalMinimo.Enabled := True;
      end;
   end
   else begin
     dbEdtPercent.Enabled     := False;
     dbCbFaixaMoeda.Enabled   := False;
     dbEdtFaixaIni.Enabled    := False;
     dbEdtFaixaFin.Enabled    := False;
     dbEdtTetoMin.Enabled     := False;
     dbEdtTetoMax.Enabled     := False;
     dbCbSalMinimo.Enabled    := False;
     dbEdtQtdMin.Enabled      := False;
     dbEdtQtdMax.Enabled      := False;
     dbCbRefSalMinimo.Enabled := False;
   end;
end;

procedure Tf_parafat.dbCbSalMinimoChange(Sender: TObject);
begin
  if dbCbSalMinimo.ItemIndex = 0
   then begin
     dbEdtTetoMin.Enabled := False;
     dbEdtTetoMax.Enabled := False;

     dbEdtQtdMin.Enabled      := True;
     dbEdtQtdMax.Enabled      := True;
     dbCbRefSalMinimo.Enabled := True;
   end
   else begin
     dbEdtTetoMin.Enabled := True;
     dbEdtTetoMax.Enabled := True;

     dbEdtQtdMin.Enabled      := False;
     dbEdtQtdMax.Enabled      := False;
     dbCbRefSalMinimo.Enabled := False;
   end;
end;

procedure Tf_parafat.sbImportClick(Sender: TObject);
begin
  with qrImport do
  begin
    Params[0].AsString := qrClientesEmpresa.AsString;
    Params[1].AsString := qrClientesFilial.AsString;
    Params[2].AsString := qrClientesCodigo.AsString;
        
    Open;
    btnImportar.Enabled := (RecordCount <> 0);
  end;
     
  pnlTop.Enabled        := False;
  dbGrdClientes.Enabled := False;
  pnlBotoes.Enabled     := False;

  with pnlImport do
   begin
     Top    := 102;
     Left   := 94;
     Height := 266;
     Width  := 600;
     
     Visible := True;
   end;

  dbGrdImport.SetFocus;
end;

procedure Tf_parafat.btnImportarClick(Sender: TObject);
begin
  if MessageDlg('Todos os Parâmetros atuais desse Cliente serão excluídos. Confirma a importação de novos Parâmetros?', mtConfirmation, [mbYes, mbNo], 0) = mrNo
   then Exit;

  tbParamFat.Close;

  with qrDelParam do
   begin
     Params[0].AsString := qrClientesEmpresa.AsString;
     Params[1].AsString := qrClientesFilial.AsString;
     Params[2].AsString := qrClientesCodigo.AsString;
     ExecSQL;
   end;
   
  logusu('E','Excluiu os Parâmetros de Faturamento. Cliente:'+ qrClientesRazao_Social.AsString);

  with qrImportParam do
   begin
     Params[0].AsString := qrClientesCodigo.AsString;
     Params[1].AsString := qrImportEmpresa.AsString;
     Params[2].AsString := qrImportFilial.AsString;
     Params[3].AsString := qrImportCodigo.AsString;
     ExecSQL;
   end;

  logusu('I','Importou os Parâmetros de Faturamento para o Cliente: '+ qrClientesRazao_Social.AsString +'; De: '+ qrImportRazao_Social.AsString);
  qrImport.Close;

  pnlImport.Visible     := False;
  pnlTop.Enabled        := True;
  dbGrdClientes.Enabled := True;
  pnlBotoes.Enabled     := True;
  
  dbGrdParamFat.SetFocus;

  with qrParamFat do
   begin
     Close;
     Open;
   end;

  tbParamFat.Open;

  MessageDlg('Os Parâmetros foram importados com sucesso!', mtInformation, [mbOk], 0);
end;

procedure Tf_parafat.btnIguinorarClick(Sender: TObject);
begin
  qrImport.Close;
  tbParamFat.Open;
  pnlImport.Visible := False;

  pnlTop.Enabled        := True;
  dbGrdClientes.Enabled := True;
  pnlBotoes.Enabled     := True;

  dbGrdClientes.SetFocus;
end;

procedure Tf_parafat.tbParamFatE_Salario_Minimo_TXChange(Sender: TField);
begin
  if dbCbSalMinimoTx.ItemIndex = 0
   then begin
     tbParamFatValor_taxaexpediente.AsFloat := 0;
     tbParamFatValor_LI.AsFloat   := 0;
     tbParamFatValor_DTA1.AsFloat := 0;
   end
   else begin
     tbParamFatQTD_SM_TAXAEXP.AsFloat := 0;
     tbParamFatQTD_SM_LI.AsFloat      := 0;
     tbParamFatQTD_SM_DTA1.AsFloat    := 0;
     tbParamFatData_Referencia_SM_TX.AsString := '';
   end;
end;

procedure Tf_parafat.dbCbSalMinimoTxChange(Sender: TObject);
begin
  if dbCbSalMinimoTx.ItemIndex = 0
   then begin
     dbEdtValLI.Enabled   := False;
     dbEdtValDTA1.Enabled := False;

     dbEdtQtdLI.Enabled   := True;
     dbEdtQtdDTA1.Enabled := True;
   end
   else begin
     dbEdtValLI.Enabled   := True;
     dbEdtValDTA1.Enabled := True;

     dbEdtQtdLI.Enabled   := False;
     dbEdtQtdDTA1.Enabled := False;
   end;
end;

procedure Tf_parafat.dbEdtValFixoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = '.'
   then Key := ',';
end;

procedure Tf_parafat.t_ImportadoresAfterPost(DataSet: TDataSet);
var
  vcod : string;
begin
  vcod := t_importadorescodigo.asstring;
  t_Importadores.refresh;

  with qrCLIENTES do
   begin
     Close;
     Open;
     Locate('Codigo', vcod, []);
   end;
end;

procedure Tf_parafat.edFiltroClienteChange(Sender: TObject);
begin
  cbAtivosClick(cbAtivos);
end;

procedure Tf_parafat.btnAlterarDataContratoClick(Sender: TObject);
begin
  Tag := 3;

  tbContrato_faturamento.Edit;

  pnlContrato.Enabled := True;

  {----------------------------------}
  dbGrdClientes.Enabled := False;
  dbGrdParamFat.Enabled := False;

  cbAtivos.Enabled  := False;
  sbImport.Enabled  := False;
  pnlCampos.Enabled := False;
  pnlContrato.Enabled := True;

  btnNovo.Enabled                := False;
  btnAlterar.Enabled             := False;
  btnAlterarDataContrato.Enabled := False;
  btnExcluir.Enabled             := False;

  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;

  btnFechar.Enabled := False;
  {----------------------------------}  

  edDtInicio_Contrato.SetFocus;
end;

procedure Tf_parafat.pnlContratoEnter(Sender: TObject);
begin
  pnlContrato.Color := clTeal;
end;

procedure Tf_parafat.pnlContratoExit(Sender: TObject);
begin
  pnlContrato.Color := clGray;
end;

procedure Tf_parafat.tbContrato_faturamentoAfterPost(DataSet: TDataSet);
begin
  dbGrdClientes.Enabled := True;
  dbGrdParamFat.Enabled := True;
  cbAtivos.Enabled  := True;
  sbImport.Enabled  := True;
  pnlContrato.Enabled := False;

  btnNovo.Enabled := True;
  btnAlterar.Enabled := True;
  btnExcluir.Enabled := True;
  btnAlterarDataContrato.Enabled := True;

  btnGravar.Enabled   := False;
  btnCancelar.Enabled := False;

  btnFechar.Enabled := True;
  dbGrdParamFat.SetFocus;
end;

function Tf_parafat.ValidaDatas: Boolean;
begin
  if (Trim(edDtInicio_Contrato.Text) <> '')
   then begin
     try
       StrToDate(edDtInicio_Contrato.Text);
     except
       Application.MessageBox('Data de início de Contrato inválida, favor verificar', 'Aviso', MB_ICONWARNING);
       edDtInicio_Contrato.SetFocus;
       Result := False;
       Exit;
     end;
   end;

  if (Trim(edDtTermino_Contrato.Text) <> '')
   then begin
     try
       StrToDate(edDtTermino_Contrato.Text);
     except
       Application.MessageBox('Data de Término de Contrato inválida, favor verificar', 'Aviso', MB_ICONWARNING);
       edDtTermino_Contrato.SetFocus;
       Result := False;
       Exit;
     end;
   end;

  Result := True;
end;

end.

