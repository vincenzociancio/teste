using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class TAB_TP_IMPORTADORMap : EntityTypeConfiguration<TAB_TP_IMPORTADOR>
    {
        public TAB_TP_IMPORTADORMap()
        {
            // Primary Key
            this.HasKey(t => t.CODIGO);

            // Properties
            this.Property(t => t.CODIGO)
                .IsRequired()
                .HasMaxLength(3);

            this.Property(t => t.DESCRICAO)
                .HasMaxLength(200);

            // Table & Column Mappings
            this.ToTable("TAB_TP_IMPORTADOR");
            this.Property(t => t.CODIGO).HasColumnName("CODIGO");
            this.Property(t => t.DESCRICAO).HasColumnName("DESCRICAO");
        }
    }
}
