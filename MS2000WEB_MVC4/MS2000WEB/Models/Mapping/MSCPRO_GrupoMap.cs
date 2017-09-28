using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSCPRO_GrupoMap : EntityTypeConfiguration<MSCPRO_Grupo>
    {
        public MSCPRO_GrupoMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_REG);

            // Properties
            this.Property(t => t.PK_REG)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("MSCPRO_Grupo");
            this.Property(t => t.PK_REG).HasColumnName("PK_REG");
            this.Property(t => t.Nome_Grupo).HasColumnName("Nome_Grupo");
        }
    }
}
