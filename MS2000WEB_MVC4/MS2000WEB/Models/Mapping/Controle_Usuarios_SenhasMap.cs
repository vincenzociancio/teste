using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_Usuarios_SenhasMap : EntityTypeConfiguration<Controle_Usuarios_Senhas>
    {
        public Controle_Usuarios_SenhasMap()
        {
            // Primary Key
            this.HasKey(t => t.Usuario);

            // Properties
            this.Property(t => t.Usuario)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.Senha_MS2000)
                .HasMaxLength(50);

            this.Property(t => t.Senha_Rede)
                .HasMaxLength(50);

            this.Property(t => t.Senha_Internet)
                .HasMaxLength(50);

            this.Property(t => t.Senha_Email)
                .HasMaxLength(50);

            this.Property(t => t.Senha_Acesso)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Controle_Usuarios_Senhas");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
            this.Property(t => t.Senha_MS2000).HasColumnName("Senha_MS2000");
            this.Property(t => t.Senha_Rede).HasColumnName("Senha_Rede");
            this.Property(t => t.Senha_Internet).HasColumnName("Senha_Internet");
            this.Property(t => t.Senha_Email).HasColumnName("Senha_Email");
            this.Property(t => t.Senha_Acesso).HasColumnName("Senha_Acesso");
        }
    }
}
