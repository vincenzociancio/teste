using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class ProcessoMap : EntityTypeConfiguration<Processo>
    {
        public ProcessoMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Codigo });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Importador)
                .HasMaxLength(4);

            this.Property(t => t.Codigo_Cliente)
                .HasMaxLength(60);

            this.Property(t => t.Tipo_Declaracao)
                .HasMaxLength(2);

            this.Property(t => t.Tipo)
                .HasMaxLength(2);

            this.Property(t => t.Contrato)
                .HasMaxLength(8);

            this.Property(t => t.Local_Inventario)
                .HasMaxLength(4);

            this.Property(t => t.NR_DECL_IMP_MICRO)
                .HasMaxLength(8);

            this.Property(t => t.NR_DECL_IMP_PROT)
                .HasMaxLength(10);

            this.Property(t => t.NR_DECLARACAO_IMP)
                .HasMaxLength(10);

            this.Property(t => t.DT_PROCESSAMENTO)
                .HasMaxLength(8);

            this.Property(t => t.DT_TRANSMISSAO)
                .HasMaxLength(8);

            this.Property(t => t.DT_REGISTRO_DI)
                .HasMaxLength(8);

            this.Property(t => t.Canal)
                .HasMaxLength(1);

            this.Property(t => t.Fiscal)
                .HasMaxLength(20);

            this.Property(t => t.Status)
                .HasMaxLength(3);

            this.Property(t => t.COD_SIT)
                .HasMaxLength(1);

            this.Property(t => t.CD_MOTIVO_TRANS)
                .HasMaxLength(1);

            this.Property(t => t.CD_TIPO_PGTO_TRIB)
                .HasMaxLength(1);

            this.Property(t => t.Numero_RCR)
                .HasMaxLength(20);

            this.Property(t => t.Fundamentacao_RCR)
                .HasMaxLength(4);

            this.Property(t => t.Procurador)
                .HasMaxLength(4);

            this.Property(t => t.Numero_TR)
                .HasMaxLength(20);

            this.Property(t => t.Tipo_Garantia)
                .HasMaxLength(1);

            this.Property(t => t.Nome_banco_GAR)
                .HasMaxLength(50);

            this.Property(t => t.Agencia_GAR)
                .HasMaxLength(5);

            this.Property(t => t.Nome_titulo_GAR)
                .HasMaxLength(50);

            this.Property(t => t.numeros_titulos_GAR)
                .HasMaxLength(50);

            this.Property(t => t.Nome_seguradora_GAR)
                .HasMaxLength(50);

            this.Property(t => t.apolice_GAR)
                .HasMaxLength(50);

            this.Property(t => t.nome_fiador_GAR)
                .HasMaxLength(50);

            this.Property(t => t.CNPJ_fiador_GAR)
                .HasMaxLength(18);

            this.Property(t => t.endereco_fiador_GAR)
                .HasMaxLength(200);

            this.Property(t => t.Responsavel_Empresa)
                .HasMaxLength(10);

            this.Property(t => t.Responsavel_Importador)
                .HasMaxLength(10);

            this.Property(t => t.NR_DECL_IMP_MICROC)
                .HasMaxLength(8);

            this.Property(t => t.NR_DECL_IMP_PROTC)
                .HasMaxLength(10);

            this.Property(t => t.NR_DECLARACAO_IMPC)
                .HasMaxLength(10);

            this.Property(t => t.DT_PROCESSAMENTOC)
                .HasMaxLength(8);

            this.Property(t => t.DT_TRANSMISSAOC)
                .HasMaxLength(8);

            this.Property(t => t.DT_REGISTRO_DIC)
                .HasMaxLength(8);

            this.Property(t => t.CanalC)
                .HasMaxLength(1);

            this.Property(t => t.FiscalC)
                .HasMaxLength(20);

            this.Property(t => t.COD_SITC)
                .HasMaxLength(1);

            this.Property(t => t.ident_meio1)
                .HasMaxLength(100);

            this.Property(t => t.ident_meio2)
                .HasMaxLength(100);

            this.Property(t => t.Codevento)
                .HasMaxLength(4);

            this.Property(t => t.Codobs)
                .HasMaxLength(4);

            this.Property(t => t.Obs_especifica)
                .HasMaxLength(120);

            this.Property(t => t.Hora_ufollowup)
                .HasMaxLength(5);

            this.Property(t => t.DDE)
                .HasMaxLength(30);

            this.Property(t => t.Processo_Adm)
                .HasMaxLength(30);

            this.Property(t => t.Centro_Custo)
                .HasMaxLength(4);

            this.Property(t => t.Procurador2)
                .HasMaxLength(4);

            this.Property(t => t.RCR_LOCAL)
                .HasMaxLength(100);

            this.Property(t => t.Responsavel_EmpresaC)
                .HasMaxLength(10);

            this.Property(t => t.proc_vinc)
                .HasMaxLength(8);

            this.Property(t => t.Coordenador_Resp)
                .HasMaxLength(10);

            this.Property(t => t.Supervisor_Resp)
                .HasMaxLength(10);

            this.Property(t => t.Numero_RTC)
                .HasMaxLength(15);

            // Table & Column Mappings
            this.ToTable("Processos");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Importador).HasColumnName("Importador");
            this.Property(t => t.Codigo_Cliente).HasColumnName("Codigo_Cliente");
            this.Property(t => t.Tipo_Declaracao).HasColumnName("Tipo_Declaracao");
            this.Property(t => t.Tipo).HasColumnName("Tipo");
            this.Property(t => t.Contrato).HasColumnName("Contrato");
            this.Property(t => t.Local_Inventario).HasColumnName("Local_Inventario");
            this.Property(t => t.NR_DECL_IMP_MICRO).HasColumnName("NR_DECL_IMP_MICRO");
            this.Property(t => t.NR_DECL_IMP_PROT).HasColumnName("NR_DECL_IMP_PROT");
            this.Property(t => t.NR_DECLARACAO_IMP).HasColumnName("NR_DECLARACAO_IMP");
            this.Property(t => t.DT_PROCESSAMENTO).HasColumnName("DT_PROCESSAMENTO");
            this.Property(t => t.DT_TRANSMISSAO).HasColumnName("DT_TRANSMISSAO");
            this.Property(t => t.DT_REGISTRO_DI).HasColumnName("DT_REGISTRO_DI");
            this.Property(t => t.DT_DESEMBARACO).HasColumnName("DT_DESEMBARACO");
            this.Property(t => t.DT_DISTRIBUICAO).HasColumnName("DT_DISTRIBUICAO");
            this.Property(t => t.Canal).HasColumnName("Canal");
            this.Property(t => t.Fiscal).HasColumnName("Fiscal");
            this.Property(t => t.Status).HasColumnName("Status");
            this.Property(t => t.COD_SIT).HasColumnName("COD_SIT");
            this.Property(t => t.CD_MOTIVO_TRANS).HasColumnName("CD_MOTIVO_TRANS");
            this.Property(t => t.IN_MOEDA_UNICA).HasColumnName("IN_MOEDA_UNICA");
            this.Property(t => t.TX_INFO_COMPL).HasColumnName("TX_INFO_COMPL");
            this.Property(t => t.CD_TIPO_PGTO_TRIB).HasColumnName("CD_TIPO_PGTO_TRIB");
            this.Property(t => t.Numero_RCR).HasColumnName("Numero_RCR");
            this.Property(t => t.Data_Entrada_RCR).HasColumnName("Data_Entrada_RCR");
            this.Property(t => t.Data_Aprovacao_RCR).HasColumnName("Data_Aprovacao_RCR");
            this.Property(t => t.Fundamentacao_RCR).HasColumnName("Fundamentacao_RCR");
            this.Property(t => t.Procurador).HasColumnName("Procurador");
            this.Property(t => t.Numero_TR).HasColumnName("Numero_TR");
            this.Property(t => t.Data_Entrada_TR).HasColumnName("Data_Entrada_TR");
            this.Property(t => t.Data_vencimento_TR).HasColumnName("Data_vencimento_TR");
            this.Property(t => t.Data_Aprovacao_TR).HasColumnName("Data_Aprovacao_TR");
            this.Property(t => t.Data_Baixa_TR).HasColumnName("Data_Baixa_TR");
            this.Property(t => t.Data_CI).HasColumnName("Data_CI");
            this.Property(t => t.Tipo_Garantia).HasColumnName("Tipo_Garantia");
            this.Property(t => t.Nome_banco_GAR).HasColumnName("Nome_banco_GAR");
            this.Property(t => t.Agencia_GAR).HasColumnName("Agencia_GAR");
            this.Property(t => t.Data_deposito_GAR).HasColumnName("Data_deposito_GAR");
            this.Property(t => t.Nome_titulo_GAR).HasColumnName("Nome_titulo_GAR");
            this.Property(t => t.numeros_titulos_GAR).HasColumnName("numeros_titulos_GAR");
            this.Property(t => t.Nome_seguradora_GAR).HasColumnName("Nome_seguradora_GAR");
            this.Property(t => t.apolice_GAR).HasColumnName("apolice_GAR");
            this.Property(t => t.nome_fiador_GAR).HasColumnName("nome_fiador_GAR");
            this.Property(t => t.CNPJ_fiador_GAR).HasColumnName("CNPJ_fiador_GAR");
            this.Property(t => t.endereco_fiador_GAR).HasColumnName("endereco_fiador_GAR");
            this.Property(t => t.Quantidade_LI).HasColumnName("Quantidade_LI");
            this.Property(t => t.Valor_FOB).HasColumnName("Valor_FOB");
            this.Property(t => t.Valor_CIF).HasColumnName("Valor_CIF");
            this.Property(t => t.Responsavel_Empresa).HasColumnName("Responsavel_Empresa");
            this.Property(t => t.Responsavel_Importador).HasColumnName("Responsavel_Importador");
            this.Property(t => t.Saldo_Faturamento).HasColumnName("Saldo_Faturamento");
            this.Property(t => t.NR_DECL_IMP_MICROC).HasColumnName("NR_DECL_IMP_MICROC");
            this.Property(t => t.NR_DECL_IMP_PROTC).HasColumnName("NR_DECL_IMP_PROTC");
            this.Property(t => t.NR_DECLARACAO_IMPC).HasColumnName("NR_DECLARACAO_IMPC");
            this.Property(t => t.DT_PROCESSAMENTOC).HasColumnName("DT_PROCESSAMENTOC");
            this.Property(t => t.DT_TRANSMISSAOC).HasColumnName("DT_TRANSMISSAOC");
            this.Property(t => t.DT_REGISTRO_DIC).HasColumnName("DT_REGISTRO_DIC");
            this.Property(t => t.DT_DESEMBARACOC).HasColumnName("DT_DESEMBARACOC");
            this.Property(t => t.DT_DISTRIBUICAOC).HasColumnName("DT_DISTRIBUICAOC");
            this.Property(t => t.CanalC).HasColumnName("CanalC");
            this.Property(t => t.FiscalC).HasColumnName("FiscalC");
            this.Property(t => t.COD_SITC).HasColumnName("COD_SITC");
            this.Property(t => t.Data_CIC).HasColumnName("Data_CIC");
            this.Property(t => t.Valor_FOBC).HasColumnName("Valor_FOBC");
            this.Property(t => t.Valor_CIFC).HasColumnName("Valor_CIFC");
            this.Property(t => t.ident_meio1).HasColumnName("ident_meio1");
            this.Property(t => t.ident_meio2).HasColumnName("ident_meio2");
            this.Property(t => t.Codevento).HasColumnName("Codevento");
            this.Property(t => t.Codobs).HasColumnName("Codobs");
            this.Property(t => t.Obs_especifica).HasColumnName("Obs_especifica");
            this.Property(t => t.Data_ufollowup).HasColumnName("Data_ufollowup");
            this.Property(t => t.Hora_ufollowup).HasColumnName("Hora_ufollowup");
            this.Property(t => t.Data_liberacao).HasColumnName("Data_liberacao");
            this.Property(t => t.Urgente).HasColumnName("Urgente");
            this.Property(t => t.consolidado).HasColumnName("consolidado");
            this.Property(t => t.Pag_proporcional).HasColumnName("Pag_proporcional");
            this.Property(t => t.TR_VAL_FOB_US).HasColumnName("TR_VAL_FOB_US");
            this.Property(t => t.TR_VAL_CIF_US).HasColumnName("TR_VAL_CIF_US");
            this.Property(t => t.TR_VAL_II).HasColumnName("TR_VAL_II");
            this.Property(t => t.TR_VAL_IPI).HasColumnName("TR_VAL_IPI");
            this.Property(t => t.DDE).HasColumnName("DDE");
            this.Property(t => t.Processo_Adm).HasColumnName("Processo_Adm");
            this.Property(t => t.Proc_Adm_Data_Entrada).HasColumnName("Proc_Adm_Data_Entrada");
            this.Property(t => t.Faturado).HasColumnName("Faturado");
            this.Property(t => t.Fechado).HasColumnName("Fechado");
            this.Property(t => t.Centro_Custo).HasColumnName("Centro_Custo");
            this.Property(t => t.Procurador2).HasColumnName("Procurador2");
            this.Property(t => t.TR_VAL_PIS).HasColumnName("TR_VAL_PIS");
            this.Property(t => t.TR_VAL_COFINS).HasColumnName("TR_VAL_COFINS");
            this.Property(t => t.RCR_LOCAL).HasColumnName("RCR_LOCAL");
            this.Property(t => t.Responsavel_EmpresaC).HasColumnName("Responsavel_EmpresaC");
            this.Property(t => t.vinc_processo).HasColumnName("vinc_processo");
            this.Property(t => t.proc_vinc).HasColumnName("proc_vinc");
            this.Property(t => t.sem_nfs).HasColumnName("sem_nfs");
            this.Property(t => t.TR_IMPRESSOES).HasColumnName("TR_IMPRESSOES");
            this.Property(t => t.TR_IMPRESSOES_FECP).HasColumnName("TR_IMPRESSOES_FECP");
            this.Property(t => t.AVISO_DESEMBARACO).HasColumnName("AVISO_DESEMBARACO");
            this.Property(t => t.FK_Processos_Tipo_Urgencia).HasColumnName("FK_Processos_Tipo_Urgencia");
            this.Property(t => t.Coordenador_Resp).HasColumnName("Coordenador_Resp");
            this.Property(t => t.Supervisor_Resp).HasColumnName("Supervisor_Resp");
            this.Property(t => t.BASE_ICMS).HasColumnName("BASE_ICMS");
            this.Property(t => t.Aguardando_Medicao).HasColumnName("Aguardando_Medicao");
            this.Property(t => t.Emissao_Faturamento).HasColumnName("Emissao_Faturamento");
            this.Property(t => t.Vencimento_Faturamento).HasColumnName("Vencimento_Faturamento");
            this.Property(t => t.Forma_Pag_Faturamento).HasColumnName("Forma_Pag_Faturamento");
            this.Property(t => t.Valor_Faturamento).HasColumnName("Valor_Faturamento");
            this.Property(t => t.Emissao_Faturamento2).HasColumnName("Emissao_Faturamento2");
            this.Property(t => t.Vencimento_Faturamento2).HasColumnName("Vencimento_Faturamento2");
            this.Property(t => t.Forma_Pag_Faturamento2).HasColumnName("Forma_Pag_Faturamento2");
            this.Property(t => t.Valor_Faturamento2).HasColumnName("Valor_Faturamento2");
            this.Property(t => t.Emissao_Faturamento3).HasColumnName("Emissao_Faturamento3");
            this.Property(t => t.Vencimento_Faturamento3).HasColumnName("Vencimento_Faturamento3");
            this.Property(t => t.Forma_Pag_Faturamento3).HasColumnName("Forma_Pag_Faturamento3");
            this.Property(t => t.Valor_Faturamento3).HasColumnName("Valor_Faturamento3");
            this.Property(t => t.TR_Indeferido).HasColumnName("TR_Indeferido");
            this.Property(t => t.Material_Usado).HasColumnName("Material_Usado");
            this.Property(t => t.Sem_Email).HasColumnName("Sem_Email");
            this.Property(t => t.txConversaoDeAmanha).HasColumnName("txConversaoDeAmanha");
            this.Property(t => t.Numero_RTC).HasColumnName("Numero_RTC");
        }
    }
}
