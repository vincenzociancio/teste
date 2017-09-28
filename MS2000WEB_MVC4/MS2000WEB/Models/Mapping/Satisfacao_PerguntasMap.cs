using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Satisfacao_PerguntasMap : EntityTypeConfiguration<Satisfacao_Perguntas>
    {
        public Satisfacao_PerguntasMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_Perguntas);

            // Properties
            this.Property(t => t.Perguntas)
                .IsRequired()
                .HasMaxLength(255);

            // Table & Column Mappings
            this.ToTable("Satisfacao_Perguntas");
            this.Property(t => t.PK_Perguntas).HasColumnName("PK_Perguntas");
            this.Property(t => t.FK_questionario).HasColumnName("FK_questionario");
            this.Property(t => t.Perguntas).HasColumnName("Perguntas");
            this.Property(t => t.IDL).HasColumnName("IDL");

            // Relationships
            this.HasOptional(t => t.Satisfacao_Questionario)
                .WithMany(t => t.Satisfacao_Perguntas)
                .HasForeignKey(d => d.FK_questionario);

        }
    }
}
