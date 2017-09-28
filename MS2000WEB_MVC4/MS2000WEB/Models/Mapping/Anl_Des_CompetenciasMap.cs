using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Anl_Des_CompetenciasMap : EntityTypeConfiguration<Anl_Des_Competencias>
    {
        public Anl_Des_CompetenciasMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Fk_Analise, t.Codigo, t.Descricao, t.Peso, t.Ativo, t.Ordem });

            // Properties
            this.Property(t => t.Fk_Analise)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Codigo)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Descricao)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.Peso)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Ordem)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("Anl_Des_Competencias");
            this.Property(t => t.Fk_Analise).HasColumnName("Fk_Analise");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Peso).HasColumnName("Peso");
            this.Property(t => t.Ativo).HasColumnName("Ativo");
            this.Property(t => t.Ordem).HasColumnName("Ordem");
        }
    }
}
