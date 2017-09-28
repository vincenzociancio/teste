using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Satisfacao_QuestionarioMap : EntityTypeConfiguration<Satisfacao_Questionario>
    {
        public Satisfacao_QuestionarioMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_Questionario);

            // Properties
            this.Property(t => t.Solicitante)
                .HasMaxLength(30);

            // Table & Column Mappings
            this.ToTable("Satisfacao_Questionario");
            this.Property(t => t.PK_Questionario).HasColumnName("PK_Questionario");
            this.Property(t => t.Inicio).HasColumnName("Inicio");
            this.Property(t => t.Fim).HasColumnName("Fim");
            this.Property(t => t.Solicitante).HasColumnName("Solicitante");
            this.Property(t => t.Exibir).HasColumnName("Exibir");
        }
    }
}
