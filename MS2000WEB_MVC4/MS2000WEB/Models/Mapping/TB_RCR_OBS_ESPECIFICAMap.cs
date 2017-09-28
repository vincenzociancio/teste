using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class TB_RCR_OBS_ESPECIFICAMap : EntityTypeConfiguration<TB_RCR_OBS_ESPECIFICA>
    {
        public TB_RCR_OBS_ESPECIFICAMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_OBS);

            // Properties
            this.Property(t => t.DESC_OBS)
                .IsRequired()
                .HasMaxLength(280);

            // Table & Column Mappings
            this.ToTable("TB_RCR_OBS_ESPECIFICA");
            this.Property(t => t.PK_OBS).HasColumnName("PK_OBS");
            this.Property(t => t.DESC_OBS).HasColumnName("DESC_OBS");
            this.Property(t => t.Excluido).HasColumnName("Excluido");
        }
    }
}
