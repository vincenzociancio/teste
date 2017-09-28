using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Avaliacao_RespostasMap : EntityTypeConfiguration<Avaliacao_Respostas>
    {
        public Avaliacao_RespostasMap()
        {
            // Primary Key
            this.HasKey(t => t.ID);

            // Properties
            this.Property(t => t.Descricao)
                .IsRequired()
                .HasMaxLength(500);

            // Table & Column Mappings
            this.ToTable("Avaliacao_Respostas");
            this.Property(t => t.ID).HasColumnName("ID");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.FK_Pergunta).HasColumnName("FK_Pergunta");
            this.Property(t => t.Correta).HasColumnName("Correta");

            // Relationships
            this.HasRequired(t => t.Avaliacao_Perguntas)
                .WithMany(t => t.Avaliacao_Respostas)
                .HasForeignKey(d => d.FK_Pergunta);

        }
    }
}
