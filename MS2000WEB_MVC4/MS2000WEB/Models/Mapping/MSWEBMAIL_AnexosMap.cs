using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSWEBMAIL_AnexosMap : EntityTypeConfiguration<MSWEBMAIL_Anexos>
    {
        public MSWEBMAIL_AnexosMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_REG);

            // Properties
            this.Property(t => t.NOME)
                .IsRequired()
                .HasMaxLength(255);

            // Table & Column Mappings
            this.ToTable("MSWEBMAIL_Anexos");
            this.Property(t => t.PK_REG).HasColumnName("PK_REG");
            this.Property(t => t.FK_EMAIL).HasColumnName("FK_EMAIL");
            this.Property(t => t.NOME).HasColumnName("NOME");
            this.Property(t => t.TAMANHO).HasColumnName("TAMANHO");
            this.Property(t => t.TIPO_ANEXO).HasColumnName("TIPO_ANEXO");
        }
    }
}
