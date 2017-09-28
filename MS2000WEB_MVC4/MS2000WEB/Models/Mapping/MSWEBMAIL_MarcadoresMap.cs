using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSWEBMAIL_MarcadoresMap : EntityTypeConfiguration<MSWEBMAIL_Marcadores>
    {
        public MSWEBMAIL_MarcadoresMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_REG);

            // Properties
            this.Property(t => t.DESCRICAO)
                .HasMaxLength(15);

            // Table & Column Mappings
            this.ToTable("MSWEBMAIL_Marcadores");
            this.Property(t => t.PK_REG).HasColumnName("PK_REG");
            this.Property(t => t.FK_COR).HasColumnName("FK_COR");
            this.Property(t => t.FK_USUARIO).HasColumnName("FK_USUARIO");
            this.Property(t => t.DESCRICAO).HasColumnName("DESCRICAO");
        }
    }
}
