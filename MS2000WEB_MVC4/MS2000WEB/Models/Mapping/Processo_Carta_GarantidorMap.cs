using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Processo_Carta_GarantidorMap : EntityTypeConfiguration<Processo_Carta_Garantidor>
    {
        public Processo_Carta_GarantidorMap()
        {
            // Primary Key
            this.HasKey(t => t.ID);

            // Properties
            this.Property(t => t.Processo)
                .HasMaxLength(8);

            // Table & Column Mappings
            this.ToTable("Processo_Carta_Garantidor");
            this.Property(t => t.ID).HasColumnName("ID");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Periodo_fianca_inicial).HasColumnName("Periodo_fianca_inicial");
            this.Property(t => t.Periodo_fianca_final).HasColumnName("Periodo_fianca_final");
        }
    }
}
