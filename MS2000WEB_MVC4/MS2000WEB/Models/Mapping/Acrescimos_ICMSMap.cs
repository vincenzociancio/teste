using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Acrescimos_ICMSMap : EntityTypeConfiguration<Acrescimos_ICMS>
    {
        public Acrescimos_ICMSMap()
        {
            // Primary Key
            this.HasKey(t => new { t.PROCESSO, t.FATURA, t.CD_ACRESC_ICMS });

            // Properties
            this.Property(t => t.PROCESSO)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.FATURA)
                .IsRequired()
                .HasMaxLength(30);

            this.Property(t => t.CD_ACRESC_ICMS)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("Acrescimos_ICMS");
            this.Property(t => t.PROCESSO).HasColumnName("PROCESSO");
            this.Property(t => t.FATURA).HasColumnName("FATURA");
            this.Property(t => t.CD_ACRESC_ICMS).HasColumnName("CD_ACRESC_ICMS");
            this.Property(t => t.VL_ACRESCIMO).HasColumnName("VL_ACRESCIMO");
        }
    }
}
