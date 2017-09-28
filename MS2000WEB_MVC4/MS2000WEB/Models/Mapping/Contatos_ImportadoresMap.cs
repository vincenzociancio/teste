using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Contatos_ImportadoresMap : EntityTypeConfiguration<Contatos_Importadores>
    {
        public Contatos_ImportadoresMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Importador });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Importador)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Email_Numerario)
                .HasMaxLength(50);

            this.Property(t => t.Fax_Numerario)
                .HasMaxLength(15);

            this.Property(t => t.Contato_Numerario)
                .HasMaxLength(50);

            this.Property(t => t.CC_email)
                .HasMaxLength(150);

            // Table & Column Mappings
            this.ToTable("Contatos_Importadores");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Importador).HasColumnName("Importador");
            this.Property(t => t.Email_Numerario).HasColumnName("Email_Numerario");
            this.Property(t => t.Fax_Numerario).HasColumnName("Fax_Numerario");
            this.Property(t => t.Contato_Numerario).HasColumnName("Contato_Numerario");
            this.Property(t => t.CC_email).HasColumnName("CC_email");
        }
    }
}
