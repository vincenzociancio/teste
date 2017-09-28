using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class TAB_UFMap : EntityTypeConfiguration<TAB_UF>
    {
        public TAB_UFMap()
        {
            // Primary Key
            this.HasKey(t => t.Codigo);

            // Properties
            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(2);

            this.Property(t => t.Descricao)
                .HasMaxLength(120);

            // Table & Column Mappings
            this.ToTable("TAB_UF");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
        }
    }
}