using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class AcessoGruposMap : EntityTypeConfiguration<AcessoGrupos>
    {
        public AcessoGruposMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_AcessoGrupo);

            // Properties
            this.Property(t => t.Descricao)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("AcessoGrupos");
            this.Property(t => t.PK_AcessoGrupo).HasColumnName("PK_AcessoGrupo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
        }
    }
}
