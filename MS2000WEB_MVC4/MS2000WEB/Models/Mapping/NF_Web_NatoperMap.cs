using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class NF_Web_NatoperMap : EntityTypeConfiguration<NF_Web_Natoper>
    {
        public NF_Web_NatoperMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Tiponf, t.CFOP });

            // Properties
            this.Property(t => t.Tiponf)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.CFOP)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Descricao)
                .HasMaxLength(80);

            this.Property(t => t.TIPOCFOP)
                .HasMaxLength(1);

            // Table & Column Mappings
            this.ToTable("NF_Web_Natoper");
            this.Property(t => t.Tiponf).HasColumnName("Tiponf");
            this.Property(t => t.CFOP).HasColumnName("CFOP");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.TIPOCFOP).HasColumnName("TIPOCFOP");
        }
    }
}
