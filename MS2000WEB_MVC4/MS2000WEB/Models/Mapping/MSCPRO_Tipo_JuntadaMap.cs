using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSCPRO_Tipo_JuntadaMap : EntityTypeConfiguration<MSCPRO_Tipo_Juntada>
    {
        public MSCPRO_Tipo_JuntadaMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_REG);

            // Properties
            this.Property(t => t.PK_REG)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Nome_Tipo_Juntada)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("MSCPRO_Tipo_Juntada");
            this.Property(t => t.PK_REG).HasColumnName("PK_REG");
            this.Property(t => t.Nome_Tipo_Juntada).HasColumnName("Nome_Tipo_Juntada");
        }
    }
}
