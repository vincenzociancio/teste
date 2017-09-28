using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class TAB_ATRIB_VALORACAO_NVEMap : EntityTypeConfiguration<TAB_ATRIB_VALORACAO_NVE>
    {
        public TAB_ATRIB_VALORACAO_NVEMap()
        {
            // Primary Key
            this.HasKey(t => new { t.CD_NOMENC_NCM, t.CD_ATRIBUTO_NCM });

            // Properties
            this.Property(t => t.CD_NOMENC_NCM)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.CD_ATRIBUTO_NCM)
                .IsRequired()
                .HasMaxLength(2);

            this.Property(t => t.IN_MULTIPLA_ESPECIF)
                .HasMaxLength(1);

            this.Property(t => t.CD_NIVEL_NCM)
                .HasMaxLength(3);

            this.Property(t => t.NM_ATRIBUTO)
                .HasMaxLength(249);

            // Table & Column Mappings
            this.ToTable("TAB_ATRIB_VALORACAO_NVE");
            this.Property(t => t.CD_NOMENC_NCM).HasColumnName("CD_NOMENC_NCM");
            this.Property(t => t.CD_ATRIBUTO_NCM).HasColumnName("CD_ATRIBUTO_NCM");
            this.Property(t => t.IN_MULTIPLA_ESPECIF).HasColumnName("IN_MULTIPLA_ESPECIF");
            this.Property(t => t.CD_NIVEL_NCM).HasColumnName("CD_NIVEL_NCM");
            this.Property(t => t.NM_ATRIBUTO).HasColumnName("NM_ATRIBUTO");
        }
    }
}
