using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Observacoes_Processo_FinanceiroMap : EntityTypeConfiguration<Observacoes_Processo_Financeiro>
    {
        public Observacoes_Processo_FinanceiroMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Codigo });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(8);

            // Table & Column Mappings
            this.ToTable("Observacoes_Processo_Financeiro");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Observacoes).HasColumnName("Observacoes");
        }
    }
}
