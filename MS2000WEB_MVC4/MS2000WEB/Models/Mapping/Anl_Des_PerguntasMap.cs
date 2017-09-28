using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Anl_Des_PerguntasMap : EntityTypeConfiguration<Anl_Des_Perguntas>
    {
        public Anl_Des_PerguntasMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Fk_Analise, t.Fk_Competencia, t.Codigo, t.Descricao, t.Ordem });

            // Properties
            this.Property(t => t.Fk_Analise)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Fk_Competencia)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Codigo)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Descricao)
                .IsRequired()
                .HasMaxLength(200);

            this.Property(t => t.Ordem)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("Anl_Des_Perguntas");
            this.Property(t => t.Fk_Analise).HasColumnName("Fk_Analise");
            this.Property(t => t.Fk_Competencia).HasColumnName("Fk_Competencia");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Ordem).HasColumnName("Ordem");
        }
    }
}
