using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Fundamentacao_RCRMap : EntityTypeConfiguration<Fundamentacao_RCR>
    {
        public Fundamentacao_RCRMap()
        {
            // Primary Key
            this.HasKey(t => t.Codigo);

            // Properties
            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Descricao)
                .HasMaxLength(120);

            // Table & Column Mappings
            this.ToTable("Fundamentacao_RCR");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
        }
    }
}
