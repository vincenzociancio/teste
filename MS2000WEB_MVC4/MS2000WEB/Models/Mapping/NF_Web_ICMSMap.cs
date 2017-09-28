using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class NF_Web_ICMSMap : EntityTypeConfiguration<NF_Web_ICMS>
    {
        public NF_Web_ICMSMap()
        {
            // Primary Key
            this.HasKey(t => t.UF);

            // Properties
            this.Property(t => t.UF)
                .IsRequired()
                .HasMaxLength(2);

            // Table & Column Mappings
            this.ToTable("NF_Web_ICMS");
            this.Property(t => t.UF).HasColumnName("UF");
            this.Property(t => t.AliquotaICMS).HasColumnName("AliquotaICMS");
        }
    }
}
