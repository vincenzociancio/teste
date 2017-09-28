using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class TAB_NCM_INGMap : EntityTypeConfiguration<TAB_NCM_ING>
    {
        public TAB_NCM_INGMap()
        {
            // Primary Key
            this.HasKey(t => t.CODIGO);

            // Properties
            this.Property(t => t.CODIGO)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.DESCRICAO)
                .HasMaxLength(255);

            // Table & Column Mappings
            this.ToTable("TAB_NCM_ING");
            this.Property(t => t.CODIGO).HasColumnName("CODIGO");
            this.Property(t => t.DESCRICAO).HasColumnName("DESCRICAO");
        }
    }
}
