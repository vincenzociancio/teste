using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Satisfacao_UsuarioMap : EntityTypeConfiguration<Satisfacao_Usuario>
    {
        public Satisfacao_UsuarioMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_usuario);

            // Properties
            this.Property(t => t.Nome)
                .IsRequired()
                .HasMaxLength(30);

            this.Property(t => t.Pin)
                .IsRequired()
                .HasMaxLength(6);

            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(40);

            // Table & Column Mappings
            this.ToTable("Satisfacao_Usuario");
            this.Property(t => t.PK_usuario).HasColumnName("PK_usuario");
            this.Property(t => t.Nome).HasColumnName("Nome");
            this.Property(t => t.Pin).HasColumnName("Pin");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
        }
    }
}
