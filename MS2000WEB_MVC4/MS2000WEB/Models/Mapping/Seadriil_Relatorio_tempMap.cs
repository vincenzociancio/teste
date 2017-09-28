using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Seadriil_Relatorio_tempMap : EntityTypeConfiguration<Seadriil_Relatorio_temp>
    {
        public Seadriil_Relatorio_tempMap()
        {
            // Primary Key
            this.HasKey(t => t.Sequencial);

            // Properties
            this.Property(t => t.FX)
                .HasMaxLength(100);

            this.Property(t => t.Tipo)
                .HasMaxLength(5);

            this.Property(t => t.VIA)
                .HasMaxLength(5);

            // Table & Column Mappings
            this.ToTable("Seadriil_Relatorio_temp");
            this.Property(t => t.Sequencial).HasColumnName("Sequencial");
            this.Property(t => t.FX).HasColumnName("FX");
            this.Property(t => t.Tipo).HasColumnName("Tipo");
            this.Property(t => t.VIA).HasColumnName("VIA");
            this.Property(t => t.SDFG).HasColumnName("SDFG");
            this.Property(t => t.DIVERSOS).HasColumnName("DIVERSOS");
            this.Property(t => t.CARGO_AGENT).HasColumnName("CARGO_AGENT");
            this.Property(t => t.MS).HasColumnName("MS");
            this.Property(t => t.COMPANY).HasColumnName("COMPANY");
            this.Property(t => t.DAYS_TO_CLEAR).HasColumnName("DAYS_TO_CLEAR");
            this.Property(t => t.CONTAGEM).HasColumnName("CONTAGEM");
        }
    }
}
