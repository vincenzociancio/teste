using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class TAB_REGRAS_DSI_PIS_COFINSMap : EntityTypeConfiguration<TAB_REGRAS_DSI_PIS_COFINS>
    {
        public TAB_REGRAS_DSI_PIS_COFINSMap()
        {
            // Primary Key
            this.HasKey(t => new { t.CD_NAT_OPERACAO, t.CD_REGIME_TRIBUTAR, t.CD_FUND_LEG_REGIME, t.CD_REGIME_TRIBUTAR_II });

            // Properties
            this.Property(t => t.CD_NAT_OPERACAO)
                .IsRequired()
                .HasMaxLength(2);

            this.Property(t => t.CD_REGIME_TRIBUTAR)
                .IsRequired()
                .HasMaxLength(1);

            this.Property(t => t.CD_FUND_LEG_REGIME)
                .IsRequired()
                .HasMaxLength(2);

            this.Property(t => t.CD_REGIME_TRIBUTAR_II)
                .IsRequired()
                .HasMaxLength(1);

            // Table & Column Mappings
            this.ToTable("TAB_REGRAS_DSI_PIS_COFINS");
            this.Property(t => t.CD_NAT_OPERACAO).HasColumnName("CD_NAT_OPERACAO");
            this.Property(t => t.CD_REGIME_TRIBUTAR).HasColumnName("CD_REGIME_TRIBUTAR");
            this.Property(t => t.CD_FUND_LEG_REGIME).HasColumnName("CD_FUND_LEG_REGIME");
            this.Property(t => t.CD_REGIME_TRIBUTAR_II).HasColumnName("CD_REGIME_TRIBUTAR_II");
        }
    }
}
