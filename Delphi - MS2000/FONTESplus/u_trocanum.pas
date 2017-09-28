unit u_trocanum;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Buttons, Db, DBTables;

type
  Tf_trocanum = class(TForm)
    me_proc1: TMaskEdit;
    me_proc2: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    b_altera: TBitBtn;
    t_parametros: TTable;
    ds_parametros: TDataSource;
    t_processos: TTable;
    ds_processos: TDataSource;
    t_parametrosEmpresa: TStringField;
    t_parametrosFilial: TStringField;
    t_parametrosNumerador_Processos: TStringField;
    Query1: TQuery;
    Label3: TLabel;
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
    t_processosIN_MOEDA_UNICA: TIntegerField;
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
    t_processosUrgente: TIntegerField;
    t_processosconsolidado: TIntegerField;
    t_processosPag_proporcional: TIntegerField;
    t_processosTR_VAL_FOB_US: TFloatField;
    t_processosTR_VAL_CIF_US: TFloatField;
    t_processosTR_VAL_II: TFloatField;
    t_processosTR_VAL_IPI: TFloatField;
    t_processosDDE: TStringField;
    t_processosProcesso_Adm: TStringField;
    t_processosProc_Adm_Data_Entrada: TDateTimeField;
    t_processosFaturado: TIntegerField;
    t_processosFechado: TIntegerField;
    t_processosCentro_Custo: TStringField;
    t_processosProcurador2: TStringField;
    t_processosTR_VAL_PIS: TFloatField;
    t_processosTR_VAL_COFINS: TFloatField;
    t_processosRCR_LOCAL: TStringField;
    t_processosResponsavel_EmpresaC: TStringField;
    t_processosvinc_processo: TIntegerField;
    t_processosproc_vinc: TStringField;
    t_processossem_nfs: TIntegerField;
    procedure FormActivate(Sender: TObject);
    procedure b_alteraClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_trocanum: Tf_trocanum;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_trocanum.FormActivate(Sender: TObject);
begin
f_trocanum.left := 0;
f_trocanum.top  := 0;
end;

