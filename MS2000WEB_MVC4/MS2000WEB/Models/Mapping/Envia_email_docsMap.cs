using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Envia_email_docsMap : EntityTypeConfiguration<Envia_email_docs>
    {
        public Envia_email_docsMap()
        {
            // Primary Key
            this.HasKey(t => t.REG);

            // Properties
            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(11);

            this.Property(t => t.Email)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Envia_email_docs");
            this.Property(t => t.REG).HasColumnName("REG");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Email).HasColumnName("Email");
            this.Property(t => t.Enviou).HasColumnName("Enviou");
        }
    }
}
