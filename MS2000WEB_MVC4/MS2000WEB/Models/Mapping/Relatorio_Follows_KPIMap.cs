using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Relatorio_Follows_KPIMap : EntityTypeConfiguration<Relatorio_Follows_KPI>
    {
        public Relatorio_Follows_KPIMap()
        {
            // Primary Key
            this.HasKey(t => t.Processo);

            // Properties
            this.Property(t => t.Processo)
                .IsRequired()
                .HasMaxLength(8);

            // Table & Column Mappings
            this.ToTable("Relatorio_Follows_KPI");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
        }
    }
}
