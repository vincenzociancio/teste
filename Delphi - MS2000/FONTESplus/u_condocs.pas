unit u_condocs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, DBCtrls, Mask, Db, DBTables;

type
  Tf_condocs = class(TForm)
    Panel1: TPanel;
    pnlPrincipal: TPanel;
    btnFiltrar: TBitBtn;
    btnLocalizar: TBitBtn;
    btnAlterar: TBitBtn;
    pnlFiltrar: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel3: TPanel;
    dblcbCli: TDBLookupComboBox;
    dblcbTipo: TDBLookupComboBox;
    cbTipo: TCheckBox;
    dblcbSubTipo: TDBLookupComboBox;
    cbSubTipo: TCheckBox;
    dblcbStatusFil: TDBLookupComboBox;
    cbStatus: TCheckBox;
    Panel4: TPanel;
    btnOKFilt: TBitBtn;
    btnCanFil: TBitBtn;
    pnlLocalizar: TPanel;
    Label10: TLabel;
    Panel6: TPanel;
    edtDoc: TEdit;
    Panel7: TPanel;
    btnOKLoc: TBitBtn;
    btnCanLoc: TBitBtn;
    pnlAlterar: TPanel;
    Label6: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Panel9: TPanel;
    dblcbStatusAlt: TDBLookupComboBox;
    Panel10: TPanel;
    btnOKAlt: TBitBtn;
    btnCanAlt: TBitBtn;
    dbedtVigIni: TDBEdit;
    dbedtVigFin: TDBEdit;
    dbedtDtBaixa: TDBEdit;
    dbedtDtRenov: TDBEdit;
    btnSair: TBitBtn;
    dsDocumentos: TDataSource;
    q_Tipo: TQuery;
    q_SubTipo: TQuery;
    q_Status: TQuery;
    dsTipo: TDataSource;
    dsSubTipo: TDataSource;
    dsStatus: TDataSource;
    q_Import: TQuery;
    dsImport: TDataSource;
    q_Doc: TQuery;
    dsDoc: TDataSource;
    btnImprimir: TBitBtn;
    Label12: TLabel;
    edtTot: TEdit;
    q_UpdateDoc: TQuery;
    t_Documentos: TTable;
    Panel2: TPanel;
    dbgDoc: TDBGrid;
    mmFiltro: TMemo;
    Panel5: TPanel;
    Label13: TLabel;
    dbLcbCliente: TDBLookupComboBox;
    dbgpro: TDBGrid;
    cbcon: TCheckBox;
    Label14: TLabel;
    dblcbcon: TDBLookupComboBox;
    cbloc: TCheckBox;
    Label15: TLabel;
    dblcbloc: TDBLookupComboBox;
    ppro: TPanel;
    t_processos: TTable;
    dsprocessos: TDataSource;
    paltpro: TPanel;
    Label16: TLabel;
    DBEdit1: TDBEdit;
    Label17: TLabel;
    DBEdit2: TDBEdit;
    Label18: TLabel;
    DBEdit3: TDBEdit;
    Label19: TLabel;
    DBEdit4: TDBEdit;
    Label20: TLabel;
    DBEdit5: TDBEdit;
    Panel8: TPanel;
    btnImprimirTR: TBitBtn;
    t_locais: TTable;
    ds_locais: TDataSource;
    Label21: TLabel;
    DBEdit6: TDBEdit;
    Label22: TLabel;
    DBEdit7: TDBEdit;
    Label23: TLabel;
    Label24: TLabel;
    me_dataini: TMaskEdit;
    me_datafin: TMaskEdit;
    Label25: TLabel;
    cbfiadores: TCheckBox;
    Label26: TLabel;
    q_fiadores: TQuery;
    ds_fiadores: TDataSource;
    dblcbfiadores: TDBLookupComboBox;
    q_Tipocodigo: TStringField;
    q_Tipodescricao: TStringField;
    q_SubTipoTipo_doc: TStringField;
    q_SubTipocodigo: TStringField;
    q_SubTipoDescricao: TStringField;
    q_StatusCODIGO: TStringField;
    q_StatusDESCRICAO: TStringField;
    t_processosEmpresa: TStringField;
    t_processosFilial: TStringField;
    t_processosCodigo: TStringField;
    t_processosData: TDateTimeField;
    t_processosImportador: TStringField;
    t_processosCodigo_Cliente: TStringField;
    t_processosTipo_Declaracao: TStringField;
    t_processosTipo: TStringField;
    t_processosContrato: TStringField;
    t_processosLocal_Inventario: TStringField;
    t_processosNR_DECL_IMP_MICRO: TStringField;
    t_processosNR_DECL_IMP_PROT: TStringField;
    t_processosNR_DECLARACAO_IMP: TStringField;
    t_processosDT_PROCESSAMENTO: TStringField;
    t_processosDT_TRANSMISSAO: TStringField;
    t_processosDT_REGISTRO_DI: TStringField;
    t_processosDT_DESEMBARACO: TDateTimeField;
    t_processosDT_DISTRIBUICAO: TDateTimeField;
    t_processosCanal: TStringField;
    t_processosFiscal: TStringField;
    t_processosStatus: TStringField;
    t_processosCOD_SIT: TStringField;
    t_processosCD_MOTIVO_TRANS: TStringField;
    t_processosIN_MOEDA_UNICA: TSmallintField;
    t_processosTX_INFO_COMPL: TMemoField;
    t_processosCD_TIPO_PGTO_TRIB: TStringField;
    t_processosNumero_RCR: TStringField;
    t_processosData_Entrada_RCR: TDateTimeField;
    t_processosData_Aprovacao_RCR: TDateTimeField;
    t_processosFundamentacao_RCR: TStringField;
    t_processosProcurador: TStringField;
    t_processosNumero_TR: TStringField;
    t_processosData_Entrada_TR: TDateTimeField;
    t_processosData_vencimento_TR: TDateTimeField;
    t_processosData_Aprovacao_TR: TDateTimeField;
    t_processosData_Baixa_TR: TDateTimeField;
    t_processosData_CI: TDateTimeField;
    t_processosTipo_Garantia: TStringField;
    t_processosNome_banco_GAR: TStringField;
    t_processosAgencia_GAR: TStringField;
    t_processosData_deposito_GAR: TDateTimeField;
    t_processosNome_titulo_GAR: TStringField;
    t_processosnumeros_titulos_GAR: TStringField;
    t_processosNome_seguradora_GAR: TStringField;
    t_processosapolice_GAR: TStringField;
    t_processosnome_fiador_GAR: TStringField;
    t_processosCNPJ_fiador_GAR: TStringField;
    t_processosendereco_fiador_GAR: TStringField;
    t_processosQuantidade_LI: TFloatField;
    t_processosValor_FOB: TFloatField;
    t_processosValor_CIF: TFloatField;
    t_processosResponsavel_Empresa: TStringField;
    t_processosResponsavel_Importador: TStringField;
    t_processosSaldo_Faturamento: TFloatField;
    t_processosNR_DECL_IMP_MICROC: TStringField;
    t_processosNR_DECL_IMP_PROTC: TStringField;
    t_processosNR_DECLARACAO_IMPC: TStringField;
    t_processosDT_PROCESSAMENTOC: TStringField;
    t_processosDT_TRANSMISSAOC: TStringField;
    t_processosDT_REGISTRO_DIC: TStringField;
    t_processosDT_DESEMBARACOC: TDateTimeField;
    t_processosDT_DISTRIBUICAOC: TDateTimeField;
    t_processosCanalC: TStringField;
    t_processosFiscalC: TStringField;
    t_processosCOD_SITC: TStringField;
    t_processosData_CIC: TDateTimeField;
    t_processosValor_FOBC: TFloatField;
    t_processosValor_CIFC: TFloatField;
    t_processosident_meio1: TStringField;
    t_processosident_meio2: TStringField;
    t_processosCodevento: TStringField;
    t_processosCodobs: TStringField;
    t_processosObs_especifica: TStringField;
    t_processosData_ufollowup: TDateTimeField;
    t_processosHora_ufollowup: TStringField;
    t_processosData_liberacao: TDateTimeField;
    t_processosUrgente: TSmallintField;
    t_processosconsolidado: TSmallintField;
    t_processosPag_proporcional: TSmallintField;
    t_processosTR_VAL_FOB_US: TFloatField;
    t_processosTR_VAL_CIF_US: TFloatField;
    t_processosTR_VAL_II: TFloatField;
    t_processosTR_VAL_IPI: TFloatField;
    t_processosDDE: TStringField;
    t_processosProcesso_Adm: TStringField;
    t_processosProc_Adm_Data_Entrada: TDateTimeField;
    t_processosFaturado: TSmallintField;
    t_processosFechado: TSmallintField;
    t_processosCentro_Custo: TStringField;
    t_processosProcurador2: TStringField;
    t_processosTR_VAL_PIS: TFloatField;
    t_processosTR_VAL_COFINS: TFloatField;
    t_processosRCR_LOCAL: TStringField;
    t_processosResponsavel_EmpresaC: TStringField;
    t_processosvinc_processo: TSmallintField;
    t_processosproc_vinc: TStringField;
    t_locaisEmpresa: TStringField;
    t_locaisFilial: TStringField;
    t_locaisImportador: TStringField;
    t_locaisContrato: TStringField;
    t_locaisLocal: TStringField;
    t_locaisDescricao: TStringField;
    t_locaisTipo_local: TStringField;
    t_locaisProcesso_Adm: TStringField;
    t_locaisCNPJ: TStringField;
    t_locaisUnidade_Jur: TStringField;
    t_locaisFiel_nome: TStringField;
    t_locaisFiel_cpf: TStringField;
    t_locaisSIGLA: TStringField;
    t_locaisAtivo: TSmallintField;
    q_Importempresa: TStringField;
    q_Importfilial: TStringField;
    q_ImportCodigo: TStringField;
    q_ImportRazao_Social: TStringField;
    q_ImportCNPJ_CPF_COMPLETO: TStringField;
    q_fiadoresImportador: TStringField;
    q_fiadoresfiador: TStringField;
    t_DocumentosEmpresa: TStringField;
    t_DocumentosFilial: TStringField;
    t_DocumentosImportador: TStringField;
    t_DocumentosProcesso: TStringField;
    t_DocumentosTipo_Doc: TStringField;
    t_DocumentosSub_Tipo_Doc: TStringField;
    t_DocumentosNumero_Doc: TStringField;
    t_DocumentosPagina: TStringField;
    t_DocumentosCodigo: TStringField;
    t_DocumentosArquivo: TStringField;
    t_Documentosftp: TIntegerField;
    t_DocumentosVigencia_inicial: TDateTimeField;
    t_DocumentosVigencia_final: TDateTimeField;
    t_DocumentosObservacoes: TStringField;
    t_DocumentosContrato: TStringField;
    t_DocumentosLocal: TStringField;
    t_DocumentosData_inclusao: TDateTimeField;
    t_DocumentosData_baixa: TDateTimeField;
    t_DocumentosData_renovacao: TDateTimeField;
    t_DocumentosStatus: TStringField;
    t_DocumentosData_envio: TDateTimeField;
    t_Documentosusuario_dig: TStringField;
    q_DocEmpresa: TStringField;
    q_DocFilial: TStringField;
    q_DocImportador: TStringField;
    q_DocProcesso: TStringField;
    q_Doccontrato: TStringField;
    q_Doclocal: TStringField;
    q_DocTipo_Doc: TStringField;
    q_Docdescricao: TStringField;
    q_DocSub_Tipo_Doc: TStringField;
    q_DocDescricao_1: TStringField;
    q_DocNumero_Doc: TStringField;
    q_DocPagina: TStringField;
    q_DocCodigo: TStringField;
    q_DocVigencia_inicial: TDateTimeField;
    q_DocVigencia_final: TDateTimeField;
    q_DocData_baixa: TDateTimeField;
    q_DocData_renovacao: TDateTimeField;
    q_DocStatus: TStringField;
    q_DocDESCRICAO_2: TStringField;
    q_contratos: TQuery;
    ds_qcontratos: TDataSource;
    q_contratosEmpresa: TStringField;
    q_contratosFilial: TStringField;
    q_contratosImportador: TStringField;
    q_contratosContrato: TStringField;
    q_contratosDescricao: TStringField;
    q_contratosVigencia_inicial: TDateTimeField;
    q_contratosVigencia_final: TDateTimeField;
    q_contratosTipo: TStringField;
    q_contratosData_Baixa: TDateTimeField;
    q_contratosData_prorrogacao: TDateTimeField;
    q_contratosRepetro: TIntegerField;
    q_contratosAtivo: TIntegerField;
    Label27: TLabel;
    DBEdit8: TDBEdit;
    cbCli: TCheckBox;
    edtProc: TMaskEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure cbTipoClick(Sender: TObject);
    procedure cbSubTipoClick(Sender: TObject);
    procedure cbStatusClick(Sender: TObject);
    procedure dblcbTipoClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure btnCanFilClick(Sender: TObject);
    procedure btnOKFiltClick(Sender: TObject);
    procedure q_DocAfterOpen(DataSet: TDataSet);
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnCanLocClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCanAltClick(Sender: TObject);
    procedure btnOKAltClick(Sender: TObject);
    procedure dbedtVigIniChange(Sender: TObject);
    procedure dbedtVigFinChange(Sender: TObject);
    procedure dbedtDtBaixaChange(Sender: TObject);
    procedure dbedtDtRenovChange(Sender: TObject);
    procedure btnOKLocClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure dbedtDtBaixaExit(Sender: TObject);
    procedure dbedtDtRenovExit(Sender: TObject);
    procedure dbedtVigIniExit(Sender: TObject);
    procedure t_DocumentosVigencia_inicialChange(Sender: TField);
    procedure t_DocumentosAfterScroll(DataSet: TDataSet);
    procedure btnImprimirTRClick(Sender: TObject);
    procedure cbconClick(Sender: TObject);
    procedure cblocClick(Sender: TObject);
    procedure cbfiadoresClick(Sender: TObject);
    procedure q_fiadores_MudarSQL();
    procedure dblcbconClick(Sender: TObject);
    procedure dblcbCliClick(Sender: TObject);
    procedure cbCliClick(Sender: TObject);
  private
    { Private declarations }
    procedure AtivaBotoes(Ativa : Boolean);
  public
    { Public declarations }
  end;

