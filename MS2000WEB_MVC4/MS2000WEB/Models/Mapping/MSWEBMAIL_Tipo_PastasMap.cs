using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSWEBMAIL_Tipo_PastasMap : EntityTypeConfiguration<MSWEBMAIL_Tipo_Pastas>
    {
        public MSWEBMAIL_Tipo_PastasMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_REG);

            // Properties
            this.Property(t => t.DESCRICAO)
                .HasMaxLength(15);

            this.Property(t => t.ICONE)
                .HasMaxLength(25);

            // Table & Column Mappings
            this.ToTable("MSWEBMAIL_Tipo_Pastas");
            this.Property(t => t.PK_REG).HasColumnName("PK_REG");
            this.Property(t => t.DESCRICAO).HasColumnName("DESCRICAO");
            this.Property(t => t.ICONE).HasColumnName("ICONE");
        }
    }
}
