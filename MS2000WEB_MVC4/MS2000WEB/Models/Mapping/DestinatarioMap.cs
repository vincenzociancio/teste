using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class DestinatarioMap : EntityTypeConfiguration<Destinatario>
    {
        public DestinatarioMap()
        {
            // Primary Key
            this.HasKey(t => t.Codigo);

            // Properties
            this.Property(t => t.Codigo)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Destinatario1)
                .HasMaxLength(255);

            // Table & Column Mappings
            this.ToTable("Destinatario");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Destinatario1).HasColumnName("Destinatario");
        }
    }
}
