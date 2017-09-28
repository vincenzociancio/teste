using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_SoftwaresMap : EntityTypeConfiguration<Controle_Softwares>
    {
        public Controle_SoftwaresMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Plaqueta, t.Software });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Plaqueta)
                .IsRequired()
                .HasMaxLength(20);

            this.Property(t => t.Software)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Licenca)
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("Controle_Softwares");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Plaqueta).HasColumnName("Plaqueta");
            this.Property(t => t.Software).HasColumnName("Software");
            this.Property(t => t.Licenca).HasColumnName("Licenca");
        }
    }
}
