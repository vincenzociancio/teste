using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class UsuariosClienteMap : EntityTypeConfiguration<UsuariosCliente>
    {
        public UsuariosClienteMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Usuario, t.Importador });

            // Properties
            this.Property(t => t.Usuario)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.Importador)
                .IsRequired()
                .HasMaxLength(4);

            // Table & Column Mappings
            this.ToTable("UsuariosClientes");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
            this.Property(t => t.Importador).HasColumnName("Importador");
        }
    }
}
