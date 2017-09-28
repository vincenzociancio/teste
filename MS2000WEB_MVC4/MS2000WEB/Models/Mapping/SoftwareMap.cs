using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class SoftwareMap : EntityTypeConfiguration<Software>
    {
        public SoftwareMap()
        {
            // Primary Key
            this.HasKey(t => t.codigo);

            // Properties
            this.Property(t => t.codigo)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.descricao)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Softwares");
            this.Property(t => t.codigo).HasColumnName("codigo");
            this.Property(t => t.descricao).HasColumnName("descricao");
        }
    }
}
