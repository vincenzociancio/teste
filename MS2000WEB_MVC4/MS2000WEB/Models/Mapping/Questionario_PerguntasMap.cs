using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Questionario_PerguntasMap : EntityTypeConfiguration<Questionario_Perguntas>
    {
        public Questionario_PerguntasMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_Perguntas);

            // Properties
            this.Property(t => t.Perguntas)
                .HasMaxLength(255);

            // Table & Column Mappings
            this.ToTable("Questionario_Perguntas");
            this.Property(t => t.PK_Perguntas).HasColumnName("PK_Perguntas");
            this.Property(t => t.FK_Questionario).HasColumnName("FK_Questionario");
            this.Property(t => t.Perguntas).HasColumnName("Perguntas");

            // Relationships
            this.HasOptional(t => t.Questionario_Questionario)
                .WithMany(t => t.Questionario_Perguntas)
                .HasForeignKey(d => d.FK_Questionario);

        }
    }
}
