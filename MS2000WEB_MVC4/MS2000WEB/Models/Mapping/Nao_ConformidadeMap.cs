using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Nao_ConformidadeMap : EntityTypeConfiguration<Nao_Conformidade>
    {
        public Nao_ConformidadeMap()
        {
            // Primary Key
            this.HasKey(t => t.Sequencial);

            // Properties
            this.Property(t => t.Responsavel_identif)
                .HasMaxLength(50);

            this.Property(t => t.Requisito_norma)
                .HasMaxLength(200);

            this.Property(t => t.Local)
                .HasMaxLength(100);

            this.Property(t => t.Resp_disposicao)
                .HasMaxLength(100);

            this.Property(t => t.Resp_Analise_Causas)
                .HasMaxLength(100);

            this.Property(t => t.Aprovado_Acoes_Corretiva)
                .HasMaxLength(100);

            this.Property(t => t.Resp_Implementacao)
                .HasMaxLength(100);

            this.Property(t => t.Verifica_Implementacao)
                .HasMaxLength(500);

            this.Property(t => t.Verifica_Eficacia)
                .HasMaxLength(500);

            this.Property(t => t.Verificado_por)
                .HasMaxLength(100);

            this.Property(t => t.Encerrado_por)
                .HasMaxLength(100);

            this.Property(t => t.Tipo_Acao)
                .HasMaxLength(20);

            // Table & Column Mappings
            this.ToTable("Nao_Conformidade");
            this.Property(t => t.Sequencial).HasColumnName("Sequencial");
            this.Property(t => t.Responsavel_identif).HasColumnName("Responsavel_identif");
            this.Property(t => t.data).HasColumnName("data");
            this.Property(t => t.Requisito_norma).HasColumnName("Requisito_norma");
            this.Property(t => t.Local).HasColumnName("Local");
            this.Property(t => t.Real_Potencial).HasColumnName("Real_Potencial");
            this.Property(t => t.Descricao_conformidade).HasColumnName("Descricao_conformidade");
            this.Property(t => t.Descricao_disposicao).HasColumnName("Descricao_disposicao");
            this.Property(t => t.Resp_disposicao).HasColumnName("Resp_disposicao");
            this.Property(t => t.Data_diposicao).HasColumnName("Data_diposicao");
            this.Property(t => t.tipo_NC).HasColumnName("tipo_NC");
            this.Property(t => t.Desc_Analise_Causas).HasColumnName("Desc_Analise_Causas");
            this.Property(t => t.Resp_Analise_Causas).HasColumnName("Resp_Analise_Causas");
            this.Property(t => t.Dt_Analise_Causas).HasColumnName("Dt_Analise_Causas");
            this.Property(t => t.Aprovado_Acoes_Corretiva).HasColumnName("Aprovado_Acoes_Corretiva");
            this.Property(t => t.Dt_Acoes_Corretiva).HasColumnName("Dt_Acoes_Corretiva");
            this.Property(t => t.Des_Implementacao).HasColumnName("Des_Implementacao");
            this.Property(t => t.Resp_Implementacao).HasColumnName("Resp_Implementacao");
            this.Property(t => t.DT_Implementacao).HasColumnName("DT_Implementacao");
            this.Property(t => t.Verifica_Implementacao).HasColumnName("Verifica_Implementacao");
            this.Property(t => t.Verifica_Eficacia).HasColumnName("Verifica_Eficacia");
            this.Property(t => t.Verificado_por).HasColumnName("Verificado_por");
            this.Property(t => t.DT_Verificado_por).HasColumnName("DT_Verificado_por");
            this.Property(t => t.Encerrado_por).HasColumnName("Encerrado_por");
            this.Property(t => t.DT_Encerrado_por).HasColumnName("DT_Encerrado_por");
            this.Property(t => t.Desc_Analise_Risco).HasColumnName("Desc_Analise_Risco");
            this.Property(t => t.Analise_Risco).HasColumnName("Analise_Risco");
            this.Property(t => t.Tipo_Acao).HasColumnName("Tipo_Acao");
        }
    }
}
