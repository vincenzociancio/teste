using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Anl_Des_ResultadosMap : EntityTypeConfiguration<Anl_Des_Resultados>
    {
        public Anl_Des_ResultadosMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Fk_Analise, t.Codigo, t.Colaborador, t.Nome, t.Fk_Competencia, t.Fk_Pergunta });

            // Properties
            this.Property(t => t.Fk_Analise)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Codigo)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Colaborador)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.Nome)
                .IsRequired()
                .HasMaxLength(45);

            this.Property(t => t.Fk_Competencia)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Fk_Pergunta)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("Anl_Des_Resultados");
            this.Property(t => t.Fk_Analise).HasColumnName("Fk_Analise");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Colaborador).HasColumnName("Colaborador");
            this.Property(t => t.Nome).HasColumnName("Nome");
            this.Property(t => t.Fk_Competencia).HasColumnName("Fk_Competencia");
            this.Property(t => t.Fk_Pergunta).HasColumnName("Fk_Pergunta");
            this.Property(t => t.Resp_Usuario).HasColumnName("Resp_Usuario");
            this.Property(t => t.Resp_Supervisor).HasColumnName("Resp_Supervisor");
            this.Property(t => t.Resp_Gestor).HasColumnName("Resp_Gestor");
            this.Property(t => t.Result_Usuario).HasColumnName("Result_Usuario");
            this.Property(t => t.Result_Supervisor).HasColumnName("Result_Supervisor");
            this.Property(t => t.Result_Gestor).HasColumnName("Result_Gestor");
        }
    }
}
