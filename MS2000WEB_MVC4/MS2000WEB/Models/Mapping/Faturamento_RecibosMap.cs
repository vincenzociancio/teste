using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Faturamento_RecibosMap : EntityTypeConfiguration<Faturamento_Recibos>
    {
        public Faturamento_RecibosMap()
        {
            // Primary Key
            this.HasKey(t => t.Pk);

            // Properties
            this.Property(t => t.Recibo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Cliente)
                .IsRequired()
                .HasMaxLength(250);

            this.Property(t => t.Debito)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Percentual_Extenso)
                .HasMaxLength(250);

            // Table & Column Mappings
            this.ToTable("Faturamento_Recibos");
            this.Property(t => t.Pk).HasColumnName("Pk");
            this.Property(t => t.Recibo).HasColumnName("Recibo");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Cliente).HasColumnName("Cliente");
            this.Property(t => t.Debito).HasColumnName("Debito");
            this.Property(t => t.Valor_Total).HasColumnName("Valor_Total");
            this.Property(t => t.Percentual_11).HasColumnName("Percentual_11");
            this.Property(t => t.Percentual_Extenso).HasColumnName("Percentual_Extenso");
        }
    }
}
