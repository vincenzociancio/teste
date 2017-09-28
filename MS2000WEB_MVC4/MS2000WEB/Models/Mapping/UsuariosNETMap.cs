using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class UsuariosNETMap : EntityTypeConfiguration<UsuariosNET>
    {
        public UsuariosNETMap()
        {
            // Primary Key
            this.HasKey(t => new { t.CGC_CPF, t.Usuario, t.Senha });

            // Properties
            this.Property(t => t.CGC_CPF)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.Usuario)
                .IsRequired()
                .HasMaxLength(20);

            this.Property(t => t.Senha)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.Nome_Completo)
                .HasMaxLength(70);

            this.Property(t => t.Email)
                .HasMaxLength(50);

            this.Property(t => t.Nivel)
                .HasMaxLength(1);

            // Table & Column Mappings
            this.ToTable("UsuariosNET");
            this.Property(t => t.CGC_CPF).HasColumnName("CGC_CPF");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
            this.Property(t => t.Senha).HasColumnName("Senha");
            this.Property(t => t.Nome_Completo).HasColumnName("Nome_Completo");
            this.Property(t => t.Email).HasColumnName("Email");
            this.Property(t => t.Nivel).HasColumnName("Nivel");
            this.Property(t => t.Acesso_habilitado).HasColumnName("Acesso_habilitado");
            this.Property(t => t.PK_USUARIO).HasColumnName("PK_USUARIO");
        }
    }
}
