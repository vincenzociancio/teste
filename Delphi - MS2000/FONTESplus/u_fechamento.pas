unit u_fechamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Buttons, Mask, ExtCtrls, Db, DBTables, ActnList,
  Grids, DBGrids;

Const
  AnoInicial = 2001;

type
  Tf_fechamento = class(TForm)
    pnlPrincipal: TPanel;
    tbProcessos: TTable;
    dsProcessos: TDataSource;
    pnlTop: TPanel;
    dsProc: TDataSource;
    qrProcessos: TQuery;
    DBGrid1: TDBGrid;
    qrProcessosCliente: TStringField;
    qrProcessosData: TDateTimeField;
    qrProcessosProcesso: TStringField;
    qrProcessosFechado: TSmallintField;
    qrProcessosResponsavel_Empresa: TStringField;
    qrProcessosAtivo: TSmallintField;
    qrProcessosempresa: TStringField;
    qrProcessosfilial: TStringField;
    qrProcessosCODIGO: TStringField;
    tbProcessosEmpresa: TStringField;
    tbProcessosFilial: TStringField;
    tbProcessosCodigo: TStringField;
    tbProcessosData: TDateTimeField;
    tbProcessosImportador: TStringField;
    tbProcessosCodigo_Cliente: TStringField;
    tbProcessosTipo_Declaracao: TStringField;
    tbProcessosTipo: TStringField;
    tbProcessosContrato: TStringField;
    tbProcessosLocal_Inventario: TStringField;
    tbProcessosNR_DECL_IMP_MICRO: TStringField;
    tbProcessosNR_DECL_IMP_PROT: TStringField;
    tbProcessosNR_DECLARACAO_IMP: TStringField;
    tbProcessosDT_PROCESSAMENTO: TStringField;
    tbProcessosDT_TRANSMISSAO: TStringField;
    tbProcessosDT_REGISTRO_DI: TStringField;
    tbProcessosDT_DESEMBARACO: TDateTimeField;
    tbProcessosDT_DISTRIBUICAO: TDateTimeField;
    tbProcessosCanal: TStringField;
    tbProcessosFiscal: TStringField;
    tbProcessosStatus: TStringField;
    tbProcessosCOD_SIT: TStringField;
    tbProcessosCD_MOTIVO_TRANS: TStringField;
    tbProcessosIN_MOEDA_UNICA: TSmallintField;
    tbProcessosTX_INFO_COMPL: TMemoField;
    tbProcessosCD_TIPO_PGTO_TRIB: TStringField;
    tbProcessosNumero_RCR: TStringField;
    tbProcessosData_Entrada_RCR: TDateTimeField;
    tbProcessosData_Aprovacao_RCR: TDateTimeField;
    tbProcessosFundamentacao_RCR: TStringField;
    tbProcessosProcurador: TStringField;
    tbProcessosNumero_TR: TStringField;
    tbProcessosData_Entrada_TR: TDateTimeField;
    tbProcessosData_vencimento_TR: TDateTimeField;
    tbProcessosData_Aprovacao_TR: TDateTimeField;
    tbProcessosData_Baixa_TR: TDateTimeField;
    tbProcessosData_CI: TDateTimeField;
    tbProcessosTipo_Garantia: TStringField;
    tbProcessosNome_banco_GAR: TStringField;
    tbProcessosAgencia_GAR: TStringField;
    tbProcessosData_deposito_GAR: TDateTimeField;
    tbProcessosNome_titulo_GAR: TStringField;
    tbProcessosnumeros_titulos_GAR: TStringField;
    tbProcessosNome_seguradora_GAR: TStringField;
    tbProcessosapolice_GAR: TStringField;
    tbProcessosnome_fiador_GAR: TStringField;
    tbProcessosCNPJ_fiador_GAR: TStringField;
    tbProcessosendereco_fiador_GAR: TStringField;
    tbProcessosQuantidade_LI: TFloatField;
    tbProcessosValor_FOB: TFloatField;
    tbProcessosValor_CIF: TFloatField;
    tbProcessosResponsavel_Empresa: TStringField;
    tbProcessosResponsavel_Importador: TStringField;
    tbProcessosSaldo_Faturamento: TFloatField;
    tbProcessosNR_DECL_IMP_MICROC: TStringField;
    tbProcessosNR_DECL_IMP_PROTC: TStringField;
    tbProcessosNR_DECLARACAO_IMPC: TStringField;
    tbProcessosDT_PROCESSAMENTOC: TStringField;
    tbProcessosDT_TRANSMISSAOC: TStringField;
    tbProcessosDT_REGISTRO_DIC: TStringField;
    tbProcessosDT_DESEMBARACOC: TDateTimeField;
    tbProcessosDT_DISTRIBUICAOC: TDateTimeField;
    tbProcessosCanalC: TStringField;
    tbProcessosFiscalC: TStringField;
    tbProcessosCOD_SITC: TStringField;
    tbProcessosData_CIC: TDateTimeField;
    tbProcessosValor_FOBC: TFloatField;
    tbProcessosValor_CIFC: TFloatField;
    tbProcessosident_meio1: TStringField;
    tbProcessosident_meio2: TStringField;
    tbProcessosCodevento: TStringField;
    tbProcessosCodobs: TStringField;
    tbProcessosObs_especifica: TStringField;
    tbProcessosData_ufollowup: TDateTimeField;
    tbProcessosHora_ufollowup: TStringField;
    tbProcessosData_liberacao: TDateTimeField;
    tbProcessosUrgente: TSmallintField;
    tbProcessosconsolidado: TSmallintField;
    tbProcessosPag_proporcional: TSmallintField;
    tbProcessosTR_VAL_FOB_US: TFloatField;
    tbProcessosTR_VAL_CIF_US: TFloatField;
    tbProcessosTR_VAL_II: TFloatField;
    tbProcessosTR_VAL_IPI: TFloatField;
    tbProcessosDDE: TStringField;
    tbProcessosProcesso_Adm: TStringField;
    tbProcessosProc_Adm_Data_Entrada: TDateTimeField;
    tbProcessosFaturado: TSmallintField;
    tbProcessosFechado: TSmallintField;
    tbProcessosCentro_Custo: TStringField;
    tbProcessosProcurador2: TStringField;
    tbProcessosTR_VAL_PIS: TFloatField;
    tbProcessosTR_VAL_COFINS: TFloatField;
    tbProcessosRCR_LOCAL: TStringField;
    tbProcessosResponsavel_EmpresaC: TStringField;
    tbProcessosvinc_processo: TSmallintField;
    tbProcessosproc_vinc: TStringField;
    qrProcessosFechadoSTR: TStringField;
    q_CNPJ: TQuery;
    q_CNPJCNPJ_CPF_COMPLETO: TStringField;
    cbAno: TComboBox;
    Label1: TLabel;
    ME_nossaref: TMaskEdit;
    lblRotuloCNPJ: TLabel;
    lblCNPJ: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure tbProcessosAfterPost(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbAnoChange(Sender: TObject);
    procedure ME_nossarefChange(Sender: TObject);
  private
    { Private declarations }
    procedure CarregaComboAno;
    procedure AtualizaGrid(Ano : String);
  public
    { Public declarations }
  end;

var
  f_fechamento: Tf_fechamento;
  vEmp, vFil: String;
  v_autorizado: Boolean;
  AnoAtual : Integer;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_fechamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  f_mscomex.Fechamento1.Enabled := True;
  f_fechamento := Nil;
  Action := caFree;
end;

procedure Tf_fechamento.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_fechamento.tbProcessosAfterPost(DataSet: TDataSet);
begin
  logusu('P','Alterou Processo: '+ tbProcessosCodigo.AsString);
end;

procedure Tf_fechamento.DBGrid1DblClick(Sender: TObject);
var
  qpro:string;
begin
  if (not qrProcessosAtivo.asinteger = 1)
   then begin
     if (v_Edita_cliente_inativo = 1)
      then begin
        Showmessage(v_usuario+', este Cliente está Inativo. Somente usuários habilitados em editar clientes inativos poderão alterar as informações do processo.');
        exit;
      end;
   end;

  tbProcessos.edit;

  if tbProcessosFechado.asinteger = 0
   then tbProcessosFechado.asinteger := 1
   else tbProcessosFechado.asinteger := 0;

  tbProcessos.post;

  qpro := tbprocessoscodigo.asstring;
  qrProcessos.close;
  qrProcessos.open;
  qrProcessos.Locate('Codigo', qpro, [loCaseInsensitive])
end;

procedure Tf_fechamento.FormShow(Sender: TObject);
begin
  { Wellington - 20/09/2011 - Ticket 579 - A Tela estava demorando muito para abrir ou buscar devido carregar todos os processos, alterado para carregar por Ano}
  AnoAtual := StrToInt(Copy(DateToStr(Date()),7,4));

  CarregaComboAno;

  AtualizaGrid(IntToStr(AnoAtual));

  tbProcessos.Open;
  { ----------------------- }
end;

procedure Tf_fechamento.AtualizaGrid(Ano: String);
begin
  qrProcessos.Close;
  qrProcessos.SQL.Clear;
  qrProcessos.SQL.Add('SELECT Importadores.Razao_Social AS Cliente, PRO.Data, PRO.Codigo AS Processo, PRO.Fechado, case PRO.Fechado when 1 then ''Sim'' else ''Não'' end as FechadoSTR,PRO.Responsavel_Empresa, Importadores.Ativo, PRO.empresa, PRO.filial, PRO.CODIGO ');
  qrProcessos.SQL.Add('  FROM (Parametros AS PAR LEFT JOIN Processos AS PRO ON (PAR.Filial = PRO.Filial) AND (PAR.Empresa = PRO.Empresa)) LEFT JOIN Importadores ON (PRO.Empresa = Importadores.Empresa) AND (PRO.Filial = Importadores.Filial) ');
  qrProcessos.SQL.Add('   AND (PRO.Importador = Importadores.Codigo) ');

  if (Trim(Ano) <> '')
   then qrProcessos.SQL.Add(' WHERE PRO.Codigo LIKE ''%/'+Copy(Ano,3,2)+''' ');

  qrProcessos.SQL.Add(' ORDER BY Importadores.Razao_Social, PRO.Data, PRO.Codigo ');
  qrProcessos.Open;
end;

procedure Tf_fechamento.CarregaComboAno;
var
  contador : Integer;
  Ano : Integer;
begin
  contador := 0;

  Ano := AnoInicial;

  while Ano <= AnoAtual do
   begin
     cbAno.Items.Add(IntToStr(Ano));

     Inc(Ano);
     Inc(contador);
   end;

  cbAno.ItemIndex := contador - 1;
end;

procedure Tf_fechamento.cbAnoChange(Sender: TObject);
begin
  AtualizaGrid(cbAno.Text);

  ME_nossaref.Clear;
  ME_nossaref.SetFocus;
end;

procedure Tf_fechamento.ME_nossarefChange(Sender: TObject);
begin
  if Length(F_MSCOMEX.LRTrim(me_nossaref.Text)) <> 8
   then Exit;
  // eduardo.souza 01/02/2012 - Para processos fechados - Exibi mensagem e fecha a tela
  If (IsClosedProcess( me_nossaref.Text, f_fechamento )) Then
    Abort;
  //--
  Screen.Cursor := crHourGlass;

  if not qrProcessos.Locate('Codigo', me_nossaref.Text, [loCaseInsensitive])
   then begin
     MessageDlg('Processo não encontrado!', mtInformation, [mbOk], 0);

     me_nossaref.SetFocus;
   end
   else begin
     Screen.Cursor := crDefault;

     q_CNPJ.Close;
     q_CNPJ.ParamByName('pCodigo').Value := me_nossaref.Text;
     q_CNPJ.Open;

     lblCNPJ.Caption := q_CNPJCNPJ_CPF_COMPLETO.Value;

     lblRotuloCNPJ.Visible := True;
     lblCNPJ.Visible := True;
   end;
end;

end.
