using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Processos_ResponsabilidadesMap : EntityTypeConfiguration<Processos_Responsabilidades>
    {
        public Processos_ResponsabilidadesMap()
        {
            // Primary Key
            this.HasKey(t => t.PROCESSO);

            // Properties
            this.Property(t => t.PROCESSO)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.COMERCIAL_PRE_ANALISE_HINICIO)
                .HasMaxLength(5);

            this.Property(t => t.COMERCIAL_PRE_ANALISE_HFINAL)
                .HasMaxLength(5);

            this.Property(t => t.COMERCIAL_TRADUCAO_HINICIO)
                .HasMaxLength(5);

            this.Property(t => t.COMERCIAL_TRADUCAO_HFINAL)
                .HasMaxLength(5);

            this.Property(t => t.COMERCIAL_CADASTRO_HINICIO)
                .HasMaxLength(5);

            this.Property(t => t.COMERCIAL_CADASTRO_HFINAL)
                .HasMaxLength(5);

            this.Property(t => t.OPERACIONAL_CADASTRO_HINICIO)
                .HasMaxLength(5);

            this.Property(t => t.OPERACIONAL_CADASTRO_HFINAL)
                .HasMaxLength(5);

            this.Property(t => t.FINANCEIRO_MONTAGEM_HINICIO)
                .HasMaxLength(5);

            this.Property(t => t.FINANCEIRO_MONTAGEM_HFINAL)
                .HasMaxLength(5);

            this.Property(t => t.FINANCEIRO_FATURAMENTO_HINICIO)
                .HasMaxLength(5);

            this.Property(t => t.FINANCEIRO_FATURAMENTO_HFINAL)
                .HasMaxLength(5);

            // Table & Column Mappings
            this.ToTable("Processos_Responsabilidades");
            this.Property(t => t.PROCESSO).HasColumnName("PROCESSO");
            this.Property(t => t.ABERTURA).HasColumnName("ABERTURA");
            this.Property(t => t.ABERTURA_DATA).HasColumnName("ABERTURA_DATA");
            this.Property(t => t.COMERCIAL_COORDENACAO).HasColumnName("COMERCIAL_COORDENACAO");
            this.Property(t => t.COMERCIAL_RESPONSAVEL).HasColumnName("COMERCIAL_RESPONSAVEL");
            this.Property(t => t.COMERCIAL_PRE_ANALISE).HasColumnName("COMERCIAL_PRE_ANALISE");
            this.Property(t => t.COMERCIAL_PRE_ANALISE_DTINICIO).HasColumnName("COMERCIAL_PRE_ANALISE_DTINICIO");
            this.Property(t => t.COMERCIAL_PRE_ANALISE_HINICIO).HasColumnName("COMERCIAL_PRE_ANALISE_HINICIO");
            this.Property(t => t.COMERCIAL_PRE_ANALISE_DTFINAL).HasColumnName("COMERCIAL_PRE_ANALISE_DTFINAL");
            this.Property(t => t.COMERCIAL_PRE_ANALISE_HFINAL).HasColumnName("COMERCIAL_PRE_ANALISE_HFINAL");
            this.Property(t => t.COMERCIAL_TRADUCAO).HasColumnName("COMERCIAL_TRADUCAO");
            this.Property(t => t.COMERCIAL_TRADUCAO_DTINICIO).HasColumnName("COMERCIAL_TRADUCAO_DTINICIO");
            this.Property(t => t.COMERCIAL_TRADUCAO_HINICIO).HasColumnName("COMERCIAL_TRADUCAO_HINICIO");
            this.Property(t => t.COMERCIAL_TRADUCAO_DTFINAL).HasColumnName("COMERCIAL_TRADUCAO_DTFINAL");
            this.Property(t => t.COMERCIAL_TRADUCAO_HFINAL).HasColumnName("COMERCIAL_TRADUCAO_HFINAL");
            this.Property(t => t.COMERCIAL_CADASTRO).HasColumnName("COMERCIAL_CADASTRO");
            this.Property(t => t.COMERCIAL_CADASTRO_DTINICIO).HasColumnName("COMERCIAL_CADASTRO_DTINICIO");
            this.Property(t => t.COMERCIAL_CADASTRO_HINICIO).HasColumnName("COMERCIAL_CADASTRO_HINICIO");
            this.Property(t => t.COMERCIAL_CADASTRO_DTFINAL).HasColumnName("COMERCIAL_CADASTRO_DTFINAL");
            this.Property(t => t.COMERCIAL_CADASTRO_HFINAL).HasColumnName("COMERCIAL_CADASTRO_HFINAL");
            this.Property(t => t.OPERACIONAL_COORDENACAO).HasColumnName("OPERACIONAL_COORDENACAO");
            this.Property(t => t.OPERACIONAL_CHEFE_CONTA).HasColumnName("OPERACIONAL_CHEFE_CONTA");
            this.Property(t => t.OPERACIONAL_RESPONSAVEL).HasColumnName("OPERACIONAL_RESPONSAVEL");
            this.Property(t => t.OPERACIONAL_CADASTRO).HasColumnName("OPERACIONAL_CADASTRO");
            this.Property(t => t.OPERACIONAL_CADASTRO_DTINICIO).HasColumnName("OPERACIONAL_CADASTRO_DTINICIO");
            this.Property(t => t.OPERACIONAL_CADASTRO_HINICIO).HasColumnName("OPERACIONAL_CADASTRO_HINICIO");
            this.Property(t => t.OPERACIONAL_CADASTRO_DTFINAL).HasColumnName("OPERACIONAL_CADASTRO_DTFINAL");
            this.Property(t => t.OPERACIONAL_CADASTRO_HFINAL).HasColumnName("OPERACIONAL_CADASTRO_HFINAL");
            this.Property(t => t.OPERACIONAL_SUPORTE).HasColumnName("OPERACIONAL_SUPORTE");
            this.Property(t => t.FINANCEIRO_COORDENACAO).HasColumnName("FINANCEIRO_COORDENACAO");
            this.Property(t => t.FINANCEIRO_MONTAGEM).HasColumnName("FINANCEIRO_MONTAGEM");
            this.Property(t => t.FINANCEIRO_MONTAGEM_DTINICIO).HasColumnName("FINANCEIRO_MONTAGEM_DTINICIO");
            this.Property(t => t.FINANCEIRO_MONTAGEM_HINICIO).HasColumnName("FINANCEIRO_MONTAGEM_HINICIO");
            this.Property(t => t.FINANCEIRO_MONTAGEM_DTFINAL).HasColumnName("FINANCEIRO_MONTAGEM_DTFINAL");
            this.Property(t => t.FINANCEIRO_MONTAGEM_HFINAL).HasColumnName("FINANCEIRO_MONTAGEM_HFINAL");
            this.Property(t => t.FINANCEIRO_FATURAMENTO).HasColumnName("FINANCEIRO_FATURAMENTO");
            this.Property(t => t.FINANCEIRO_FATURAMENTO_DTINICIO).HasColumnName("FINANCEIRO_FATURAMENTO_DTINICIO");
            this.Property(t => t.FINANCEIRO_FATURAMENTO_HINICIO).HasColumnName("FINANCEIRO_FATURAMENTO_HINICIO");
            this.Property(t => t.FINANCEIRO_FATURAMENTO_DTFINAL).HasColumnName("FINANCEIRO_FATURAMENTO_DTFINAL");
            this.Property(t => t.FINANCEIRO_FATURAMENTO_HFINAL).HasColumnName("FINANCEIRO_FATURAMENTO_HFINAL");
            this.Property(t => t.FINANCEIRO_DIGITALIZACAO).HasColumnName("FINANCEIRO_DIGITALIZACAO");
            this.Property(t => t.FECHAMENTO).HasColumnName("FECHAMENTO");
            this.Property(t => t.FECHAMENTO_DATA).HasColumnName("FECHAMENTO_DATA");
            this.Property(t => t.ARQUIVAMENTO).HasColumnName("ARQUIVAMENTO");
            this.Property(t => t.ARQUIVAMENTO_DATA).HasColumnName("ARQUIVAMENTO_DATA");
        }
    }
}
