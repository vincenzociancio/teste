using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSWEBMAIL_PastasMap : EntityTypeConfiguration<MSWEBMAIL_Pastas>
    {
        public MSWEBMAIL_PastasMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_REG);

            // Properties
            this.Property(t => t.DESCRICAO)
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("MSWEBMAIL_Pastas");
            this.Property(t => t.PK_REG).HasColumnName("PK_REG");
            this.Property(t => t.PASTA_ACIMA).HasColumnName("PASTA_ACIMA");
            this.Property(t => t.FK_USUARIO).HasColumnName("FK_USUARIO");
            this.Property(t => t.DESCRICAO).HasColumnName("DESCRICAO");
            this.Property(t => t.PADRAO).HasColumnName("PADRAO");
            this.Property(t => t.TIPO_PASTA).HasColumnName("TIPO_PASTA");
        }
    }
}
