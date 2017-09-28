using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class UsuariosMenuMap : EntityTypeConfiguration<UsuariosMenu>
    {
        public UsuariosMenuMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Usuario, t.Menu });

            // Properties
            this.Property(t => t.Usuario)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.Menu)
                .IsRequired()
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("UsuariosMenus");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
            this.Property(t => t.Menu).HasColumnName("Menu");
            this.Property(t => t.ACESSA).HasColumnName("ACESSA");
            this.Property(t => t.Editar).HasColumnName("Editar");
            this.Property(t => t.Excluir).HasColumnName("Excluir");
            this.Property(t => t.Incluir).HasColumnName("Incluir");
        }
    }
}
