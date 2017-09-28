using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Questionario_SenhasMap : EntityTypeConfiguration<Questionario_Senhas>
    {
        public Questionario_SenhasMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_Senhas);

            // Properties
            this.Property(t => t.Senhas)
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Questionario_Senhas");
            this.Property(t => t.PK_Senhas).HasColumnName("PK_Senhas");
            this.Property(t => t.Senhas).HasColumnName("Senhas");
            this.Property(t => t.Validade).HasColumnName("Validade");
        }
    }
}
