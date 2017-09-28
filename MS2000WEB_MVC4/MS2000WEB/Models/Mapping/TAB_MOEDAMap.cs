using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class TAB_MOEDAMap : EntityTypeConfiguration<TAB_MOEDA>
    {
        public TAB_MOEDAMap()
        {
            // Primary Key
            this.HasKey(t => t.CODIGO);

            // Properties
            this.Property(t => t.CODIGO)
                .IsRequired()
                .HasMaxLength(3);

            this.Property(t => t.DESCRICAO)
                .HasMaxLength(120);

            // Table & Column Mappings
            this.ToTable("TAB_MOEDA");
            this.Property(t => t.CODIGO).HasColumnName("CODIGO");
            this.Property(t => t.DESCRICAO).HasColumnName("DESCRICAO");
        }
    }
}
