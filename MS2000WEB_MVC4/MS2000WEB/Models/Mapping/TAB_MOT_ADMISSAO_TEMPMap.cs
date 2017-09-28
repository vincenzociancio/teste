using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class TAB_MOT_ADMISSAO_TEMPMap : EntityTypeConfiguration<TAB_MOT_ADMISSAO_TEMP>
    {
        public TAB_MOT_ADMISSAO_TEMPMap()
        {
            // Primary Key
            this.HasKey(t => t.Codigo);

            // Properties
            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(2);

            this.Property(t => t.Descricao)
                .HasMaxLength(253);

            // Table & Column Mappings
            this.ToTable("TAB_MOT_ADMISSAO_TEMP");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
        }
    }
}
