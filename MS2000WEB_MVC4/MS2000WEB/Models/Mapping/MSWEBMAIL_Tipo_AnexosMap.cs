using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSWEBMAIL_Tipo_AnexosMap : EntityTypeConfiguration<MSWEBMAIL_Tipo_Anexos>
    {
        public MSWEBMAIL_Tipo_AnexosMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_REG);

            // Properties
            this.Property(t => t.DESCRICAO)
                .IsRequired()
                .HasMaxLength(60);

            this.Property(t => t.ICONE)
                .IsRequired()
                .IsFixedLength()
                .HasMaxLength(25);

            this.Property(t => t.EXTENSAO)
                .IsRequired()
                .IsFixedLength()
                .HasMaxLength(5);

            // Table & Column Mappings
            this.ToTable("MSWEBMAIL_Tipo_Anexos");
            this.Property(t => t.PK_REG).HasColumnName("PK_REG");
            this.Property(t => t.DESCRICAO).HasColumnName("DESCRICAO");
            this.Property(t => t.ICONE).HasColumnName("ICONE");
            this.Property(t => t.EXTENSAO).HasColumnName("EXTENSAO");
        }
    }
}
