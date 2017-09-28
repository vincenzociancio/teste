using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Processos_ImpostosMap : EntityTypeConfiguration<Processos_Impostos>
    {
        public Processos_ImpostosMap()
        {
            // Primary Key
            this.HasKey(t => t.PROCESSO);

            // Properties
            this.Property(t => t.PROCESSO)
                .IsRequired()
                .HasMaxLength(8);

            // Table & Column Mappings
            this.ToTable("Processos_Impostos");
            this.Property(t => t.PROCESSO).HasColumnName("PROCESSO");
            this.Property(t => t.VALOR_FOB).HasColumnName("VALOR_FOB");
            this.Property(t => t.VALOR_FRETE).HasColumnName("VALOR_FRETE");
            this.Property(t => t.VALOR_SEGURO).HasColumnName("VALOR_SEGURO");
            this.Property(t => t.VALOR_CIF).HasColumnName("VALOR_CIF");
            this.Property(t => t.VALOR_II).HasColumnName("VALOR_II");
            this.Property(t => t.VALOR_IPI).HasColumnName("VALOR_IPI");
            this.Property(t => t.VALOR_PIS).HasColumnName("VALOR_PIS");
            this.Property(t => t.VALOR_COFINS).HasColumnName("VALOR_COFINS");
            this.Property(t => t.VALOR_TAXA_SISCOMEX).HasColumnName("VALOR_TAXA_SISCOMEX");
            this.Property(t => t.ALIQUOTA_ICMS).HasColumnName("ALIQUOTA_ICMS");
            this.Property(t => t.ALIQUOTA_FECP).HasColumnName("ALIQUOTA_FECP");
            this.Property(t => t.VALOR_ICMS).HasColumnName("VALOR_ICMS");
            this.Property(t => t.VALOR_FECP).HasColumnName("VALOR_FECP");
            this.Property(t => t.VALOR_SUSPENSO_II).HasColumnName("VALOR_SUSPENSO_II");
            this.Property(t => t.VALOR_SUSPENSO_IPI).HasColumnName("VALOR_SUSPENSO_IPI");
            this.Property(t => t.VALOR_SUSPENSO_PIS).HasColumnName("VALOR_SUSPENSO_PIS");
            this.Property(t => t.VALOR_SUSPENSO_COFINS).HasColumnName("VALOR_SUSPENSO_COFINS");
            this.Property(t => t.VALOR_SUSPENSO_ICMS).HasColumnName("VALOR_SUSPENSO_ICMS");
            this.Property(t => t.VALOR_SUSPENSO_FECP).HasColumnName("VALOR_SUSPENSO_FECP");
            this.Property(t => t.ATUALIZADO).HasColumnName("ATUALIZADO");
        }
    }
}
