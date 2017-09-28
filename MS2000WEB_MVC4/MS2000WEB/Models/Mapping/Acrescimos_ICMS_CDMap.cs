using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Acrescimos_ICMS_CDMap : EntityTypeConfiguration<Acrescimos_ICMS_CD>
    {
        public Acrescimos_ICMS_CDMap()
        {
            // Primary Key
            this.HasKey(t => new { t.CD_ACRESC_ICMS, t.DESCRICAO });

            // Properties
            this.Property(t => t.CD_ACRESC_ICMS)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.DESCRICAO)
                .IsRequired()
                .IsFixedLength()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Acrescimos_ICMS_CD");
            this.Property(t => t.CD_ACRESC_ICMS).HasColumnName("CD_ACRESC_ICMS");
            this.Property(t => t.DESCRICAO).HasColumnName("DESCRICAO");
        }
    }
}
