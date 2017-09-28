using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class AcessoAcaoEspecificaGrupoMap : EntityTypeConfiguration<AcessoAcaoEspecificaGrupo>
    {
        public AcessoAcaoEspecificaGrupoMap()
        {
            // Primary Key
            this.HasKey(t => new { t.FK_AcaoEspecifica, t.FK_Grupo });

            // Properties
            this.Property(t => t.PK_AcaoEspecificaGrupo)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.FK_AcaoEspecifica)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.FK_Grupo)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("AcessoAcaoEspecificaGrupo");
            this.Property(t => t.PK_AcaoEspecificaGrupo).HasColumnName("PK_AcaoEspecificaGrupo");
            this.Property(t => t.FK_AcaoEspecifica).HasColumnName("FK_AcaoEspecifica");
            this.Property(t => t.FK_Grupo).HasColumnName("FK_Grupo");
            this.Property(t => t.Acessa).HasColumnName("Acessa");

            // Relationships
            this.HasRequired(t => t.AcessoAcaoEspecifica)
                .WithMany(t => t.AcessoAcaoEspecificaGrupoes)
                .HasForeignKey(d => d.FK_AcaoEspecifica);
            this.HasRequired(t => t.AcessoGrupos)
                .WithMany(t => t.AcessoAcaoEspecificaGrupoes)
                .HasForeignKey(d => d.FK_Grupo);

        }
    }
}
