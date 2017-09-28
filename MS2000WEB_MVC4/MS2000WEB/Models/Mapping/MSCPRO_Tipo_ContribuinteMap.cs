using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSCPRO_Tipo_ContribuinteMap : EntityTypeConfiguration<MSCPRO_Tipo_Contribuinte>
    {
        public MSCPRO_Tipo_ContribuinteMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_REG);

            // Properties
            this.Property(t => t.PK_REG)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Nome_Tipo_Contribuinte)
                .HasMaxLength(255);

            // Table & Column Mappings
            this.ToTable("MSCPRO_Tipo_Contribuinte");
            this.Property(t => t.PK_REG).HasColumnName("PK_REG");
            this.Property(t => t.Nome_Tipo_Contribuinte).HasColumnName("Nome_Tipo_Contribuinte");
        }
    }
}