using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class usuarios_beneficio_repetroMap : EntityTypeConfiguration<usuarios_beneficio_repetro>
    {
        public usuarios_beneficio_repetroMap()
        {
            // Primary Key
            this.HasKey(t => t.Usuario);

            // Properties
            this.Property(t => t.Nome_Completo)
                .HasMaxLength(70);

            this.Property(t => t.Usuario)
                .IsRequired()
                .HasMaxLength(20);

            this.Property(t => t.Senha)
                .HasMaxLength(10);

            this.Property(t => t.Email)
                .HasMaxLength(50);

            this.Property(t => t.Nivel)
                .HasMaxLength(1);

            // Table & Column Mappings
            this.ToTable("usuarios_beneficio_repetro");
            this.Property(t => t.Nome_Completo).HasColumnName("Nome_Completo");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
            this.Property(t => t.Senha).HasColumnName("Senha");
            this.Property(t => t.Email).HasColumnName("Email");
            this.Property(t => t.Nivel).HasColumnName("Nivel");
        }
    }
}
