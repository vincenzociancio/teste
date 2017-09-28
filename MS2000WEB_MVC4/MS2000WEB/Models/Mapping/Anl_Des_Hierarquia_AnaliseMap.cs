using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Anl_Des_Hierarquia_AnaliseMap : EntityTypeConfiguration<Anl_Des_Hierarquia_Analise>
    {
        public Anl_Des_Hierarquia_AnaliseMap()
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

            this.Property(t => t.Supervisor)
                .HasMaxLength(10);

            this.Property(t => t.Gestor)
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Anl_Des_Hierarquia_Analise");
            this.Property(t => t.Fk_Analise).HasColumnName("Fk_Analise");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Colaborador).HasColumnName("Colaborador");
            this.Property(t => t.Supervisor).HasColumnName("Supervisor");
            this.Property(t => t.Gestor).HasColumnName("Gestor");
        }
    }
}
