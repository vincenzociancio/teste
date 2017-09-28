using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Usuarios_Resp_Habilitados_oldMap : EntityTypeConfiguration<Usuarios_Resp_Habilitados_old>
    {
        public Usuarios_Resp_Habilitados_oldMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Usuarios, t.Usuarios_HABILITADO });

            // Properties
            this.Property(t => t.Usuarios)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.Usuarios_HABILITADO)
                .IsRequired()
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Usuarios_Resp_Habilitados_old");
            this.Property(t => t.Usuarios).HasColumnName("Usuarios");
            this.Property(t => t.Usuarios_HABILITADO).HasColumnName("Usuarios_HABILITADO");
            this.Property(t => t.Habilitado).HasColumnName("Habilitado");
        }
    }
}
