using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class TAB_REC_ALFANDEGADOMap : EntityTypeConfiguration<TAB_REC_ALFANDEGADO>
    {
        public TAB_REC_ALFANDEGADOMap()
        {
            // Primary Key
            this.HasKey(t => t.CODIGO);

            // Properties
            this.Property(t => t.CODIGO)
                .IsRequired()
                .HasMaxLength(7);

            this.Property(t => t.DESCRICAO)
                .HasMaxLength(120);

            this.Property(t => t.COD_ORGAO_REC)
                .HasMaxLength(7);

            // Table & Column Mappings
            this.ToTable("TAB_REC_ALFANDEGADO");
            this.Property(t => t.CODIGO).HasColumnName("CODIGO");
            this.Property(t => t.DESCRICAO).HasColumnName("DESCRICAO");
            this.Property(t => t.COD_ORGAO_REC).HasColumnName("COD_ORGAO_REC");
        }
    }
}
