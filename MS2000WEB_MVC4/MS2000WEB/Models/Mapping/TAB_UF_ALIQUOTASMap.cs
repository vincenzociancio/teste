using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class TAB_UF_ALIQUOTASMap : EntityTypeConfiguration<TAB_UF_ALIQUOTAS>
    {
        public TAB_UF_ALIQUOTASMap()
        {
            // Primary Key
            this.HasKey(t => t.Codigo);

            // Properties
            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(2);

            this.Property(t => t.Descricao)
                .HasMaxLength(120);

            // Table & Column Mappings
            this.ToTable("TAB_UF_ALIQUOTAS");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Aliq_PIS_PASEP).HasColumnName("Aliq_PIS_PASEP");
            this.Property(t => t.Aliq_COFINS).HasColumnName("Aliq_COFINS");
            this.Property(t => t.Aliq_ICMS).HasColumnName("Aliq_ICMS");
            this.Property(t => t.Aliq_ICMS_EXTRA).HasColumnName("Aliq_ICMS_EXTRA");
        }
    }
}
