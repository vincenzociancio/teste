using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class PROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHAMap : EntityTypeConfiguration<PROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHA>
    {
        public PROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHAMap()
        {
            // Primary Key
            this.HasKey(t => t.Codigo);

            // Properties
            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(3);

            this.Property(t => t.Descricao)
                .HasMaxLength(120);

            this.Property(t => t.Taxa_Conversao)
                .HasMaxLength(9);

            this.Property(t => t.Vigencia_Inicio_Taxa)
                .HasMaxLength(10);

            this.Property(t => t.Vigencia_Fim_Taxa)
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("PROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHA");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Taxa_Conversao).HasColumnName("Taxa_Conversao");
            this.Property(t => t.Vigencia_Inicio_Taxa).HasColumnName("Vigencia_Inicio_Taxa");
            this.Property(t => t.Vigencia_Fim_Taxa).HasColumnName("Vigencia_Fim_Taxa");
        }
    }
}
