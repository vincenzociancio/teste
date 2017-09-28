using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class TAB_REG_TRIBUTARIOMap : EntityTypeConfiguration<TAB_REG_TRIBUTARIO>
    {
        public TAB_REG_TRIBUTARIOMap()
        {
            // Primary Key
            this.HasKey(t => t.CODIGO);

            // Properties
            this.Property(t => t.CODIGO)
                .IsRequired()
                .HasMaxLength(1);

            this.Property(t => t.DESCRICAO)
                .HasMaxLength(120);

            // Table & Column Mappings
            this.ToTable("TAB_REG_TRIBUTARIO");
            this.Property(t => t.CODIGO).HasColumnName("CODIGO");
            this.Property(t => t.DESCRICAO).HasColumnName("DESCRICAO");
        }
    }
}