procedure Tf_trocanum.b_alteraClick(Sender: TObject);
begin
if MessageDlg('Confirma troca de Numeração deste processo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
   if not t_processos.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_proc1.text]) then begin
      showmessage('Processo não encontrado! '+me_proc1.text);
   end
   else begin
      if t_processos.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_proc2.text]) then begin
         showmessage('Já existe Processo com esta Númeração! '+me_proc2.text);
      end
      else begin
         if me_proc2.text > t_parametrosnumerador_processos.asstring then begin
            showmessage('Númeração não pode ser maior que a de um novo processo! '+me_proc2.text);
         end
         else begin
             label3.Visible := true;

             ///trocando Processos
             label3.caption := 'Aguarde... Atualizando Processos...';
             label3.refresh;
             Query1.Close;
             Query1.SQL.Clear;
             Query1.SQL.Add('UPDATE Processos SET Processos.Codigo = "'+me_proc2.text+'" ');
             Query1.SQL.Add('WHERE ((Empresa="'+t_parametrosempresa.asstring+'") AND (Filial="'+t_parametrosfilial.asstring +'") AND (Codigo="'+me_proc1.text+'"))');
             Query1.ExecSQL;

             ///trocando Acrescimos_Faturas
             label3.caption := 'Aguarde... Atualizando Acrescimos_Faturas...';
             label3.refresh;
             Query1.Close;
             Query1.SQL.Clear;
             Query1.SQL.Add('UPDATE acrescimos_faturas SET Processo = "'+me_proc2.text+'" ');
             Query1.SQL.Add('WHERE ((Empresa="'+t_parametrosempresa.asstring+'") AND (Filial="'+t_parametrosfilial.asstring +'") AND (Processo="'+me_proc1.text+'"))');
             Query1.ExecSQL;

             ///trocando Armazem_Processo
             label3.caption := 'Aguarde... Atualizando Armazem_Processo...';
             label3.refresh;
             Query1.Close;
             Query1.SQL.Clear;
             Query1.SQL.Add('UPDATE armazem_processo SET Processo = "'+me_proc2.text+'" ');
             Query1.SQL.Add('WHERE ((Empresa="'+t_parametrosempresa.asstring+'") AND (Filial="'+t_parametrosfilial.asstring +'") AND (Processo="'+me_proc1.text+'"))');
             Query1.ExecSQL;

             ///trocando concarga
             label3.caption := 'Aguarde... Atualizando Concargas...';
             label3.refresh;
             Query1.Close;
             Query1.SQL.Clear;
             Query1.SQL.Add('UPDATE concargas SET Processo = "'+me_proc2.text+'" ');
             Query1.SQL.Add('WHERE ((Empresa="'+t_parametrosempresa.asstring+'") AND (Filial="'+t_parametrosfilial.asstring +'") AND (Processo="'+me_proc1.text+'"))');
             Query1.ExecSQL;

              ///trocando conhecimento_processo
             label3.caption := 'Aguarde... Atualizando Conhecimento_Processos...';
             label3.refresh;
             Query1.Close;
             Query1.SQL.Clear;
             Query1.SQL.Add('UPDATE Conhecimento_Processo SET Processo = "'+me_proc2.text+'" ');
             Query1.SQL.Add('WHERE ((Empresa="'+t_parametrosempresa.asstring+'") AND (Filial="'+t_parametrosfilial.asstring +'") AND (Processo="'+me_proc1.text+'"))');
             Query1.ExecSQL;

              ///trocando controle_pastas
             label3.caption := 'Aguarde... Atualizando Controle_pastas...';
             label3.refresh;
             Query1.Close;
             Query1.SQL.Clear;
             Query1.SQL.Add('UPDATE Controle_pastas SET Processo = "'+me_proc2.text+'" ');
             Query1.SQL.Add('WHERE ((Empresa="'+t_parametrosempresa.asstring+'") AND (Filial="'+t_parametrosfilial.asstring +'") AND (Processo="'+me_proc1.text+'"))');
             Query1.ExecSQL;

             ///trocando creditos_processos
             label3.caption := 'Aguarde... Atualizando creditos_processos...';
             label3.refresh;
             Query1.Close;
             Query1.SQL.Clear;
             Query1.SQL.Add('UPDATE creditos_processos SET Processo = "'+me_proc2.text+'" ');
             Query1.SQL.Add('WHERE ((Empresa="'+t_parametrosempresa.asstring+'") AND (Filial="'+t_parametrosfilial.asstring +'") AND (Processo="'+me_proc1.text+'"))');
             Query1.ExecSQL;

             ///trocando custos_processos
             label3.caption := 'Aguarde... Atualizando custos_processos...';
             label3.refresh;
             Query1.Close;
             Query1.SQL.Clear;
             Query1.SQL.Add('UPDATE custos_processos SET Processo = "'+me_proc2.text+'" ');
             Query1.SQL.Add('WHERE ((Empresa="'+t_parametrosempresa.asstring+'") AND (Filial="'+t_parametrosfilial.asstring +'") AND (Processo="'+me_proc1.text+'"))');
             Query1.ExecSQL;

             ///trocando custos_unitarios
             label3.caption := 'Aguarde... Atualizando custos_unitarios...';
             label3.refresh;
             Query1.Close;
             Query1.SQL.Clear;
             Query1.SQL.Add('UPDATE custos_unitarios SET Processo = "'+me_proc2.text+'" ');
             Query1.SQL.Add('WHERE ((Empresa="'+t_parametrosempresa.asstring+'") AND (Filial="'+t_parametrosfilial.asstring +'") AND (Processo="'+me_proc1.text+'"))');
             Query1.ExecSQL;

             ///trocando deducoes_faturas
             label3.caption := 'Aguarde... Atualizando deducoes_faturas...';
             label3.refresh;
             Query1.Close;
             Query1.SQL.Clear;
             Query1.SQL.Add('UPDATE deducoes_faturas SET Processo = "'+me_proc2.text+'" ');
             Query1.SQL.Add('WHERE ((Empresa="'+t_parametrosempresa.asstring+'") AND (Filial="'+t_parametrosfilial.asstring +'") AND (Processo="'+me_proc1.text+'"))');
             Query1.ExecSQL;

             ///trocando embalagem_processo
             label3.caption := 'Aguarde... Atualizando embalagem_processo...';
             label3.refresh;
             Query1.Close;
             Query1.SQL.Clear;
             Query1.SQL.Add('UPDATE embalagem_processo SET Processo = "'+me_proc2.text+'" ');
             Query1.SQL.Add('WHERE ((Empresa="'+t_parametrosempresa.asstring+'") AND (Filial="'+t_parametrosfilial.asstring +'") AND (Processo="'+me_proc1.text+'"))');
             Query1.ExecSQL;

             ///trocando faturas
             label3.caption := 'Aguarde... Atualizando faturas...';
             label3.refresh;
             Query1.Close;
             Query1.SQL.Clear;
             Query1.SQL.Add('UPDATE faturas SET Processo = "'+me_proc2.text+'" ');
             Query1.SQL.Add('WHERE ((Empresa="'+t_parametrosempresa.asstring+'") AND (Filial="'+t_parametrosfilial.asstring +'") AND (Processo="'+me_proc1.text+'"))');
             Query1.ExecSQL;

             ///trocando itensfaturas
             label3.caption := 'Aguarde... Atualizando itensfaturas...';
             label3.refresh;
             Query1.Close;
             Query1.SQL.Clear;
             Query1.SQL.Add('UPDATE itensfaturas SET Processo = "'+me_proc2.text+'" ');
             Query1.SQL.Add('WHERE ((Empresa="'+t_parametrosempresa.asstring+'") AND (Filial="'+t_parametrosfilial.asstring +'") AND (Processo="'+me_proc1.text+'"))');
             Query1.ExecSQL;

             ///trocando followup
             label3.caption := 'Aguarde... Atualizando followup...';
             label3.refresh;
             Query1.Close;
             Query1.SQL.Clear;
             Query1.SQL.Add('UPDATE followup SET Processo = "'+me_proc2.text+'" ');
             Query1.SQL.Add('WHERE ((Empresa="'+t_parametrosempresa.asstring+'") AND (Filial="'+t_parametrosfilial.asstring +'") AND (Processo="'+me_proc1.text+'"))');
             Query1.ExecSQL;

             ///trocando movimentacao_pastas
             label3.caption := 'Aguarde... Atualizando movimentacao_pastas...';
             label3.refresh;
             Query1.Close;
             Query1.SQL.Clear;
             Query1.SQL.Add('UPDATE movimentacao_pastas SET Processo = "'+me_proc2.text+'" ');
             Query1.SQL.Add('WHERE ((Empresa="'+t_parametrosempresa.asstring+'") AND (Filial="'+t_parametrosfilial.asstring +'") AND (Processo="'+me_proc1.text+'"))');
             Query1.ExecSQL;

             ///trocando notas_fiscais
             label3.caption := 'Aguarde... Atualizando notas_fiscais...';
             label3.refresh;
             Query1.Close;
             Query1.SQL.Clear;
             Query1.SQL.Add('UPDATE notas_fiscais SET Processo = "'+me_proc2.text+'" ');
             Query1.SQL.Add('WHERE ((Empresa="'+t_parametrosempresa.asstring+'") AND (Filial="'+t_parametrosfilial.asstring +'") AND (Processo="'+me_proc1.text+'"))');
             Query1.ExecSQL;

             ///trocando notas_fiscais_detalhes
             label3.caption := 'Aguarde... Atualizando notas_fiscais_detalhes...';
             label3.refresh;
             Query1.Close;
             Query1.SQL.Clear;
             Query1.SQL.Add('UPDATE notas_fiscais_detalhes SET Processo = "'+me_proc2.text+'" ');
             Query1.SQL.Add('WHERE ((Empresa="'+t_parametrosempresa.asstring+'") AND (Filial="'+t_parametrosfilial.asstring +'") AND (Processo="'+me_proc1.text+'"))');
             Query1.ExecSQL;

             ///trocando notas_fiscais_servicos
             label3.caption := 'Aguarde... Atualizando notas_fiscais_servicos...';
             label3.refresh;
             Query1.Close;
             Query1.SQL.Clear;
             Query1.SQL.Add('UPDATE notas_fiscais_servicos SET Processo = "'+me_proc2.text+'" ');
             Query1.SQL.Add('WHERE ((Empresa="'+t_parametrosempresa.asstring+'") AND (Filial="'+t_parametrosfilial.asstring +'") AND (Processo="'+me_proc1.text+'"))');
             Query1.ExecSQL;

             ///trocando notas_fiscais_servicos
             label3.caption := 'Aguarde... Atualizando notas_fiscais_servicos...';
             label3.refresh;
             Query1.Close;
             Query1.SQL.Clear;
             Query1.SQL.Add('UPDATE notas_fiscais_servicos SET Processo = "'+me_proc2.text+'" ');
             Query1.SQL.Add('WHERE ((Empresa="'+t_parametrosempresa.asstring+'") AND (Filial="'+t_parametrosfilial.asstring +'") AND (Processo="'+me_proc1.text+'"))');
             Query1.ExecSQL;


             ///trocando numerarios_processos
             label3.caption := 'Aguarde... Atualizando numerarios_processos...';
             label3.refresh;
             Query1.Close;
             Query1.SQL.Clear;
             Query1.SQL.Add('UPDATE numerarios_processos SET Processo = "'+me_proc2.text+'" ');
             Query1.SQL.Add('WHERE ((Empresa="'+t_parametrosempresa.asstring+'") AND (Filial="'+t_parametrosfilial.asstring +'") AND (Processo="'+me_proc1.text+'"))');
             Query1.ExecSQL;

             ///trocando observacoes_processo_financeiro
             label3.caption := 'Aguarde... Atualizando observacoes_processo_financeiro...';
             label3.refresh;
             Query1.Close;
             Query1.SQL.Clear;
             Query1.SQL.Add('UPDATE observacoes_processo_financeiro SET codigo = "'+me_proc2.text+'" ');
             Query1.SQL.Add('WHERE ((Empresa="'+t_parametrosempresa.asstring+'") AND (Filial="'+t_parametrosfilial.asstring +'") AND (codigo="'+me_proc1.text+'"))');
             Query1.ExecSQL;

             ///trocando processos_taxas_conversao
             label3.caption := 'Aguarde... Atualizando processos_taxas_conversao...';
             label3.refresh;
             Query1.Close;
             Query1.SQL.Clear;
             Query1.SQL.Add('UPDATE processos_taxas_conversao SET Processo = "'+me_proc2.text+'" ');
             Query1.SQL.Add('WHERE ((Empresa="'+t_parametrosempresa.asstring+'") AND (Filial="'+t_parametrosfilial.asstring +'") AND (Processo="'+me_proc1.text+'"))');
             Query1.ExecSQL;

             ///trocando Tributacao_Item_Fatura
             label3.caption := 'Aguarde... Atualizando Tributacao_Item_Fatura...';
             label3.refresh;
             Query1.Close;
             Query1.SQL.Clear;
             Query1.SQL.Add('UPDATE Tributacao_Item_Fatura SET Processo = "'+me_proc2.text+'" ');
             Query1.SQL.Add('WHERE ((Empresa="'+t_parametrosempresa.asstring+'") AND (Filial="'+t_parametrosfilial.asstring +'") AND (Processo="'+me_proc1.text+'"))');
             Query1.ExecSQL;

             logusu('P','Renumerou Processo:'+me_proc1.text+' para -> '+me_proc2.text);

             label3.Visible := false;
             
             showmessage('Processo: '+me_proc1.text+' -> Renumerado: '+me_proc2.text);

         end

      end

   end

end;

me_proc1.text := '';
me_proc2.text := '';
me_proc1.setfocus;

end;

procedure Tf_trocanum.FormClose(Sender: TObject; var Action: TCloseAction);
begin
{action := cafree;
f_trocanum := nil;
f_mscomex.TrocaNumerao1.enabled := true;}

end;

procedure Tf_trocanum.FormCreate(Sender: TObject);
begin
t_parametros.open;
t_processos.open;
end;

end.
