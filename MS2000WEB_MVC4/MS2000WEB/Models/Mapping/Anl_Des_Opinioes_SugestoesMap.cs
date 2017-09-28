using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Anl_Des_Opinioes_SugestoesMap : EntityTypeConfiguration<Anl_Des_Opinioes_Sugestoes>
    {
        public Anl_Des_Opinioes_SugestoesMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Fk_Analise, t.Codigo, t.Colaborador });

            // Properties
            this.Property(t => t.Fk_Analise)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Codigo)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Colaborador)
                .IsRequired()
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Anl_Des_Opinioes_Sugestoes");
            this.Property(t => t.Fk_Analise).HasColumnName("Fk_Analise");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Colaborador).HasColumnName("Colaborador");
            this.Property(t => t.Colaborador_Impacto_Profissional).HasColumnName("Colaborador_Impacto_Profissional");
            this.Property(t => t.Supervisor_Treinamentos_Sugeridos).HasColumnName("Supervisor_Treinamentos_Sugeridos");
            this.Property(t => t.Gestor_Treinamentos_Sugeridos).HasColumnName("Gestor_Treinamentos_Sugeridos");
        }
    }
}
