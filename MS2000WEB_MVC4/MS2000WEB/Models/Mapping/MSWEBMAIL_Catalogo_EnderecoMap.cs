using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSWEBMAIL_Catalogo_EnderecoMap : EntityTypeConfiguration<MSWEBMAIL_Catalogo_Endereco>
    {
        public MSWEBMAIL_Catalogo_EnderecoMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_REG);

            // Properties
            this.Property(t => t.NOME)
                .IsRequired()
                .HasMaxLength(150);

            this.Property(t => t.EMAIL)
                .IsRequired()
                .HasMaxLength(150);

            this.Property(t => t.TELEFONE)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("MSWEBMAIL_Catalogo_Endereco");
            this.Property(t => t.PK_REG).HasColumnName("PK_REG");
            this.Property(t => t.FK_USUARIO).HasColumnName("FK_USUARIO");
            this.Property(t => t.NOME).HasColumnName("NOME");
            this.Property(t => t.EMAIL).HasColumnName("EMAIL");
            this.Property(t => t.TELEFONE).HasColumnName("TELEFONE");
        }
    }
}
