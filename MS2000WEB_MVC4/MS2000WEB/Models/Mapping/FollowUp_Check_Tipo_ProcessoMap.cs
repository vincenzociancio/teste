using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class FollowUp_Check_Tipo_ProcessoMap : EntityTypeConfiguration<FollowUp_Check_Tipo_Processo>
    {
        public FollowUp_Check_Tipo_ProcessoMap()
        {
            // Primary Key
            this.HasKey(t => new { t.PK_ID, t.FK_Tipo_Processo, t.FK_Usuario });

            // Properties
            this.Property(t => t.PK_ID)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.FK_Tipo_Processo)
                .IsRequired()
                .HasMaxLength(2);

            this.Property(t => t.FK_Usuario)
                .IsRequired()
                .IsFixedLength()
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("FollowUp_Check_Tipo_Processo");
            this.Property(t => t.PK_ID).HasColumnName("PK_ID");
            this.Property(t => t.FK_Tipo_Processo).HasColumnName("FK_Tipo_Processo");
            this.Property(t => t.FK_Usuario).HasColumnName("FK_Usuario");
        }
    }
}
