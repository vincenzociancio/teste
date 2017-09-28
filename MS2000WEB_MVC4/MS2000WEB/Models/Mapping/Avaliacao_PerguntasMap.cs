using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Avaliacao_PerguntasMap : EntityTypeConfiguration<Avaliacao_Perguntas>
    {
        public Avaliacao_PerguntasMap()
        {
            // Primary Key
            this.HasKey(t => t.ID);

            // Properties
            this.Property(t => t.Descricao)
                .IsRequired()
                .HasMaxLength(500);

            this.Property(t => t.FK_Setor)
                .HasMaxLength(4);

            // Table & Column Mappings
            this.ToTable("Avaliacao_Perguntas");
            this.Property(t => t.ID).HasColumnName("ID");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.FK_Setor).HasColumnName("FK_Setor");
            this.Property(t => t.FK_Categoria).HasColumnName("FK_Categoria");

            // Relationships
            this.HasOptional(t => t.Avaliacao_Categoria)
                .WithMany(t => t.Avaliacao_Perguntas)
                .HasForeignKey(d => d.FK_Categoria);

        }
    }
}
