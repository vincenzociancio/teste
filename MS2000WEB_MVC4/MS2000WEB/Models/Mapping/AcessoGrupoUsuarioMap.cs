using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class AcessoGrupoUsuarioMap : EntityTypeConfiguration<AcessoGrupoUsuario>
    {
        public AcessoGrupoUsuarioMap()
        {
            // Primary Key
            this.HasKey(t => new { t.FK_Usuario, t.FK_AcessoGrupo });

            // Properties
            this.Property(t => t.PK_GrupoUsuario)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.FK_Usuario)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.FK_AcessoGrupo)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("AcessoGrupoUsuario");
            this.Property(t => t.PK_GrupoUsuario).HasColumnName("PK_GrupoUsuario");
            this.Property(t => t.FK_Usuario).HasColumnName("FK_Usuario");
            this.Property(t => t.FK_AcessoGrupo).HasColumnName("FK_AcessoGrupo");

            // Relationships
            this.HasRequired(t => t.AcessoGrupos)
                .WithMany(t => t.AcessoGrupoUsuarios)
                .HasForeignKey(d => d.FK_AcessoGrupo);

        }
    }
}
