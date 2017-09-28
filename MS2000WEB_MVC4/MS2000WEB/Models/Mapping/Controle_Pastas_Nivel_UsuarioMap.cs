using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_Pastas_Nivel_UsuarioMap : EntityTypeConfiguration<Controle_Pastas_Nivel_Usuario>
    {
        public Controle_Pastas_Nivel_UsuarioMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Nivel_Dificuldade, t.Usuario });

            // Properties
            this.Property(t => t.Nivel_Dificuldade)
                .IsRequired()
                .HasMaxLength(1);

            this.Property(t => t.Usuario)
                .IsRequired()
                .HasMaxLength(15);

            // Table & Column Mappings
            this.ToTable("Controle_Pastas_Nivel_Usuario");
            this.Property(t => t.Nivel_Dificuldade).HasColumnName("Nivel_Dificuldade");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
            this.Property(t => t.Data).HasColumnName("Data");
        }
    }
}
