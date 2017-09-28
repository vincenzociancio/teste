using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class NCM_COM_LIMap : EntityTypeConfiguration<NCM_COM_LI>
    {
        public NCM_COM_LIMap()
        {
            // Primary Key
            this.HasKey(t => new { t.CODNCM, t.TRATADM, t.DATA_CARGA });

            // Properties
            this.Property(t => t.CODNCM)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.TRATADM)
                .IsRequired()
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("NCM_COM_LI");
            this.Property(t => t.CODNCM).HasColumnName("CODNCM");
            this.Property(t => t.TRATADM).HasColumnName("TRATADM");
            this.Property(t => t.DATA_CARGA).HasColumnName("DATA_CARGA");
        }
    }
}
