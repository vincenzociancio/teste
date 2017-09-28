using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using MS2000WEB.Models.Mapping;

namespace MS2000WEB.Models
{
    public partial class MS2000Context : DbContext
    {
        static MS2000Context()
        {
            Database.SetInitializer<MS2000Context>(null);
        }

        public MS2000Context()
            : base("Name=MS2000Context")
        {
            this.Configuration.LazyLoadingEnabled = false;
            this.Configuration.AutoDetectChangesEnabled = false;
        }

        public DbSet<Acesso> Acessoes { get; set; }
        public DbSet<AcessoAcaoEspecifica> AcessoAcaoEspecificas { get; set; }
        public DbSet<AcessoAcaoEspecificaGrupo> AcessoAcaoEspecificaGrupoes { get; set; }
        public DbSet<AcessoGrupos> AcessoGrupos { get; set; }
        public DbSet<AcessoGrupoUsuario> AcessoGrupoUsuarios { get; set; }
        public DbSet<AcessoPaginaGrupo> AcessoPaginaGrupoes { get; set; }
        public DbSet<AcessoPagina> AcessoPaginas { get; set; }
        public DbSet<Acresc_ATAereo> Acresc_ATAereo { get; set; }
        public DbSet<Acrescimos_Faturas> Acrescimos_Faturas { get; set; }
        public DbSet<Acrescimos_ICMS> Acrescimos_ICMS { get; set; }
        public DbSet<Acrescimos_ICMS_CD> Acrescimos_ICMS_CD { get; set; }
        public DbSet<Adesao_Laboral> Adesao_Laboral { get; set; }
        public DbSet<Ajudante> Ajudantes { get; set; }
        public DbSet<Anl_Des_Analises> Anl_Des_Analises { get; set; }
        public DbSet<Anl_Des_Competencias> Anl_Des_Competencias { get; set; }
        public DbSet<Anl_Des_Controle_Hierarquia> Anl_Des_Controle_Hierarquia { get; set; }
        public DbSet<Anl_Des_Hierarquia_Analise> Anl_Des_Hierarquia_Analise { get; set; }
        public DbSet<Anl_Des_Opinioes_Sugestoes> Anl_Des_Opinioes_Sugestoes { get; set; }
        public DbSet<Anl_Des_Perguntas> Anl_Des_Perguntas { get; set; }
        public DbSet<Anl_Des_Resultados> Anl_Des_Resultados { get; set; }
        public DbSet<apen_temp> apen_temp { get; set; }
        public DbSet<Apenc_Pendencias> Apenc_Pendencias { get; set; }
        public DbSet<Armazem> Armazems { get; set; }
        public DbSet<Armazem_Processo> Armazem_Processo { get; set; }
        public DbSet<Associacao_Numerario_Documento> Associacao_Numerario_Documento { get; set; }
        public DbSet<Atos_concessorios> Atos_concessorios { get; set; }
        public DbSet<Atos_Importador> Atos_Importador { get; set; }
        public DbSet<Atos_Legais> Atos_Legais { get; set; }
        public DbSet<Atos_subcontratadas> Atos_subcontratadas { get; set; }
        public DbSet<Atos_tipos_benefic> Atos_tipos_benefic { get; set; }
        public DbSet<ATUALIZANET> ATUALIZANETs { get; set; }
        public DbSet<Audita_Registro_DI> Audita_Registro_DI { get; set; }
        public DbSet<Autorizacao_Reg_Status> Autorizacao_Reg_Status { get; set; }
        public DbSet<Autorizacao_Registros> Autorizacao_Registros { get; set; }
        public DbSet<Autorizacao_Registros_Contas> Autorizacao_Registros_Contas { get; set; }
        public DbSet<Autorizacao_Registros_Contas_Clientes> Autorizacao_Registros_Contas_Clientes { get; set; }
        public DbSet<Avaliacao_Avaliacao> Avaliacao_Avaliacao { get; set; }
        public DbSet<Avaliacao_Categoria> Avaliacao_Categoria { get; set; }
        public DbSet<Avaliacao_Colaboradores> Avaliacao_Colaboradores { get; set; }
        public DbSet<Avaliacao_Perguntas> Avaliacao_Perguntas { get; set; }
        public DbSet<Avaliacao_Respostas> Avaliacao_Respostas { get; set; }
        public DbSet<Avaliacao_Respostas_Colaboradores> Avaliacao_Respostas_Colaboradores { get; set; }
        public DbSet<CAE> CAEs { get; set; }
        public DbSet<Cambio_antecipado> Cambio_antecipado { get; set; }
        public DbSet<Cambio_antecipado_faturas> Cambio_antecipado_faturas { get; set; }
        public DbSet<Canai> Canais { get; set; }
        public DbSet<Canais_Ing> Canais_Ing { get; set; }
        public DbSet<Centros_Custos> Centros_Custos { get; set; }
        public DbSet<Certificado> Certificados { get; set; }
        public DbSet<Concarga> Concargas { get; set; }
        public DbSet<Conhecimento_Processo> Conhecimento_Processo { get; set; }
        public DbSet<Consumo_Energia> Consumo_Energia { get; set; }
        public DbSet<Conta> Contas { get; set; }
        public DbSet<Contas_a_Pagar> Contas_a_Pagar { get; set; }
        public DbSet<Contas_a_Pagar_Pagamentos> Contas_a_Pagar_Pagamentos { get; set; }
        public DbSet<Contas_Correntes> Contas_Correntes { get; set; }
        public DbSet<Contas_Receber> Contas_Receber { get; set; }
        public DbSet<Contatos_Importadores> Contatos_Importadores { get; set; }
        public DbSet<Contrato> Contratos { get; set; }
        public DbSet<contratos_cadastrados_financeiro> contratos_cadastrados_financeiro { get; set; }
        public DbSet<contratos_cadastrados_upload> contratos_cadastrados_upload { get; set; }
        public DbSet<Contratos_Fornecedores_Cadastrados_Financeiro> Contratos_Fornecedores_Cadastrados_Financeiro { get; set; }
        public DbSet<Contratos_Fornecedores_Cadastrados_Upload> Contratos_Fornecedores_Cadastrados_Upload { get; set; }
        public DbSet<Contratos_R> Contratos_R { get; set; }
        public DbSet<Controle_ADE_Andamento> Controle_ADE_Andamento { get; set; }
        public DbSet<Controle_ADE_Deferido> Controle_ADE_Deferido { get; set; }
        public DbSet<Controle_ADE_Deferido_Anexo> Controle_ADE_Deferido_Anexo { get; set; }
        public DbSet<Controle_ADE_Fiscais> Controle_ADE_Fiscais { get; set; }
        public DbSet<Controle_ADE_Status> Controle_ADE_Status { get; set; }
        public DbSet<Controle_ADE_Tipo> Controle_ADE_Tipo { get; set; }
        public DbSet<Controle_APEN_TV> Controle_APEN_TV { get; set; }
        public DbSet<Controle_APEN_TV_Relatorio> Controle_APEN_TV_Relatorio { get; set; }
        public DbSet<Controle_APEN_TV_Visualizar> Controle_APEN_TV_Visualizar { get; set; }
        public DbSet<Controle_Atas> Controle_Atas { get; set; }
        public DbSet<Controle_Atas_Arquivos> Controle_Atas_Arquivos { get; set; }
        public DbSet<Controle_Atas_Participantes> Controle_Atas_Participantes { get; set; }
        public DbSet<Controle_BL> Controle_BL { get; set; }
        public DbSet<Controle_de_Tributos> Controle_de_Tributos { get; set; }
        public DbSet<Controle_Hierarquico_Celulas> Controle_Hierarquico_Celulas { get; set; }
        public DbSet<Controle_Hierarquico_Clientes_Cel> Controle_Hierarquico_Clientes_Cel { get; set; }
        public DbSet<Controle_Hierarquico_Colaborador> Controle_Hierarquico_Colaborador { get; set; }
        public DbSet<Controle_Hierarquico_Colaborador_Cel> Controle_Hierarquico_Colaborador_Cel { get; set; }
        public DbSet<Controle_Hierarquico_Operacoes> Controle_Hierarquico_Operacoes { get; set; }
        public DbSet<Controle_IPS> Controle_IPS { get; set; }
        public DbSet<Controle_MDOC_TV> Controle_MDOC_TV { get; set; }
        public DbSet<Controle_Medicao> Controle_Medicao { get; set; }
        public DbSet<Controle_Medicao_Itens> Controle_Medicao_Itens { get; set; }
        public DbSet<Controle_Navios> Controle_Navios { get; set; }
        public DbSet<Controle_Navios_Chegada> Controle_Navios_Chegada { get; set; }
        public DbSet<Controle_Navios_Processos> Controle_Navios_Processos { get; set; }
        public DbSet<Controle_Navios_Terminal> Controle_Navios_Terminal { get; set; }
        public DbSet<Controle_normas_setor> Controle_normas_setor { get; set; }
        public DbSet<controle_normas_setor_subsetor> controle_normas_setor_subsetor { get; set; }
        public DbSet<Controle_Numerarios> Controle_Numerarios { get; set; }
        public DbSet<Controle_Numerarios_Movimentos> Controle_Numerarios_Movimentos { get; set; }
        public DbSet<Controle_Numerarios_Solicitacao> Controle_Numerarios_Solicitacao { get; set; }
        public DbSet<Controle_Numerarios_Status> Controle_Numerarios_Status { get; set; }
        public DbSet<Controle_Papel> Controle_Papel { get; set; }
        public DbSet<Controle_Pastas> Controle_Pastas { get; set; }
        public DbSet<Controle_Pastas_Nivel_Usuario> Controle_Pastas_Nivel_Usuario { get; set; }
        public DbSet<Controle_Pastas_Nivel_Usuario_Historico> Controle_Pastas_Nivel_Usuario_Historico { get; set; }
        public DbSet<Controle_Rede_Logica> Controle_Rede_Logica { get; set; }
        public DbSet<Controle_Rede_Logica_PATCHPANELS> Controle_Rede_Logica_PATCHPANELS { get; set; }
        public DbSet<Controle_Rede_Logica_SWITCHS> Controle_Rede_Logica_SWITCHS { get; set; }
        public DbSet<Controle_Rede_Telefonia> Controle_Rede_Telefonia { get; set; }
        public DbSet<Controle_Rede_Telefonia_ID01> Controle_Rede_Telefonia_ID01 { get; set; }
        public DbSet<Controle_Rede_Telefonia_ID02> Controle_Rede_Telefonia_ID02 { get; set; }
        public DbSet<Controle_Softwares> Controle_Softwares { get; set; }
        public DbSet<Controle_TR> Controle_TR { get; set; }
        public DbSet<Controle_TVs> Controle_TVs { get; set; }
        public DbSet<Controle_TVs_Importadores> Controle_TVs_Importadores { get; set; }
        public DbSet<Controle_TVs_Programas> Controle_TVs_Programas { get; set; }
        public DbSet<Controle_Usuarios_Senhas> Controle_Usuarios_Senhas { get; set; }
        public DbSet<Correco> Correcoes { get; set; }
        public DbSet<Correcoes_Receber> Correcoes_Receber { get; set; }
        public DbSet<CPF_AUDITORES_FISCAIS> CPF_AUDITORES_FISCAIS { get; set; }
        public DbSet<Creditos_Processos> Creditos_Processos { get; set; }
        public DbSet<Custos_Processos> Custos_Processos { get; set; }
        public DbSet<Custos_Processos_web> Custos_Processos_web { get; set; }
        public DbSet<Custos_Unitarios> Custos_Unitarios { get; set; }
        public DbSet<Custos_Unitarios_web> Custos_Unitarios_web { get; set; }
        public DbSet<Deducoes_Faturas> Deducoes_Faturas { get; set; }
        public DbSet<Denuncia> Denuncias { get; set; }
        public DbSet<Destinatario> Destinatarios { get; set; }
        public DbSet<Dic_Campos> Dic_Campos { get; set; }
        public DbSet<Dic_Detalhes> Dic_Detalhes { get; set; }
        public DbSet<Dic_Tabelas> Dic_Tabelas { get; set; }
        public DbSet<Documento> Documentos { get; set; }
        public DbSet<Documentos_excluidos> Documentos_excluidos { get; set; }
        public DbSet<Documentos_NEW> Documentos_NEW { get; set; }
        public DbSet<Documentos_Relatorios_parametrizacao> Documentos_Relatorios_parametrizacao { get; set; }
        public DbSet<Documentos_Relatorios_Parametrizacao_status> Documentos_Relatorios_Parametrizacao_status { get; set; }
        public DbSet<Documentos_Relatorios_Parametrizacao_Tipo> Documentos_Relatorios_Parametrizacao_Tipo { get; set; }
        public DbSet<Email_auto> Email_auto { get; set; }
        public DbSet<Emails_avisos> Emails_avisos { get; set; }
        public DbSet<Emails_avisos_MS2000> Emails_avisos_MS2000 { get; set; }
        public DbSet<Embalagem_Processo> Embalagem_Processo { get; set; }
        public DbSet<Empresa> Empresas { get; set; }
        public DbSet<Entrada> Entradas { get; set; }
        public DbSet<Envia_email_docs> Envia_email_docs { get; set; }
        public DbSet<Evento> Eventos { get; set; }
        public DbSet<Eventos_Grupos> Eventos_Grupos { get; set; }
        public DbSet<Eventos_Ing> Eventos_Ing { get; set; }
        public DbSet<Exportadore> Exportadores { get; set; }
        public DbSet<Extrato_CC_Web> Extrato_CC_Web { get; set; }
        public DbSet<Extrato_MCC> Extrato_MCC { get; set; }
        public DbSet<Extrato_temp> Extrato_temp { get; set; }
        public DbSet<Fabricantes_Produtores> Fabricantes_Produtores { get; set; }
        public DbSet<Faixas_Desembaraco> Faixas_Desembaraco { get; set; }
        public DbSet<Faturamento_Check_List> Faturamento_Check_List { get; set; }
        public DbSet<Faturamento_Check_List_Itens> Faturamento_Check_List_Itens { get; set; }
        public DbSet<Faturamento_Declaracao_Origem> Faturamento_Declaracao_Origem { get; set; }
        public DbSet<Faturamento_Notas_Credito> Faturamento_Notas_Credito { get; set; }
        public DbSet<Faturamento_Notas_Debito> Faturamento_Notas_Debito { get; set; }
        public DbSet<Faturamento_Recibos> Faturamento_Recibos { get; set; }
        public DbSet<Fatura> Faturas { get; set; }
        public DbSet<Faturas_mov> Faturas_mov { get; set; }
        public DbSet<Faturas_old> Faturas_old { get; set; }
        public DbSet<Feriado> Feriados { get; set; }
        public DbSet<Fiadore> Fiadores { get; set; }
        public DbSet<Fiel_Depositario> Fiel_Depositario { get; set; }
        public DbSet<Filiai> Filiais { get; set; }
        public DbSet<Follow_Excecoes_Numerarios_Importador> Follow_Excecoes_Numerarios_Importador { get; set; }
        public DbSet<Followup> Followups { get; set; }
        public DbSet<FollowUp_Check> FollowUp_Check { get; set; }
        public DbSet<FollowUp_Check_Clientes> FollowUp_Check_Clientes { get; set; }
        public DbSet<FollowUp_Check_Rejeicao_Relacao> FollowUp_Check_Rejeicao_Relacao { get; set; }
        public DbSet<FollowUp_Check_Rejeicao_Tipo> FollowUp_Check_Rejeicao_Tipo { get; set; }
        public DbSet<FollowUp_Check_Tipo_Processo> FollowUp_Check_Tipo_Processo { get; set; }
        public DbSet<FollowUp_Check_Universo> FollowUp_Check_Universo { get; set; }
        public DbSet<Followup_comercial> Followup_comercial { get; set; }
        public DbSet<FollowUp_Indicador_Pendencia> FollowUp_Indicador_Pendencia { get; set; }
        public DbSet<Followup_Resumido> Followup_Resumido { get; set; }
        public DbSet<Forma_Admissao> Forma_Admissao { get; set; }
        public DbSet<Forma_de_Pagamento> Forma_de_Pagamento { get; set; }
        public DbSet<Fornecedore> Fornecedores { get; set; }
        public DbSet<Fornecedores_Empresa> Fornecedores_Empresa { get; set; }
        public DbSet<Fras> Frases { get; set; }
        public DbSet<Frequencia_Acidente> Frequencia_Acidente { get; set; }
        public DbSet<Fundamentacao_RCR> Fundamentacao_RCR { get; set; }
        public DbSet<Fundamento_Legal_ICMS> Fundamento_Legal_ICMS { get; set; }
        public DbSet<Greve> Greves { get; set; }
        public DbSet<GUIAtemp> GUIAtemps { get; set; }
        public DbSet<Hitorico_Fragmentacao_Indice> Hitorico_Fragmentacao_Indice { get; set; }
        public DbSet<Hora_Extra> Hora_Extra { get; set; }
        public DbSet<Importador_Processo_FundoFIXO> Importador_Processo_FundoFIXO { get; set; }
        public DbSet<Importadore> Importadores { get; set; }
        public DbSet<Importadores_Agrupados> Importadores_Agrupados { get; set; }
        public DbSet<Importadores_Autorizacoes> Importadores_Autorizacoes { get; set; }
        public DbSet<Importadores_Extratos> Importadores_Extratos { get; set; }
        public DbSet<Importadores_Grupos> Importadores_Grupos { get; set; }
        public DbSet<Importadores_Radar> Importadores_Radar { get; set; }
        public DbSet<Inventario> Inventarios { get; set; }
        public DbSet<ISO_Letreiro> ISO_Letreiro { get; set; }
        public DbSet<Itens_Faturas_Mov> Itens_Faturas_Mov { get; set; }
        public DbSet<ItensFatura> ItensFaturas { get; set; }
        public DbSet<ItensFaturas_LOG> ItensFaturas_LOG { get; set; }
        public DbSet<ItensFaturas2> ItensFaturas2 { get; set; }
        public DbSet<Locais_Inventario> Locais_Inventario { get; set; }
        public DbSet<Log_Documentos> Log_Documentos { get; set; }
        public DbSet<LOGNET> LOGNETs { get; set; }
        public DbSet<LOGSI> LOGSIS { get; set; }
        public DbSet<Menu> Menus { get; set; }
        public DbSet<Mes> Meses { get; set; }
        public DbSet<Monitor_processamentos> Monitor_processamentos { get; set; }
        public DbSet<Monitoracao_Documentos> Monitoracao_Documentos { get; set; }
        public DbSet<Movimentacao_Contas_Correntes> Movimentacao_Contas_Correntes { get; set; }
        public DbSet<Movimentacao_pastas> Movimentacao_pastas { get; set; }
        public DbSet<Movimentacao_Repetro> Movimentacao_Repetro { get; set; }
        public DbSet<Movimentacao_Repetro_copia> Movimentacao_Repetro_copia { get; set; }
        public DbSet<Movimentacao_Repetro_TESTE> Movimentacao_Repetro_TESTE { get; set; }
        public DbSet<Movimentacao_Usuarios> Movimentacao_Usuarios { get; set; }
        public DbSet<MSAVISA_AVISOS> MSAVISA_AVISOS { get; set; }
        public DbSet<MSLINK> MSLINKS { get; set; }
        public DbSet<MSLINKS_en> MSLINKS_en { get; set; }
        public DbSet<MSLOGIN_Usuarios> MSLOGIN_Usuarios { get; set; }
        public DbSet<MSTreinamento> MSTreinamentoes { get; set; }
        public DbSet<Nao_Conformidade> Nao_Conformidade { get; set; }
        public DbSet<Natureza_de_Operacao> Natureza_de_Operacao { get; set; }
        public DbSet<NCM_COM_LI> NCM_COM_LI { get; set; }
        public DbSet<NCM_COM_LI_LOG> NCM_COM_LI_LOG { get; set; }
        public DbSet<NF_Web> NF_Web { get; set; }
        public DbSet<NF_Web_detalhes> NF_Web_detalhes { get; set; }
        public DbSet<NF_Web_detalhes_Temp> NF_Web_detalhes_Temp { get; set; }
        public DbSet<NF_Web_ICMS> NF_Web_ICMS { get; set; }
        public DbSet<NF_Web_Natoper> NF_Web_Natoper { get; set; }
        public DbSet<NF_Web_Numerador> NF_Web_Numerador { get; set; }
        public DbSet<NFDetalhe> NFDetalhes { get; set; }
        public DbSet<NFiscai> NFiscais { get; set; }
        public DbSet<Normas_gerencia_Proc> Normas_gerencia_Proc { get; set; }
        public DbSet<Normas_Usuario_Setor> Normas_Usuario_Setor { get; set; }
        public DbSet<Notas_Fiscais> Notas_Fiscais { get; set; }
        public DbSet<Notas_Fiscais_Detalhes> Notas_Fiscais_Detalhes { get; set; }
        public DbSet<Notas_Fiscais_Servicos> Notas_Fiscais_Servicos { get; set; }
        public DbSet<Notas_Fiscais_Servicos_Detalhes> Notas_Fiscais_Servicos_Detalhes { get; set; }
        public DbSet<Notas_Fiscais_Servicos_Importadores> Notas_Fiscais_Servicos_Importadores { get; set; }
        public DbSet<Notas_Fiscais_Servicos_Processos> Notas_Fiscais_Servicos_Processos { get; set; }
        public DbSet<Numerador_Importacao_Dados> Numerador_Importacao_Dados { get; set; }
        public DbSet<Numerador_Notas_Fiscais> Numerador_Notas_Fiscais { get; set; }
        public DbSet<Numerarios_Processos> Numerarios_Processos { get; set; }
        public DbSet<Numerarios_Processos_backup> Numerarios_Processos_backup { get; set; }
        public DbSet<Obs_Eventos> Obs_Eventos { get; set; }
        public DbSet<Obs_Eventos_Ing> Obs_Eventos_Ing { get; set; }
        public DbSet<Observacoes_Processo_Financeiro> Observacoes_Processo_Financeiro { get; set; }
        public DbSet<Observacoes_Termo_Responsabilidade> Observacoes_Termo_Responsabilidade { get; set; }
        public DbSet<Observacoes_verso_TR> Observacoes_verso_TR { get; set; }
        public DbSet<Pagamento> Pagamentos { get; set; }
        public DbSet<Pagamentos_Receber> Pagamentos_Receber { get; set; }
        public DbSet<paramentros_contabilizatemp> paramentros_contabilizatemp { get; set; }
        public DbSet<Parametro> Parametros { get; set; }
        public DbSet<Parametros_Contabilizacao> Parametros_Contabilizacao { get; set; }
        public DbSet<Parametros_Faturamento> Parametros_Faturamento { get; set; }
        public DbSet<Parametros_NF_Servicos> Parametros_NF_Servicos { get; set; }
        public DbSet<Parametros_Sol_Numerarios> Parametros_Sol_Numerarios { get; set; }
        public DbSet<Patrimonio> Patrimonios { get; set; }
        public DbSet<PG_PARC_VAR> PG_PARC_VAR { get; set; }
        public DbSet<PG_PERC_VINC> PG_PERC_VINC { get; set; }
        public DbSet<Plan1> Plan1 { get; set; }
        public DbSet<Planilha_BRASDRIL> Planilha_BRASDRIL { get; set; }
        public DbSet<Planilha_BRASDRIL_Itens> Planilha_BRASDRIL_Itens { get; set; }
        public DbSet<Planilha_Brasdril_Quinzenal_Financeiro> Planilha_Brasdril_Quinzenal_Financeiro { get; set; }
        public DbSet<Planilha_Brasdril_Quinzenal_Financeiro_Itens> Planilha_Brasdril_Quinzenal_Financeiro_Itens { get; set; }
        public DbSet<Planilha_BRASDRIL_Status> Planilha_BRASDRIL_Status { get; set; }
        public DbSet<PLANILHA_FINAL> PLANILHA_FINAL { get; set; }
        public DbSet<PLANILHA_FORMATO> PLANILHA_FORMATO { get; set; }
        public DbSet<Planilha_Medicao_Honorarios> Planilha_Medicao_Honorarios { get; set; }
        public DbSet<Planilha_Medicao_Honorarios_Itens> Planilha_Medicao_Honorarios_Itens { get; set; }
        public DbSet<Planilha_PrestContas_Financeiro> Planilha_PrestContas_Financeiro { get; set; }
        public DbSet<Planilha_PrestContas_Financeiro_Itens> Planilha_PrestContas_Financeiro_Itens { get; set; }
        public DbSet<Planilha_PrestContasDespesas_Financeiro> Planilha_PrestContasDespesas_Financeiro { get; set; }
        public DbSet<Planilha_PrestContasDespesas_Financeiro_Itens> Planilha_PrestContasDespesas_Financeiro_Itens { get; set; }
        public DbSet<Planilha_Transocean> Planilha_Transocean { get; set; }
        public DbSet<Planilha_Transocean_Itens> Planilha_Transocean_Itens { get; set; }
        public DbSet<Planilha_Transocean_Status> Planilha_Transocean_Status { get; set; }
        public DbSet<Plano_Contas> Plano_Contas { get; set; }
        public DbSet<Plataforma> Plataformas { get; set; }
        public DbSet<Pre_Classificacao> Pre_Classificacao { get; set; }
        public DbSet<Pre_Classificacao_Importador_Layout> Pre_Classificacao_Importador_Layout { get; set; }
        public DbSet<Pre_Classificacao_Layout> Pre_Classificacao_Layout { get; set; }
        public DbSet<Pre_Classificacao_Matriz> Pre_Classificacao_Matriz { get; set; }
        public DbSet<Pre_Classificacao_Old> Pre_Classificacao_Old { get; set; }
        public DbSet<Pre_Documentos> Pre_Documentos { get; set; }
        public DbSet<Pre_Followup> Pre_Followup { get; set; }
        public DbSet<Pre_Processos> Pre_Processos { get; set; }
        public DbSet<Pre_Processos_Emails> Pre_Processos_Emails { get; set; }
        public DbSet<Pre_Processos_Emails_Anexos> Pre_Processos_Emails_Anexos { get; set; }
        public DbSet<Pre_Relacao_Processos> Pre_Relacao_Processos { get; set; }
        public DbSet<Processo_Carta_Garantidor> Processo_Carta_Garantidor { get; set; }
        public DbSet<Processo> Processos { get; set; }
        public DbSet<Processos_Abertos> Processos_Abertos { get; set; }
        public DbSet<Processos_Adicoes> Processos_Adicoes { get; set; }
        public DbSet<Processos_ADICOES_ICMS_PIS_COFINS> Processos_ADICOES_ICMS_PIS_COFINS { get; set; }
        public DbSet<Processos_AFAT> Processos_AFAT { get; set; }
        public DbSet<Processos_ALC> Processos_ALC { get; set; }
        public DbSet<Processos_Anexo> Processos_Anexo { get; set; }
        public DbSet<Processos_Docs_Instrucao> Processos_Docs_Instrucao { get; set; }
        public DbSet<Processos_EDI_CIE01> Processos_EDI_CIE01 { get; set; }
        public DbSet<Processos_Emails> Processos_Emails { get; set; }
        public DbSet<Processos_Emails_Anexos> Processos_Emails_Anexos { get; set; }
        public DbSet<Processos_Emails_Tipo_Anexos> Processos_Emails_Tipo_Anexos { get; set; }
        public DbSet<Processos_Extratos> Processos_Extratos { get; set; }
        public DbSet<Processos_Impostos> Processos_Impostos { get; set; }
        public DbSet<Processos_Impostos_Parametros> Processos_Impostos_Parametros { get; set; }
        public DbSet<Processos_Numerador> Processos_Numerador { get; set; }
        public DbSet<Processos_registro_impostos> Processos_registro_impostos { get; set; }
        public DbSet<Processos_REs> Processos_REs { get; set; }
        public DbSet<Processos_Responsabilidades> Processos_Responsabilidades { get; set; }
        public DbSet<Processos_Taxas_Conversao> Processos_Taxas_Conversao { get; set; }
        public DbSet<PROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHA> PROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHA { get; set; }
        public DbSet<Processos_Taxas_ConversaoDoDiaSeguinte> Processos_Taxas_ConversaoDoDiaSeguinte { get; set; }
        public DbSet<Processos_Timeline> Processos_Timeline { get; set; }
        public DbSet<Processos_Timeline_temp> Processos_Timeline_temp { get; set; }
        public DbSet<Processos_Tipo_Urgencia> Processos_Tipo_Urgencia { get; set; }
        public DbSet<Processos_Visao_Geral> Processos_Visao_Geral { get; set; }
        public DbSet<Processos1> Processos1 { get; set; }
        public DbSet<Processos2> Processos2 { get; set; }
        public DbSet<Processou_imp_siscomex> Processou_imp_siscomex { get; set; }
        public DbSet<Procuradore> Procuradores { get; set; }
        public DbSet<produtoslogreve> produtoslogreves { get; set; }
        public DbSet<Produtosnew> Produtosnews { get; set; }
        public DbSet<Proposta_de_acao> Proposta_de_acao { get; set; }
        public DbSet<Questionario_Alternativas> Questionario_Alternativas { get; set; }
        public DbSet<Questionario_Controle> Questionario_Controle { get; set; }
        public DbSet<Questionario_Perguntas> Questionario_Perguntas { get; set; }
        public DbSet<Questionario_Questionario> Questionario_Questionario { get; set; }
        public DbSet<Questionario_Respostas> Questionario_Respostas { get; set; }
        public DbSet<Questionario_Senhas> Questionario_Senhas { get; set; }
        public DbSet<RAT> RATs { get; set; }
        public DbSet<RAT_Prorrogacao> RAT_Prorrogacao { get; set; }
        public DbSet<RAT_Repetro> RAT_Repetro { get; set; }
        public DbSet<RCRtemp> RCRtemps { get; set; }
        public DbSet<Relacao_Itens_Processo_PreProcesso> Relacao_Itens_Processo_PreProcesso { get; set; }
        public DbSet<Relatorio_Follows_KPI> Relatorio_Follows_KPI { get; set; }
        public DbSet<Repetro> Repetroes { get; set; }
        public DbSet<Repetro_Ajustar> Repetro_Ajustar { get; set; }
        public DbSet<Repetro_INCLUSAO_DIS> Repetro_INCLUSAO_DIS { get; set; }
        public DbSet<REPETRO_RTC> REPETRO_RTC { get; set; }
        public DbSet<REPETRO_RTC_D> REPETRO_RTC_D { get; set; }
        public DbSet<REPETRO_RTC_D1> REPETRO_RTC_D1 { get; set; }
        public DbSet<REPETRO_RTC_ITENS> REPETRO_RTC_ITENS { get; set; }
        public DbSet<REPETRO_RTC_ITENS_D> REPETRO_RTC_ITENS_D { get; set; }
        public DbSet<REPETRO_RTC_ITENS_D1> REPETRO_RTC_ITENS_D1 { get; set; }
        public DbSet<Repetro_temp> Repetro_temp { get; set; }
        public DbSet<Repetro1> Repetro1 { get; set; }
        public DbSet<Repetro2> Repetro2 { get; set; }
        public DbSet<Repetrodescnull> Repetrodescnulls { get; set; }
        public DbSet<RepetroLogUsuario> RepetroLogUsuarios { get; set; }
        public DbSet<RepetroMARINE> RepetroMARINEs { get; set; }
        public DbSet<RepetroTEMP> RepetroTEMPs { get; set; }
        public DbSet<Responsaveis_por_Importador> Responsaveis_por_Importador { get; set; }
        public DbSet<RH_Admissao> RH_Admissao { get; set; }
        public DbSet<RH_Cor> RH_Cor { get; set; }
        public DbSet<RH_Desligamento> RH_Desligamento { get; set; }
        public DbSet<RH_Empregados> RH_Empregados { get; set; }
        public DbSet<RH_Escolaridade> RH_Escolaridade { get; set; }
        public DbSet<RH_Formularios> RH_Formularios { get; set; }
        public DbSet<RH_Funcao> RH_Funcao { get; set; }
        public DbSet<RH_Nacionalidade> RH_Nacionalidade { get; set; }
        public DbSet<RMBR> RMBRs { get; set; }
        public DbSet<Rotatividade_Funcionario> Rotatividade_Funcionario { get; set; }
        public DbSet<RPRtemp> RPRtemps { get; set; }
        public DbSet<SAC> SACs { get; set; }
        public DbSet<Sac_User> Sac_User { get; set; }
        public DbSet<Salarios_Minimos> Salarios_Minimos { get; set; }
        public DbSet<Saldos_diarios> Saldos_diarios { get; set; }
        public DbSet<Satisfacao_Perguntas> Satisfacao_Perguntas { get; set; }
        public DbSet<Satisfacao_Questionario> Satisfacao_Questionario { get; set; }
        public DbSet<Satisfacao_Respostas> Satisfacao_Respostas { get; set; }
        public DbSet<Satisfacao_Usuario> Satisfacao_Usuario { get; set; }
        public DbSet<Seadriil_Relatorio_temp> Seadriil_Relatorio_temp { get; set; }
        public DbSet<Setore> Setores { get; set; }
        public DbSet<Siscomex_Atualizacao_Maquinas> Siscomex_Atualizacao_Maquinas { get; set; }
        public DbSet<Siscomex_Atualizacao_Tabelas> Siscomex_Atualizacao_Tabelas { get; set; }
        public DbSet<Software> Softwares { get; set; }
        public DbSet<Solicitacao_Cheques> Solicitacao_Cheques { get; set; }
        public DbSet<Solicitacao_Cheques_Itens> Solicitacao_Cheques_Itens { get; set; }
        public DbSet<Solicitacao_Cheques_Status> Solicitacao_Cheques_Status { get; set; }
        public DbSet<Solicitacao_Tracla> Solicitacao_Tracla { get; set; }
        public DbSet<Solicitacao_Tracla_Itens> Solicitacao_Tracla_Itens { get; set; }
        public DbSet<Solicitacao_Tracla_Status> Solicitacao_Tracla_Status { get; set; }
        public DbSet<Status_Patrimonio> Status_Patrimonio { get; set; }
        public DbSet<Sub_Tipo_Documentos> Sub_Tipo_Documentos { get; set; }
        public DbSet<Sub_Tipo_Documentos_Ing> Sub_Tipo_Documentos_Ing { get; set; }
        public DbSet<Sub_Tipo_Patrimonio> Sub_Tipo_Patrimonio { get; set; }
        public DbSet<sysdiagram> sysdiagrams { get; set; }
        public DbSet<TAB_ALADI> TAB_ALADI { get; set; }
        public DbSet<TAB_ATRIB_VALORACAO_NVE> TAB_ATRIB_VALORACAO_NVE { get; set; }
        public DbSet<TAB_CONVERSAO_CAMBIO> TAB_CONVERSAO_CAMBIO { get; set; }
        public DbSet<TAB_DOC_INSTRUCAO_DESPACHO> TAB_DOC_INSTRUCAO_DESPACHO { get; set; }
        public DbSet<TAB_FUND_LEGAL_PIS_COFINS> TAB_FUND_LEGAL_PIS_COFINS { get; set; }
        public DbSet<TAB_INCOTERMS_VENDA> TAB_INCOTERMS_VENDA { get; set; }
        public DbSet<TAB_INST_FINANC_INTERNACIONAL> TAB_INST_FINANC_INTERNACIONAL { get; set; }
        public DbSet<TAB_MODALID_PAGAMENTO> TAB_MODALID_PAGAMENTO { get; set; }
        public DbSet<TAB_MOEDA> TAB_MOEDA { get; set; }
        public DbSet<TAB_MOEDA_CONVERSAO> TAB_MOEDA_CONVERSAO { get; set; }
        public DbSet<TAB_MOT_ADMISSAO_TEMP> TAB_MOT_ADMISSAO_TEMP { get; set; }
        public DbSet<TAB_MOT_SEM_COBERT_CAMBIAL> TAB_MOT_SEM_COBERT_CAMBIAL { get; set; }
        public DbSet<TAB_NALADISH> TAB_NALADISH { get; set; }
        public DbSet<TAB_NCM> TAB_NCM { get; set; }
        public DbSet<TAB_NCM_ING> TAB_NCM_ING { get; set; }
        public DbSet<TAB_PAIS> TAB_PAIS { get; set; }
        public DbSet<TAB_PAISnovo> TAB_PAISnovo { get; set; }
        public DbSet<TAB_REC_ALFANDEGADO> TAB_REC_ALFANDEGADO { get; set; }
        public DbSet<TAB_RECINTO_SETORES_IMPORTACAO> TAB_RECINTO_SETORES_IMPORTACAO { get; set; }
        public DbSet<TAB_REG_TRIBUTARIO> TAB_REG_TRIBUTARIO { get; set; }
        public DbSet<TAB_REGRAS_DSI_PIS_COFINS> TAB_REGRAS_DSI_PIS_COFINS { get; set; }
        public DbSet<TAB_TIPO_DECLARACAO> TAB_TIPO_DECLARACAO { get; set; }
        public DbSet<TAB_TIPO_DECLARACAO_Ing> TAB_TIPO_DECLARACAO_Ing { get; set; }
        public DbSet<TAB_TP_ATO_LEGAL> TAB_TP_ATO_LEGAL { get; set; }
        public DbSet<TAB_TP_EMBALAGEM> TAB_TP_EMBALAGEM { get; set; }
        public DbSet<TAB_TP_IMPORTADOR> TAB_TP_IMPORTADOR { get; set; }
        public DbSet<TAB_UF> TAB_UF { get; set; }
        public DbSet<TAB_UF_ALIQUOTAS> TAB_UF_ALIQUOTAS { get; set; }
        public DbSet<TAB_UNID_MEDIDA> TAB_UNID_MEDIDA { get; set; }
        public DbSet<TAB_UNID_MEDIDA_ing> TAB_UNID_MEDIDA_ing { get; set; }
        public DbSet<TAB_URF> TAB_URF { get; set; }
        public DbSet<TAB_VIA_TRANSPORTE> TAB_VIA_TRANSPORTE { get; set; }
        public DbSet<TAB_VIA_TRANSPORTE_Ing> TAB_VIA_TRANSPORTE_Ing { get; set; }        
        public DbSet<TB_RCR_OBS_ESPECIFICA> TB_RCR_OBS_ESPECIFICA { get; set; }
        public DbSet<tempdetalhe> tempdetalhes { get; set; }
        public DbSet<Termos_De_Responsabilidade> Termos_De_Responsabilidade { get; set; }
        public DbSet<Tipo_Doc_Carga> Tipo_Doc_Carga { get; set; }
        public DbSet<Tipo_Doc_Carga_Ing> Tipo_Doc_Carga_Ing { get; set; }
        public DbSet<Tipo_Doc_Chegada> Tipo_Doc_Chegada { get; set; }
        public DbSet<Tipo_Doc_Chegada_Ing> Tipo_Doc_Chegada_Ing { get; set; }
        public DbSet<Tipo_Documentos> Tipo_Documentos { get; set; }
        public DbSet<Tipo_Documentos_Ing> Tipo_Documentos_Ing { get; set; }
        public DbSet<Tipo_Patrimonio> Tipo_Patrimonio { get; set; }
        public DbSet<Tipo_Utilizacao> Tipo_Utilizacao { get; set; }
        public DbSet<Tipo_Utilizacao_Ing> Tipo_Utilizacao_Ing { get; set; }
        public DbSet<Tipo_Vinculacao> Tipo_Vinculacao { get; set; }
        public DbSet<Tipos_Certificados> Tipos_Certificados { get; set; }
        public DbSet<Tipos_contratos> Tipos_contratos { get; set; }
        public DbSet<Tipos_creditos> Tipos_creditos { get; set; }
        public DbSet<Tipos_creditos_ing> Tipos_creditos_ing { get; set; }
        public DbSet<Tipos_Custos> Tipos_Custos { get; set; }
        public DbSet<Tipos_custos_web> Tipos_custos_web { get; set; }
        public DbSet<Tipos_de_Cargas> Tipos_de_Cargas { get; set; }
        public DbSet<Tipos_de_Cargas_Ing> Tipos_de_Cargas_Ing { get; set; }
        public DbSet<Tipos_de_Notas_Fiscais> Tipos_de_Notas_Fiscais { get; set; }
        public DbSet<Tipos_de_Processos> Tipos_de_Processos { get; set; }
        public DbSet<Tipos_de_Processos_c_resp> Tipos_de_Processos_c_resp { get; set; }
        public DbSet<Tipos_de_Processos_Ing> Tipos_de_Processos_Ing { get; set; }
        public DbSet<Tipos_Email_Aviso> Tipos_Email_Aviso { get; set; }
        public DbSet<Tipos_Lancamento_Ccorrente> Tipos_Lancamento_Ccorrente { get; set; }
        public DbSet<Tipos_Locais_Inventario> Tipos_Locais_Inventario { get; set; }
        public DbSet<Tipos_Locais_Inventario_Ing> Tipos_Locais_Inventario_Ing { get; set; }
        public DbSet<Tipos_Movimentacao_Repetro> Tipos_Movimentacao_Repetro { get; set; }
        public DbSet<Tipos_Movimentacao_Repetro_Ing> Tipos_Movimentacao_Repetro_Ing { get; set; }
        public DbSet<Tipos_Movimentacao_Usuarios> Tipos_Movimentacao_Usuarios { get; set; }
        public DbSet<Tipos_NC> Tipos_NC { get; set; }
        public DbSet<Tipos_Numerario> Tipos_Numerario { get; set; }
        public DbSet<Tipos_Numerario_Ing> Tipos_Numerario_Ing { get; set; }
        public DbSet<Tipos_Numerario_Obrigatorio> Tipos_Numerario_Obrigatorio { get; set; }
        public DbSet<Tipos_Rateio> Tipos_Rateio { get; set; }
        public DbSet<Tipos_situacao_fiscal> Tipos_situacao_fiscal { get; set; }
        public DbSet<Tipos_situacao_fiscal_Ing> Tipos_situacao_fiscal_Ing { get; set; }
        public DbSet<Tipos_status_documentos> Tipos_status_documentos { get; set; }
        public DbSet<Tipos_status_documentos_Ing> Tipos_status_documentos_Ing { get; set; }
        public DbSet<Tipos_status_processos> Tipos_status_processos { get; set; }
        public DbSet<Tipos_status_processos_Ing> Tipos_status_processos_Ing { get; set; }
        public DbSet<Transmittal> Transmittals { get; set; }
        public DbSet<Transmittal_itens> Transmittal_itens { get; set; }
        public DbSet<Transmittal_teste> Transmittal_teste { get; set; }
        public DbSet<Transportadore> Transportadores { get; set; }
        public DbSet<Tratamento_Tributario_ICMS> Tratamento_Tributario_ICMS { get; set; }
        public DbSet<Tributacao_Item_Fatura> Tributacao_Item_Fatura { get; set; }
        public DbSet<USU> USUs { get; set; }
        public DbSet<Usuario_Follow_Aberto> Usuario_Follow_Aberto { get; set; }
        public DbSet<Usuario> Usuarios { get; set; }
        public DbSet<Usuarios_APEN> Usuarios_APEN { get; set; }
        public DbSet<usuarios_beneficio_repetro> usuarios_beneficio_repetro { get; set; }
        public DbSet<Usuarios_Log> Usuarios_Log { get; set; }
        public DbSet<Usuarios_Resp_habilitados> Usuarios_Resp_habilitados { get; set; }
        public DbSet<UsuariosCliente> UsuariosClientes { get; set; }
        public DbSet<UsuariosGrupo> UsuariosGrupoes { get; set; }
        public DbSet<UsuariosGrupoLocal> UsuariosGrupoLocals { get; set; }
        public DbSet<UsuariosMenu> UsuariosMenus { get; set; }
        public DbSet<UsuariosNET> UsuariosNETs { get; set; }
        public DbSet<via_tipo> via_tipo { get; set; }
        public DbSet<Voucher_Transocean> Voucher_Transocean { get; set; }
        public DbSet<Voucher_Transocean_Itens> Voucher_Transocean_Itens { get; set; }
        public DbSet<REPETRO_PLANILHA_GERAL> REPETRO_PLANILHA_GERAL { get; set; }
        public DbSet<verifica_repetro> verifica_repetro { get; set; }
        public DbSet<vRepetro_Itens_Entregues> vRepetro_Itens_Entregues { get; set; }
        public DbSet<vRepetro_Itens_Entregues_seadrill> vRepetro_Itens_Entregues_seadrill { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Configurations.Add(new AcessoMap());
            modelBuilder.Configurations.Add(new AcessoAcaoEspecificaMap());
            modelBuilder.Configurations.Add(new AcessoAcaoEspecificaGrupoMap());
            modelBuilder.Configurations.Add(new AcessoGruposMap());
            modelBuilder.Configurations.Add(new AcessoGrupoUsuarioMap());
            modelBuilder.Configurations.Add(new AcessoPaginaGrupoMap());
            modelBuilder.Configurations.Add(new AcessoPaginaMap());
            modelBuilder.Configurations.Add(new Acresc_ATAereoMap());
            modelBuilder.Configurations.Add(new Acrescimos_FaturasMap());
            modelBuilder.Configurations.Add(new Acrescimos_ICMSMap());
            modelBuilder.Configurations.Add(new Acrescimos_ICMS_CDMap());
            modelBuilder.Configurations.Add(new Adesao_LaboralMap());
            modelBuilder.Configurations.Add(new AjudanteMap());
            modelBuilder.Configurations.Add(new Anl_Des_AnalisesMap());
            modelBuilder.Configurations.Add(new Anl_Des_CompetenciasMap());
            modelBuilder.Configurations.Add(new Anl_Des_Controle_HierarquiaMap());
            modelBuilder.Configurations.Add(new Anl_Des_Hierarquia_AnaliseMap());
            modelBuilder.Configurations.Add(new Anl_Des_Opinioes_SugestoesMap());
            modelBuilder.Configurations.Add(new Anl_Des_PerguntasMap());
            modelBuilder.Configurations.Add(new Anl_Des_ResultadosMap());
            modelBuilder.Configurations.Add(new apen_tempMap());
            modelBuilder.Configurations.Add(new Apenc_PendenciasMap());
            modelBuilder.Configurations.Add(new ArmazemMap());
            modelBuilder.Configurations.Add(new Armazem_ProcessoMap());
            modelBuilder.Configurations.Add(new Associacao_Numerario_DocumentoMap());
            modelBuilder.Configurations.Add(new Atos_concessoriosMap());
            modelBuilder.Configurations.Add(new Atos_ImportadorMap());
            modelBuilder.Configurations.Add(new Atos_LegaisMap());
            modelBuilder.Configurations.Add(new Atos_subcontratadasMap());
            modelBuilder.Configurations.Add(new Atos_tipos_beneficMap());
            modelBuilder.Configurations.Add(new ATUALIZANETMap());
            modelBuilder.Configurations.Add(new Audita_Registro_DIMap());
            modelBuilder.Configurations.Add(new Autorizacao_Reg_StatusMap());
            modelBuilder.Configurations.Add(new Autorizacao_RegistrosMap());
            modelBuilder.Configurations.Add(new Autorizacao_Registros_ContasMap());
            modelBuilder.Configurations.Add(new Autorizacao_Registros_Contas_ClientesMap());
            modelBuilder.Configurations.Add(new Avaliacao_AvaliacaoMap());
            modelBuilder.Configurations.Add(new Avaliacao_CategoriaMap());
            modelBuilder.Configurations.Add(new Avaliacao_ColaboradoresMap());
            modelBuilder.Configurations.Add(new Avaliacao_PerguntasMap());
            modelBuilder.Configurations.Add(new Avaliacao_RespostasMap());
            modelBuilder.Configurations.Add(new Avaliacao_Respostas_ColaboradoresMap());
            modelBuilder.Configurations.Add(new CAEMap());
            modelBuilder.Configurations.Add(new Cambio_antecipadoMap());
            modelBuilder.Configurations.Add(new Cambio_antecipado_faturasMap());
            modelBuilder.Configurations.Add(new CanaiMap());
            modelBuilder.Configurations.Add(new Canais_IngMap());
            modelBuilder.Configurations.Add(new Centros_CustosMap());
            modelBuilder.Configurations.Add(new CertificadoMap());
            modelBuilder.Configurations.Add(new ConcargaMap());
            modelBuilder.Configurations.Add(new Conhecimento_ProcessoMap());
            modelBuilder.Configurations.Add(new Consumo_EnergiaMap());
            modelBuilder.Configurations.Add(new ContaMap());
            modelBuilder.Configurations.Add(new Contas_a_PagarMap());
            modelBuilder.Configurations.Add(new Contas_a_Pagar_PagamentosMap());
            modelBuilder.Configurations.Add(new Contas_CorrentesMap());
            modelBuilder.Configurations.Add(new Contas_ReceberMap());
            modelBuilder.Configurations.Add(new Contatos_ImportadoresMap());
            modelBuilder.Configurations.Add(new ContratoMap());
            modelBuilder.Configurations.Add(new contratos_cadastrados_financeiroMap());
            modelBuilder.Configurations.Add(new contratos_cadastrados_uploadMap());
            modelBuilder.Configurations.Add(new Contratos_Fornecedores_Cadastrados_FinanceiroMap());
            modelBuilder.Configurations.Add(new Contratos_Fornecedores_Cadastrados_UploadMap());
            modelBuilder.Configurations.Add(new Contratos_RMap());
            modelBuilder.Configurations.Add(new Controle_ADE_AndamentoMap());
            modelBuilder.Configurations.Add(new Controle_ADE_DeferidoMap());
            modelBuilder.Configurations.Add(new Controle_ADE_Deferido_AnexoMap());
            modelBuilder.Configurations.Add(new Controle_ADE_FiscaisMap());
            modelBuilder.Configurations.Add(new Controle_ADE_StatusMap());
            modelBuilder.Configurations.Add(new Controle_ADE_TipoMap());
            modelBuilder.Configurations.Add(new Controle_APEN_TVMap());
            modelBuilder.Configurations.Add(new Controle_APEN_TV_RelatorioMap());
            modelBuilder.Configurations.Add(new Controle_APEN_TV_VisualizarMap());
            modelBuilder.Configurations.Add(new Controle_AtasMap());
            modelBuilder.Configurations.Add(new Controle_Atas_ArquivosMap());
            modelBuilder.Configurations.Add(new Controle_Atas_ParticipantesMap());
            modelBuilder.Configurations.Add(new Controle_BLMap());
            modelBuilder.Configurations.Add(new Controle_de_TributosMap());
            modelBuilder.Configurations.Add(new Controle_Hierarquico_CelulasMap());
            modelBuilder.Configurations.Add(new Controle_Hierarquico_Clientes_CelMap());
            modelBuilder.Configurations.Add(new Controle_Hierarquico_ColaboradorMap());
            modelBuilder.Configurations.Add(new Controle_Hierarquico_Colaborador_CelMap());
            modelBuilder.Configurations.Add(new Controle_Hierarquico_OperacoesMap());
            modelBuilder.Configurations.Add(new Controle_IPSMap());
            modelBuilder.Configurations.Add(new Controle_MDOC_TVMap());
            modelBuilder.Configurations.Add(new Controle_MedicaoMap());
            modelBuilder.Configurations.Add(new Controle_Medicao_ItensMap());
            modelBuilder.Configurations.Add(new Controle_NaviosMap());
            modelBuilder.Configurations.Add(new Controle_Navios_ChegadaMap());
            modelBuilder.Configurations.Add(new Controle_Navios_ProcessosMap());
            modelBuilder.Configurations.Add(new Controle_Navios_TerminalMap());
            modelBuilder.Configurations.Add(new Controle_normas_setorMap());
            modelBuilder.Configurations.Add(new controle_normas_setor_subsetorMap());
            modelBuilder.Configurations.Add(new Controle_NumerariosMap());
            modelBuilder.Configurations.Add(new Controle_Numerarios_MovimentosMap());
            modelBuilder.Configurations.Add(new Controle_Numerarios_SolicitacaoMap());
            modelBuilder.Configurations.Add(new Controle_Numerarios_StatusMap());
            modelBuilder.Configurations.Add(new Controle_PapelMap());
            modelBuilder.Configurations.Add(new Controle_PastasMap());
            modelBuilder.Configurations.Add(new Controle_Pastas_Nivel_UsuarioMap());
            modelBuilder.Configurations.Add(new Controle_Pastas_Nivel_Usuario_HistoricoMap());
            modelBuilder.Configurations.Add(new Controle_Rede_LogicaMap());
            modelBuilder.Configurations.Add(new Controle_Rede_Logica_PATCHPANELSMap());
            modelBuilder.Configurations.Add(new Controle_Rede_Logica_SWITCHSMap());
            modelBuilder.Configurations.Add(new Controle_Rede_TelefoniaMap());
            modelBuilder.Configurations.Add(new Controle_Rede_Telefonia_ID01Map());
            modelBuilder.Configurations.Add(new Controle_Rede_Telefonia_ID02Map());
            modelBuilder.Configurations.Add(new Controle_SoftwaresMap());
            modelBuilder.Configurations.Add(new Controle_TRMap());
            modelBuilder.Configurations.Add(new Controle_TVsMap());
            modelBuilder.Configurations.Add(new Controle_TVs_ImportadoresMap());
            modelBuilder.Configurations.Add(new Controle_TVs_ProgramasMap());
            modelBuilder.Configurations.Add(new Controle_Usuarios_SenhasMap());
            modelBuilder.Configurations.Add(new CorrecoMap());
            modelBuilder.Configurations.Add(new Correcoes_ReceberMap());
            modelBuilder.Configurations.Add(new CPF_AUDITORES_FISCAISMap());
            modelBuilder.Configurations.Add(new Creditos_ProcessosMap());
            modelBuilder.Configurations.Add(new Custos_ProcessosMap());
            modelBuilder.Configurations.Add(new Custos_Processos_webMap());
            modelBuilder.Configurations.Add(new Custos_UnitariosMap());
            modelBuilder.Configurations.Add(new Custos_Unitarios_webMap());
            modelBuilder.Configurations.Add(new Deducoes_FaturasMap());
            modelBuilder.Configurations.Add(new DenunciaMap());
            modelBuilder.Configurations.Add(new DestinatarioMap());
            modelBuilder.Configurations.Add(new Dic_CamposMap());
            modelBuilder.Configurations.Add(new Dic_DetalhesMap());
            modelBuilder.Configurations.Add(new Dic_TabelasMap());
            modelBuilder.Configurations.Add(new DocumentoMap());
            modelBuilder.Configurations.Add(new Documentos_excluidosMap());
            modelBuilder.Configurations.Add(new Documentos_NEWMap());
            modelBuilder.Configurations.Add(new Documentos_Relatorios_parametrizacaoMap());
            modelBuilder.Configurations.Add(new Documentos_Relatorios_Parametrizacao_statusMap());
            modelBuilder.Configurations.Add(new Documentos_Relatorios_Parametrizacao_TipoMap());
            modelBuilder.Configurations.Add(new Email_autoMap());
            modelBuilder.Configurations.Add(new Emails_avisosMap());
            modelBuilder.Configurations.Add(new Emails_avisos_MS2000Map());
            modelBuilder.Configurations.Add(new Embalagem_ProcessoMap());
            modelBuilder.Configurations.Add(new EmpresaMap());
            modelBuilder.Configurations.Add(new EntradaMap());
            modelBuilder.Configurations.Add(new Envia_email_docsMap());
            modelBuilder.Configurations.Add(new EventoMap());
            modelBuilder.Configurations.Add(new Eventos_GruposMap());
            modelBuilder.Configurations.Add(new Eventos_IngMap());
            modelBuilder.Configurations.Add(new ExportadoreMap());
            modelBuilder.Configurations.Add(new Extrato_CC_WebMap());
            modelBuilder.Configurations.Add(new Extrato_MCCMap());
            modelBuilder.Configurations.Add(new Extrato_tempMap());
            modelBuilder.Configurations.Add(new Fabricantes_ProdutoresMap());
            modelBuilder.Configurations.Add(new Faixas_DesembaracoMap());
            modelBuilder.Configurations.Add(new Faturamento_Check_ListMap());
            modelBuilder.Configurations.Add(new Faturamento_Check_List_ItensMap());
            modelBuilder.Configurations.Add(new Faturamento_Declaracao_OrigemMap());
            modelBuilder.Configurations.Add(new Faturamento_Notas_CreditoMap());
            modelBuilder.Configurations.Add(new Faturamento_Notas_DebitoMap());
            modelBuilder.Configurations.Add(new Faturamento_RecibosMap());
            modelBuilder.Configurations.Add(new FaturaMap());
            modelBuilder.Configurations.Add(new Faturas_movMap());
            modelBuilder.Configurations.Add(new Faturas_oldMap());
            modelBuilder.Configurations.Add(new FeriadoMap());
            modelBuilder.Configurations.Add(new FiadoreMap());
            modelBuilder.Configurations.Add(new Fiel_DepositarioMap());
            modelBuilder.Configurations.Add(new FiliaiMap());
            modelBuilder.Configurations.Add(new Follow_Excecoes_Numerarios_ImportadorMap());
            modelBuilder.Configurations.Add(new FollowupMap());
            modelBuilder.Configurations.Add(new FollowUp_CheckMap());
            modelBuilder.Configurations.Add(new FollowUp_Check_ClientesMap());
            modelBuilder.Configurations.Add(new FollowUp_Check_Rejeicao_RelacaoMap());
            modelBuilder.Configurations.Add(new FollowUp_Check_Rejeicao_TipoMap());
            modelBuilder.Configurations.Add(new FollowUp_Check_Tipo_ProcessoMap());
            modelBuilder.Configurations.Add(new FollowUp_Check_UniversoMap());
            modelBuilder.Configurations.Add(new Followup_comercialMap());
            modelBuilder.Configurations.Add(new FollowUp_Indicador_PendenciaMap());
            modelBuilder.Configurations.Add(new Followup_ResumidoMap());
            modelBuilder.Configurations.Add(new Forma_AdmissaoMap());
            modelBuilder.Configurations.Add(new Forma_de_PagamentoMap());
            modelBuilder.Configurations.Add(new FornecedoreMap());
            modelBuilder.Configurations.Add(new Fornecedores_EmpresaMap());
            modelBuilder.Configurations.Add(new FrasMap());
            modelBuilder.Configurations.Add(new Frequencia_AcidenteMap());
            modelBuilder.Configurations.Add(new Fundamentacao_RCRMap());
            modelBuilder.Configurations.Add(new Fundamento_Legal_ICMSMap());
            modelBuilder.Configurations.Add(new GreveMap());
            modelBuilder.Configurations.Add(new GUIAtempMap());
            modelBuilder.Configurations.Add(new Hitorico_Fragmentacao_IndiceMap());
            modelBuilder.Configurations.Add(new Hora_ExtraMap());
            modelBuilder.Configurations.Add(new Importador_Processo_FundoFIXOMap());
            modelBuilder.Configurations.Add(new ImportadoreMap());
            modelBuilder.Configurations.Add(new Importadores_AgrupadosMap());
            modelBuilder.Configurations.Add(new Importadores_AutorizacoesMap());
            modelBuilder.Configurations.Add(new Importadores_ExtratosMap());
            modelBuilder.Configurations.Add(new Importadores_GruposMap());
            modelBuilder.Configurations.Add(new Importadores_RadarMap());
            modelBuilder.Configurations.Add(new InventarioMap());
            modelBuilder.Configurations.Add(new ISO_LetreiroMap());
            modelBuilder.Configurations.Add(new Itens_Faturas_MovMap());
            modelBuilder.Configurations.Add(new ItensFaturaMap());
            modelBuilder.Configurations.Add(new ItensFaturas_LOGMap());
            modelBuilder.Configurations.Add(new ItensFaturas2Map());
            modelBuilder.Configurations.Add(new Locais_InventarioMap());
            modelBuilder.Configurations.Add(new Log_DocumentosMap());
            modelBuilder.Configurations.Add(new LOGNETMap());
            modelBuilder.Configurations.Add(new LOGSIMap());
            modelBuilder.Configurations.Add(new MenuMap());
            modelBuilder.Configurations.Add(new MesMap());
            modelBuilder.Configurations.Add(new Monitor_processamentosMap());
            modelBuilder.Configurations.Add(new Monitoracao_DocumentosMap());
            modelBuilder.Configurations.Add(new Movimentacao_Contas_CorrentesMap());
            modelBuilder.Configurations.Add(new Movimentacao_pastasMap());
            modelBuilder.Configurations.Add(new Movimentacao_RepetroMap());
            modelBuilder.Configurations.Add(new Movimentacao_Repetro_copiaMap());
            modelBuilder.Configurations.Add(new Movimentacao_Repetro_TESTEMap());
            modelBuilder.Configurations.Add(new Movimentacao_UsuariosMap());
            modelBuilder.Configurations.Add(new MSAVISA_AVISOSMap());
            modelBuilder.Configurations.Add(new MSLINKMap());
            modelBuilder.Configurations.Add(new MSLINKS_enMap());
            modelBuilder.Configurations.Add(new MSLOGIN_UsuariosMap());
            modelBuilder.Configurations.Add(new MSTreinamentoMap());
            modelBuilder.Configurations.Add(new Nao_ConformidadeMap());
            modelBuilder.Configurations.Add(new Natureza_de_OperacaoMap());
            modelBuilder.Configurations.Add(new NCM_COM_LIMap());
            modelBuilder.Configurations.Add(new NCM_COM_LI_LOGMap());
            modelBuilder.Configurations.Add(new NF_WebMap());
            modelBuilder.Configurations.Add(new NF_Web_detalhesMap());
            modelBuilder.Configurations.Add(new NF_Web_detalhes_TempMap());
            modelBuilder.Configurations.Add(new NF_Web_ICMSMap());
            modelBuilder.Configurations.Add(new NF_Web_NatoperMap());
            modelBuilder.Configurations.Add(new NF_Web_NumeradorMap());
            modelBuilder.Configurations.Add(new NFDetalheMap());
            modelBuilder.Configurations.Add(new NFiscaiMap());
            modelBuilder.Configurations.Add(new Normas_gerencia_ProcMap());
            modelBuilder.Configurations.Add(new Normas_Usuario_SetorMap());
            modelBuilder.Configurations.Add(new Notas_FiscaisMap());
            modelBuilder.Configurations.Add(new Notas_Fiscais_DetalhesMap());
            modelBuilder.Configurations.Add(new Notas_Fiscais_ServicosMap());
            modelBuilder.Configurations.Add(new Notas_Fiscais_Servicos_DetalhesMap());
            modelBuilder.Configurations.Add(new Notas_Fiscais_Servicos_ImportadoresMap());
            modelBuilder.Configurations.Add(new Notas_Fiscais_Servicos_ProcessosMap());
            modelBuilder.Configurations.Add(new Numerador_Importacao_DadosMap());
            modelBuilder.Configurations.Add(new Numerador_Notas_FiscaisMap());
            modelBuilder.Configurations.Add(new Numerarios_ProcessosMap());
            modelBuilder.Configurations.Add(new Numerarios_Processos_backupMap());
            modelBuilder.Configurations.Add(new Obs_EventosMap());
            modelBuilder.Configurations.Add(new Obs_Eventos_IngMap());
            modelBuilder.Configurations.Add(new Observacoes_Processo_FinanceiroMap());
            modelBuilder.Configurations.Add(new Observacoes_Termo_ResponsabilidadeMap());
            modelBuilder.Configurations.Add(new Observacoes_verso_TRMap());
            modelBuilder.Configurations.Add(new PagamentoMap());
            modelBuilder.Configurations.Add(new Pagamentos_ReceberMap());
            modelBuilder.Configurations.Add(new paramentros_contabilizatempMap());
            modelBuilder.Configurations.Add(new ParametroMap());
            modelBuilder.Configurations.Add(new Parametros_ContabilizacaoMap());
            modelBuilder.Configurations.Add(new Parametros_FaturamentoMap());
            modelBuilder.Configurations.Add(new Parametros_NF_ServicosMap());
            modelBuilder.Configurations.Add(new Parametros_Sol_NumerariosMap());
            modelBuilder.Configurations.Add(new PatrimonioMap());
            modelBuilder.Configurations.Add(new PG_PARC_VARMap());
            modelBuilder.Configurations.Add(new PG_PERC_VINCMap());
            modelBuilder.Configurations.Add(new Plan1Map());
            modelBuilder.Configurations.Add(new Planilha_BRASDRILMap());
            modelBuilder.Configurations.Add(new Planilha_BRASDRIL_ItensMap());
            modelBuilder.Configurations.Add(new Planilha_Brasdril_Quinzenal_FinanceiroMap());
            modelBuilder.Configurations.Add(new Planilha_Brasdril_Quinzenal_Financeiro_ItensMap());
            modelBuilder.Configurations.Add(new Planilha_BRASDRIL_StatusMap());
            modelBuilder.Configurations.Add(new PLANILHA_FINALMap());
            modelBuilder.Configurations.Add(new PLANILHA_FORMATOMap());
            modelBuilder.Configurations.Add(new Planilha_Medicao_HonorariosMap());
            modelBuilder.Configurations.Add(new Planilha_Medicao_Honorarios_ItensMap());
            modelBuilder.Configurations.Add(new Planilha_PrestContas_FinanceiroMap());
            modelBuilder.Configurations.Add(new Planilha_PrestContas_Financeiro_ItensMap());
            modelBuilder.Configurations.Add(new Planilha_PrestContasDespesas_FinanceiroMap());
            modelBuilder.Configurations.Add(new Planilha_PrestContasDespesas_Financeiro_ItensMap());
            modelBuilder.Configurations.Add(new Planilha_TransoceanMap());
            modelBuilder.Configurations.Add(new Planilha_Transocean_ItensMap());
            modelBuilder.Configurations.Add(new Planilha_Transocean_StatusMap());
            modelBuilder.Configurations.Add(new Plano_ContasMap());
            modelBuilder.Configurations.Add(new PlataformaMap());
            modelBuilder.Configurations.Add(new Pre_ClassificacaoMap());
            modelBuilder.Configurations.Add(new Pre_Classificacao_Importador_LayoutMap());
            modelBuilder.Configurations.Add(new Pre_Classificacao_LayoutMap());
            modelBuilder.Configurations.Add(new Pre_Classificacao_MatrizMap());
            modelBuilder.Configurations.Add(new Pre_Classificacao_OldMap());
            modelBuilder.Configurations.Add(new Pre_DocumentosMap());
            modelBuilder.Configurations.Add(new Pre_FollowupMap());
            modelBuilder.Configurations.Add(new Pre_ProcessosMap());
            modelBuilder.Configurations.Add(new Pre_Processos_EmailsMap());
            modelBuilder.Configurations.Add(new Pre_Processos_Emails_AnexosMap());
            modelBuilder.Configurations.Add(new Pre_Relacao_ProcessosMap());
            modelBuilder.Configurations.Add(new Processo_Carta_GarantidorMap());
            modelBuilder.Configurations.Add(new ProcessoMap());
            modelBuilder.Configurations.Add(new Processos_AbertosMap());
            modelBuilder.Configurations.Add(new Processos_AdicoesMap());
            modelBuilder.Configurations.Add(new Processos_ADICOES_ICMS_PIS_COFINSMap());
            modelBuilder.Configurations.Add(new Processos_AFATMap());
            modelBuilder.Configurations.Add(new Processos_ALCMap());
            modelBuilder.Configurations.Add(new Processos_AnexoMap());
            modelBuilder.Configurations.Add(new Processos_Docs_InstrucaoMap());
            modelBuilder.Configurations.Add(new Processos_EDI_CIE01Map());
            modelBuilder.Configurations.Add(new Processos_EmailsMap());
            modelBuilder.Configurations.Add(new Processos_Emails_AnexosMap());
            modelBuilder.Configurations.Add(new Processos_Emails_Tipo_AnexosMap());
            modelBuilder.Configurations.Add(new Processos_ExtratosMap());
            modelBuilder.Configurations.Add(new Processos_ImpostosMap());
            modelBuilder.Configurations.Add(new Processos_Impostos_ParametrosMap());
            modelBuilder.Configurations.Add(new Processos_NumeradorMap());
            modelBuilder.Configurations.Add(new Processos_registro_impostosMap());
            modelBuilder.Configurations.Add(new Processos_REsMap());
            modelBuilder.Configurations.Add(new Processos_ResponsabilidadesMap());
            modelBuilder.Configurations.Add(new Processos_Taxas_ConversaoMap());
            modelBuilder.Configurations.Add(new PROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHAMap());
            modelBuilder.Configurations.Add(new Processos_Taxas_ConversaoDoDiaSeguinteMap());
            modelBuilder.Configurations.Add(new Processos_TimelineMap());
            modelBuilder.Configurations.Add(new Processos_Timeline_tempMap());
            modelBuilder.Configurations.Add(new Processos_Tipo_UrgenciaMap());
            modelBuilder.Configurations.Add(new Processos_Visao_GeralMap());
            modelBuilder.Configurations.Add(new Processos1Map());
            modelBuilder.Configurations.Add(new Processos2Map());
            modelBuilder.Configurations.Add(new Processou_imp_siscomexMap());
            modelBuilder.Configurations.Add(new ProcuradoreMap());
            modelBuilder.Configurations.Add(new produtoslogreveMap());
            modelBuilder.Configurations.Add(new ProdutosnewMap());
            modelBuilder.Configurations.Add(new Proposta_de_acaoMap());
            modelBuilder.Configurations.Add(new Questionario_AlternativasMap());
            modelBuilder.Configurations.Add(new Questionario_ControleMap());
            modelBuilder.Configurations.Add(new Questionario_PerguntasMap());
            modelBuilder.Configurations.Add(new Questionario_QuestionarioMap());
            modelBuilder.Configurations.Add(new Questionario_RespostasMap());
            modelBuilder.Configurations.Add(new Questionario_SenhasMap());
            modelBuilder.Configurations.Add(new RATMap());
            modelBuilder.Configurations.Add(new RAT_ProrrogacaoMap());
            modelBuilder.Configurations.Add(new RAT_RepetroMap());
            modelBuilder.Configurations.Add(new RCRtempMap());
            modelBuilder.Configurations.Add(new Relacao_Itens_Processo_PreProcessoMap());
            modelBuilder.Configurations.Add(new Relatorio_Follows_KPIMap());
            modelBuilder.Configurations.Add(new RepetroMap());
            modelBuilder.Configurations.Add(new Repetro_AjustarMap());
            modelBuilder.Configurations.Add(new Repetro_INCLUSAO_DISMap());
            modelBuilder.Configurations.Add(new REPETRO_RTCMap());
            modelBuilder.Configurations.Add(new REPETRO_RTC_DMap());
            modelBuilder.Configurations.Add(new REPETRO_RTC_D1Map());
            modelBuilder.Configurations.Add(new REPETRO_RTC_ITENSMap());
            modelBuilder.Configurations.Add(new REPETRO_RTC_ITENS_DMap());
            modelBuilder.Configurations.Add(new REPETRO_RTC_ITENS_D1Map());
            modelBuilder.Configurations.Add(new Repetro_tempMap());
            modelBuilder.Configurations.Add(new Repetro1Map());
            modelBuilder.Configurations.Add(new Repetro2Map());
            modelBuilder.Configurations.Add(new RepetrodescnullMap());
            modelBuilder.Configurations.Add(new RepetroLogUsuarioMap());
            modelBuilder.Configurations.Add(new RepetroMARINEMap());
            modelBuilder.Configurations.Add(new RepetroTEMPMap());
            modelBuilder.Configurations.Add(new Responsaveis_por_ImportadorMap());
            modelBuilder.Configurations.Add(new RH_AdmissaoMap());
            modelBuilder.Configurations.Add(new RH_CorMap());
            modelBuilder.Configurations.Add(new RH_DesligamentoMap());
            modelBuilder.Configurations.Add(new RH_EmpregadosMap());
            modelBuilder.Configurations.Add(new RH_EscolaridadeMap());
            modelBuilder.Configurations.Add(new RH_FormulariosMap());
            modelBuilder.Configurations.Add(new RH_FuncaoMap());
            modelBuilder.Configurations.Add(new RH_NacionalidadeMap());
            modelBuilder.Configurations.Add(new RMBRMap());
            modelBuilder.Configurations.Add(new Rotatividade_FuncionarioMap());
            modelBuilder.Configurations.Add(new RPRtempMap());
            modelBuilder.Configurations.Add(new SACMap());
            modelBuilder.Configurations.Add(new Sac_UserMap());
            modelBuilder.Configurations.Add(new Salarios_MinimosMap());
            modelBuilder.Configurations.Add(new Saldos_diariosMap());
            modelBuilder.Configurations.Add(new Satisfacao_PerguntasMap());
            modelBuilder.Configurations.Add(new Satisfacao_QuestionarioMap());
            modelBuilder.Configurations.Add(new Satisfacao_RespostasMap());
            modelBuilder.Configurations.Add(new Satisfacao_UsuarioMap());
            modelBuilder.Configurations.Add(new Seadriil_Relatorio_tempMap());
            modelBuilder.Configurations.Add(new SetoreMap());
            modelBuilder.Configurations.Add(new Siscomex_Atualizacao_MaquinasMap());
            modelBuilder.Configurations.Add(new Siscomex_Atualizacao_TabelasMap());
            modelBuilder.Configurations.Add(new SoftwareMap());
            modelBuilder.Configurations.Add(new Solicitacao_ChequesMap());
            modelBuilder.Configurations.Add(new Solicitacao_Cheques_ItensMap());
            modelBuilder.Configurations.Add(new Solicitacao_Cheques_StatusMap());
            modelBuilder.Configurations.Add(new Solicitacao_TraclaMap());
            modelBuilder.Configurations.Add(new Solicitacao_Tracla_ItensMap());
            modelBuilder.Configurations.Add(new Solicitacao_Tracla_StatusMap());
            modelBuilder.Configurations.Add(new Status_PatrimonioMap());
            modelBuilder.Configurations.Add(new Sub_Tipo_DocumentosMap());
            modelBuilder.Configurations.Add(new Sub_Tipo_Documentos_IngMap());
            modelBuilder.Configurations.Add(new Sub_Tipo_PatrimonioMap());
            modelBuilder.Configurations.Add(new sysdiagramMap());
            modelBuilder.Configurations.Add(new TAB_ALADIMap());
            modelBuilder.Configurations.Add(new TAB_ATRIB_VALORACAO_NVEMap());
            modelBuilder.Configurations.Add(new TAB_CONVERSAO_CAMBIOMap());
            modelBuilder.Configurations.Add(new TAB_DOC_INSTRUCAO_DESPACHOMap());
            modelBuilder.Configurations.Add(new TAB_FUND_LEGAL_PIS_COFINSMap());
            modelBuilder.Configurations.Add(new TAB_INCOTERMS_VENDAMap());
            modelBuilder.Configurations.Add(new TAB_INST_FINANC_INTERNACIONALMap());
            modelBuilder.Configurations.Add(new TAB_MODALID_PAGAMENTOMap());
            modelBuilder.Configurations.Add(new TAB_MOEDAMap());
            modelBuilder.Configurations.Add(new TAB_MOEDA_CONVERSAOMap());
            modelBuilder.Configurations.Add(new TAB_MOT_ADMISSAO_TEMPMap());
            modelBuilder.Configurations.Add(new TAB_MOT_SEM_COBERT_CAMBIALMap());
            modelBuilder.Configurations.Add(new TAB_NALADISHMap());
            modelBuilder.Configurations.Add(new TAB_NCMMap());
            modelBuilder.Configurations.Add(new TAB_NCM_INGMap());
            modelBuilder.Configurations.Add(new TAB_PAISMap());
            modelBuilder.Configurations.Add(new TAB_PAISnovoMap());
            modelBuilder.Configurations.Add(new TAB_REC_ALFANDEGADOMap());
            modelBuilder.Configurations.Add(new TAB_RECINTO_SETORES_IMPORTACAOMap());
            modelBuilder.Configurations.Add(new TAB_REG_TRIBUTARIOMap());
            modelBuilder.Configurations.Add(new TAB_REGRAS_DSI_PIS_COFINSMap());
            modelBuilder.Configurations.Add(new TAB_TIPO_DECLARACAOMap());
            modelBuilder.Configurations.Add(new TAB_TIPO_DECLARACAO_IngMap());
            modelBuilder.Configurations.Add(new TAB_TP_ATO_LEGALMap());
            modelBuilder.Configurations.Add(new TAB_TP_EMBALAGEMMap());
            modelBuilder.Configurations.Add(new TAB_TP_IMPORTADORMap());
            modelBuilder.Configurations.Add(new TAB_UFMap());
            modelBuilder.Configurations.Add(new TAB_UF_ALIQUOTASMap());
            modelBuilder.Configurations.Add(new TAB_UNID_MEDIDAMap());
            modelBuilder.Configurations.Add(new TAB_UNID_MEDIDA_ingMap());
            modelBuilder.Configurations.Add(new TAB_URFMap());
            modelBuilder.Configurations.Add(new TAB_VIA_TRANSPORTEMap());
            modelBuilder.Configurations.Add(new TAB_VIA_TRANSPORTE_IngMap());            
            modelBuilder.Configurations.Add(new TB_RCR_OBS_ESPECIFICAMap());
            modelBuilder.Configurations.Add(new tempdetalheMap());
            modelBuilder.Configurations.Add(new Termos_De_ResponsabilidadeMap());
            modelBuilder.Configurations.Add(new Tipo_Doc_CargaMap());
            modelBuilder.Configurations.Add(new Tipo_Doc_Carga_IngMap());
            modelBuilder.Configurations.Add(new Tipo_Doc_ChegadaMap());
            modelBuilder.Configurations.Add(new Tipo_Doc_Chegada_IngMap());
            modelBuilder.Configurations.Add(new Tipo_DocumentosMap());
            modelBuilder.Configurations.Add(new Tipo_Documentos_IngMap());
            modelBuilder.Configurations.Add(new Tipo_PatrimonioMap());
            modelBuilder.Configurations.Add(new Tipo_UtilizacaoMap());
            modelBuilder.Configurations.Add(new Tipo_Utilizacao_IngMap());
            modelBuilder.Configurations.Add(new Tipo_VinculacaoMap());
            modelBuilder.Configurations.Add(new Tipos_CertificadosMap());
            modelBuilder.Configurations.Add(new Tipos_contratosMap());
            modelBuilder.Configurations.Add(new Tipos_creditosMap());
            modelBuilder.Configurations.Add(new Tipos_creditos_ingMap());
            modelBuilder.Configurations.Add(new Tipos_CustosMap());
            modelBuilder.Configurations.Add(new Tipos_custos_webMap());
            modelBuilder.Configurations.Add(new Tipos_de_CargasMap());
            modelBuilder.Configurations.Add(new Tipos_de_Cargas_IngMap());
            modelBuilder.Configurations.Add(new Tipos_de_Notas_FiscaisMap());
            modelBuilder.Configurations.Add(new Tipos_de_ProcessosMap());
            modelBuilder.Configurations.Add(new Tipos_de_Processos_c_respMap());
            modelBuilder.Configurations.Add(new Tipos_de_Processos_IngMap());
            modelBuilder.Configurations.Add(new Tipos_Email_AvisoMap());
            modelBuilder.Configurations.Add(new Tipos_Lancamento_CcorrenteMap());
            modelBuilder.Configurations.Add(new Tipos_Locais_InventarioMap());
            modelBuilder.Configurations.Add(new Tipos_Locais_Inventario_IngMap());
            modelBuilder.Configurations.Add(new Tipos_Movimentacao_RepetroMap());
            modelBuilder.Configurations.Add(new Tipos_Movimentacao_Repetro_IngMap());
            modelBuilder.Configurations.Add(new Tipos_Movimentacao_UsuariosMap());
            modelBuilder.Configurations.Add(new Tipos_NCMap());
            modelBuilder.Configurations.Add(new Tipos_NumerarioMap());
            modelBuilder.Configurations.Add(new Tipos_Numerario_IngMap());
            modelBuilder.Configurations.Add(new Tipos_Numerario_ObrigatorioMap());
            modelBuilder.Configurations.Add(new Tipos_RateioMap());
            modelBuilder.Configurations.Add(new Tipos_situacao_fiscalMap());
            modelBuilder.Configurations.Add(new Tipos_situacao_fiscal_IngMap());
            modelBuilder.Configurations.Add(new Tipos_status_documentosMap());
            modelBuilder.Configurations.Add(new Tipos_status_documentos_IngMap());
            modelBuilder.Configurations.Add(new Tipos_status_processosMap());
            modelBuilder.Configurations.Add(new Tipos_status_processos_IngMap());
            modelBuilder.Configurations.Add(new TransmittalMap());
            modelBuilder.Configurations.Add(new Transmittal_itensMap());
            modelBuilder.Configurations.Add(new Transmittal_testeMap());
            modelBuilder.Configurations.Add(new TransportadoreMap());
            modelBuilder.Configurations.Add(new Tratamento_Tributario_ICMSMap());
            modelBuilder.Configurations.Add(new Tributacao_Item_FaturaMap());
            modelBuilder.Configurations.Add(new USUMap());
            modelBuilder.Configurations.Add(new Usuario_Follow_AbertoMap());
            modelBuilder.Configurations.Add(new UsuarioMap());
            modelBuilder.Configurations.Add(new Usuarios_APENMap());
            modelBuilder.Configurations.Add(new usuarios_beneficio_repetroMap());
            modelBuilder.Configurations.Add(new Usuarios_LogMap());
            modelBuilder.Configurations.Add(new Usuarios_Resp_habilitadosMap());
            modelBuilder.Configurations.Add(new UsuariosClienteMap());
            modelBuilder.Configurations.Add(new UsuariosGrupoMap());
            modelBuilder.Configurations.Add(new UsuariosGrupoLocalMap());
            modelBuilder.Configurations.Add(new UsuariosMenuMap());
            modelBuilder.Configurations.Add(new UsuariosNETMap());
            modelBuilder.Configurations.Add(new via_tipoMap());
            modelBuilder.Configurations.Add(new Voucher_TransoceanMap());
            modelBuilder.Configurations.Add(new Voucher_Transocean_ItensMap());
            modelBuilder.Configurations.Add(new REPETRO_PLANILHA_GERALMap());
            modelBuilder.Configurations.Add(new verifica_repetroMap());
            modelBuilder.Configurations.Add(new vRepetro_Itens_EntreguesMap());
            modelBuilder.Configurations.Add(new vRepetro_Itens_Entregues_seadrillMap());
        }
    }
}
