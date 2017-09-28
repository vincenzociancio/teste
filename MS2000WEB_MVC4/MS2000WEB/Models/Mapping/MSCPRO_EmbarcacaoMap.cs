using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSCPRO_EmbarcacaoMap : EntityTypeConfiguration<MSCPRO_Embarcacao>
    {
        public MSCPRO_EmbarcacaoMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_REG);

            // Properties
            this.Property(t => t.PK_REG)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("MSCPRO_Embarcacao");
            this.Property(t => t.PK_REG).HasColumnName("PK_REG");
            this.Property(t => t.Nome_Embarcacao).HasColumnName("Nome_Embarcacao");
            this.Property(t => t.FK_Contribuinte).HasColumnName("FK_Contribuinte");
        }
    }
}
