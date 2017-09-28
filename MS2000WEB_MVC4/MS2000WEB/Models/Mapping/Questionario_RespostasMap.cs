using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Questionario_RespostasMap : EntityTypeConfiguration<Questionario_Respostas>
    {
        public Questionario_RespostasMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_Resposta);

            // Properties
            // Table & Column Mappings
            this.ToTable("Questionario_Respostas");
            this.Property(t => t.PK_Resposta).HasColumnName("PK_Resposta");
            this.Property(t => t.FK_Senha).HasColumnName("FK_Senha");
            this.Property(t => t.FK_Alternativa).HasColumnName("FK_Alternativa");

            // Relationships
            this.HasOptional(t => t.Questionario_Alternativas)
                .WithMany(t => t.Questionario_Respostas)
                .HasForeignKey(d => d.FK_Alternativa);
            this.HasOptional(t => t.Questionario_Senhas)
                .WithMany(t => t.Questionario_Respostas)
                .HasForeignKey(d => d.FK_Senha);

        }
    }
}
