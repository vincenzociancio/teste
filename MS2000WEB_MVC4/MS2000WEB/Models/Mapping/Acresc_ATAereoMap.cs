using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Acresc_ATAereoMap : EntityTypeConfiguration<Acresc_ATAereo>
    {
        public Acresc_ATAereoMap()
        {
            // Primary Key
            this.HasKey(t => t.processo);

            // Properties
            this.Property(t => t.processo)
                .IsRequired()
                .HasMaxLength(8);

            // Table & Column Mappings
            this.ToTable("Acresc_ATAereo");
            this.Property(t => t.processo).HasColumnName("processo");
            this.Property(t => t.valor).HasColumnName("valor");
            this.Property(t => t.Aliq).HasColumnName("Aliq");
            this.Property(t => t.ICMS).HasColumnName("ICMS");
            this.Property(t => t.FECP).HasColumnName("FECP");
        }
    }
}
