using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class contratos_cadastrados_uploadMap : EntityTypeConfiguration<contratos_cadastrados_upload>
    {
        public contratos_cadastrados_uploadMap()
        {
            // Primary Key
            this.HasKey(t => new { t.fk_contrato, t.Arquivo, t.codigo });

            // Properties
            this.Property(t => t.fk_contrato)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Arquivo)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.codigo)
                .IsRequired()
                .HasMaxLength(11);

            // Table & Column Mappings
            this.ToTable("contratos_cadastrados_upload");
            this.Property(t => t.fk_contrato).HasColumnName("fk_contrato");
            this.Property(t => t.Arquivo).HasColumnName("Arquivo");
            this.Property(t => t.codigo).HasColumnName("codigo");
        }
    }
}
