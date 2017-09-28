using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class TAB_FUND_LEGAL_PIS_COFINSMap : EntityTypeConfiguration<TAB_FUND_LEGAL_PIS_COFINS>
    {
        public TAB_FUND_LEGAL_PIS_COFINSMap()
        {
            // Primary Key
            this.HasKey(t => t.CODIGO);

            // Properties
            this.Property(t => t.CODIGO)
                .IsRequired()
                .HasMaxLength(2);

            this.Property(t => t.DESCRICAO)
                .HasMaxLength(120);

            this.Property(t => t.REG_TRIBUT_1)
                .HasMaxLength(1);

            this.Property(t => t.REG_TRIBUT_2)
                .HasMaxLength(1);

            this.Property(t => t.REG_TRIBUT_3)
                .HasMaxLength(1);

            this.Property(t => t.REG_TRIBUT_4)
                .HasMaxLength(1);

            // Table & Column Mappings
            this.ToTable("TAB_FUND_LEGAL_PIS_COFINS");
            this.Property(t => t.CODIGO).HasColumnName("CODIGO");
            this.Property(t => t.DESCRICAO).HasColumnName("DESCRICAO");
            this.Property(t => t.REG_TRIBUT_1).HasColumnName("REG_TRIBUT_1");
            this.Property(t => t.REG_TRIBUT_2).HasColumnName("REG_TRIBUT_2");
            this.Property(t => t.REG_TRIBUT_3).HasColumnName("REG_TRIBUT_3");
            this.Property(t => t.REG_TRIBUT_4).HasColumnName("REG_TRIBUT_4");
        }
    }
}
