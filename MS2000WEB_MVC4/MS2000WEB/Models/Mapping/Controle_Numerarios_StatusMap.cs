using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_Numerarios_StatusMap : EntityTypeConfiguration<Controle_Numerarios_Status>
    {
        public Controle_Numerarios_StatusMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_Status);

            // Properties
            this.Property(t => t.Status)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Controle_Numerarios_Status");
            this.Property(t => t.PK_Status).HasColumnName("PK_Status");
            this.Property(t => t.Status).HasColumnName("Status");
        }
    }
}
