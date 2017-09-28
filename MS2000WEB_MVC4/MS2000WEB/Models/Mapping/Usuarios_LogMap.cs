using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Usuarios_LogMap : EntityTypeConfiguration<Usuarios_Log>
    {
        public Usuarios_LogMap()
        {
            // Primary Key
            this.HasKey(t => t.pk_usuario_log);

            // Properties
            this.Property(t => t.descricao)
                .HasMaxLength(500);

            this.Property(t => t.fk_processo)
                .HasMaxLength(8);

            // Table & Column Mappings
            this.ToTable("Usuarios_Log");
            this.Property(t => t.pk_usuario_log).HasColumnName("pk_usuario_log");
            this.Property(t => t.fk_usuario).HasColumnName("fk_usuario");
            this.Property(t => t.movimentacao).HasColumnName("movimentacao");
            this.Property(t => t.descricao).HasColumnName("descricao");
            this.Property(t => t.data).HasColumnName("data");
            this.Property(t => t.fk_processo).HasColumnName("fk_processo");
            this.Property(t => t.sistema).HasColumnName("sistema");
        }
    }
}
