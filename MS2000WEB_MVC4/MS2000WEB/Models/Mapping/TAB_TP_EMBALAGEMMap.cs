using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class TAB_TP_EMBALAGEMMap : EntityTypeConfiguration<TAB_TP_EMBALAGEM>
    {
        public TAB_TP_EMBALAGEMMap()
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
            this.ToTable("TAB_TP_EMBALAGEM");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
        }
    }
}
