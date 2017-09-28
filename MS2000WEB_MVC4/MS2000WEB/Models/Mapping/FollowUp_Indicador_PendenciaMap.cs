using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class FollowUp_Indicador_PendenciaMap : EntityTypeConfiguration<FollowUp_Indicador_Pendencia>
    {
        public FollowUp_Indicador_PendenciaMap()
        {
            // Primary Key
            this.HasKey(t => t.DATA_PENDENCIA);

            // Properties
            this.Property(t => t.PK_ID)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            // Table & Column Mappings
            this.ToTable("FollowUp_Indicador_Pendencia");
            this.Property(t => t.PK_ID).HasColumnName("PK_ID");
            this.Property(t => t.QTD_PENDENCIA).HasColumnName("QTD_PENDENCIA");
            this.Property(t => t.DATA_PENDENCIA).HasColumnName("DATA_PENDENCIA");
            this.Property(t => t.Universo).HasColumnName("Universo");
        }
    }
}
