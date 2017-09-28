using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Questionario_AlternativasMap : EntityTypeConfiguration<Questionario_Alternativas>
    {
        public Questionario_AlternativasMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_Alternativas);

            // Properties
            this.Property(t => t.Alternativa)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Questionario_Alternativas");
            this.Property(t => t.PK_Alternativas).HasColumnName("PK_Alternativas");
            this.Property(t => t.FK_Perguntas).HasColumnName("FK_Perguntas");
            this.Property(t => t.Alternativa).HasColumnName("Alternativa");
            this.Property(t => t.Selecao).HasColumnName("Selecao");

            // Relationships
            this.HasOptional(t => t.Questionario_Perguntas)
                .WithMany(t => t.Questionario_Alternativas)
                .HasForeignKey(d => d.FK_Perguntas);

        }
    }
}