var
  f_condocs: Tf_condocs;
  filt : array [1..7] of String;
  sqlDoc: String;
  where, ordem: String;

implementation

uses U_MSCOMEX, U_relcondoc, U_relcondocTR;

{$R *.DFM}

procedure Tf_condocs.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_condocs.FormClose(Sender: TObject; var Action: TCloseAction);
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

  f_mscomex.ControledeDocumentos2.Enabled := True;
  Action := caFree;
  f_condocs := nil;
end;

procedure Tf_condocs.FormCreate(Sender: TObject);
begin
  q_Import.Open;

  ordem := 'ORDER BY D.Codigo';
  where := 'AND D.Empresa    = '''+ F_MSCOMEX.t_parametrosEmpresa.AsString +''' '
         + 'AND D.Filial     = '''+ F_MSCOMEX.t_parametrosFilial.AsString  +''' ';

  with q_Doc do
   begin
     sqlDoc := SQL.Text;
     SQL.Add(where);
     SQL.Add(ordem);
   end;

  t_locais.open;
  q_fiadores_MudarSQL();

  if tipobanco = 0
   then q_fiadores.params[0].asstring := '*'
   else q_fiadores.params[0].asstring := '%';

  q_fiadores.open;

  btnFiltrarClick(Sender);
end;

procedure Tf_condocs.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure Tf_condocs.cbTipoClick(Sender: TObject);
begin
  if cbTipo.Checked
   then begin
     dblcbTipo.Enabled    := False;
     dblcbTipo.ListSource := nil;
   end
   else begin
     dblcbTipo.Enabled    := True;
     dblcbTipo.ListSource := dsTipo;
   end;
end;

procedure Tf_condocs.cbSubTipoClick(Sender: TObject);
begin
  if cbSubTipo.Checked
   then begin
     dblcbSubTipo.Enabled    := False;
     dblcbSubTipo.ListSource := nil;
   end
   else begin
     dblcbSubTipo.Enabled    := True;
     dblcbSubTipo.ListSource := dsSubTipo;
   end;
end;

procedure Tf_condocs.cbStatusClick(Sender: TObject);
begin
  if cbStatus.Checked
   then begin
     dblcbStatusFil.Enabled    := False;
     dblcbStatusFil.ListSource := nil;
   end
   else begin
     dblcbStatusFil.Enabled    := True;
     dblcbStatusFil.ListSource := dsStatus;
   end;
end;

procedure Tf_condocs.dblcbTipoClick(Sender: TObject);
begin
  if (dblcbTipo.Text <> '') and (not cbTipo.Checked)
   then begin
     dblcbSubTipo.ListSource := nil;
     q_SubTipo.Filter   := 'Tipo_doc = '''+dblcbTipo.KeyValue+''' ';
     q_SubTipo.Filtered := True;

     if not cbSubTipo.Checked
      then dblcbSubTipo.ListSource := dsSubTipo;
   end
   else q_SubTipo.Filtered := False;
end;

procedure Tf_condocs.btnFiltrarClick(Sender: TObject);
begin
  dblcbTipo.ListSource      := dsTipo;
  dblcbSubTipo.ListSource   := dsSubTipo;
  dblcbStatusFil.ListSource := dsStatus;

  dbgDoc.Columns[0].Visible  := True;
  dbgDoc.Columns[6].Visible  := True;
  dbgDoc.Columns[7].Visible  := True;
  dbgDoc.Columns[8].Visible  := True;

  q_Tipo.Open;
  q_SubTipo.Open;
  q_Status.Open;

  pnlPrincipal.Enabled := False;

  with pnlFiltrar do
   begin
     width   := 425;
     height  := 392;
     Top     := 53;
     Left    := 168;
     Visible := True;
   end;

  edtProc.SetFocus;
end;

procedure Tf_condocs.btnCanFilClick(Sender: TObject);
begin
  dblcbcon.ListSource       := nil;
  dblcbcon.Enabled          := False;
  dblcbloc.ListSource       := nil;
  dblcbloc.Enabled          := False;
  dblcbTipo.ListSource      := nil;
  dblcbTipo.Enabled         := False;
  dblcbSubTipo.ListSource   := nil;
  dblcbSubTipo.Enabled      := False;
  dblcbStatusFil.ListSource := nil;
  dblcbStatusFil.Enabled    := False;
  edtProc.Clear;

  cbcon.Checked     := True;
  cbloc.Checked     := True;
  cbTipo.Checked    := True;
  cbSubTipo.Checked := True;
  cbStatus.Checked  := True;

  q_Tipo.Close;
  q_SubTipo.Close;
  q_Status.Close;
  q_Doc.Close;

  mmFiltro.Clear;
  mmFiltro.Visible     := False;
  pnlFiltrar.Visible   := False;
  pnlPrincipal.Enabled := True;

  edtTot.Text := IntToStr(0);

  AtivaBotoes(False);

  dbgDoc.SetFocus;
end;

procedure Tf_condocs.btnOKFiltClick(Sender: TObject);
var
  filtro: String;
begin
  mmFiltro.Clear;
  mmFiltro.Lines.Append('DOCUMENTOS FILTRADOS POR:');

  filtro := where;

  if Trim(edtProc.Text) <> '/'
   then begin
     filtro := filtro + 'AND D.Processo = '''+Trim(edtProc.Text)+''' ';
     dbgDoc.Columns[0].Visible := False;
     mmFiltro.Lines.Append('PROCESSO: '+Trim(edtProc.Text));
   end;

  if not cbCli.Checked
   then if dblcbCli.Text <> ''
         then begin
           filtro := filtro + 'AND D.Importador = '''+dblcbCli.KeyValue+''' ';
           mmFiltro.Lines.Append('CLIENTE: '+dblcbCli.Text);
           filt[1] := dblcbCli.Text;
         end;

  if not cbcon.Checked
   then if dblcbcon.Text <> ''
         then begin
           filtro := filtro + 'AND D.Contrato = '''+dblcbcon.KeyValue+''' ';
           mmFiltro.Lines.Append('Contrato: '+dblcbcon.Text);
           filt[5] := dblcbcon.Text;
         end;

  if not cbloc.Checked
   then if dblcbloc.Text <> ''
         then begin
           filtro := filtro + 'AND D.Local = '''+dblcbloc.KeyValue+''' ';
           mmFiltro.Lines.Append('Local: '+dblcbloc.Text);
           filt[6] := dblcbloc.Text;
         end;

  if not cbTipo.Checked
   then if dblcbTipo.Text <> ''
         then begin
           filtro := filtro + 'AND D.Tipo_Doc = '''+dblcbTipo.KeyValue+''' ';
           dbgDoc.Columns[7].Visible := False;
           mmFiltro.Lines.Append('TIPO: '+dblcbTipo.Text);
           filt[2] := dblcbTipo.Text;
         end;

  if not cbSubTipo.Checked
   then if dblcbSubTipo.Text <> ''
         then begin
           filtro := filtro + 'AND D.Sub_Tipo_Doc = '''+dblcbSubTipo.KeyValue+''' ';
           dbgDoc.Columns[8].Visible := False;
           mmFiltro.Lines.Append('SUB TIPO: '+dblcbSubTipo.Text);
           filt[3] := dblcbSubTipo.Text;
         end;

  if not cbStatus.Checked
   then if dblcbStatusFil.Text <> ''
         then begin
           filtro := filtro + 'AND D.Status = '''+dblcbStatusFil.KeyValue+''' ';
           dbgDoc.Columns[6].Visible := False;
           mmFiltro.Lines.Append('STATUS: '+dblcbStatusFil.Text);
           filt[4] := dblcbStatusFil.Text;
         end;

  if not cbfiadores.Checked
   then if dblcbfiadores.Text <> ''
         then begin
           mmFiltro.Lines.Append('FIADOR: '+dblcbfiadores.Text);
           filt[7] := dblcbfiadores.Text;
         end;

  if me_dataini.Text <> '  /  /    '
   then begin
     if tipoBanco = 1
      then filtro := filtro + ' AND D.vigencia_final >= cast('''+me_dataini.text+''' as datetime) '
      else filtro := filtro + ' AND D.vigencia_final >= cdate('''+me_dataini.text+''') ';

     dbgDoc.Columns[0].Visible := False;
     mmFiltro.Lines.Append('Vigência Final >= '+me_dataini.text);
   end;

  if me_datafin.Text <> '  /  /    '
   then begin
     if tipoBanco = 1
      then filtro := filtro + 'AND D.vigencia_final <= cast('''+me_datafin.text+''' as datetime) '
      else filtro := filtro + 'AND D.vigencia_final <= cdate('''+me_datafin.text+''') ';

     dbgDoc.Columns[0].Visible := False;
     mmFiltro.Lines.Append('Vigência Final <= '+me_datafin.text);
   end;

  with q_Doc do
   begin
     Close;
     SQL.Clear;
     SQL.Add(sqlDoc);
     SQL.Add(filtro);
     SQL.Add(ordem);
     Open;
   end;

  q_Tipo.Close;
  q_SubTipo.Close;
  q_Status.Close;

  mmFiltro.Visible := True;
  pnlFiltrar.Visible := False;
  pnlPrincipal.Enabled := True;
  edtTot.Text := IntToStr(q_Doc.RecordCount);

  if q_Doc.RecordCount = 0
   then AtivaBotoes(False)
   else AtivaBotoes(True);

  dbgDoc.SetFocus;
end;

procedure Tf_condocs.q_DocAfterOpen(DataSet: TDataSet);
begin
  edtTot.Text := IntToStr(q_Doc.RecordCount);

  t_Documentos.Close;
  t_processos.Close;
  t_Documentos.Open;
  t_processos.open;
end;

procedure Tf_condocs.btnLocalizarClick(Sender: TObject);
begin
  pnlPrincipal.Enabled := False;

  with pnlLocalizar do
   begin
     Top  := 128;
     Left := 240;
     Visible := True;
   end;

  edtProc.SetFocus;
end;

procedure Tf_condocs.btnCanLocClick(Sender: TObject);
begin
  pnlPrincipal.Enabled := True;
  pnlLocalizar.Visible := False;
  edtDoc.Clear;
  dbgDoc.SetFocus;
end;

procedure Tf_condocs.btnAlterarClick(Sender: TObject);
begin
  pnlPrincipal.Enabled := False;

  with pnlAlterar do
   begin
     height := 241;
     width  := 617;
     Top    := 112;
     Left   := 80;
     Visible := True;
   end;

  q_Status.Open;
  t_Documentos.Edit;
  t_Documentos.Tag := 1;
  dbedtVigIni.SetFocus;
end;

procedure Tf_condocs.btnCanAltClick(Sender: TObject);
begin
  t_Documentos.Cancel;
  t_Documentos.Tag := 0;
  q_Status.Close;

  pnlPrincipal.Enabled := True;
  pnlAlterar.Visible := False;
  dbgDoc.SetFocus;
end;

procedure Tf_condocs.btnOKAltClick(Sender: TObject);
var
  dtIni, dtFin, dtBaixa, dtRenov, Cod: String;
  vigIniD, vigFinD, dtBxaD, dtRenD: TDateTime;
begin
  vigIniD := t_DocumentosVigencia_inicial.AsDateTime;
  vigFinD := t_DocumentosVigencia_final.AsDateTime;
  dtIni   := t_DocumentosVigencia_inicial.AsString;
  dtFin   := t_DocumentosVigencia_final.AsString;

  dtBxaD  := t_Documentosdata_baixa.AsDateTime;
  dtRenD  := t_Documentosdata_renovacao.AsDateTime;
  dtBaixa := t_Documentosdata_baixa.AsString;
  dtRenov := t_Documentosdata_renovacao.AsString;

  if dtIni <> ''
   then begin
     if dtFin = ''
      then begin
        MessageDlg('Documento sem Vigência Final!', mtWarning, [mbOk], 0);
        dbedtVigFin.SetFocus;
        Exit;
      end;

     if vigIniD > vigFinD
      then begin
        MessageDlg('A data da Vigência Final é menor do que a data da Vigência Inicial!', mtWarning, [mbOk], 0);
        dbedtVigFin.SetFocus;
        Exit;
      end;

     if (dtBaixa <> '') and (vigIniD > dtBxaD)
      then begin
        MessageDlg('A Data da Baixa é menor do que a data da Vigência Inicial!', mtWarning, [mbOk], 0);
        dbedtDtBaixa.SetFocus;
        Exit;
      end;

     if (dtRenov <> '') and (vigIniD > dtRenD)
      then begin
        MessageDlg('A Data da Renovação Final é menor do que a data da Vigência Inicial!', mtWarning, [mbOk], 0);
        dbedtDtRenov.SetFocus;
        Exit;
      end;
   end;

  if (dtIni = '') and (dtFin <> '')
   then begin
     MessageDlg('Documento sem Vigência Inicial!', mtWarning, [mbOk], 0);
     dbedtVigIni.SetFocus;
     Exit
   end;

  if tipoBanco = 1
   then begin
     if dtIni <> ''
      then dtIni := 'Cast("'+dtIni+'" as date)'
      else dtIni := 'Null';

     if dtFin <> ''
      then dtFin := 'Cast("'+dtFin+'" as date)'
      else dtFin := 'Null';

     if dtBaixa <> ''
      then dtBaixa := 'Cast("'+dtBaixa+'" as date)'
      else dtBaixa := 'Null';

     if dtRenov <> ''
      then dtRenov := 'Cast("'+dtRenov+'" as date)'
      else dtRenov := 'Null';
   end
   else begin
     if dtIni <> ''
      then dtIni := 'CDate("'+dtIni+'")'
      else dtIni := 'Null';

     if dtFin <> ''
      then dtFin := 'CDate("'+dtFin+'")'
      else dtFin := 'Null';

     if dtBaixa <> ''
      then dtBaixa := 'CDate("'+dtBaixa+'")'
      else dtBaixa := 'Null';

     if dtRenov <> ''
      then dtRenov := 'CDate("'+dtRenov+'")'
      else dtRenov := 'Null';
   end;

  t_processos.edit;
  t_processos.post;

  Cod := t_DocumentosProcesso.AsString;
  with q_UpdateDoc.SQL do
   begin
     Clear;
     Add('UPDATE PROCESSOS SET ');
     Add('Data_Entrada_TR    = '+dtIni+',  ');
     Add('Data_vencimento_TR = '+dtFin+',  ');
     Add('data_baixa_tr      = '+dtBaixa+' ');
     Add('WHERE Codigo       = '''+Cod+''' ');
   end;

  q_UpdateDoc.ExecSQL;
  logusu('A','Alterou validade TR de docs:'+t_Documentosnumero_doc.asstring+' sql->'+q_UpdateDoc.Text);

  Cod := t_DocumentosCodigo.AsString;

  with q_UpdateDoc.SQL do
   begin
     Clear;
     Add('UPDATE Documentos SET ');
     Add('Vigencia_inicial = '+dtIni+',   ');
     Add('Vigencia_final   = '+dtFin+',   ');
     Add('data_baixa       = '+dtBaixa+', ');
     Add('data_renovacao   = '+dtRenov+', ');
     Add('status           = '''+t_DocumentosStatus.AsString+''' ');
     Add('WHERE Codigo     = '''+Cod+'''  ');
   end;

  logusu('A','Alterou validade de docs:'+t_Documentosnumero_doc.asstring+' sql->'+q_UpdateDoc.Text);
  t_documentos.CLOSE;
  q_UpdateDoc.ExecSQL;
  q_Status.Close;

  with q_Doc do
   begin
     Close;
     Open;
     Locate('Codigo', Cod, []);
   end;

  t_documentos.OPEN;
  t_processos.open;
  Cod := t_DocumentosCodigo.AsString;

  pnlPrincipal.Enabled := True;
  pnlAlterar.Visible   := False;
  dbgDoc.SetFocus;
end;

procedure Tf_condocs.dbedtVigIniChange(Sender: TObject);
begin
  if t_Documentos.Tag <> 0
   then if dbedtVigIni.Text = '  /  /    '
         then t_DocumentosVigencia_inicial.AsString := '';
end;

procedure Tf_condocs.dbedtVigFinChange(Sender: TObject);
begin
  if t_Documentos.Tag <> 0
   then if dbedtVigFin.Text = '  /  /    '
         then t_DocumentosVigencia_final.AsString := '';
end;

procedure Tf_condocs.dbedtDtBaixaChange(Sender: TObject);
begin
  if t_Documentos.Tag <> 0
   then if dbedtDtBaixa.Text = '  /  /    '
         then t_Documentosdata_baixa.AsString := '';
end;

procedure Tf_condocs.dbedtDtRenovChange(Sender: TObject);
begin
  if t_Documentos.Tag <> 0
   then if dbedtDtRenov.Text = '  /  /    '
         then t_Documentosdata_renovacao.AsString := '';
end;

procedure Tf_condocs.btnOKLocClick(Sender: TObject);
begin
  pnlPrincipal.Enabled := True;
  pnlLocalizar.Visible := False;

  if not q_Doc.Locate('Numero_Doc',edtDoc.Text,[loPartialKey])
   then ShowMessage('Documento não encontrado!');

  dbgDoc.SetFocus;
end;

procedure Tf_condocs.btnImprimirClick(Sender: TObject);
begin
  Application.CreateForm(TQR_Documentos, QR_Documentos);
  pnlPrincipal.Enabled := False;
  QR_Documentos.Preview;
  QR_Documentos.Destroy;
  pnlPrincipal.Enabled := True;
  QR_Documentos := Nil;
end;

procedure Tf_condocs.dbedtDtBaixaExit(Sender: TObject);
begin
  if t_Documentos.Tag <> 0
   then if dbedtDtBaixa.Text <> '  /  /    '
         then begin
           dbedtDtRenov.Text           := '';
           t_DocumentosStatus.AsString := '3';
         end;
end;

procedure Tf_condocs.dbedtDtRenovExit(Sender: TObject);
begin
  if t_Documentos.Tag <> 0
   then if dbedtDtRenov.Text <> '  /  /    '
         then begin
           dbedtDtBaixa.Text := '';
           t_DocumentosStatus.AsString := '4';
         end;
end;

procedure Tf_condocs.dbedtVigIniExit(Sender: TObject);
begin
  if t_Documentos.Tag <> 0
   then if dbedtVigIni.Text = '  /  /    '
         then dbedtVigFin.Text := '';
end;

procedure Tf_condocs.t_DocumentosVigencia_inicialChange(Sender: TField);
var
  dtIni, dtFin, dtBaixa, dtRenov: String;
  vigFinD, dtAtu: TDateTime;
begin
  vigFinD := t_DocumentosVigencia_final.AsDateTime;
  dtIni   := t_DocumentosVigencia_inicial.AsString;
  dtFin   := t_DocumentosVigencia_final.AsString;

  dtBaixa := t_Documentosdata_baixa.AsString;
  dtRenov := t_Documentosdata_renovacao.AsString;

  dtAtu := Date;

  if t_Documentos.Tag <> 0 { STATUS DO DOCUMENTO }
   then if dtBaixa <> ''
         then t_DocumentosStatus.AsString := '3' { BAIXADO }
         else if dtRenov <> ''
               then t_DocumentosStatus.AsString := '4' { RENOVADO }
               else if dtIni = ''
                     then t_DocumentosStatus.AsString := '0' { SEM DATA DE VALIDADE }
                     else if dtAtu <= vigFinD
                           then t_DocumentosStatus.AsString := '1' { A VENCER }
                           else t_DocumentosStatus.AsString := '2' { VENCIDO }
end;

procedure Tf_condocs.t_DocumentosAfterScroll(DataSet: TDataSet);
begin
  if ((t_documentostipo_doc.asstring = 'PROC') and
      (t_documentossub_tipo_doc.asstring = '11'))
   then begin
     dbgpro.visible  := true;
     ppro.Visible    := true;
     paltpro.visible := true;
   end
   else begin
     dbgpro.visible  := false;
     ppro.Visible    := false;
     paltpro.visible := false;
   end;

  pnlprincipal.refresh;
end;

procedure Tf_condocs.btnImprimirTRClick(Sender: TObject);
begin
  Application.CreateForm(TQR_DocumentosTR, QR_DocumentosTR);
  pnlPrincipal.Enabled := False;
  QR_DocumentosTR.Preview;
  QR_DocumentosTR.Destroy;
  pnlPrincipal.Enabled := True;
  QR_DocumentosTR      := Nil;
end;

procedure Tf_condocs.cbconClick(Sender: TObject);
begin
  if cbcon.Checked
   then begin
     dblcbcon.Enabled    := False;
     dblcbcon.ListSource := nil;
     q_contratos.close;
   end
   else begin
     q_contratos.Params[0].Value := q_ImportCodigo.AsString;
     q_contratos.open;
     dblcbcon.Enabled    := True;
     dblcbcon.ListSource := ds_qcontratos;
   end;
end;

procedure Tf_condocs.cblocClick(Sender: TObject);
begin
  if cbloc.Checked
   then begin
     dblcbloc.Enabled := False;
     dblcbloc.ListSource := nil;
   end
   else begin
     dblcbloc.Enabled := True;
     dblcbloc.ListSource := ds_locais;
   end;
end;

procedure Tf_condocs.cbfiadoresClick(Sender: TObject);
begin
  if cbfiadores.Checked
   then begin
     dblcbfiadores.Enabled := False;
     dblcbfiadores.ListSource := nil;
   end
   else begin
     dblcbfiadores.Enabled := True;

     q_fiadores.close;
     q_fiadores.params[0].asstring := q_importcodigo.asstring;
     q_fiadores_MudarSQL();

     if tipobanco = 0
      then q_fiadores.params[0].asstring := '*'
      else q_fiadores.params[0].asstring := '%';

     q_fiadores.open;
   end;
end;

procedure Tf_condocs.q_fiadores_MudarSQL();
begin
  if tipoBanco = 1
   then begin
     q_fiadores.sql.Clear;
     q_fiadores.sql.add('SELECT Processos.Importador, LTrim(RTrim([nome_fiador_GAR])) AS fiador FROM Processos ');
     q_fiadores.sql.add('GROUP BY Processos.Importador, LTrim(RTrim([nome_fiador_GAR])) ');
     q_fiadores.sql.add('HAVING (((Processos.Importador) Like :qfia) AND ((LTrim(RTrim([nome_fiador_GAR]))) Is Not Null And (LTrim(RTrim([nome_fiador_GAR])))<>"")) ');
     q_fiadores.sql.add('ORDER BY Processos.Importador, LTrim(RTrim([nome_fiador_GAR])); ');
   end;
end;

procedure Tf_condocs.dblcbconClick(Sender: TObject);
begin
  dblcbloc.ListSource := nil;
  dblcbloc.ListSource := ds_locais;
end;

procedure Tf_condocs.dblcbCliClick(Sender: TObject);
begin
  if q_contratos.Active = true
   then begin
     q_contratos.close;
     q_contratos.Params[0].Value := q_ImportCodigo.AsString;
     q_contratos.open;
     dblcbcon.ListSource := nil;
     dblcbcon.ListSource := ds_qcontratos;
   end;
end;

procedure Tf_condocs.AtivaBotoes(Ativa: Boolean);
begin
  btnLocalizar.Enabled  := Ativa;
  btnAlterar.Enabled    := Ativa;
  btnImprimir.Enabled   := Ativa;
  btnImprimirTR.Enabled := Ativa;
end;

procedure Tf_condocs.cbCliClick(Sender: TObject);
begin
  if cbCli.Checked
   then begin
     dblcbCli.Enabled    := False;
     dblcbCli.ListSource := nil;
   end
   else begin
     dblcbCli.Enabled    := True;
     dblcbCli.ListSource := dsImport;
   end;
end;

end.
