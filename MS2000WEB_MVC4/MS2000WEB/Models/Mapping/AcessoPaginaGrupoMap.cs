using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class AcessoPaginaGrupoMap : EntityTypeConfiguration<AcessoPaginaGrupo>
    {
        public AcessoPaginaGrupoMap()
        {
            // Primary Key
            this.HasKey(t => new { t.FK_AcessoPaginas, t.FK_AcessoGrupo });

            // Properties
            this.Property(t => t.PK_PaginaGrupo)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.FK_AcessoPaginas)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.FK_AcessoGrupo)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("AcessoPaginaGrupo");
            this.Property(t => t.PK_PaginaGrupo).HasColumnName("PK_PaginaGrupo");
            this.Property(t => t.FK_AcessoPaginas).HasColumnName("FK_AcessoPaginas");
            this.Property(t => t.FK_AcessoGrupo).HasColumnName("FK_AcessoGrupo");
            this.Property(t => t.C).HasColumnName("C");
            this.Property(t => t.R).HasColumnName("R");
            this.Property(t => t.U).HasColumnName("U");
            this.Property(t => t.D).HasColumnName("D");
            this.Property(t => t.Acessa).HasColumnName("Acessa");

            // Relationships
            this.HasRequired(t => t.AcessoGrupos)
                .WithMany(t => t.AcessoPaginaGrupoes)
                .HasForeignKey(d => d.FK_AcessoGrupo);
            this.HasRequired(t => t.AcessoPagina)
                .WithMany(t => t.AcessoPaginaGrupoes)
                .HasForeignKey(d => d.FK_AcessoPaginas);

        }
    }
}
