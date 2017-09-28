using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Emails_avisos_MS2000Map : EntityTypeConfiguration<Emails_avisos_MS2000>
    {
        public Emails_avisos_MS2000Map()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Tipo, t.Usuario });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Tipo)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Usuario)
                .IsRequired()
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Emails_avisos_MS2000");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Tipo).HasColumnName("Tipo");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
        }
    }
}
