using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSWEBMAIL_CoresMap : EntityTypeConfiguration<MSWEBMAIL_Cores>
    {
        public MSWEBMAIL_CoresMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_REG);

            // Properties
            this.Property(t => t.DESCRICAO)
                .HasMaxLength(50);

            this.Property(t => t.HEX_FUNDO)
                .IsFixedLength()
                .HasMaxLength(7);

            this.Property(t => t.HEX_FONTE)
                .IsFixedLength()
                .HasMaxLength(7);

            // Table & Column Mappings
            this.ToTable("MSWEBMAIL_Cores");
            this.Property(t => t.PK_REG).HasColumnName("PK_REG");
            this.Property(t => t.DESCRICAO).HasColumnName("DESCRICAO");
            this.Property(t => t.HEX_FUNDO).HasColumnName("HEX_FUNDO");
            this.Property(t => t.HEX_FONTE).HasColumnName("HEX_FONTE");
        }
    }
}
