using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_PastasMap : EntityTypeConfiguration<Controle_Pastas>
    {
        public Controle_PastasMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Processo });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Usuario)
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Controle_Pastas");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
            this.Property(t => t.Aceite).HasColumnName("Aceite");
            this.Property(t => t.Data).HasColumnName("Data");
        }
    }
}
