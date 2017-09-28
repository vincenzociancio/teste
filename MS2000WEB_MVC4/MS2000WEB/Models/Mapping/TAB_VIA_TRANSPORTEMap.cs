using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class TAB_VIA_TRANSPORTEMap : EntityTypeConfiguration<TAB_VIA_TRANSPORTE>
    {
        public TAB_VIA_TRANSPORTEMap()
        {
            // Primary Key
            this.HasKey(t => t.Codigo);

            // Properties
            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(1);

            this.Property(t => t.Descricao)
                .HasMaxLength(120);

            this.Property(t => t.SIGLA)
                .HasMaxLength(4);

            // Table & Column Mappings
            this.ToTable("TAB_VIA_TRANSPORTE");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.SIGLA).HasColumnName("SIGLA");
        }
    }
}
