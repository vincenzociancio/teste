using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Questionario_QuestionarioMap : EntityTypeConfiguration<Questionario_Questionario>
    {
        public Questionario_QuestionarioMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_Questionario);

            // Properties
            this.Property(t => t.Titulo)
                .HasMaxLength(50);

            this.Property(t => t.Solicitante)
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Questionario_Questionario");
            this.Property(t => t.PK_Questionario).HasColumnName("PK_Questionario");
            this.Property(t => t.Titulo).HasColumnName("Titulo");
            this.Property(t => t.Inicio).HasColumnName("Inicio");
            this.Property(t => t.Fim).HasColumnName("Fim");
            this.Property(t => t.Solicitante).HasColumnName("Solicitante");
        }
    }
}
