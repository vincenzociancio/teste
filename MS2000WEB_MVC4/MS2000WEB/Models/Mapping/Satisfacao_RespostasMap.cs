using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Satisfacao_RespostasMap : EntityTypeConfiguration<Satisfacao_Respostas>
    {
        public Satisfacao_RespostasMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_Respostas);

            // Properties
            this.Property(t => t.Alternativa)
                .HasMaxLength(4);

            this.Property(t => t.Comentarios)
                .HasMaxLength(300);

            this.Property(t => t.data)
                .HasMaxLength(30);

            // Table & Column Mappings
            this.ToTable("Satisfacao_Respostas");
            this.Property(t => t.PK_Respostas).HasColumnName("PK_Respostas");
            this.Property(t => t.FK_Pergunta).HasColumnName("FK_Pergunta");
            this.Property(t => t.FK_Usuario).HasColumnName("FK_Usuario");
            this.Property(t => t.Alternativa).HasColumnName("Alternativa");
            this.Property(t => t.Comentarios).HasColumnName("Comentarios");
            this.Property(t => t.data).HasColumnName("data");

            // Relationships
            this.HasOptional(t => t.Satisfacao_Perguntas)
                .WithMany(t => t.Satisfacao_Respostas)
                .HasForeignKey(d => d.FK_Pergunta);
            this.HasOptional(t => t.Satisfacao_Usuario)
                .WithMany(t => t.Satisfacao_Respostas)
                .HasForeignKey(d => d.FK_Usuario);

        }
    }
}
