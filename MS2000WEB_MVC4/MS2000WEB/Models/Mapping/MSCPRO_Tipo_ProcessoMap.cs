using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSCPRO_Tipo_ProcessoMap : EntityTypeConfiguration<MSCPRO_Tipo_Processo>
    {
        public MSCPRO_Tipo_ProcessoMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_REG);

            // Properties
            this.Property(t => t.PK_REG)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Nome_Tipo_Processo)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("MSCPRO_Tipo_Processo");
            this.Property(t => t.PK_REG).HasColumnName("PK_REG");
            this.Property(t => t.Nome_Tipo_Processo).HasColumnName("Nome_Tipo_Processo");
        }
    }
}
