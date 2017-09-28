using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class EntradaMap : EntityTypeConfiguration<Entrada>
    {
        public EntradaMap()
        {
            // Primary Key
            this.HasKey(t => t.Num);

            // Properties
            this.Property(t => t.ID)
                .HasMaxLength(10);

            this.Property(t => t.IP)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Entrada");
            this.Property(t => t.Num).HasColumnName("Num");
            this.Property(t => t.ID).HasColumnName("ID");
            this.Property(t => t.IP).HasColumnName("IP");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Hora).HasColumnName("Hora");
            this.Property(t => t.Browser).HasColumnName("Browser");
        }
    }
}
