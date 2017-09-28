using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Cambio_antecipado_faturasMap : EntityTypeConfiguration<Cambio_antecipado_faturas>
    {
        public Cambio_antecipado_faturasMap()
        {
            // Primary Key
            this.HasKey(t => t.REG);

            // Properties
            this.Property(t => t.CGC_CPF)
                .HasMaxLength(10);

            this.Property(t => t.CONTRATO_CAMBIO)
                .HasMaxLength(10);

            this.Property(t => t.Fatura)
                .HasMaxLength(30);

            this.Property(t => t.Processo)
                .HasMaxLength(8);

            this.Property(t => t.OBS)
                .HasMaxLength(255);

            // Table & Column Mappings
            this.ToTable("Cambio_antecipado_faturas");
            this.Property(t => t.REG).HasColumnName("REG");
            this.Property(t => t.CGC_CPF).HasColumnName("CGC_CPF");
            this.Property(t => t.CONTRATO_CAMBIO).HasColumnName("CONTRATO_CAMBIO");
            this.Property(t => t.Fatura).HasColumnName("Fatura");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Valor_Total).HasColumnName("Valor_Total");
            this.Property(t => t.Vinculada).HasColumnName("Vinculada");
            this.Property(t => t.OBS).HasColumnName("OBS");
            this.Property(t => t.DT_PAG_CAMBIO).HasColumnName("DT_PAG_CAMBIO");
        }
    }
}
